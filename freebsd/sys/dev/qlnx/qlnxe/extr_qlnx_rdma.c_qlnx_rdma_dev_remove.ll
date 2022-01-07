; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_qlnx_rdma.c_qlnx_rdma_dev_remove.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_qlnx_rdma.c_qlnx_rdma_dev_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlnx_host = type { i64, %struct.qlnx_host* }

@.str = private unnamed_addr constant [15 x i8] c"enter ha = %p\0A\00", align 1
@qlnx_host_list = common dso_local global %struct.qlnx_host* null, align 8
@ECORE_PCI_ETH_IWARP = common dso_local global i64 0, align 8
@ECORE_PCI_ETH_ROCE = common dso_local global i64 0, align 8
@qlnx_rdma_dev_lock = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"exit0 ha = %p\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"exit1 ha = %p\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qlnx_rdma_dev_remove(%struct.qlnx_host* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qlnx_host*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.qlnx_host*, align 8
  %6 = alloca %struct.qlnx_host*, align 8
  store %struct.qlnx_host* %0, %struct.qlnx_host** %3, align 8
  store i32 0, i32* %4, align 4
  %7 = load %struct.qlnx_host*, %struct.qlnx_host** %3, align 8
  %8 = load %struct.qlnx_host*, %struct.qlnx_host** %3, align 8
  %9 = call i32 @QL_DPRINT12(%struct.qlnx_host* %7, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), %struct.qlnx_host* %8)
  %10 = load %struct.qlnx_host*, %struct.qlnx_host** @qlnx_host_list, align 8
  %11 = icmp eq %struct.qlnx_host* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load %struct.qlnx_host*, %struct.qlnx_host** %3, align 8
  %14 = icmp eq %struct.qlnx_host* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %12, %1
  %16 = load i32, i32* %4, align 4
  store i32 %16, i32* %2, align 4
  br label %86

17:                                               ; preds = %12
  %18 = load %struct.qlnx_host*, %struct.qlnx_host** %3, align 8
  %19 = getelementptr inbounds %struct.qlnx_host, %struct.qlnx_host* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @ECORE_PCI_ETH_IWARP, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %31

23:                                               ; preds = %17
  %24 = load %struct.qlnx_host*, %struct.qlnx_host** %3, align 8
  %25 = getelementptr inbounds %struct.qlnx_host, %struct.qlnx_host* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @ECORE_PCI_ETH_ROCE, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = load i32, i32* %4, align 4
  store i32 %30, i32* %2, align 4
  br label %86

31:                                               ; preds = %23, %17
  %32 = load %struct.qlnx_host*, %struct.qlnx_host** %3, align 8
  %33 = call i32 @_qlnx_rdma_dev_remove(%struct.qlnx_host* %32)
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* %4, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = load i32, i32* %4, align 4
  store i32 %37, i32* %2, align 4
  br label %86

38:                                               ; preds = %31
  %39 = call i32 @mtx_lock(i32* @qlnx_rdma_dev_lock)
  %40 = load %struct.qlnx_host*, %struct.qlnx_host** @qlnx_host_list, align 8
  %41 = load %struct.qlnx_host*, %struct.qlnx_host** %3, align 8
  %42 = icmp eq %struct.qlnx_host* %40, %41
  br i1 %42, label %43, label %54

43:                                               ; preds = %38
  %44 = load %struct.qlnx_host*, %struct.qlnx_host** %3, align 8
  %45 = getelementptr inbounds %struct.qlnx_host, %struct.qlnx_host* %44, i32 0, i32 1
  %46 = load %struct.qlnx_host*, %struct.qlnx_host** %45, align 8
  store %struct.qlnx_host* %46, %struct.qlnx_host** @qlnx_host_list, align 8
  %47 = load %struct.qlnx_host*, %struct.qlnx_host** %3, align 8
  %48 = getelementptr inbounds %struct.qlnx_host, %struct.qlnx_host* %47, i32 0, i32 1
  store %struct.qlnx_host* null, %struct.qlnx_host** %48, align 8
  %49 = call i32 @mtx_unlock(i32* @qlnx_rdma_dev_lock)
  %50 = load %struct.qlnx_host*, %struct.qlnx_host** %3, align 8
  %51 = load %struct.qlnx_host*, %struct.qlnx_host** %3, align 8
  %52 = call i32 @QL_DPRINT12(%struct.qlnx_host* %50, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), %struct.qlnx_host* %51)
  %53 = load i32, i32* %4, align 4
  store i32 %53, i32* %2, align 4
  br label %86

