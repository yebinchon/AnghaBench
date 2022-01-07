; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_pack-objects.c_show_object.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_pack-objects.c_show_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object = type { i32, i32, i32 }
%struct.object_entry = type { i32 }

@OBJECT_ADDED = common dso_local global i32 0, align 4
@use_delta_islands = common dso_local global i64 0, align 8
@to_pack = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.object*, i8*, i8*)* @show_object to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @show_object(%struct.object* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.object*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.object_entry*, align 8
  store %struct.object* %0, %struct.object** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = call i32 @add_preferred_base_object(i8* %10)
  %12 = load %struct.object*, %struct.object** %4, align 8
  %13 = getelementptr inbounds %struct.object, %struct.object* %12, i32 0, i32 0
  %14 = load %struct.object*, %struct.object** %4, align 8
  %15 = getelementptr inbounds %struct.object, %struct.object* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = load i8*, i8** %5, align 8
  %18 = call i32 @add_object_entry(i32* %13, i32 %16, i8* %17, i32 0)
  %19 = load i32, i32* @OBJECT_ADDED, align 4
  %20 = load %struct.object*, %struct.object** %4, align 8
  %21 = getelementptr inbounds %struct.object, %struct.object* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = or i32 %22, %19
  store i32 %23, i32* %21, align 4
  %24 = load i64, i64* @use_delta_islands, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %61

26:                                               ; preds = %3
  %27 = load i8*, i8** %5, align 8
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp ne i32 %29, 0
  %31 = zext i1 %30 to i64
  %32 = select i1 %30, i32 1, i32 0
  store i32 %32, i32* %8, align 4
  %33 = load i8*, i8** %5, align 8
  %34 = call i8* @strchr(i8* %33, i8 signext 47)
  store i8* %34, i8** %7, align 8
  br label %35

35:                                               ; preds = %41, %26
  %36 = load i8*, i8** %7, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %45

38:                                               ; preds = %35
  %39 = load i32, i32* %8, align 4
  %40 = add i32 %39, 1
  store i32 %40, i32* %8, align 4
  br label %41

41:                                               ; preds = %38
  %42 = load i8*, i8** %7, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 1
  %44 = call i8* @strchr(i8* %43, i8 signext 47)
  store i8* %44, i8** %7, align 8
  br label %35

45:                                               ; preds = %35
  %46 = load %struct.object*, %struct.object** %4, align 8
  %47 = getelementptr inbounds %struct.object, %struct.object* %46, i32 0, i32 0
  %48 = call %struct.object_entry* @packlist_find(i32* @to_pack, i32* %47)
  store %struct.object_entry* %48, %struct.object_entry** %9, align 8
  %49 = load %struct.object_entry*, %struct.object_entry** %9, align 8
  %50 = icmp ne %struct.object_entry* %49, null
  br i1 %50, label %51, label %60

51:                                               ; preds = %45
  %52 = load i32, i32* %8, align 4
  %53 = load %struct.object_entry*, %struct.object_entry** %9, align 8
  %54 = call i32 @oe_tree_depth(i32* @to_pack, %struct.object_entry* %53)
  %55 = icmp ugt i32 %52, %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %51
  %57 = load %struct.object_entry*, %struct.object_entry** %9, align 8
  %58 = load i32, i32* %8, align 4
  %59 = call i32 @oe_set_tree_depth(i32* @to_pack, %struct.object_entry* %57, i32 %58)
  br label %60

60:                                               ; preds = %56, %51, %45
  br label %61

61:                                               ; preds = %60, %3
  ret void
}

declare dso_local i32 @add_preferred_base_object(i8*) #1

declare dso_local i32 @add_object_entry(i32*, i32, i8*, i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local %struct.object_entry* @packlist_find(i32*, i32*) #1

declare dso_local i32 @oe_tree_depth(i32*, %struct.object_entry*) #1

declare dso_local i32 @oe_set_tree_depth(i32*, %struct.object_entry*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
