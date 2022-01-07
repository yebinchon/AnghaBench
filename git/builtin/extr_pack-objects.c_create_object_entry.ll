; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_pack-objects.c_create_object_entry.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_pack-objects.c_create_object_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object_id = type { i32 }
%struct.packed_git = type { i32 }
%struct.object_entry = type { i32, i32, i32, i32 }

@to_pack = common dso_local global i32 0, align 4
@nr_result = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.object_id*, i32, i32, i32, i32, %struct.packed_git*, i32)* @create_object_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @create_object_entry(%struct.object_id* %0, i32 %1, i32 %2, i32 %3, i32 %4, %struct.packed_git* %5, i32 %6) #0 {
  %8 = alloca %struct.object_id*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.packed_git*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.object_entry*, align 8
  store %struct.object_id* %0, %struct.object_id** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.packed_git* %5, %struct.packed_git** %13, align 8
  store i32 %6, i32* %14, align 4
  %16 = load %struct.object_id*, %struct.object_id** %8, align 8
  %17 = call %struct.object_entry* @packlist_alloc(i32* @to_pack, %struct.object_id* %16)
  store %struct.object_entry* %17, %struct.object_entry** %15, align 8
  %18 = load i32, i32* %10, align 4
  %19 = load %struct.object_entry*, %struct.object_entry** %15, align 8
  %20 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %19, i32 0, i32 3
  store i32 %18, i32* %20, align 4
  %21 = load %struct.object_entry*, %struct.object_entry** %15, align 8
  %22 = load i32, i32* %9, align 4
  %23 = call i32 @oe_set_type(%struct.object_entry* %21, i32 %22)
  %24 = load i32, i32* %11, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %7
  %27 = load %struct.object_entry*, %struct.object_entry** %15, align 8
  %28 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %27, i32 0, i32 0
  store i32 1, i32* %28, align 4
  br label %32

29:                                               ; preds = %7
  %30 = load i32, i32* @nr_result, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* @nr_result, align 4
  br label %32

32:                                               ; preds = %29, %26
  %33 = load %struct.packed_git*, %struct.packed_git** %13, align 8
  %34 = icmp ne %struct.packed_git* %33, null
  br i1 %34, label %35, label %42

35:                                               ; preds = %32
  %36 = load %struct.object_entry*, %struct.object_entry** %15, align 8
  %37 = load %struct.packed_git*, %struct.packed_git** %13, align 8
  %38 = call i32 @oe_set_in_pack(i32* @to_pack, %struct.object_entry* %36, %struct.packed_git* %37)
  %39 = load i32, i32* %14, align 4
  %40 = load %struct.object_entry*, %struct.object_entry** %15, align 8
  %41 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 4
  br label %42

42:                                               ; preds = %35, %32
  %43 = load i32, i32* %12, align 4
  %44 = load %struct.object_entry*, %struct.object_entry** %15, align 8
  %45 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 4
  ret void
}

declare dso_local %struct.object_entry* @packlist_alloc(i32*, %struct.object_id*) #1

declare dso_local i32 @oe_set_type(%struct.object_entry*, i32) #1

declare dso_local i32 @oe_set_in_pack(i32*, %struct.object_entry*, %struct.packed_git*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
