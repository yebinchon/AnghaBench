; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_qlnx_os.c_qlnx_alloc_mem_rxq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_qlnx_os.c_qlnx_alloc_mem_rxq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.ifnet*, i32, %struct.ecore_dev }
%struct.ifnet = type { i32 }
%struct.ecore_dev = type { i32 }
%struct.qlnx_rx_queue = type { i32, i32, %struct.lro_ctrl, i32*, i32, i32, i32, i32* }
%struct.lro_ctrl = type { %struct.ifnet* }

@RX_RING_SIZE = common dso_local global i32 0, align 4
@ECORE_CHAIN_USE_TO_CONSUME_PRODUCE = common dso_local global i32 0, align 4
@ECORE_CHAIN_MODE_NEXT_PTR = common dso_local global i32 0, align 4
@ECORE_CHAIN_CNT_TYPE_U16 = common dso_local global i32 0, align 4
@ECORE_CHAIN_USE_TO_CONSUME = common dso_local global i32 0, align 4
@ECORE_CHAIN_MODE_PBL = common dso_local global i32 0, align 4
@ETH_TPA_MAX_AGGS_NUM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Rx buffers allocation failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"Allocated less buffers than desired (%d allocated)\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, %struct.qlnx_rx_queue*)* @qlnx_alloc_mem_rxq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlnx_alloc_mem_rxq(%struct.TYPE_7__* %0, %struct.qlnx_rx_queue* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca %struct.qlnx_rx_queue*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ifnet*, align 8
  %10 = alloca %struct.ecore_dev*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store %struct.qlnx_rx_queue* %1, %struct.qlnx_rx_queue** %5, align 8
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 2
  store %struct.ecore_dev* %12, %struct.ecore_dev** %10, align 8
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load %struct.ifnet*, %struct.ifnet** %14, align 8
  store %struct.ifnet* %15, %struct.ifnet** %9, align 8
  %16 = load i32, i32* @RX_RING_SIZE, align 4
  %17 = load %struct.qlnx_rx_queue*, %struct.qlnx_rx_queue** %5, align 8
  %18 = getelementptr inbounds %struct.qlnx_rx_queue, %struct.qlnx_rx_queue* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 8
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.qlnx_rx_queue*, %struct.qlnx_rx_queue** %5, align 8
  %23 = getelementptr inbounds %struct.qlnx_rx_queue, %struct.qlnx_rx_queue* %22, i32 0, i32 4
  store i32 %21, i32* %23, align 8
  %24 = load %struct.qlnx_rx_queue*, %struct.qlnx_rx_queue** %5, align 8
  %25 = getelementptr inbounds %struct.qlnx_rx_queue, %struct.qlnx_rx_queue* %24, i32 0, i32 7
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  %28 = bitcast i32* %27 to i8*
  %29 = load i32, i32* @RX_RING_SIZE, align 4
  %30 = sext i32 %29 to i64
  %31 = mul i64 4, %30
  %32 = trunc i64 %31 to i32
  %33 = call i32 @bzero(i8* %28, i32 %32)
  %34 = load %struct.ecore_dev*, %struct.ecore_dev** %10, align 8
  %35 = load i32, i32* @ECORE_CHAIN_USE_TO_CONSUME_PRODUCE, align 4
  %36 = load i32, i32* @ECORE_CHAIN_MODE_NEXT_PTR, align 4
  %37 = load i32, i32* @ECORE_CHAIN_CNT_TYPE_U16, align 4
  %38 = load i32, i32* @RX_RING_SIZE, align 4
  %39 = load %struct.qlnx_rx_queue*, %struct.qlnx_rx_queue** %5, align 8
  %40 = getelementptr inbounds %struct.qlnx_rx_queue, %struct.qlnx_rx_queue* %39, i32 0, i32 6
  %41 = call i32 @ecore_chain_alloc(%struct.ecore_dev* %34, i32 %35, i32 %36, i32 %37, i32 %38, i32 4, i32* %40, i32* null)
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %2
  br label %118

45:                                               ; preds = %2
  %46 = load %struct.ecore_dev*, %struct.ecore_dev** %10, align 8
  %47 = load i32, i32* @ECORE_CHAIN_USE_TO_CONSUME, align 4
  %48 = load i32, i32* @ECORE_CHAIN_MODE_PBL, align 4
  %49 = load i32, i32* @ECORE_CHAIN_CNT_TYPE_U16, align 4
  %50 = load i32, i32* @RX_RING_SIZE, align 4
  %51 = load %struct.qlnx_rx_queue*, %struct.qlnx_rx_queue** %5, align 8
  %52 = getelementptr inbounds %struct.qlnx_rx_queue, %struct.qlnx_rx_queue* %51, i32 0, i32 5
  %53 = call i32 @ecore_chain_alloc(%struct.ecore_dev* %46, i32 %47, i32 %48, i32 %49, i32 %50, i32 4, i32* %52, i32* null)
  store i32 %53, i32* %7, align 4
  %54 = load i32, i32* %7, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %45
  br label %118

