; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_ll2.c_ecore_ll2_acquire_connection_rx.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_ll2.c_ecore_ll2_acquire_connection_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { i32 }
%struct.ecore_ll2_info = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, %struct.ecore_ll2_rx_packet*, i32 }
%struct.ecore_ll2_rx_packet = type { i32 }

@ECORE_SUCCESS = common dso_local global i32 0, align 4
@ECORE_CHAIN_USE_TO_CONSUME_PRODUCE = common dso_local global i32 0, align 4
@ECORE_CHAIN_MODE_NEXT_PTR = common dso_local global i32 0, align 4
@ECORE_CHAIN_CNT_TYPE_U16 = common dso_local global i32 0, align 4
@OSAL_NULL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Failed to allocate ll2 rxq chain\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ECORE_NOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Failed to allocate ll2 Rx desc\0A\00", align 1
@ECORE_CHAIN_MODE_PBL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"Failed to allocate ll2 rcq chain\0A\00", align 1
@ECORE_MSG_LL2 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [51 x i8] c"Allocated LL2 Rxq [Type %08x] with 0x%08x buffers\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ecore_hwfn*, %struct.ecore_ll2_info*)* @ecore_ll2_acquire_connection_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecore_ll2_acquire_connection_rx(%struct.ecore_hwfn* %0, %struct.ecore_ll2_info* %1) #0 {
  %3 = alloca %struct.ecore_hwfn*, align 8
  %4 = alloca %struct.ecore_ll2_info*, align 8
  %5 = alloca %struct.ecore_ll2_rx_packet*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %3, align 8
  store %struct.ecore_ll2_info* %1, %struct.ecore_ll2_info** %4, align 8
  %8 = load i32, i32* @ECORE_SUCCESS, align 4
  store i32 %8, i32* %7, align 4
  %9 = load %struct.ecore_ll2_info*, %struct.ecore_ll2_info** %4, align 8
  %10 = getelementptr inbounds %struct.ecore_ll2_info, %struct.ecore_ll2_info* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  br label %94

15:                                               ; preds = %2
  %16 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %17 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @ECORE_CHAIN_USE_TO_CONSUME_PRODUCE, align 4
  %20 = load i32, i32* @ECORE_CHAIN_MODE_NEXT_PTR, align 4
  %21 = load i32, i32* @ECORE_CHAIN_CNT_TYPE_U16, align 4
  %22 = load %struct.ecore_ll2_info*, %struct.ecore_ll2_info** %4, align 8
  %23 = getelementptr inbounds %struct.ecore_ll2_info, %struct.ecore_ll2_info* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.ecore_ll2_info*, %struct.ecore_ll2_info** %4, align 8
  %27 = getelementptr inbounds %struct.ecore_ll2_info, %struct.ecore_ll2_info* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 2
  %29 = load i32, i32* @OSAL_NULL, align 4
  %30 = call i32 @ecore_chain_alloc(i32 %18, i32 %19, i32 %20, i32 %21, i32 %25, i32 4, i32* %28, i32 %29)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %15
  %34 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %35 = call i32 @DP_NOTICE(%struct.ecore_hwfn* %34, i32 0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %94

36:                                               ; preds = %15
  %37 = load %struct.ecore_ll2_info*, %struct.ecore_ll2_info** %4, align 8
  %38 = getelementptr inbounds %struct.ecore_ll2_info, %struct.ecore_ll2_info* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 2
  %40 = call i32 @ecore_chain_get_capacity(i32* %39)
  store i32 %40, i32* %6, align 4
  %41 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %42 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @GFP_KERNEL, align 4
  %45 = load i32, i32* %6, align 4
  %46 = sext i32 %45 to i64
  %47 = mul i64 %46, 4
  %48 = trunc i64 %47 to i32
  %49 = call %struct.ecore_ll2_rx_packet* @OSAL_ZALLOC(i32 %43, i32 %44, i32 %48)
  store %struct.ecore_ll2_rx_packet* %49, %struct.ecore_ll2_rx_packet** %5, align 8
  %50 = load %struct.ecore_ll2_rx_packet*, %struct.ecore_ll2_rx_packet** %5, align 8
  %51 = icmp ne %struct.ecore_ll2_rx_packet* %50, null
  br i1 %51, label %56, label %52

52:                                               ; preds = %36
  %53 = load i32, i32* @ECORE_NOMEM, align 4
  store i32 %53, i32* %7, align 4
  %54 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %55 = call i32 @DP_NOTICE(%struct.ecore_hwfn* %54, i32 0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %94

56:                                               ; preds = %36
  %57 = load %struct.ecore_ll2_rx_packet*, %struct.ecore_ll2_rx_packet** %5, align 8
  %58 = load %struct.ecore_ll2_info*, %struct.ecore_ll2_info** %4, align 8
  %59 = getelementptr inbounds %struct.ecore_ll2_info, %struct.ecore_ll2_info* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 1
  store %struct.ecore_ll2_rx_packet* %57, %struct.ecore_ll2_rx_packet** %60, align 8
  %61 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %62 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @ECORE_CHAIN_USE_TO_CONSUME_PRODUCE, align 4
  %65 = load i32, i32* @ECORE_CHAIN_MODE_PBL, align 4
  %66 = load i32, i32* @ECORE_CHAIN_CNT_TYPE_U16, align 4
  %67 = load %struct.ecore_ll2_info*, %struct.ecore_ll2_info** %4, align 8
  %68 = getelementptr inbounds %struct.ecore_ll2_info, %struct.ecore_ll2_info* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.ecore_ll2_info*, %struct.ecore_ll2_info** %4, align 8
  %72 = getelementptr inbounds %struct.ecore_ll2_info, %struct.ecore_ll2_info* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  %74 = load i32, i32* @OSAL_NULL, align 4
  %75 = call i32 @ecore_chain_alloc(i32 %63, i32 %64, i32 %65, i32 %66, i32 %70, i32 4, i32* %73, i32 %74)
  store i32 %75, i32* %7, align 4
  %76 = load i32, i32* %7, align 4
  %77 = load i32, i32* @ECORE_SUCCESS, align 4
  %78 = icmp ne i32 %76, %77
  br i1 %78, label %79, label %82

79:                                               ; preds = %56
  %80 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %81 = call i32 @DP_NOTICE(%struct.ecore_hwfn* %80, i32 0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  br label %94

82:                                               ; preds = %56
  %83 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %84 = load i32, i32* @ECORE_MSG_LL2, align 4
  %85 = load %struct.ecore_ll2_info*, %struct.ecore_ll2_info** %4, align 8
  %86 = getelementptr inbounds %struct.ecore_ll2_info, %struct.ecore_ll2_info* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.ecore_ll2_info*, %struct.ecore_ll2_info** %4, align 8
  %90 = getelementptr inbounds %struct.ecore_ll2_info, %struct.ecore_ll2_info* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @DP_VERBOSE(%struct.ecore_hwfn* %83, i32 %84, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3, i64 0, i64 0), i32 %88, i32 %92)
  br label %94

94:                                               ; preds = %82, %79, %52, %33, %14
  %95 = load i32, i32* %7, align 4
  ret i32 %95
}

declare dso_local i32 @ecore_chain_alloc(i32, i32, i32, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @DP_NOTICE(%struct.ecore_hwfn*, i32, i8*) #1

declare dso_local i32 @ecore_chain_get_capacity(i32*) #1

declare dso_local %struct.ecore_ll2_rx_packet* @OSAL_ZALLOC(i32, i32, i32) #1

declare dso_local i32 @DP_VERBOSE(%struct.ecore_hwfn*, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
