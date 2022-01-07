; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sfxge/extr_sfxge_tx.c_sfxge_tx_qstop.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sfxge/extr_sfxge_tx.c_sfxge_tx_qstop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sfxge_softc = type { i32, i32, i32, %struct.sfxge_evq**, %struct.sfxge_txq** }
%struct.sfxge_evq = type { i32 }
%struct.sfxge_txq = type { i64, i64, i64, i64, i64, i64, i64, i64, i32, i32*, i64 }

@SFXGE_TXQ_STARTED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [37 x i8] c"txq->init_state != SFXGE_TXQ_STARTED\00", align 1
@SFXGE_TXQ_INITIALIZED = common dso_local global i64 0, align 8
@SFXGE_FLUSH_DONE = common dso_local global i64 0, align 8
@SFXGE_FLUSH_PENDING = common dso_local global i64 0, align 8
@LOG_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"%s: Flushing Tx queue %u failed\0A\00", align 1
@SFXGE_FLUSH_FAILED = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [39 x i8] c"txq->flush_state == SFXGE_FLUSH_FAILED\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"%s: Cannot flush Tx queue %u\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"txq->completed != txq->added\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"txq->reaped != txq->completed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sfxge_softc*, i32)* @sfxge_tx_qstop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sfxge_tx_qstop(%struct.sfxge_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.sfxge_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sfxge_txq*, align 8
  %6 = alloca %struct.sfxge_evq*, align 8
  %7 = alloca i32, align 4
  store %struct.sfxge_softc* %0, %struct.sfxge_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.sfxge_softc*, %struct.sfxge_softc** %3, align 8
  %9 = call i32 @SFXGE_ADAPTER_LOCK_ASSERT_OWNED(%struct.sfxge_softc* %8)
  %10 = load %struct.sfxge_softc*, %struct.sfxge_softc** %3, align 8
  %11 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %10, i32 0, i32 4
  %12 = load %struct.sfxge_txq**, %struct.sfxge_txq*** %11, align 8
  %13 = load i32, i32* %4, align 4
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds %struct.sfxge_txq*, %struct.sfxge_txq** %12, i64 %14
  %16 = load %struct.sfxge_txq*, %struct.sfxge_txq** %15, align 8
  store %struct.sfxge_txq* %16, %struct.sfxge_txq** %5, align 8
  %17 = load %struct.sfxge_softc*, %struct.sfxge_softc** %3, align 8
  %18 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %17, i32 0, i32 3
  %19 = load %struct.sfxge_evq**, %struct.sfxge_evq*** %18, align 8
  %20 = load %struct.sfxge_txq*, %struct.sfxge_txq** %5, align 8
  %21 = getelementptr inbounds %struct.sfxge_txq, %struct.sfxge_txq* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds %struct.sfxge_evq*, %struct.sfxge_evq** %19, i64 %22
  %24 = load %struct.sfxge_evq*, %struct.sfxge_evq** %23, align 8
  store %struct.sfxge_evq* %24, %struct.sfxge_evq** %6, align 8
  %25 = load %struct.sfxge_evq*, %struct.sfxge_evq** %6, align 8
  %26 = call i32 @SFXGE_EVQ_LOCK(%struct.sfxge_evq* %25)
  %27 = load %struct.sfxge_txq*, %struct.sfxge_txq** %5, align 8
  %28 = call i32 @SFXGE_TXQ_LOCK(%struct.sfxge_txq* %27)
  %29 = load %struct.sfxge_txq*, %struct.sfxge_txq** %5, align 8
  %30 = getelementptr inbounds %struct.sfxge_txq, %struct.sfxge_txq* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @SFXGE_TXQ_STARTED, align 8
  %33 = icmp eq i64 %31, %32
  %34 = zext i1 %33 to i32
  %35 = call i32 @KASSERT(i32 %34, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %36 = load i64, i64* @SFXGE_TXQ_INITIALIZED, align 8
  %37 = load %struct.sfxge_txq*, %struct.sfxge_txq** %5, align 8
  %38 = getelementptr inbounds %struct.sfxge_txq, %struct.sfxge_txq* %37, i32 0, i32 1
  store i64 %36, i64* %38, align 8
  %39 = load %struct.sfxge_txq*, %struct.sfxge_txq** %5, align 8
  %40 = getelementptr inbounds %struct.sfxge_txq, %struct.sfxge_txq* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @SFXGE_FLUSH_DONE, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %112

44:                                               ; preds = %2
  %45 = load i64, i64* @SFXGE_FLUSH_PENDING, align 8
  %46 = load %struct.sfxge_txq*, %struct.sfxge_txq** %5, align 8
  %47 = getelementptr inbounds %struct.sfxge_txq, %struct.sfxge_txq* %46, i32 0, i32 2
  store i64 %45, i64* %47, align 8
  %48 = load %struct.sfxge_evq*, %struct.sfxge_evq** %6, align 8
  %49 = call i32 @SFXGE_EVQ_UNLOCK(%struct.sfxge_evq* %48)
  %50 = load %struct.sfxge_txq*, %struct.sfxge_txq** %5, align 8
  %51 = call i32 @SFXGE_TXQ_UNLOCK(%struct.sfxge_txq* %50)
  %52 = load %struct.sfxge_txq*, %struct.sfxge_txq** %5, align 8
  %53 = getelementptr inbounds %struct.sfxge_txq, %struct.sfxge_txq* %52, i32 0, i32 9
  %54 = load i32*, i32** %53, align 8
  %55 = call i64 @efx_tx_qflush(i32* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %68

57:                                               ; preds = %44
  %58 = load i32, i32* @LOG_ERR, align 4
  %59 = load %struct.sfxge_softc*, %struct.sfxge_softc** %3, align 8
  %60 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @device_get_nameunit(i32 %61)
  %63 = load i32, i32* %4, align 4
  %64 = call i32 @log(i32 %58, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %62, i32 %63)
  %65 = load i64, i64* @SFXGE_FLUSH_DONE, align 8
  %66 = load %struct.sfxge_txq*, %struct.sfxge_txq** %5, align 8
  %67 = getelementptr inbounds %struct.sfxge_txq, %struct.sfxge_txq* %66, i32 0, i32 2
  store i64 %65, i64* %67, align 8
  br label %83

68:                                               ; preds = %44
  store i32 0, i32* %7, align 4
  br label %69

69:                                               ; preds = %78, %68
  %70 = call i32 @DELAY(i32 100000)
  %71 = load %struct.sfxge_txq*, %struct.sfxge_txq** %5, align 8
  %72 = getelementptr inbounds %struct.sfxge_txq, %struct.sfxge_txq* %71, i32 0, i32 2
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
  br label %83

83:                                               ; preds = %82, %57
  %84 = load %struct.sfxge_evq*, %struct.sfxge_evq** %6, align 8
  %85 = call i32 @SFXGE_EVQ_LOCK(%struct.sfxge_evq* %84)
  %86 = load %struct.sfxge_txq*, %struct.sfxge_txq** %5, align 8
  %87 = call i32 @SFXGE_TXQ_LOCK(%struct.sfxge_txq* %86)
  %88 = load %struct.sfxge_txq*, %struct.sfxge_txq** %5, align 8
  %89 = getelementptr inbounds %struct.sfxge_txq, %struct.sfxge_txq* %88, i32 0, i32 2
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @SFXGE_FLUSH_FAILED, align 8
  %92 = icmp ne i64 %90, %91
  %93 = zext i1 %92 to i32
  %94 = call i32 @KASSERT(i32 %93, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  %95 = load %struct.sfxge_txq*, %struct.sfxge_txq** %5, align 8
  %96 = getelementptr inbounds %struct.sfxge_txq, %struct.sfxge_txq* %95, i32 0, i32 2
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @SFXGE_FLUSH_DONE, align 8
  %99 = icmp ne i64 %97, %98
  br i1 %99, label %100, label %111

100:                                              ; preds = %83
  %101 = load i32, i32* @LOG_ERR, align 4
  %102 = load %struct.sfxge_softc*, %struct.sfxge_softc** %3, align 8
  %103 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @device_get_nameunit(i32 %104)
  %106 = load i32, i32* %4, align 4
  %107 = call i32 @log(i32 %101, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %105, i32 %106)
  %108 = load i64, i64* @SFXGE_FLUSH_DONE, align 8
  %109 = load %struct.sfxge_txq*, %struct.sfxge_txq** %5, align 8
  %110 = getelementptr inbounds %struct.sfxge_txq, %struct.sfxge_txq* %109, i32 0, i32 2
  store i64 %108, i64* %110, align 8
  br label %111

111:                                              ; preds = %100, %83
  br label %112

112:                                              ; preds = %111, %2
  %113 = load %struct.sfxge_txq*, %struct.sfxge_txq** %5, align 8
  %114 = getelementptr inbounds %struct.sfxge_txq, %struct.sfxge_txq* %113, i32 0, i32 10
  store i64 0, i64* %114, align 8
  %115 = load %struct.sfxge_txq*, %struct.sfxge_txq** %5, align 8
  %116 = getelementptr inbounds %struct.sfxge_txq, %struct.sfxge_txq* %115, i32 0, i32 4
  %117 = load i64, i64* %116, align 8
  %118 = load %struct.sfxge_txq*, %struct.sfxge_txq** %5, align 8
  %119 = getelementptr inbounds %struct.sfxge_txq, %struct.sfxge_txq* %118, i32 0, i32 3
  store i64 %117, i64* %119, align 8
  %120 = load %struct.sfxge_txq*, %struct.sfxge_txq** %5, align 8
  %121 = load %struct.sfxge_evq*, %struct.sfxge_evq** %6, align 8
  %122 = call i32 @sfxge_tx_qcomplete(%struct.sfxge_txq* %120, %struct.sfxge_evq* %121)
  %123 = load %struct.sfxge_txq*, %struct.sfxge_txq** %5, align 8
  %124 = getelementptr inbounds %struct.sfxge_txq, %struct.sfxge_txq* %123, i32 0, i32 5
  %125 = load i64, i64* %124, align 8
  %126 = load %struct.sfxge_txq*, %struct.sfxge_txq** %5, align 8
  %127 = getelementptr inbounds %struct.sfxge_txq, %struct.sfxge_txq* %126, i32 0, i32 4
  %128 = load i64, i64* %127, align 8
  %129 = icmp eq i64 %125, %128
  %130 = zext i1 %129 to i32
  %131 = call i32 @KASSERT(i32 %130, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  %132 = load %struct.sfxge_txq*, %struct.sfxge_txq** %5, align 8
  %133 = call i32 @sfxge_tx_qreap(%struct.sfxge_txq* %132)
  %134 = load %struct.sfxge_txq*, %struct.sfxge_txq** %5, align 8
  %135 = getelementptr inbounds %struct.sfxge_txq, %struct.sfxge_txq* %134, i32 0, i32 6
  %136 = load i64, i64* %135, align 8
  %137 = load %struct.sfxge_txq*, %struct.sfxge_txq** %5, align 8
  %138 = getelementptr inbounds %struct.sfxge_txq, %struct.sfxge_txq* %137, i32 0, i32 5
  %139 = load i64, i64* %138, align 8
  %140 = icmp eq i64 %136, %139
  %141 = zext i1 %140 to i32
  %142 = call i32 @KASSERT(i32 %141, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0))
  %143 = load %struct.sfxge_txq*, %struct.sfxge_txq** %5, align 8
  %144 = getelementptr inbounds %struct.sfxge_txq, %struct.sfxge_txq* %143, i32 0, i32 4
  store i64 0, i64* %144, align 8
  %145 = load %struct.sfxge_txq*, %struct.sfxge_txq** %5, align 8
  %146 = getelementptr inbounds %struct.sfxge_txq, %struct.sfxge_txq* %145, i32 0, i32 3
  store i64 0, i64* %146, align 8
  %147 = load %struct.sfxge_txq*, %struct.sfxge_txq** %5, align 8
  %148 = getelementptr inbounds %struct.sfxge_txq, %struct.sfxge_txq* %147, i32 0, i32 5
  store i64 0, i64* %148, align 8
  %149 = load %struct.sfxge_txq*, %struct.sfxge_txq** %5, align 8
  %150 = getelementptr inbounds %struct.sfxge_txq, %struct.sfxge_txq* %149, i32 0, i32 6
  store i64 0, i64* %150, align 8
  %151 = load %struct.sfxge_txq*, %struct.sfxge_txq** %5, align 8
  %152 = getelementptr inbounds %struct.sfxge_txq, %struct.sfxge_txq* %151, i32 0, i32 9
  %153 = load i32*, i32** %152, align 8
  %154 = call i32 @efx_tx_qdestroy(i32* %153)
  %155 = load %struct.sfxge_txq*, %struct.sfxge_txq** %5, align 8
  %156 = getelementptr inbounds %struct.sfxge_txq, %struct.sfxge_txq* %155, i32 0, i32 9
  store i32* null, i32** %156, align 8
  %157 = load %struct.sfxge_softc*, %struct.sfxge_softc** %3, align 8
  %158 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = load %struct.sfxge_txq*, %struct.sfxge_txq** %5, align 8
  %161 = getelementptr inbounds %struct.sfxge_txq, %struct.sfxge_txq* %160, i32 0, i32 8
  %162 = load i32, i32* %161, align 8
  %163 = load %struct.sfxge_softc*, %struct.sfxge_softc** %3, align 8
  %164 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = call i32 @EFX_TXQ_NBUFS(i32 %165)
  %167 = call i32 @efx_sram_buf_tbl_clear(i32 %159, i32 %162, i32 %166)
  %168 = load %struct.sfxge_txq*, %struct.sfxge_txq** %5, align 8
  %169 = getelementptr inbounds %struct.sfxge_txq, %struct.sfxge_txq* %168, i32 0, i32 7
  store i64 0, i64* %169, align 8
  %170 = load %struct.sfxge_evq*, %struct.sfxge_evq** %6, align 8
  %171 = call i32 @SFXGE_EVQ_UNLOCK(%struct.sfxge_evq* %170)
  %172 = load %struct.sfxge_txq*, %struct.sfxge_txq** %5, align 8
  %173 = call i32 @SFXGE_TXQ_UNLOCK(%struct.sfxge_txq* %172)
  ret void
}

declare dso_local i32 @SFXGE_ADAPTER_LOCK_ASSERT_OWNED(%struct.sfxge_softc*) #1

declare dso_local i32 @SFXGE_EVQ_LOCK(%struct.sfxge_evq*) #1

declare dso_local i32 @SFXGE_TXQ_LOCK(%struct.sfxge_txq*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @SFXGE_EVQ_UNLOCK(%struct.sfxge_evq*) #1

declare dso_local i32 @SFXGE_TXQ_UNLOCK(%struct.sfxge_txq*) #1

declare dso_local i64 @efx_tx_qflush(i32*) #1

declare dso_local i32 @log(i32, i8*, i32, i32) #1

declare dso_local i32 @device_get_nameunit(i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @sfxge_tx_qcomplete(%struct.sfxge_txq*, %struct.sfxge_evq*) #1

declare dso_local i32 @sfxge_tx_qreap(%struct.sfxge_txq*) #1

declare dso_local i32 @efx_tx_qdestroy(i32*) #1

declare dso_local i32 @efx_sram_buf_tbl_clear(i32, i32, i32) #1

declare dso_local i32 @EFX_TXQ_NBUFS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
