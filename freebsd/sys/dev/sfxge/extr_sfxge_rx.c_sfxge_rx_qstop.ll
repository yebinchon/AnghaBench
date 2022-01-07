; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sfxge/extr_sfxge_rx.c_sfxge_rx_qstop.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sfxge/extr_sfxge_rx.c_sfxge_rx_qstop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sfxge_softc = type { i32, i32, i32, %struct.sfxge_evq**, %struct.sfxge_rxq** }
%struct.sfxge_evq = type { i32 }
%struct.sfxge_rxq = type { i64, i64, i64, i64, i64, i32, i32, i64, i64, i32 }

@SFXGE_RXQ_STARTED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"rxq not started\00", align 1
@SFXGE_RXQ_INITIALIZED = common dso_local global i64 0, align 8
@SFXGE_FLUSH_DONE = common dso_local global i64 0, align 8
@SFXGE_FLUSH_PENDING = common dso_local global i64 0, align 8
@SFXGE_FLUSH_FAILED = common dso_local global i64 0, align 8
@LOG_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"%s: Cannot flush Rx queue %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"%s: Flushing Rx queue %u failed\0A\00", align 1
@B_TRUE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"rxq->completed != rxq->pending\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sfxge_softc*, i32)* @sfxge_rx_qstop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sfxge_rx_qstop(%struct.sfxge_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.sfxge_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sfxge_rxq*, align 8
  %6 = alloca %struct.sfxge_evq*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.sfxge_softc* %0, %struct.sfxge_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 3, i32* %8, align 4
  %9 = load %struct.sfxge_softc*, %struct.sfxge_softc** %3, align 8
  %10 = call i32 @SFXGE_ADAPTER_LOCK_ASSERT_OWNED(%struct.sfxge_softc* %9)
  %11 = load %struct.sfxge_softc*, %struct.sfxge_softc** %3, align 8
  %12 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %11, i32 0, i32 4
  %13 = load %struct.sfxge_rxq**, %struct.sfxge_rxq*** %12, align 8
  %14 = load i32, i32* %4, align 4
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds %struct.sfxge_rxq*, %struct.sfxge_rxq** %13, i64 %15
  %17 = load %struct.sfxge_rxq*, %struct.sfxge_rxq** %16, align 8
  store %struct.sfxge_rxq* %17, %struct.sfxge_rxq** %5, align 8
  %18 = load %struct.sfxge_softc*, %struct.sfxge_softc** %3, align 8
  %19 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %18, i32 0, i32 3
  %20 = load %struct.sfxge_evq**, %struct.sfxge_evq*** %19, align 8
  %21 = load i32, i32* %4, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.sfxge_evq*, %struct.sfxge_evq** %20, i64 %22
  %24 = load %struct.sfxge_evq*, %struct.sfxge_evq** %23, align 8
  store %struct.sfxge_evq* %24, %struct.sfxge_evq** %6, align 8
  %25 = load %struct.sfxge_evq*, %struct.sfxge_evq** %6, align 8
  %26 = call i32 @SFXGE_EVQ_LOCK(%struct.sfxge_evq* %25)
  %27 = load %struct.sfxge_rxq*, %struct.sfxge_rxq** %5, align 8
  %28 = getelementptr inbounds %struct.sfxge_rxq, %struct.sfxge_rxq* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @SFXGE_RXQ_STARTED, align 8
  %31 = icmp eq i64 %29, %30
  %32 = zext i1 %31 to i32
  %33 = call i32 @KASSERT(i32 %32, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %34 = load i64, i64* @SFXGE_RXQ_INITIALIZED, align 8
  %35 = load %struct.sfxge_rxq*, %struct.sfxge_rxq** %5, align 8
  %36 = getelementptr inbounds %struct.sfxge_rxq, %struct.sfxge_rxq* %35, i32 0, i32 0
  store i64 %34, i64* %36, align 8
  %37 = load %struct.sfxge_rxq*, %struct.sfxge_rxq** %5, align 8
  %38 = getelementptr inbounds %struct.sfxge_rxq, %struct.sfxge_rxq* %37, i32 0, i32 9
  %39 = call i32 @callout_stop(i32* %38)
  br label %40

40:                                               ; preds = %101, %2
  %41 = load %struct.sfxge_rxq*, %struct.sfxge_rxq** %5, align 8
  %42 = getelementptr inbounds %struct.sfxge_rxq, %struct.sfxge_rxq* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @SFXGE_FLUSH_DONE, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %40
  %47 = load i32, i32* %8, align 4
  %48 = icmp ne i32 %47, 0
  br label %49

49:                                               ; preds = %46, %40
  %50 = phi i1 [ false, %40 ], [ %48, %46 ]
  br i1 %50, label %51, label %104

51:                                               ; preds = %49
  %52 = load i64, i64* @SFXGE_FLUSH_PENDING, align 8
  %53 = load %struct.sfxge_rxq*, %struct.sfxge_rxq** %5, align 8
  %54 = getelementptr inbounds %struct.sfxge_rxq, %struct.sfxge_rxq* %53, i32 0, i32 1
  store i64 %52, i64* %54, align 8
  %55 = load %struct.sfxge_evq*, %struct.sfxge_evq** %6, align 8
  %56 = call i32 @SFXGE_EVQ_UNLOCK(%struct.sfxge_evq* %55)
  %57 = load %struct.sfxge_rxq*, %struct.sfxge_rxq** %5, align 8
  %58 = getelementptr inbounds %struct.sfxge_rxq, %struct.sfxge_rxq* %57, i32 0, i32 6
  %59 = load i32, i32* %58, align 4
  %60 = call i64 @efx_rx_qflush(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %51
  %63 = load %struct.sfxge_evq*, %struct.sfxge_evq** %6, align 8
  %64 = call i32 @SFXGE_EVQ_LOCK(%struct.sfxge_evq* %63)
  %65 = load i64, i64* @SFXGE_FLUSH_FAILED, align 8
  %66 = load %struct.sfxge_rxq*, %struct.sfxge_rxq** %5, align 8
  %67 = getelementptr inbounds %struct.sfxge_rxq, %struct.sfxge_rxq* %66, i32 0, i32 1
  store i64 %65, i64* %67, align 8
  br label %104

68:                                               ; preds = %51
  store i32 0, i32* %7, align 4
  br label %69

69:                                               ; preds = %78, %68
  %70 = call i32 @DELAY(i32 100000)
  %71 = load %struct.sfxge_rxq*, %struct.sfxge_rxq** %5, align 8
  %72 = getelementptr inbounds %struct.sfxge_rxq, %struct.sfxge_rxq* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @SFXGE_FLUSH_PENDING, align 8
  %75 = icmp ne i64 %73, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %69
  br label %82

77:                                               ; preds = %69
  br label %78

78:                                               ; preds = %77
  %79 = load i32, i32* %7, align 4
  %80 = add i32 %79, 1
  store i32 %80, i32* %7, align 4
  %81 = icmp ult i32 %80, 20
  br i1 %81, label %69, label %82

82:                                               ; preds = %78, %76
  %83 = load %struct.sfxge_evq*, %struct.sfxge_evq** %6, align 8
  %84 = call i32 @SFXGE_EVQ_LOCK(%struct.sfxge_evq* %83)
  %85 = load %struct.sfxge_rxq*, %struct.sfxge_rxq** %5, align 8
  %86 = getelementptr inbounds %struct.sfxge_rxq, %struct.sfxge_rxq* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @SFXGE_FLUSH_PENDING, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %101

90:                                               ; preds = %82
  %91 = load i32, i32* @LOG_ERR, align 4
  %92 = load %struct.sfxge_softc*, %struct.sfxge_softc** %3, align 8
  %93 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @device_get_nameunit(i32 %94)
  %96 = load i32, i32* %4, align 4
  %97 = call i32 @log(i32 %91, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %95, i32 %96)
  %98 = load i64, i64* @SFXGE_FLUSH_DONE, align 8
  %99 = load %struct.sfxge_rxq*, %struct.sfxge_rxq** %5, align 8
  %100 = getelementptr inbounds %struct.sfxge_rxq, %struct.sfxge_rxq* %99, i32 0, i32 1
  store i64 %98, i64* %100, align 8
  br label %101

101:                                              ; preds = %90, %82
  %102 = load i32, i32* %8, align 4
  %103 = add i32 %102, -1
  store i32 %103, i32* %8, align 4
  br label %40

104:                                              ; preds = %62, %49
  %105 = load %struct.sfxge_rxq*, %struct.sfxge_rxq** %5, align 8
  %106 = getelementptr inbounds %struct.sfxge_rxq, %struct.sfxge_rxq* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @SFXGE_FLUSH_FAILED, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %110, label %121

110:                                              ; preds = %104
  %111 = load i32, i32* @LOG_ERR, align 4
  %112 = load %struct.sfxge_softc*, %struct.sfxge_softc** %3, align 8
  %113 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @device_get_nameunit(i32 %114)
  %116 = load i32, i32* %4, align 4
  %117 = call i32 @log(i32 %111, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %115, i32 %116)
  %118 = load i64, i64* @SFXGE_FLUSH_DONE, align 8
  %119 = load %struct.sfxge_rxq*, %struct.sfxge_rxq** %5, align 8
  %120 = getelementptr inbounds %struct.sfxge_rxq, %struct.sfxge_rxq* %119, i32 0, i32 1
  store i64 %118, i64* %120, align 8
  br label %121

121:                                              ; preds = %110, %104
  %122 = load %struct.sfxge_rxq*, %struct.sfxge_rxq** %5, align 8
  %123 = getelementptr inbounds %struct.sfxge_rxq, %struct.sfxge_rxq* %122, i32 0, i32 3
  %124 = load i64, i64* %123, align 8
  %125 = load %struct.sfxge_rxq*, %struct.sfxge_rxq** %5, align 8
  %126 = getelementptr inbounds %struct.sfxge_rxq, %struct.sfxge_rxq* %125, i32 0, i32 2
  store i64 %124, i64* %126, align 8
  %127 = load %struct.sfxge_rxq*, %struct.sfxge_rxq** %5, align 8
  %128 = load i32, i32* @B_TRUE, align 4
  %129 = call i32 @sfxge_rx_qcomplete(%struct.sfxge_rxq* %127, i32 %128)
  %130 = load %struct.sfxge_rxq*, %struct.sfxge_rxq** %5, align 8
  %131 = getelementptr inbounds %struct.sfxge_rxq, %struct.sfxge_rxq* %130, i32 0, i32 4
  %132 = load i64, i64* %131, align 8
  %133 = load %struct.sfxge_rxq*, %struct.sfxge_rxq** %5, align 8
  %134 = getelementptr inbounds %struct.sfxge_rxq, %struct.sfxge_rxq* %133, i32 0, i32 2
  %135 = load i64, i64* %134, align 8
  %136 = icmp eq i64 %132, %135
  %137 = zext i1 %136 to i32
  %138 = call i32 @KASSERT(i32 %137, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  %139 = load %struct.sfxge_rxq*, %struct.sfxge_rxq** %5, align 8
  %140 = getelementptr inbounds %struct.sfxge_rxq, %struct.sfxge_rxq* %139, i32 0, i32 3
  store i64 0, i64* %140, align 8
  %141 = load %struct.sfxge_rxq*, %struct.sfxge_rxq** %5, align 8
  %142 = getelementptr inbounds %struct.sfxge_rxq, %struct.sfxge_rxq* %141, i32 0, i32 8
  store i64 0, i64* %142, align 8
  %143 = load %struct.sfxge_rxq*, %struct.sfxge_rxq** %5, align 8
  %144 = getelementptr inbounds %struct.sfxge_rxq, %struct.sfxge_rxq* %143, i32 0, i32 2
  store i64 0, i64* %144, align 8
  %145 = load %struct.sfxge_rxq*, %struct.sfxge_rxq** %5, align 8
  %146 = getelementptr inbounds %struct.sfxge_rxq, %struct.sfxge_rxq* %145, i32 0, i32 4
  store i64 0, i64* %146, align 8
  %147 = load %struct.sfxge_rxq*, %struct.sfxge_rxq** %5, align 8
  %148 = getelementptr inbounds %struct.sfxge_rxq, %struct.sfxge_rxq* %147, i32 0, i32 7
  store i64 0, i64* %148, align 8
  %149 = load %struct.sfxge_rxq*, %struct.sfxge_rxq** %5, align 8
  %150 = getelementptr inbounds %struct.sfxge_rxq, %struct.sfxge_rxq* %149, i32 0, i32 6
  %151 = load i32, i32* %150, align 4
  %152 = call i32 @efx_rx_qdestroy(i32 %151)
  %153 = load %struct.sfxge_softc*, %struct.sfxge_softc** %3, align 8
  %154 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.sfxge_rxq*, %struct.sfxge_rxq** %5, align 8
  %157 = getelementptr inbounds %struct.sfxge_rxq, %struct.sfxge_rxq* %156, i32 0, i32 5
  %158 = load i32, i32* %157, align 8
  %159 = load %struct.sfxge_softc*, %struct.sfxge_softc** %3, align 8
  %160 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = call i32 @EFX_RXQ_NBUFS(i32 %161)
  %163 = call i32 @efx_sram_buf_tbl_clear(i32 %155, i32 %158, i32 %162)
  %164 = load %struct.sfxge_evq*, %struct.sfxge_evq** %6, align 8
  %165 = call i32 @SFXGE_EVQ_UNLOCK(%struct.sfxge_evq* %164)
  ret void
}

declare dso_local i32 @SFXGE_ADAPTER_LOCK_ASSERT_OWNED(%struct.sfxge_softc*) #1

declare dso_local i32 @SFXGE_EVQ_LOCK(%struct.sfxge_evq*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @callout_stop(i32*) #1

declare dso_local i32 @SFXGE_EVQ_UNLOCK(%struct.sfxge_evq*) #1

declare dso_local i64 @efx_rx_qflush(i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @log(i32, i8*, i32, i32) #1

declare dso_local i32 @device_get_nameunit(i32) #1

declare dso_local i32 @sfxge_rx_qcomplete(%struct.sfxge_rxq*, i32) #1

declare dso_local i32 @efx_rx_qdestroy(i32) #1

declare dso_local i32 @efx_sram_buf_tbl_clear(i32, i32, i32) #1

declare dso_local i32 @EFX_RXQ_NBUFS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