57:                                               ; preds = %45
  store i32 0, i32* %6, align 4
  br label %58

58:                                               ; preds = %78, %57
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* @ETH_TPA_MAX_AGGS_NUM, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %81

62:                                               ; preds = %58
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %64 = load %struct.qlnx_rx_queue*, %struct.qlnx_rx_queue** %5, align 8
  %65 = getelementptr inbounds %struct.qlnx_rx_queue, %struct.qlnx_rx_queue* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.qlnx_rx_queue*, %struct.qlnx_rx_queue** %5, align 8
  %68 = getelementptr inbounds %struct.qlnx_rx_queue, %struct.qlnx_rx_queue* %67, i32 0, i32 3
  %69 = load i32*, i32** %68, align 8
  %70 = load i32, i32* %6, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = call i32 @qlnx_alloc_tpa_mbuf(%struct.TYPE_7__* %63, i32 %66, i32* %72)
  store i32 %73, i32* %7, align 4
  %74 = load i32, i32* %7, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %62
  br label %81

77:                                               ; preds = %62
  br label %78

78:                                               ; preds = %77
  %79 = load i32, i32* %6, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %6, align 4
  br label %58

81:                                               ; preds = %76, %58
  store i32 0, i32* %6, align 4
  br label %82

82:                                               ; preds = %96, %81
  %83 = load i32, i32* %6, align 4
  %84 = load %struct.qlnx_rx_queue*, %struct.qlnx_rx_queue** %5, align 8
  %85 = getelementptr inbounds %struct.qlnx_rx_queue, %struct.qlnx_rx_queue* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = icmp slt i32 %83, %86
  br i1 %87, label %88, label %99

88:                                               ; preds = %82
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %90 = load %struct.qlnx_rx_queue*, %struct.qlnx_rx_queue** %5, align 8
  %91 = call i32 @qlnx_alloc_rx_buffer(%struct.TYPE_7__* %89, %struct.qlnx_rx_queue* %90)
  store i32 %91, i32* %7, align 4
  %92 = load i32, i32* %7, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %88
  br label %99

95:                                               ; preds = %88
  br label %96

96:                                               ; preds = %95
  %97 = load i32, i32* %6, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %6, align 4
  br label %82

99:                                               ; preds = %94, %82
  %100 = load i32, i32* %6, align 4
  store i32 %100, i32* %8, align 4
  %101 = load i32, i32* %8, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %106, label %103

103:                                              ; preds = %99
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %105 = call i32 (%struct.TYPE_7__*, i8*, ...) @QL_DPRINT1(%struct.TYPE_7__* %104, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %118

106:                                              ; preds = %99
  %107 = load i32, i32* %8, align 4
  %108 = load %struct.qlnx_rx_queue*, %struct.qlnx_rx_queue** %5, align 8
  %109 = getelementptr inbounds %struct.qlnx_rx_queue, %struct.qlnx_rx_queue* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = icmp slt i32 %107, %110
  br i1 %111, label %112, label %116

112:                                              ; preds = %106
  %113 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %114 = load i32, i32* %8, align 4
  %115 = call i32 (%struct.TYPE_7__*, i8*, ...) @QL_DPRINT1(%struct.TYPE_7__* %113, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i32 %114)
  br label %116

116:                                              ; preds = %112, %106
  br label %117

117:                                              ; preds = %116
  store i32 0, i32* %3, align 4
  br label %124

118:                                              ; preds = %103, %56, %44
  %119 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %120 = load %struct.qlnx_rx_queue*, %struct.qlnx_rx_queue** %5, align 8
  %121 = call i32 @qlnx_free_mem_rxq(%struct.TYPE_7__* %119, %struct.qlnx_rx_queue* %120)
  %122 = load i32, i32* @ENOMEM, align 4
  %123 = sub nsw i32 0, %122
  store i32 %123, i32* %3, align 4
  br label %124

124:                                              ; preds = %118, %117
  %125 = load i32, i32* %3, align 4
  ret i32 %125
}

declare dso_local i32 @bzero(i8*, i32) #1

declare dso_local i32 @ecore_chain_alloc(%struct.ecore_dev*, i32, i32, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @qlnx_alloc_tpa_mbuf(%struct.TYPE_7__*, i32, i32*) #1

declare dso_local i32 @qlnx_alloc_rx_buffer(%struct.TYPE_7__*, %struct.qlnx_rx_queue*) #1

declare dso_local i32 @QL_DPRINT1(%struct.TYPE_7__*, i8*, ...) #1

declare dso_local i32 @qlnx_free_mem_rxq(%struct.TYPE_7__*, %struct.qlnx_rx_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
