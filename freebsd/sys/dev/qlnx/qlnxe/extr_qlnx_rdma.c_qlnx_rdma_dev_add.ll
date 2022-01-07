; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_qlnx_rdma.c_qlnx_rdma_dev_add.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_qlnx_rdma.c_qlnx_rdma_dev_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlnx_host = type { i64, %struct.qlnx_host* }

@.str = private unnamed_addr constant [15 x i8] c"enter ha = %p\0A\00", align 1
@ECORE_PCI_ETH_IWARP = common dso_local global i64 0, align 8
@ECORE_PCI_ETH_ROCE = common dso_local global i64 0, align 8
@qlnx_rdma_dev_lock = common dso_local global i32 0, align 4
@qlnx_host_list = common dso_local global %struct.qlnx_host* null, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"exit (%p)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qlnx_rdma_dev_add(%struct.qlnx_host* %0) #0 {
  %2 = alloca %struct.qlnx_host*, align 8
  store %struct.qlnx_host* %0, %struct.qlnx_host** %2, align 8
  %3 = load %struct.qlnx_host*, %struct.qlnx_host** %2, align 8
  %4 = load %struct.qlnx_host*, %struct.qlnx_host** %2, align 8
  %5 = call i32 @QL_DPRINT12(%struct.qlnx_host* %3, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), %struct.qlnx_host* %4)
  %6 = load %struct.qlnx_host*, %struct.qlnx_host** %2, align 8
  %7 = getelementptr inbounds %struct.qlnx_host, %struct.qlnx_host* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @ECORE_PCI_ETH_IWARP, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %18

11:                                               ; preds = %1
  %12 = load %struct.qlnx_host*, %struct.qlnx_host** %2, align 8
  %13 = getelementptr inbounds %struct.qlnx_host, %struct.qlnx_host* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @ECORE_PCI_ETH_ROCE, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %11
  br label %38

18:                                               ; preds = %11, %1
  %19 = call i32 @mtx_lock(i32* @qlnx_rdma_dev_lock)
  %20 = load %struct.qlnx_host*, %struct.qlnx_host** @qlnx_host_list, align 8
  %21 = icmp eq %struct.qlnx_host* %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %18
  %23 = load %struct.qlnx_host*, %struct.qlnx_host** %2, align 8
  store %struct.qlnx_host* %23, %struct.qlnx_host** @qlnx_host_list, align 8
  %24 = load %struct.qlnx_host*, %struct.qlnx_host** %2, align 8
  %25 = getelementptr inbounds %struct.qlnx_host, %struct.qlnx_host* %24, i32 0, i32 1
  store %struct.qlnx_host* null, %struct.qlnx_host** %25, align 8
  br label %31

26:                                               ; preds = %18
  %27 = load %struct.qlnx_host*, %struct.qlnx_host** @qlnx_host_list, align 8
  %28 = load %struct.qlnx_host*, %struct.qlnx_host** %2, align 8
  %29 = getelementptr inbounds %struct.qlnx_host, %struct.qlnx_host* %28, i32 0, i32 1
  store %struct.qlnx_host* %27, %struct.qlnx_host** %29, align 8
  %30 = load %struct.qlnx_host*, %struct.qlnx_host** %2, align 8
  store %struct.qlnx_host* %30, %struct.qlnx_host** @qlnx_host_list, align 8
  br label %31

31:                                               ; preds = %26, %22
  %32 = call i32 @mtx_unlock(i32* @qlnx_rdma_dev_lock)
  %33 = load %struct.qlnx_host*, %struct.qlnx_host** %2, align 8
  %34 = call i32 @_qlnx_rdma_dev_add(%struct.qlnx_host* %33)
  %35 = load %struct.qlnx_host*, %struct.qlnx_host** %2, align 8
  %36 = load %struct.qlnx_host*, %struct.qlnx_host** %2, align 8
  %37 = call i32 @QL_DPRINT12(%struct.qlnx_host* %35, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), %struct.qlnx_host* %36)
  br label %38

38:                                               ; preds = %31, %17
  ret void
}

declare dso_local i32 @QL_DPRINT12(%struct.qlnx_host*, i8*, %struct.qlnx_host*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @_qlnx_rdma_dev_add(%struct.qlnx_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
