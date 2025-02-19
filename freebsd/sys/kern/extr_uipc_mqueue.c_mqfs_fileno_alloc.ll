; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_mqueue.c_mqfs_fileno_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_mqueue.c_mqfs_fileno_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mqfs_info = type { %struct.mqfs_node*, i32 }
%struct.mqfs_node = type { i32, i32, %struct.mqfs_node* }

@.str = private unnamed_addr constant [33 x i8] c"mqfstype_this node has no parent\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"mqfstype_parent node has no parent\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"mqfstype_parent node has no grandparent\00", align 1
@.str.3 = private unnamed_addr constant [53 x i8] c"mqfs_fileno_alloc() called for unknown type node: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mqfs_info*, %struct.mqfs_node*)* @mqfs_fileno_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mqfs_fileno_alloc(%struct.mqfs_info* %0, %struct.mqfs_node* %1) #0 {
  %3 = alloca %struct.mqfs_info*, align 8
  %4 = alloca %struct.mqfs_node*, align 8
  store %struct.mqfs_info* %0, %struct.mqfs_info** %3, align 8
  store %struct.mqfs_node* %1, %struct.mqfs_node** %4, align 8
  %5 = load %struct.mqfs_node*, %struct.mqfs_node** %4, align 8
  %6 = getelementptr inbounds %struct.mqfs_node, %struct.mqfs_node* %5, i32 0, i32 2
  %7 = load %struct.mqfs_node*, %struct.mqfs_node** %6, align 8
  %8 = icmp ne %struct.mqfs_node* %7, null
  br i1 %8, label %9, label %21

9:                                                ; preds = %2
  %10 = load %struct.mqfs_node*, %struct.mqfs_node** %4, align 8
  %11 = getelementptr inbounds %struct.mqfs_node, %struct.mqfs_node* %10, i32 0, i32 2
  %12 = load %struct.mqfs_node*, %struct.mqfs_node** %11, align 8
  %13 = getelementptr inbounds %struct.mqfs_node, %struct.mqfs_node* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %9
  %17 = load %struct.mqfs_info*, %struct.mqfs_info** %3, align 8
  %18 = load %struct.mqfs_node*, %struct.mqfs_node** %4, align 8
  %19 = getelementptr inbounds %struct.mqfs_node, %struct.mqfs_node* %18, i32 0, i32 2
  %20 = load %struct.mqfs_node*, %struct.mqfs_node** %19, align 8
  call void @mqfs_fileno_alloc(%struct.mqfs_info* %17, %struct.mqfs_node* %20)
  br label %21

21:                                               ; preds = %16, %9, %2
  %22 = load %struct.mqfs_node*, %struct.mqfs_node** %4, align 8
  %23 = getelementptr inbounds %struct.mqfs_node, %struct.mqfs_node* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  switch i32 %24, label %86 [
    i32 130, label %25
    i32 133, label %25
    i32 132, label %25
    i32 129, label %25
    i32 128, label %32
    i32 131, label %46
  ]

25:                                               ; preds = %21, %21, %21, %21
  %26 = load %struct.mqfs_info*, %struct.mqfs_info** %3, align 8
  %27 = getelementptr inbounds %struct.mqfs_info, %struct.mqfs_info* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @alloc_unr(i32 %28)
  %30 = load %struct.mqfs_node*, %struct.mqfs_node** %4, align 8
  %31 = getelementptr inbounds %struct.mqfs_node, %struct.mqfs_node* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  br label %93

