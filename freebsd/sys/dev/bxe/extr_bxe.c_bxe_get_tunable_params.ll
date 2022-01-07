; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_get_tunable_params.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_get_tunable_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_softc = type { i32, i32, i32, i32, i32, i32, i32, i32, i64 }

@bxe_interrupt_mode = common dso_local global i64 0, align 8
@INTR_MODE_INTX = common dso_local global i64 0, align 8
@INTR_MODE_MSI = common dso_local global i64 0, align 8
@INTR_MODE_MSIX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"invalid interrupt_mode value (%d)\0A\00", align 1
@bxe_queue_count = common dso_local global i64 0, align 8
@MAX_RSS_CHAINS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [32 x i8] c"invalid queue_count value (%d)\0A\00", align 1
@bxe_max_rx_bufs = common dso_local global i32 0, align 4
@RX_BD_USABLE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"invalid max_rx_bufs (%d)\0A\00", align 1
@bxe_hc_rx_ticks = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"invalid hc_rx_ticks (%d)\0A\00", align 1
@bxe_hc_tx_ticks = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [26 x i8] c"invalid hc_tx_ticks (%d)\0A\00", align 1
@bxe_max_aggregation_size = common dso_local global i32 0, align 4
@TPA_AGG_SIZE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [35 x i8] c"invalid max_aggregation_size (%d)\0A\00", align 1
@bxe_mrrs = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [19 x i8] c"invalid mrrs (%d)\0A\00", align 1
@bxe_autogreeen = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [25 x i8] c"invalid autogreeen (%d)\0A\00", align 1
@bxe_udp_rss = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [22 x i8] c"invalid udp_rss (%d)\0A\00", align 1
@mp_ncpus = common dso_local global i64 0, align 8
@DBG_LOAD = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [159 x i8] c"User Config: debug=0x%lx interrupt_mode=%d queue_count=%d hc_rx_ticks=%d hc_tx_ticks=%d rx_budget=%d max_aggregation_size=%d mrrs=%d autogreeen=%d udp_rss=%d\0A\00", align 1
@bxe_debug = common dso_local global i32 0, align 4
@bxe_rx_budget = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bxe_softc*)* @bxe_get_tunable_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bxe_get_tunable_params(%struct.bxe_softc* %0) #0 {
  %2 = alloca %struct.bxe_softc*, align 8
  store %struct.bxe_softc* %0, %struct.bxe_softc** %2, align 8
  %3 = load i64, i64* @bxe_interrupt_mode, align 8
  %4 = load i64, i64* @INTR_MODE_INTX, align 8
  %5 = icmp ne i64 %3, %4
  br i1 %5, label %6, label %20

6:                                                ; preds = %1
  %7 = load i64, i64* @bxe_interrupt_mode, align 8
  %8 = load i64, i64* @INTR_MODE_MSI, align 8
  %9 = icmp ne i64 %7, %8
  br i1 %9, label %10, label %20

10:                                               ; preds = %6
  %11 = load i64, i64* @bxe_interrupt_mode, align 8
  %12 = load i64, i64* @INTR_MODE_MSIX, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %20

