; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ufs/ffs/extr_ffs_vnops.c_ffsext_strategy.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ufs/ffs/extr_ffs_vnops.c_ffsext_strategy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vop_strategy_args = type { %struct.TYPE_2__*, %struct.vnode* }
%struct.TYPE_2__ = type { i32 }
%struct.vnode = type { i64 }

@UFS_NXADDR = common dso_local global i32 0, align 4
@ufs_vnodeops = common dso_local global i32 0, align 4
@VFIFO = common dso_local global i64 0, align 8
@ufs_fifoops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"spec nodes went here\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vop_strategy_args*)* @ffsext_strategy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ffsext_strategy(%struct.vop_strategy_args* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vop_strategy_args*, align 8
  %4 = alloca %struct.vnode*, align 8
  %5 = alloca i32, align 4
  store %struct.vop_strategy_args* %0, %struct.vop_strategy_args** %3, align 8
  %6 = load %struct.vop_strategy_args*, %struct.vop_strategy_args** %3, align 8
  %7 = getelementptr inbounds %struct.vop_strategy_args, %struct.vop_strategy_args* %6, i32 0, i32 1
  %8 = load %struct.vnode*, %struct.vnode** %7, align 8
  store %struct.vnode* %8, %struct.vnode** %4, align 8
  %9 = load %struct.vop_strategy_args*, %struct.vop_strategy_args** %3, align 8
  %10 = getelementptr inbounds %struct.vop_strategy_args, %struct.vop_strategy_args* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %5, align 4
  %14 = load %struct.vnode*, %struct.vnode** %4, align 8
  %15 = call i32 @VTOI(%struct.vnode* %14)
  %16 = call i64 @I_IS_UFS2(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %29

18:                                               ; preds = %1
  %19 = load i32, i32* %5, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %18
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @UFS_NXADDR, align 4
  %24 = sub nsw i32 0, %23
  %25 = icmp sge i32 %22, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load %struct.vop_strategy_args*, %struct.vop_strategy_args** %3, align 8
  %28 = call i32 @VOP_STRATEGY_APV(i32* @ufs_vnodeops, %struct.vop_strategy_args* %27)
  store i32 %28, i32* %2, align 4
  br label %40

29:                                               ; preds = %21, %18, %1
  %30 = load %struct.vnode*, %struct.vnode** %4, align 8
  %31 = getelementptr inbounds %struct.vnode, %struct.vnode* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @VFIFO, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %29
  %36 = load %struct.vop_strategy_args*, %struct.vop_strategy_args** %3, align 8
  %37 = call i32 @VOP_STRATEGY_APV(i32* @ufs_fifoops, %struct.vop_strategy_args* %36)
  store i32 %37, i32* %2, align 4
  br label %40

38:                                               ; preds = %29
  %39 = call i32 @panic(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %40

40:                                               ; preds = %38, %35, %26
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local i64 @I_IS_UFS2(i32) #1

declare dso_local i32 @VTOI(%struct.vnode*) #1

declare dso_local i32 @VOP_STRATEGY_APV(i32*, %struct.vop_strategy_args*) #1

declare dso_local i32 @panic(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