32:                                               ; preds = %21
  %33 = load %struct.mqfs_node*, %struct.mqfs_node** %4, align 8
  %34 = getelementptr inbounds %struct.mqfs_node, %struct.mqfs_node* %33, i32 0, i32 2
  %35 = load %struct.mqfs_node*, %struct.mqfs_node** %34, align 8
  %36 = icmp ne %struct.mqfs_node* %35, null
  %37 = zext i1 %36 to i32
  %38 = call i32 @KASSERT(i32 %37, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %39 = load %struct.mqfs_node*, %struct.mqfs_node** %4, align 8
  %40 = getelementptr inbounds %struct.mqfs_node, %struct.mqfs_node* %39, i32 0, i32 2
  %41 = load %struct.mqfs_node*, %struct.mqfs_node** %40, align 8
  %42 = getelementptr inbounds %struct.mqfs_node, %struct.mqfs_node* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.mqfs_node*, %struct.mqfs_node** %4, align 8
  %45 = getelementptr inbounds %struct.mqfs_node, %struct.mqfs_node* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 4
  br label %93

46:                                               ; preds = %21
  %47 = load %struct.mqfs_node*, %struct.mqfs_node** %4, align 8
  %48 = getelementptr inbounds %struct.mqfs_node, %struct.mqfs_node* %47, i32 0, i32 2
  %49 = load %struct.mqfs_node*, %struct.mqfs_node** %48, align 8
  %50 = icmp ne %struct.mqfs_node* %49, null
  %51 = zext i1 %50 to i32
  %52 = call i32 @KASSERT(i32 %51, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %53 = load %struct.mqfs_node*, %struct.mqfs_node** %4, align 8
  %54 = getelementptr inbounds %struct.mqfs_node, %struct.mqfs_node* %53, i32 0, i32 2
  %55 = load %struct.mqfs_node*, %struct.mqfs_node** %54, align 8
  %56 = load %struct.mqfs_info*, %struct.mqfs_info** %3, align 8
  %57 = getelementptr inbounds %struct.mqfs_info, %struct.mqfs_info* %56, i32 0, i32 0
  %58 = load %struct.mqfs_node*, %struct.mqfs_node** %57, align 8
  %59 = icmp eq %struct.mqfs_node* %55, %58
  br i1 %59, label %60, label %68

60:                                               ; preds = %46
  %61 = load %struct.mqfs_node*, %struct.mqfs_node** %4, align 8
  %62 = getelementptr inbounds %struct.mqfs_node, %struct.mqfs_node* %61, i32 0, i32 2
  %63 = load %struct.mqfs_node*, %struct.mqfs_node** %62, align 8
  %64 = getelementptr inbounds %struct.mqfs_node, %struct.mqfs_node* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.mqfs_node*, %struct.mqfs_node** %4, align 8
  %67 = getelementptr inbounds %struct.mqfs_node, %struct.mqfs_node* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 4
  br label %93

68:                                               ; preds = %46
  %69 = load %struct.mqfs_node*, %struct.mqfs_node** %4, align 8
  %70 = getelementptr inbounds %struct.mqfs_node, %struct.mqfs_node* %69, i32 0, i32 2
  %71 = load %struct.mqfs_node*, %struct.mqfs_node** %70, align 8
  %72 = getelementptr inbounds %struct.mqfs_node, %struct.mqfs_node* %71, i32 0, i32 2
  %73 = load %struct.mqfs_node*, %struct.mqfs_node** %72, align 8
  %74 = icmp ne %struct.mqfs_node* %73, null
  %75 = zext i1 %74 to i32
  %76 = call i32 @KASSERT(i32 %75, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  %77 = load %struct.mqfs_node*, %struct.mqfs_node** %4, align 8
  %78 = getelementptr inbounds %struct.mqfs_node, %struct.mqfs_node* %77, i32 0, i32 2
  %79 = load %struct.mqfs_node*, %struct.mqfs_node** %78, align 8
  %80 = getelementptr inbounds %struct.mqfs_node, %struct.mqfs_node* %79, i32 0, i32 2
  %81 = load %struct.mqfs_node*, %struct.mqfs_node** %80, align 8
  %82 = getelementptr inbounds %struct.mqfs_node, %struct.mqfs_node* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.mqfs_node*, %struct.mqfs_node** %4, align 8
  %85 = getelementptr inbounds %struct.mqfs_node, %struct.mqfs_node* %84, i32 0, i32 1
  store i32 %83, i32* %85, align 4
  br label %93

86:                                               ; preds = %21
  %87 = load %struct.mqfs_node*, %struct.mqfs_node** %4, align 8
  %88 = getelementptr inbounds %struct.mqfs_node, %struct.mqfs_node* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = sext i32 %89 to i64
  %91 = inttoptr i64 %90 to i8*
  %92 = call i32 @KASSERT(i32 0, i8* %91)
  br label %93

93:                                               ; preds = %86, %68, %60, %32, %25
  ret void
}

declare dso_local i32 @alloc_unr(i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
