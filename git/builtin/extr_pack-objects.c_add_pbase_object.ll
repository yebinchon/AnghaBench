; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_pack-objects.c_add_pbase_object.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_pack-objects.c_add_pbase_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tree_desc = type { i32 }
%struct.name_entry = type { i32, i32, i32 }
%struct.pbase_tree_cache = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tree_desc*, i8*, i32, i8*)* @add_pbase_object to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_pbase_object(%struct.tree_desc* %0, i8* %1, i32 %2, i8* %3) #0 {
  %5 = alloca %struct.tree_desc*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.name_entry, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.tree_desc, align 4
  %12 = alloca %struct.pbase_tree_cache*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store %struct.tree_desc* %0, %struct.tree_desc** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  br label %15

15:                                               ; preds = %91, %40, %24, %4
  %16 = load %struct.tree_desc*, %struct.tree_desc** %5, align 8
  %17 = call i64 @tree_entry(%struct.tree_desc* %16, %struct.name_entry* %9)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %92

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.name_entry, %struct.name_entry* %9, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @S_ISGITLINK(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  br label %15

25:                                               ; preds = %19
  %26 = call i32 @tree_entry_len(%struct.name_entry* %9)
  %27 = load i32, i32* %7, align 4
  %28 = icmp ne i32 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  br label %36

30:                                               ; preds = %25
  %31 = load i8*, i8** %6, align 8
  %32 = getelementptr inbounds %struct.name_entry, %struct.name_entry* %9, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @memcmp(i8* %31, i32 %33, i32 %34)
  br label %36

36:                                               ; preds = %30, %29
  %37 = phi i32 [ 1, %29 ], [ %35, %30 ]
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* %10, align 4
  %39 = icmp sgt i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  br label %15

41:                                               ; preds = %36
  %42 = load i32, i32* %10, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %41
  br label %92

45:                                               ; preds = %41
  %46 = load i8*, i8** %6, align 8
  %47 = load i32, i32* %7, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8, i8* %46, i64 %48
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp ne i32 %51, 47
  br i1 %52, label %53, label %60

53:                                               ; preds = %45
  %54 = getelementptr inbounds %struct.name_entry, %struct.name_entry* %9, i32 0, i32 0
  %55 = getelementptr inbounds %struct.name_entry, %struct.name_entry* %9, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @object_type(i32 %56)
  %58 = load i8*, i8** %8, align 8
  %59 = call i32 @add_object_entry(i32* %54, i32 %57, i8* %58, i32 1)
  br label %92

60:                                               ; preds = %45
  %61 = getelementptr inbounds %struct.name_entry, %struct.name_entry* %9, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i64 @S_ISDIR(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %91

65:                                               ; preds = %60
  %66 = load i8*, i8** %6, align 8
  %67 = load i32, i32* %7, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8, i8* %66, i64 %68
  %70 = getelementptr inbounds i8, i8* %69, i64 1
  store i8* %70, i8** %13, align 8
  %71 = load i8*, i8** %13, align 8
  %72 = call i32 @name_cmp_len(i8* %71)
  store i32 %72, i32* %14, align 4
  %73 = getelementptr inbounds %struct.name_entry, %struct.name_entry* %9, i32 0, i32 0
  %74 = call %struct.pbase_tree_cache* @pbase_tree_get(i32* %73)
  store %struct.pbase_tree_cache* %74, %struct.pbase_tree_cache** %12, align 8
  %75 = load %struct.pbase_tree_cache*, %struct.pbase_tree_cache** %12, align 8
  %76 = icmp ne %struct.pbase_tree_cache* %75, null
  br i1 %76, label %78, label %77

77:                                               ; preds = %65
  br label %92

78:                                               ; preds = %65
  %79 = load %struct.pbase_tree_cache*, %struct.pbase_tree_cache** %12, align 8
  %80 = getelementptr inbounds %struct.pbase_tree_cache, %struct.pbase_tree_cache* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.pbase_tree_cache*, %struct.pbase_tree_cache** %12, align 8
  %83 = getelementptr inbounds %struct.pbase_tree_cache, %struct.pbase_tree_cache* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @init_tree_desc(%struct.tree_desc* %11, i32 %81, i32 %84)
  %86 = load i8*, i8** %13, align 8
  %87 = load i32, i32* %14, align 4
  %88 = load i8*, i8** %8, align 8
  call void @add_pbase_object(%struct.tree_desc* %11, i8* %86, i32 %87, i8* %88)
  %89 = load %struct.pbase_tree_cache*, %struct.pbase_tree_cache** %12, align 8
  %90 = call i32 @pbase_tree_put(%struct.pbase_tree_cache* %89)
  br label %91

91:                                               ; preds = %78, %60
  br label %15

92:                                               ; preds = %44, %53, %77, %15
  ret void
}

declare dso_local i64 @tree_entry(%struct.tree_desc*, %struct.name_entry*) #1

declare dso_local i64 @S_ISGITLINK(i32) #1

declare dso_local i32 @tree_entry_len(%struct.name_entry*) #1

declare dso_local i32 @memcmp(i8*, i32, i32) #1

declare dso_local i32 @add_object_entry(i32*, i32, i8*, i32) #1

declare dso_local i32 @object_type(i32) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i32 @name_cmp_len(i8*) #1

declare dso_local %struct.pbase_tree_cache* @pbase_tree_get(i32*) #1

declare dso_local i32 @init_tree_desc(%struct.tree_desc*, i32, i32) #1

declare dso_local i32 @pbase_tree_put(%struct.pbase_tree_cache*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