14:                                               ; preds = %10
  %15 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %16 = load i64, i64* @bxe_interrupt_mode, align 8
  %17 = trunc i64 %16 to i32
  %18 = call i32 @BLOGW(%struct.bxe_softc* %15, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load i64, i64* @INTR_MODE_MSIX, align 8
  store i64 %19, i64* @bxe_interrupt_mode, align 8
  br label %20

20:                                               ; preds = %14, %10, %6, %1
  %21 = load i64, i64* @bxe_queue_count, align 8
  %22 = icmp slt i64 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %20
  %24 = load i64, i64* @bxe_queue_count, align 8
  %25 = load i64, i64* @MAX_RSS_CHAINS, align 8
  %26 = icmp sgt i64 %24, %25
  br i1 %26, label %27, label %32

27:                                               ; preds = %23, %20
  %28 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %29 = load i64, i64* @bxe_queue_count, align 8
  %30 = trunc i64 %29 to i32
  %31 = call i32 @BLOGW(%struct.bxe_softc* %28, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %30)
  store i64 0, i64* @bxe_queue_count, align 8
  br label %32

32:                                               ; preds = %27, %23
  %33 = load i32, i32* @bxe_max_rx_bufs, align 4
  %34 = icmp slt i32 %33, 1
  br i1 %34, label %39, label %35

35:                                               ; preds = %32
  %36 = load i32, i32* @bxe_max_rx_bufs, align 4
  %37 = load i32, i32* @RX_BD_USABLE, align 4
  %38 = icmp sgt i32 %36, %37
  br i1 %38, label %39, label %49

39:                                               ; preds = %35, %32
  %40 = load i32, i32* @bxe_max_rx_bufs, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %39
  %43 = load i32, i32* @RX_BD_USABLE, align 4
  store i32 %43, i32* @bxe_max_rx_bufs, align 4
  br label %48

44:                                               ; preds = %39
  %45 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %46 = load i32, i32* @bxe_max_rx_bufs, align 4
  %47 = call i32 @BLOGW(%struct.bxe_softc* %45, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %46)
  store i32 2048, i32* @bxe_max_rx_bufs, align 4
  br label %48

48:                                               ; preds = %44, %42
  br label %49

49:                                               ; preds = %48, %35
  %50 = load i32, i32* @bxe_hc_rx_ticks, align 4
  %51 = icmp slt i32 %50, 1
  br i1 %51, label %55, label %52

52:                                               ; preds = %49
  %53 = load i32, i32* @bxe_hc_rx_ticks, align 4
  %54 = icmp sgt i32 %53, 100
  br i1 %54, label %55, label %59

55:                                               ; preds = %52, %49
  %56 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %57 = load i32, i32* @bxe_hc_rx_ticks, align 4
  %58 = call i32 @BLOGW(%struct.bxe_softc* %56, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %57)
  store i32 25, i32* @bxe_hc_rx_ticks, align 4
  br label %59

59:                                               ; preds = %55, %52
  %60 = load i32, i32* @bxe_hc_tx_ticks, align 4
  %61 = icmp slt i32 %60, 1
  br i1 %61, label %65, label %62

62:                                               ; preds = %59
  %63 = load i32, i32* @bxe_hc_tx_ticks, align 4
  %64 = icmp sgt i32 %63, 100
  br i1 %64, label %65, label %69

65:                                               ; preds = %62, %59
  %66 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %67 = load i32, i32* @bxe_hc_tx_ticks, align 4
  %68 = call i32 @BLOGW(%struct.bxe_softc* %66, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i32 %67)
  store i32 50, i32* @bxe_hc_tx_ticks, align 4
  br label %69

69:                                               ; preds = %65, %62
  %70 = load i32, i32* @bxe_max_aggregation_size, align 4
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %69
  %73 = load i32, i32* @TPA_AGG_SIZE, align 4
  store i32 %73, i32* @bxe_max_aggregation_size, align 4
  br label %74

74:                                               ; preds = %72, %69
  %75 = load i32, i32* @bxe_max_aggregation_size, align 4
  %76 = icmp sgt i32 %75, 65535
  br i1 %76, label %77, label %82

77:                                               ; preds = %74
  %78 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %79 = load i32, i32* @bxe_max_aggregation_size, align 4
  %80 = call i32 @BLOGW(%struct.bxe_softc* %78, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0), i32 %79)
  %81 = load i32, i32* @TPA_AGG_SIZE, align 4
  store i32 %81, i32* @bxe_max_aggregation_size, align 4
  br label %82

82:                                               ; preds = %77, %74
  %83 = load i32, i32* @bxe_mrrs, align 4
  %84 = icmp slt i32 %83, -1
  br i1 %84, label %88, label %85

85:                                               ; preds = %82
  %86 = load i32, i32* @bxe_mrrs, align 4
  %87 = icmp sgt i32 %86, 3
  br i1 %87, label %88, label %92

88:                                               ; preds = %85, %82
  %89 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %90 = load i32, i32* @bxe_mrrs, align 4
  %91 = call i32 @BLOGW(%struct.bxe_softc* %89, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i32 %90)
  store i32 -1, i32* @bxe_mrrs, align 4
  br label %92

92:                                               ; preds = %88, %85
  %93 = load i32, i32* @bxe_autogreeen, align 4
  %94 = icmp slt i32 %93, 0
  br i1 %94, label %98, label %95

95:                                               ; preds = %92
  %96 = load i32, i32* @bxe_autogreeen, align 4
  %97 = icmp sgt i32 %96, 2
  br i1 %97, label %98, label %102

98:                                               ; preds = %95, %92
  %99 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %100 = load i32, i32* @bxe_autogreeen, align 4
  %101 = call i32 @BLOGW(%struct.bxe_softc* %99, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0), i32 %100)
  store i32 0, i32* @bxe_autogreeen, align 4
  br label %102

102:                                              ; preds = %98, %95
  %103 = load i32, i32* @bxe_udp_rss, align 4
  %104 = icmp slt i32 %103, 0
  br i1 %104, label %108, label %105

105:                                              ; preds = %102
  %106 = load i32, i32* @bxe_udp_rss, align 4
  %107 = icmp sgt i32 %106, 1
  br i1 %107, label %108, label %112

108:                                              ; preds = %105, %102
  %109 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %110 = load i32, i32* @bxe_udp_rss, align 4
  %111 = call i32 @BLOGW(%struct.bxe_softc* %109, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0), i32 %110)
  store i32 0, i32* @bxe_udp_rss, align 4
  br label %112

