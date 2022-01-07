; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_qlnx_rdma.c__qlnx_rdma_dev_remove.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_qlnx_rdma.c__qlnx_rdma_dev_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 (%struct.qlnx_host*, i32)* }
%struct.qlnx_host = type { i64, i32 }

@.str = private unnamed_addr constant [33 x i8] c"enter ha = %p qlnx_rdma_if = %p\0A\00", align 1
@qlnx_rdma_if = common dso_local global %struct.TYPE_3__* null, align 8
@ECORE_PCI_ETH_IWARP = common dso_local global i64 0, align 8
@ECORE_PCI_ETH_ROCE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [32 x i8] c"exit ha = %p qlnx_rdma_if = %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qlnx_host*)* @_qlnx_rdma_dev_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_qlnx_rdma_dev_remove(%struct.qlnx_host* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qlnx_host*, align 8
  %4 = alloca i32, align 4
  store %struct.qlnx_host* %0, %struct.qlnx_host** %3, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.qlnx_host*, %struct.qlnx_host** %3, align 8
  %6 = load %struct.qlnx_host*, %struct.qlnx_host** %3, align 8
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** @qlnx_rdma_if, align 8
  %8 = call i32 @QL_DPRINT12(%struct.qlnx_host* %5, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), %struct.qlnx_host* %6, %struct.TYPE_3__* %7)
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** @qlnx_rdma_if, align 8
  %10 = icmp eq %struct.TYPE_3__* %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* %4, align 4
  store i32 %12, i32* %2, align 4
  br label %41

13:                                               ; preds = %1
  %14 = load %struct.qlnx_host*, %struct.qlnx_host** %3, align 8
  %15 = getelementptr inbounds %struct.qlnx_host, %struct.qlnx_host* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @ECORE_PCI_ETH_IWARP, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %27

19:                                               ; preds = %13
  %20 = load %struct.qlnx_host*, %struct.qlnx_host** %3, align 8
  %21 = getelementptr inbounds %struct.qlnx_host, %struct.qlnx_host* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @ECORE_PCI_ETH_ROCE, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %19
  %26 = load i32, i32* %4, align 4
  store i32 %26, i32* %2, align 4
  br label %41

27:                                               ; preds = %19, %13
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** @qlnx_rdma_if, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32 (%struct.qlnx_host*, i32)*, i32 (%struct.qlnx_host*, i32)** %29, align 8
  %31 = load %struct.qlnx_host*, %struct.qlnx_host** %3, align 8
  %32 = load %struct.qlnx_host*, %struct.qlnx_host** %3, align 8
  %33 = getelementptr inbounds %struct.qlnx_host, %struct.qlnx_host* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call i32 %30(%struct.qlnx_host* %31, i32 %34)
  store i32 %35, i32* %4, align 4
  %36 = load %struct.qlnx_host*, %struct.qlnx_host** %3, align 8
  %37 = load %struct.qlnx_host*, %struct.qlnx_host** %3, align 8
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** @qlnx_rdma_if, align 8
  %39 = call i32 @QL_DPRINT12(%struct.qlnx_host* %36, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), %struct.qlnx_host* %37, %struct.TYPE_3__* %38)
  %40 = load i32, i32* %4, align 4
  store i32 %40, i32* %2, align 4
  br label %41

41:                                               ; preds = %27, %25, %11
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local i32 @QL_DPRINT12(%struct.qlnx_host*, i8*, %struct.qlnx_host*, %struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
