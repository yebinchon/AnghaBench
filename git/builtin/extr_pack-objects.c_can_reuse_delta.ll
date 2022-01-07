; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_pack-objects.c_can_reuse_delta.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_pack-objects.c_can_reuse_delta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object_entry = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.object_id }
%struct.object_id = type { i32 }

@to_pack = common dso_local global i32 0, align 4
@thin = common dso_local global i64 0, align 8
@bitmap_git = common dso_local global i32 0, align 4
@use_delta_islands = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.object_entry*, %struct.object_entry**)* @can_reuse_delta to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @can_reuse_delta(i8* %0, %struct.object_entry* %1, %struct.object_entry** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.object_entry*, align 8
  %7 = alloca %struct.object_entry**, align 8
  %8 = alloca %struct.object_entry*, align 8
  %9 = alloca %struct.object_id, align 4
  store i8* %0, i8** %5, align 8
  store %struct.object_entry* %1, %struct.object_entry** %6, align 8
  store %struct.object_entry** %2, %struct.object_entry*** %7, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %53

13:                                               ; preds = %3
  %14 = load i8*, i8** %5, align 8
  %15 = call i32 @oidread(%struct.object_id* %9, i8* %14)
  %16 = call %struct.object_entry* @packlist_find(i32* @to_pack, %struct.object_id* %9)
  store %struct.object_entry* %16, %struct.object_entry** %8, align 8
  %17 = load %struct.object_entry*, %struct.object_entry** %8, align 8
  %18 = icmp ne %struct.object_entry* %17, null
  br i1 %18, label %19, label %32

19:                                               ; preds = %13
  %20 = load %struct.object_entry*, %struct.object_entry** %6, align 8
  %21 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load %struct.object_entry*, %struct.object_entry** %8, align 8
  %24 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = call i32 @in_same_island(%struct.object_id* %22, %struct.object_id* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %19
  store i32 0, i32* %4, align 4
  br label %53

29:                                               ; preds = %19
  %30 = load %struct.object_entry*, %struct.object_entry** %8, align 8
  %31 = load %struct.object_entry**, %struct.object_entry*** %7, align 8
  store %struct.object_entry* %30, %struct.object_entry** %31, align 8
  store i32 1, i32* %4, align 4
  br label %53

32:                                               ; preds = %13
  %33 = load i64, i64* @thin, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %52

35:                                               ; preds = %32
  %36 = load i32, i32* @bitmap_git, align 4
  %37 = call i64 @bitmap_has_oid_in_uninteresting(i32 %36, %struct.object_id* %9)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %52

39:                                               ; preds = %35
  %40 = load i64, i64* @use_delta_islands, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %39
  %43 = load %struct.object_entry*, %struct.object_entry** %6, align 8
  %44 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = call i32 @in_same_island(%struct.object_id* %45, %struct.object_id* %9)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %42
  store i32 0, i32* %4, align 4
  br label %53

49:                                               ; preds = %42
  br label %50

50:                                               ; preds = %49, %39
  %51 = load %struct.object_entry**, %struct.object_entry*** %7, align 8
  store %struct.object_entry* null, %struct.object_entry** %51, align 8
  store i32 1, i32* %4, align 4
  br label %53

52:                                               ; preds = %35, %32
  store i32 0, i32* %4, align 4
  br label %53

53:                                               ; preds = %52, %50, %48, %29, %28, %12
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local i32 @oidread(%struct.object_id*, i8*) #1

declare dso_local %struct.object_entry* @packlist_find(i32*, %struct.object_id*) #1

declare dso_local i32 @in_same_island(%struct.object_id*, %struct.object_id*) #1

declare dso_local i64 @bitmap_has_oid_in_uninteresting(i32, %struct.object_id*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
