; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_qlnx_rdma.c_qlnx_rdma_dev_open.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_qlnx_rdma.c_qlnx_rdma_dev_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 (%struct.qlnx_host*, i32, i32)* }
%struct.qlnx_host = type { i64, i32 }

@.str = private unnamed_addr constant [33 x i8] c"enter ha = %p qlnx_rdma_if = %p\0A\00", align 1
@qlnx_rdma_if = common dso_local global %struct.TYPE_3__* null, align 8
@ECORE_PCI_ETH_IWARP = common dso_local global i64 0, align 8
@ECORE_PCI_ETH_ROCE = common dso_local global i64 0, align 8
@QLNX_ETHDEV_UP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"exit ha = %p qlnx_rdma_if = %p\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qlnx_rdma_dev_open(%struct.qlnx_host* %0) #0 {
  %2 = alloca %struct.qlnx_host*, align 8
  store %struct.qlnx_host* %0, %struct.qlnx_host** %2, align 8
  %3 = load %struct.qlnx_host*, %struct.qlnx_host** %2, align 8
  %4 = load %struct.qlnx_host*, %struct.qlnx_host** %2, align 8
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** @qlnx_rdma_if, align 8
  %6 = call i32 @QL_DPRINT12(%struct.qlnx_host* %3, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), %struct.qlnx_host* %4, %struct.TYPE_3__* %5)
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** @qlnx_rdma_if, align 8
  %8 = icmp eq %struct.TYPE_3__* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %37

10:                                               ; preds = %1
  %11 = load %struct.qlnx_host*, %struct.qlnx_host** %2, align 8
  %12 = getelementptr inbounds %struct.qlnx_host, %struct.qlnx_host* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @ECORE_PCI_ETH_IWARP, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %23

16:                                               ; preds = %10
  %17 = load %struct.qlnx_host*, %struct.qlnx_host** %2, align 8
  %18 = getelementptr inbounds %struct.qlnx_host, %struct.qlnx_host* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @ECORE_PCI_ETH_ROCE, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  br label %37

23:                                               ; preds = %16, %10
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** @qlnx_rdma_if, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32 (%struct.qlnx_host*, i32, i32)*, i32 (%struct.qlnx_host*, i32, i32)** %25, align 8
  %27 = load %struct.qlnx_host*, %struct.qlnx_host** %2, align 8
  %28 = load %struct.qlnx_host*, %struct.qlnx_host** %2, align 8
  %29 = getelementptr inbounds %struct.qlnx_host, %struct.qlnx_host* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @QLNX_ETHDEV_UP, align 4
  %32 = call i32 %26(%struct.qlnx_host* %27, i32 %30, i32 %31)
  %33 = load %struct.qlnx_host*, %struct.qlnx_host** %2, align 8
  %34 = load %struct.qlnx_host*, %struct.qlnx_host** %2, align 8
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** @qlnx_rdma_if, align 8
  %36 = call i32 @QL_DPRINT12(%struct.qlnx_host* %33, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), %struct.qlnx_host* %34, %struct.TYPE_3__* %35)
  br label %37

37:                                               ; preds = %23, %22, %9
  ret void
}

declare dso_local i32 @QL_DPRINT12(%struct.qlnx_host*, i8*, %struct.qlnx_host*, %struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
