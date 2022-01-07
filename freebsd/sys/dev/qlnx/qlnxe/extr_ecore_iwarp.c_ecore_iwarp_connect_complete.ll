; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_iwarp.c_ecore_iwarp_connect_complete.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_iwarp.c_ecore_iwarp_connect_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.ecore_iwarp_ep = type { i64, i64, i32 }

@TCP_CONNECT_PASSIVE = common dso_local global i64 0, align 8
@OSAL_NULL = common dso_local global i32 0, align 4
@ECORE_IWARP_EP_ABORTING = common dso_local global i64 0, align 8
@RDMA_RETURN_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ecore_hwfn*, %struct.ecore_iwarp_ep*, i64)* @ecore_iwarp_connect_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ecore_iwarp_connect_complete(%struct.ecore_hwfn* %0, %struct.ecore_iwarp_ep* %1, i64 %2) #0 {
  %4 = alloca %struct.ecore_hwfn*, align 8
  %5 = alloca %struct.ecore_iwarp_ep*, align 8
  %6 = alloca i64, align 8
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %4, align 8
  store %struct.ecore_iwarp_ep* %1, %struct.ecore_iwarp_ep** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load %struct.ecore_iwarp_ep*, %struct.ecore_iwarp_ep** %5, align 8
  %8 = getelementptr inbounds %struct.ecore_iwarp_ep, %struct.ecore_iwarp_ep* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @TCP_CONNECT_PASSIVE, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %47

12:                                               ; preds = %3
  %13 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %14 = load %struct.ecore_iwarp_ep*, %struct.ecore_iwarp_ep** %5, align 8
  %15 = getelementptr inbounds %struct.ecore_iwarp_ep, %struct.ecore_iwarp_ep* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %18 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @ecore_iwarp_ll2_post_rx(%struct.ecore_hwfn* %13, i32 %16, i32 %22)
  %24 = load i32, i32* @OSAL_NULL, align 4
  %25 = load %struct.ecore_iwarp_ep*, %struct.ecore_iwarp_ep** %5, align 8
  %26 = getelementptr inbounds %struct.ecore_iwarp_ep, %struct.ecore_iwarp_ep* %25, i32 0, i32 2
  store i32 %24, i32* %26, align 8
  %27 = load %struct.ecore_iwarp_ep*, %struct.ecore_iwarp_ep** %5, align 8
  %28 = getelementptr inbounds %struct.ecore_iwarp_ep, %struct.ecore_iwarp_ep* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @ECORE_IWARP_EP_ABORTING, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %12
  br label %61

33:                                               ; preds = %12
  %34 = load i64, i64* %6, align 8
  %35 = load i64, i64* @RDMA_RETURN_OK, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %33
  %38 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %39 = load %struct.ecore_iwarp_ep*, %struct.ecore_iwarp_ep** %5, align 8
  %40 = call i32 @ecore_iwarp_mpa_received(%struct.ecore_hwfn* %38, %struct.ecore_iwarp_ep* %39)
  br label %46

41:                                               ; preds = %33
  %42 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %43 = load %struct.ecore_iwarp_ep*, %struct.ecore_iwarp_ep** %5, align 8
  %44 = load i64, i64* %6, align 8
  %45 = call i32 @ecore_iwarp_tcp_connect_unsuccessful(%struct.ecore_hwfn* %42, %struct.ecore_iwarp_ep* %43, i64 %44)
  br label %46

46:                                               ; preds = %41, %37
  br label %61

47:                                               ; preds = %3
  %48 = load i64, i64* %6, align 8
  %49 = load i64, i64* @RDMA_RETURN_OK, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %47
  %52 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %53 = load %struct.ecore_iwarp_ep*, %struct.ecore_iwarp_ep** %5, align 8
  %54 = call i32 @ecore_iwarp_mpa_offload(%struct.ecore_hwfn* %52, %struct.ecore_iwarp_ep* %53)
  br label %60

55:                                               ; preds = %47
  %56 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %57 = load %struct.ecore_iwarp_ep*, %struct.ecore_iwarp_ep** %5, align 8
  %58 = load i64, i64* %6, align 8
  %59 = call i32 @ecore_iwarp_tcp_connect_unsuccessful(%struct.ecore_hwfn* %56, %struct.ecore_iwarp_ep* %57, i64 %58)
  br label %60

60:                                               ; preds = %55, %51
  br label %61

61:                                               ; preds = %32, %60, %46
  ret void
}

declare dso_local i32 @ecore_iwarp_ll2_post_rx(%struct.ecore_hwfn*, i32, i32) #1

declare dso_local i32 @ecore_iwarp_mpa_received(%struct.ecore_hwfn*, %struct.ecore_iwarp_ep*) #1

declare dso_local i32 @ecore_iwarp_tcp_connect_unsuccessful(%struct.ecore_hwfn*, %struct.ecore_iwarp_ep*, i64) #1

declare dso_local i32 @ecore_iwarp_mpa_offload(%struct.ecore_hwfn*, %struct.ecore_iwarp_ep*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