112:                                              ; preds = %108, %105
  %113 = load i64, i64* @bxe_interrupt_mode, align 8
  %114 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %115 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %114, i32 0, i32 8
  store i64 %113, i64* %115, align 8
  %116 = load i32, i32* @bxe_max_rx_bufs, align 4
  %117 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %118 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %117, i32 0, i32 0
  store i32 %116, i32* %118, align 8
  %119 = load i32, i32* @bxe_hc_rx_ticks, align 4
  %120 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %121 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %120, i32 0, i32 1
  store i32 %119, i32* %121, align 4
  %122 = load i32, i32* @bxe_hc_tx_ticks, align 4
  %123 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %124 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %123, i32 0, i32 2
  store i32 %122, i32* %124, align 8
  %125 = load i32, i32* @bxe_max_aggregation_size, align 4
  %126 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %127 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %126, i32 0, i32 3
  store i32 %125, i32* %127, align 4
  %128 = load i32, i32* @bxe_mrrs, align 4
  %129 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %130 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %129, i32 0, i32 4
  store i32 %128, i32* %130, align 8
  %131 = load i32, i32* @bxe_autogreeen, align 4
  %132 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %133 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %132, i32 0, i32 5
  store i32 %131, i32* %133, align 4
  %134 = load i32, i32* @bxe_udp_rss, align 4
  %135 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %136 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %135, i32 0, i32 6
  store i32 %134, i32* %136, align 8
  %137 = load i64, i64* @bxe_interrupt_mode, align 8
  %138 = load i64, i64* @INTR_MODE_INTX, align 8
  %139 = icmp eq i64 %137, %138
  br i1 %139, label %140, label %143

140:                                              ; preds = %112
  %141 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %142 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %141, i32 0, i32 7
  store i32 1, i32* %142, align 4
  br label %168

143:                                              ; preds = %112
  %144 = load i64, i64* @bxe_queue_count, align 8
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %148

146:                                              ; preds = %143
  %147 = load i64, i64* @bxe_queue_count, align 8
  br label %150

148:                                              ; preds = %143
  %149 = load i64, i64* @mp_ncpus, align 8
  br label %150

150:                                              ; preds = %148, %146
  %151 = phi i64 [ %147, %146 ], [ %149, %148 ]
  %152 = load i64, i64* @MAX_RSS_CHAINS, align 8
  %153 = call i32 @min(i64 %151, i64 %152)
  %154 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %155 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %154, i32 0, i32 7
  store i32 %153, i32* %155, align 4
  %156 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %157 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %156, i32 0, i32 7
  %158 = load i32, i32* %157, align 4
  %159 = sext i32 %158 to i64
  %160 = load i64, i64* @mp_ncpus, align 8
  %161 = icmp sgt i64 %159, %160
  br i1 %161, label %162, label %167

162:                                              ; preds = %150
  %163 = load i64, i64* @mp_ncpus, align 8
  %164 = trunc i64 %163 to i32
  %165 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %166 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %165, i32 0, i32 7
  store i32 %164, i32* %166, align 4
  br label %167

167:                                              ; preds = %162, %150
  br label %168

168:                                              ; preds = %167, %140
  %169 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %170 = load i32, i32* @DBG_LOAD, align 4
  %171 = load i32, i32* @bxe_debug, align 4
  %172 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %173 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %172, i32 0, i32 8
  %174 = load i64, i64* %173, align 8
  %175 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %176 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %175, i32 0, i32 7
  %177 = load i32, i32* %176, align 4
  %178 = sext i32 %177 to i64
  %179 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %180 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %183 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %182, i32 0, i32 2
  %184 = load i32, i32* %183, align 8
  %185 = load i32, i32* @bxe_rx_budget, align 4
  %186 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %187 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %186, i32 0, i32 3
  %188 = load i32, i32* %187, align 4
  %189 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %190 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %189, i32 0, i32 4
  %191 = load i32, i32* %190, align 8
  %192 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %193 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %192, i32 0, i32 5
  %194 = load i32, i32* %193, align 4
  %195 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %196 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %195, i32 0, i32 6
  %197 = load i32, i32* %196, align 8
  %198 = call i32 @BLOGD(%struct.bxe_softc* %169, i32 %170, i8* getelementptr inbounds ([159 x i8], [159 x i8]* @.str.9, i64 0, i64 0), i32 %171, i64 %174, i64 %178, i32 %181, i32 %184, i32 %185, i32 %188, i32 %191, i32 %194, i32 %197)
  ret void
}

declare dso_local i32 @BLOGW(%struct.bxe_softc*, i8*, i32) #1

declare dso_local i32 @min(i64, i64) #1

declare dso_local i32 @BLOGD(%struct.bxe_softc*, i32, i8*, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
