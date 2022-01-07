; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_mqueue.c_mqf_chmod.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_mqueue.c_mqf_chmod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.file = type { %struct.mqfs_node* }
%struct.mqfs_node = type { i32, i32, i32 }
%struct.ucred = type { i32 }
%struct.thread = type { i32 }

@mqfs_data = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@VREG = common dso_local global i32 0, align 4
@VADMIN = common dso_local global i32 0, align 4
@ACCESSPERMS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i32, %struct.ucred*, %struct.thread*)* @mqf_chmod to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mqf_chmod(%struct.file* %0, i32 %1, %struct.ucred* %2, %struct.thread* %3) #0 {
  %5 = alloca %struct.file*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ucred*, align 8
  %8 = alloca %struct.thread*, align 8
  %9 = alloca %struct.mqfs_node*, align 8
  %10 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.ucred* %2, %struct.ucred** %7, align 8
  store %struct.thread* %3, %struct.thread** %8, align 8
  store i32 0, i32* %10, align 4
  %11 = load %struct.file*, %struct.file** %5, align 8
  %12 = getelementptr inbounds %struct.file, %struct.file* %11, i32 0, i32 0
  %13 = load %struct.mqfs_node*, %struct.mqfs_node** %12, align 8
  store %struct.mqfs_node* %13, %struct.mqfs_node** %9, align 8
  %14 = call i32 @sx_xlock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mqfs_data, i32 0, i32 0))
  %15 = load i32, i32* @VREG, align 4
  %16 = load %struct.mqfs_node*, %struct.mqfs_node** %9, align 8
  %17 = getelementptr inbounds %struct.mqfs_node, %struct.mqfs_node* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.mqfs_node*, %struct.mqfs_node** %9, align 8
  %20 = getelementptr inbounds %struct.mqfs_node, %struct.mqfs_node* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.mqfs_node*, %struct.mqfs_node** %9, align 8
  %23 = getelementptr inbounds %struct.mqfs_node, %struct.mqfs_node* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @VADMIN, align 4
  %26 = load %struct.ucred*, %struct.ucred** %7, align 8
  %27 = call i32 @vaccess(i32 %15, i32 %18, i32 %21, i32 %24, i32 %25, %struct.ucred* %26, i32* null)
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %10, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %4
  br label %37

31:                                               ; preds = %4
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @ACCESSPERMS, align 4
  %34 = and i32 %32, %33
  %35 = load %struct.mqfs_node*, %struct.mqfs_node** %9, align 8
  %36 = getelementptr inbounds %struct.mqfs_node, %struct.mqfs_node* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  br label %37

37:                                               ; preds = %31, %30
  %38 = call i32 @sx_xunlock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mqfs_data, i32 0, i32 0))
  %39 = load i32, i32* %10, align 4
  ret i32 %39
}

declare dso_local i32 @sx_xlock(i32*) #1

declare dso_local i32 @vaccess(i32, i32, i32, i32, i32, %struct.ucred*, i32*) #1

declare dso_local i32 @sx_xunlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