54:                                               ; preds = %38
  %55 = load %struct.qlnx_host*, %struct.qlnx_host** @qlnx_host_list, align 8
  store %struct.qlnx_host* %55, %struct.qlnx_host** %6, align 8
  store %struct.qlnx_host* %55, %struct.qlnx_host** %5, align 8
  br label %56

56:                                               ; preds = %65, %54
  %57 = load %struct.qlnx_host*, %struct.qlnx_host** %6, align 8
  %58 = load %struct.qlnx_host*, %struct.qlnx_host** %3, align 8
  %59 = icmp ne %struct.qlnx_host* %57, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %56
  %61 = load %struct.qlnx_host*, %struct.qlnx_host** %6, align 8
  %62 = icmp ne %struct.qlnx_host* %61, null
  br label %63

63:                                               ; preds = %60, %56
  %64 = phi i1 [ false, %56 ], [ %62, %60 ]
  br i1 %64, label %65, label %70

65:                                               ; preds = %63
  %66 = load %struct.qlnx_host*, %struct.qlnx_host** %6, align 8
  store %struct.qlnx_host* %66, %struct.qlnx_host** %5, align 8
  %67 = load %struct.qlnx_host*, %struct.qlnx_host** %6, align 8
  %68 = getelementptr inbounds %struct.qlnx_host, %struct.qlnx_host* %67, i32 0, i32 1
  %69 = load %struct.qlnx_host*, %struct.qlnx_host** %68, align 8
  store %struct.qlnx_host* %69, %struct.qlnx_host** %6, align 8
  br label %56

70:                                               ; preds = %63
  %71 = load %struct.qlnx_host*, %struct.qlnx_host** %6, align 8
  %72 = load %struct.qlnx_host*, %struct.qlnx_host** %3, align 8
  %73 = icmp eq %struct.qlnx_host* %71, %72
  br i1 %73, label %74, label %80

74:                                               ; preds = %70
  %75 = load %struct.qlnx_host*, %struct.qlnx_host** %3, align 8
  %76 = getelementptr inbounds %struct.qlnx_host, %struct.qlnx_host* %75, i32 0, i32 1
  %77 = load %struct.qlnx_host*, %struct.qlnx_host** %76, align 8
  store %struct.qlnx_host* %77, %struct.qlnx_host** %5, align 8
  %78 = load %struct.qlnx_host*, %struct.qlnx_host** %3, align 8
  %79 = getelementptr inbounds %struct.qlnx_host, %struct.qlnx_host* %78, i32 0, i32 1
  store %struct.qlnx_host* null, %struct.qlnx_host** %79, align 8
  br label %80

80:                                               ; preds = %74, %70
  %81 = call i32 @mtx_unlock(i32* @qlnx_rdma_dev_lock)
  %82 = load %struct.qlnx_host*, %struct.qlnx_host** %3, align 8
  %83 = load %struct.qlnx_host*, %struct.qlnx_host** %3, align 8
  %84 = call i32 @QL_DPRINT12(%struct.qlnx_host* %82, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), %struct.qlnx_host* %83)
  %85 = load i32, i32* %4, align 4
  store i32 %85, i32* %2, align 4
  br label %86

86:                                               ; preds = %80, %43, %36, %29, %15
  %87 = load i32, i32* %2, align 4
  ret i32 %87
}

declare dso_local i32 @QL_DPRINT12(%struct.qlnx_host*, i8*, %struct.qlnx_host*) #1

declare dso_local i32 @_qlnx_rdma_dev_remove(%struct.qlnx_host*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
