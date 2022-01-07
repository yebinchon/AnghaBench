; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_pack-objects.c_add_preferred_base_object.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_pack-objects.c_add_preferred_base_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pbase_tree = type { %struct.TYPE_2__, %struct.pbase_tree* }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.tree_desc = type { i32 }

@num_preferred_base = common dso_local global i32 0, align 4
@pbase_tree = common dso_local global %struct.pbase_tree* null, align 8
@OBJ_TREE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @add_preferred_base_object to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_preferred_base_object(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.pbase_tree*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.tree_desc, align 4
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = call i32 @pack_name_hash(i8* %7)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* @num_preferred_base, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %1
  %12 = load i32, i32* %5, align 4
  %13 = call i64 @check_pbase_path(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %11, %1
  br label %51

16:                                               ; preds = %11
  %17 = load i8*, i8** %2, align 8
  %18 = call i32 @name_cmp_len(i8* %17)
  store i32 %18, i32* %4, align 4
  %19 = load %struct.pbase_tree*, %struct.pbase_tree** @pbase_tree, align 8
  store %struct.pbase_tree* %19, %struct.pbase_tree** %3, align 8
  br label %20

20:                                               ; preds = %47, %16
  %21 = load %struct.pbase_tree*, %struct.pbase_tree** %3, align 8
  %22 = icmp ne %struct.pbase_tree* %21, null
  br i1 %22, label %23, label %51

23:                                               ; preds = %20
  %24 = load i32, i32* %4, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %23
  %27 = load %struct.pbase_tree*, %struct.pbase_tree** %3, align 8
  %28 = getelementptr inbounds %struct.pbase_tree, %struct.pbase_tree* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 2
  %30 = load i32, i32* @OBJ_TREE, align 4
  %31 = call i32 @add_object_entry(i32* %29, i32 %30, i32* null, i32 1)
  br label %46

32:                                               ; preds = %23
  %33 = load %struct.pbase_tree*, %struct.pbase_tree** %3, align 8
  %34 = getelementptr inbounds %struct.pbase_tree, %struct.pbase_tree* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.pbase_tree*, %struct.pbase_tree** %3, align 8
  %38 = getelementptr inbounds %struct.pbase_tree, %struct.pbase_tree* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @init_tree_desc(%struct.tree_desc* %6, i32 %36, i32 %40)
  %42 = load i8*, i8** %2, align 8
  %43 = load i32, i32* %4, align 4
  %44 = load i8*, i8** %2, align 8
  %45 = call i32 @add_pbase_object(%struct.tree_desc* %6, i8* %42, i32 %43, i8* %44)
  br label %46

46:                                               ; preds = %32, %26
  br label %47

47:                                               ; preds = %46
  %48 = load %struct.pbase_tree*, %struct.pbase_tree** %3, align 8
  %49 = getelementptr inbounds %struct.pbase_tree, %struct.pbase_tree* %48, i32 0, i32 1
  %50 = load %struct.pbase_tree*, %struct.pbase_tree** %49, align 8
  store %struct.pbase_tree* %50, %struct.pbase_tree** %3, align 8
  br label %20

51:                                               ; preds = %15, %20
  ret void
}

declare dso_local i32 @pack_name_hash(i8*) #1

declare dso_local i64 @check_pbase_path(i32) #1

declare dso_local i32 @name_cmp_len(i8*) #1

declare dso_local i32 @add_object_entry(i32*, i32, i32*, i32) #1

declare dso_local i32 @init_tree_desc(%struct.tree_desc*, i32, i32) #1

declare dso_local i32 @add_pbase_object(%struct.tree_desc*, i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
