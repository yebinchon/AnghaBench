; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_mqueue.c__getmq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_mqueue.c__getmq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.file = type { %struct.mqfs_node*, i32* }
%struct.mqfs_node = type { %struct.mqueue* }
%struct.mqueue = type { i32 }

@mqueueops = common dso_local global i32 0, align 4
@EBADF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thread*, i32, i32*, i32 (%struct.thread*, i32, i32*, %struct.file**)*, %struct.file**, %struct.mqfs_node**, %struct.mqueue**)* @_getmq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_getmq(%struct.thread* %0, i32 %1, i32* %2, i32 (%struct.thread*, i32, i32*, %struct.file**)* %3, %struct.file** %4, %struct.mqfs_node** %5, %struct.mqueue** %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.thread*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32 (%struct.thread*, i32, i32*, %struct.file**)*, align 8
  %13 = alloca %struct.file**, align 8
  %14 = alloca %struct.mqfs_node**, align 8
  %15 = alloca %struct.mqueue**, align 8
  %16 = alloca %struct.mqfs_node*, align 8
  %17 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32* %2, i32** %11, align 8
  store i32 (%struct.thread*, i32, i32*, %struct.file**)* %3, i32 (%struct.thread*, i32, i32*, %struct.file**)** %12, align 8
  store %struct.file** %4, %struct.file*** %13, align 8
  store %struct.mqfs_node** %5, %struct.mqfs_node*** %14, align 8
  store %struct.mqueue** %6, %struct.mqueue*** %15, align 8
  %18 = load i32 (%struct.thread*, i32, i32*, %struct.file**)*, i32 (%struct.thread*, i32, i32*, %struct.file**)** %12, align 8
  %19 = load %struct.thread*, %struct.thread** %9, align 8
  %20 = load i32, i32* %10, align 4
  %21 = load i32*, i32** %11, align 8
  %22 = load %struct.file**, %struct.file*** %13, align 8
  %23 = call i32 %18(%struct.thread* %19, i32 %20, i32* %21, %struct.file** %22)
  store i32 %23, i32* %17, align 4
  %24 = load i32, i32* %17, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %7
  %27 = load i32, i32* %17, align 4
  store i32 %27, i32* %8, align 4
  br label %59

28:                                               ; preds = %7
  %29 = load %struct.file**, %struct.file*** %13, align 8
  %30 = load %struct.file*, %struct.file** %29, align 8
  %31 = getelementptr inbounds %struct.file, %struct.file* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = icmp ne i32* @mqueueops, %32
  br i1 %33, label %34, label %40

34:                                               ; preds = %28
  %35 = load %struct.file**, %struct.file*** %13, align 8
  %36 = load %struct.file*, %struct.file** %35, align 8
  %37 = load %struct.thread*, %struct.thread** %9, align 8
  %38 = call i32 @fdrop(%struct.file* %36, %struct.thread* %37)
  %39 = load i32, i32* @EBADF, align 4
  store i32 %39, i32* %8, align 4
  br label %59

40:                                               ; preds = %28
  %41 = load %struct.file**, %struct.file*** %13, align 8
  %42 = load %struct.file*, %struct.file** %41, align 8
  %43 = getelementptr inbounds %struct.file, %struct.file* %42, i32 0, i32 0
  %44 = load %struct.mqfs_node*, %struct.mqfs_node** %43, align 8
  store %struct.mqfs_node* %44, %struct.mqfs_node** %16, align 8
  %45 = load %struct.mqfs_node**, %struct.mqfs_node*** %14, align 8
  %46 = icmp ne %struct.mqfs_node** %45, null
  br i1 %46, label %47, label %50

47:                                               ; preds = %40
  %48 = load %struct.mqfs_node*, %struct.mqfs_node** %16, align 8
  %49 = load %struct.mqfs_node**, %struct.mqfs_node*** %14, align 8
  store %struct.mqfs_node* %48, %struct.mqfs_node** %49, align 8
  br label %50

50:                                               ; preds = %47, %40
  %51 = load %struct.mqueue**, %struct.mqueue*** %15, align 8
  %52 = icmp ne %struct.mqueue** %51, null
  br i1 %52, label %53, label %58

53:                                               ; preds = %50
  %54 = load %struct.mqfs_node*, %struct.mqfs_node** %16, align 8
  %55 = getelementptr inbounds %struct.mqfs_node, %struct.mqfs_node* %54, i32 0, i32 0
  %56 = load %struct.mqueue*, %struct.mqueue** %55, align 8
  %57 = load %struct.mqueue**, %struct.mqueue*** %15, align 8
  store %struct.mqueue* %56, %struct.mqueue** %57, align 8
  br label %58

58:                                               ; preds = %53, %50
  store i32 0, i32* %8, align 4
  br label %59

59:                                               ; preds = %58, %34, %26
  %60 = load i32, i32* %8, align 4
  ret i32 %60
}

declare dso_local i32 @fdrop(%struct.file*, %struct.thread*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
