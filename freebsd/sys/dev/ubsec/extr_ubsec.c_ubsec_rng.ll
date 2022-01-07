; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ubsec/extr_ubsec.c_ubsec_rng.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ubsec/extr_ubsec.c_ubsec_rng.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.ubsec_softc = type { i64, i32, i32, i32, i32, %struct.ubsec_q2_rng }
%struct.ubsec_q2_rng = type { i32, %struct.TYPE_14__, %struct.TYPE_13__ }
%struct.TYPE_14__ = type { i32, %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i32, i64 }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_13__ = type { i32 }
%struct.ubsec_mcr = type { %struct.TYPE_11__, i64, i64, %struct.TYPE_10__, i8*, i64, i8* }
%struct.TYPE_11__ = type { i64, i8*, i8* }
%struct.TYPE_10__ = type { i64, i64, i64 }
%struct.ubsec_ctx_rngbypass = type { i8*, i8* }

@UBS_MAX_NQUEUE = common dso_local global i64 0, align 8
@UBSEC_RNG_BUFSIZ = common dso_local global i32 0, align 4
@UBS_PKTBUF_LEN = common dso_local global i32 0, align 4
@UBS_CTXOP_RNGBYPASS = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREREAD = common dso_local global i32 0, align 4
@q_next = common dso_local global i32 0, align 4
@ubsecstats = common dso_local global %struct.TYPE_12__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @ubsec_rng to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ubsec_rng(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.ubsec_softc*, align 8
  %4 = alloca %struct.ubsec_q2_rng*, align 8
  %5 = alloca %struct.ubsec_mcr*, align 8
  %6 = alloca %struct.ubsec_ctx_rngbypass*, align 8
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = bitcast i8* %7 to %struct.ubsec_softc*
  store %struct.ubsec_softc* %8, %struct.ubsec_softc** %3, align 8
  %9 = load %struct.ubsec_softc*, %struct.ubsec_softc** %3, align 8
  %10 = getelementptr inbounds %struct.ubsec_softc, %struct.ubsec_softc* %9, i32 0, i32 5
  store %struct.ubsec_q2_rng* %10, %struct.ubsec_q2_rng** %4, align 8
  %11 = load %struct.ubsec_softc*, %struct.ubsec_softc** %3, align 8
  %12 = getelementptr inbounds %struct.ubsec_softc, %struct.ubsec_softc* %11, i32 0, i32 3
  %13 = call i32 @mtx_lock(i32* %12)
  %14 = load %struct.ubsec_q2_rng*, %struct.ubsec_q2_rng** %4, align 8
  %15 = getelementptr inbounds %struct.ubsec_q2_rng, %struct.ubsec_q2_rng* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %1
  %19 = load %struct.ubsec_softc*, %struct.ubsec_softc** %3, align 8
  %20 = getelementptr inbounds %struct.ubsec_softc, %struct.ubsec_softc* %19, i32 0, i32 3
  %21 = call i32 @mtx_unlock(i32* %20)
  br label %139

22:                                               ; preds = %1
  %23 = load %struct.ubsec_softc*, %struct.ubsec_softc** %3, align 8
  %24 = getelementptr inbounds %struct.ubsec_softc, %struct.ubsec_softc* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = add nsw i64 %25, 1
  store i64 %26, i64* %24, align 8
  %27 = load %struct.ubsec_softc*, %struct.ubsec_softc** %3, align 8
  %28 = getelementptr inbounds %struct.ubsec_softc, %struct.ubsec_softc* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @UBS_MAX_NQUEUE, align 8
  %31 = icmp sge i64 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %22
  br label %124

33:                                               ; preds = %22
  %34 = load %struct.ubsec_q2_rng*, %struct.ubsec_q2_rng** %4, align 8
  %35 = getelementptr inbounds %struct.ubsec_q2_rng, %struct.ubsec_q2_rng* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = inttoptr i64 %38 to %struct.ubsec_mcr*
  store %struct.ubsec_mcr* %39, %struct.ubsec_mcr** %5, align 8
  %40 = load %struct.ubsec_q2_rng*, %struct.ubsec_q2_rng** %4, align 8
  %41 = getelementptr inbounds %struct.ubsec_q2_rng, %struct.ubsec_q2_rng* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = inttoptr i64 %44 to %struct.ubsec_ctx_rngbypass*
  store %struct.ubsec_ctx_rngbypass* %45, %struct.ubsec_ctx_rngbypass** %6, align 8
  %46 = call i8* @htole16(i32 1)
  %47 = load %struct.ubsec_mcr*, %struct.ubsec_mcr** %5, align 8
  %48 = getelementptr inbounds %struct.ubsec_mcr, %struct.ubsec_mcr* %47, i32 0, i32 6
  store i8* %46, i8** %48, align 8
  %49 = load %struct.ubsec_mcr*, %struct.ubsec_mcr** %5, align 8
  %50 = getelementptr inbounds %struct.ubsec_mcr, %struct.ubsec_mcr* %49, i32 0, i32 5
  store i64 0, i64* %50, align 8
  %51 = load %struct.ubsec_q2_rng*, %struct.ubsec_q2_rng** %4, align 8
  %52 = getelementptr inbounds %struct.ubsec_q2_rng, %struct.ubsec_q2_rng* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i8* @htole32(i32 %55)
  %57 = load %struct.ubsec_mcr*, %struct.ubsec_mcr** %5, align 8
  %58 = getelementptr inbounds %struct.ubsec_mcr, %struct.ubsec_mcr* %57, i32 0, i32 4
  store i8* %56, i8** %58, align 8
  %59 = load %struct.ubsec_mcr*, %struct.ubsec_mcr** %5, align 8
  %60 = getelementptr inbounds %struct.ubsec_mcr, %struct.ubsec_mcr* %59, i32 0, i32 3
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 1
  store i64 0, i64* %61, align 8
  %62 = load %struct.ubsec_mcr*, %struct.ubsec_mcr** %5, align 8
  %63 = getelementptr inbounds %struct.ubsec_mcr, %struct.ubsec_mcr* %62, i32 0, i32 3
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 2
  store i64 0, i64* %64, align 8
  %65 = load %struct.ubsec_mcr*, %struct.ubsec_mcr** %5, align 8
  %66 = getelementptr inbounds %struct.ubsec_mcr, %struct.ubsec_mcr* %65, i32 0, i32 3
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 0
  store i64 0, i64* %67, align 8
  %68 = load %struct.ubsec_mcr*, %struct.ubsec_mcr** %5, align 8
  %69 = getelementptr inbounds %struct.ubsec_mcr, %struct.ubsec_mcr* %68, i32 0, i32 1
  store i64 0, i64* %69, align 8
  %70 = load %struct.ubsec_mcr*, %struct.ubsec_mcr** %5, align 8
  %71 = getelementptr inbounds %struct.ubsec_mcr, %struct.ubsec_mcr* %70, i32 0, i32 2
  store i64 0, i64* %71, align 8
  %72 = load %struct.ubsec_q2_rng*, %struct.ubsec_q2_rng** %4, align 8
  %73 = getelementptr inbounds %struct.ubsec_q2_rng, %struct.ubsec_q2_rng* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = call i8* @htole32(i32 %75)
  %77 = load %struct.ubsec_mcr*, %struct.ubsec_mcr** %5, align 8
  %78 = getelementptr inbounds %struct.ubsec_mcr, %struct.ubsec_mcr* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 2
  store i8* %76, i8** %79, align 8
  %80 = load i32, i32* @UBSEC_RNG_BUFSIZ, align 4
  %81 = sext i32 %80 to i64
  %82 = mul i64 4, %81
  %83 = load i32, i32* @UBS_PKTBUF_LEN, align 4
  %84 = sext i32 %83 to i64
  %85 = and i64 %82, %84
  %86 = trunc i64 %85 to i32
  %87 = call i8* @htole32(i32 %86)
  %88 = load %struct.ubsec_mcr*, %struct.ubsec_mcr** %5, align 8
  %89 = getelementptr inbounds %struct.ubsec_mcr, %struct.ubsec_mcr* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 1
  store i8* %87, i8** %90, align 8
  %91 = load %struct.ubsec_mcr*, %struct.ubsec_mcr** %5, align 8
  %92 = getelementptr inbounds %struct.ubsec_mcr, %struct.ubsec_mcr* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i32 0, i32 0
  store i64 0, i64* %93, align 8
  %94 = call i8* @htole16(i32 16)
  %95 = load %struct.ubsec_ctx_rngbypass*, %struct.ubsec_ctx_rngbypass** %6, align 8
  %96 = getelementptr inbounds %struct.ubsec_ctx_rngbypass, %struct.ubsec_ctx_rngbypass* %95, i32 0, i32 1
  store i8* %94, i8** %96, align 8
  %97 = load i32, i32* @UBS_CTXOP_RNGBYPASS, align 4
  %98 = call i8* @htole16(i32 %97)
  %99 = load %struct.ubsec_ctx_rngbypass*, %struct.ubsec_ctx_rngbypass** %6, align 8
  %100 = getelementptr inbounds %struct.ubsec_ctx_rngbypass, %struct.ubsec_ctx_rngbypass* %99, i32 0, i32 0
  store i8* %98, i8** %100, align 8
  %101 = load i32, i32* @UBS_CTXOP_RNGBYPASS, align 4
  %102 = load %struct.ubsec_q2_rng*, %struct.ubsec_q2_rng** %4, align 8
  %103 = getelementptr inbounds %struct.ubsec_q2_rng, %struct.ubsec_q2_rng* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %103, i32 0, i32 0
  store i32 %101, i32* %104, align 8
  %105 = load %struct.ubsec_q2_rng*, %struct.ubsec_q2_rng** %4, align 8
  %106 = getelementptr inbounds %struct.ubsec_q2_rng, %struct.ubsec_q2_rng* %105, i32 0, i32 2
  %107 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  %108 = call i32 @ubsec_dma_sync(%struct.TYPE_13__* %106, i32 %107)
  %109 = load %struct.ubsec_softc*, %struct.ubsec_softc** %3, align 8
  %110 = getelementptr inbounds %struct.ubsec_softc, %struct.ubsec_softc* %109, i32 0, i32 4
  %111 = load %struct.ubsec_q2_rng*, %struct.ubsec_q2_rng** %4, align 8
  %112 = getelementptr inbounds %struct.ubsec_q2_rng, %struct.ubsec_q2_rng* %111, i32 0, i32 1
  %113 = load i32, i32* @q_next, align 4
  %114 = call i32 @SIMPLEQ_INSERT_TAIL(i32* %110, %struct.TYPE_14__* %112, i32 %113)
  %115 = load %struct.ubsec_q2_rng*, %struct.ubsec_q2_rng** %4, align 8
  %116 = getelementptr inbounds %struct.ubsec_q2_rng, %struct.ubsec_q2_rng* %115, i32 0, i32 0
  store i32 1, i32* %116, align 8
  %117 = load %struct.ubsec_softc*, %struct.ubsec_softc** %3, align 8
  %118 = call i32 @ubsec_feed2(%struct.ubsec_softc* %117)
  %119 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @ubsecstats, i32 0, i32 0), align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @ubsecstats, i32 0, i32 0), align 4
  %121 = load %struct.ubsec_softc*, %struct.ubsec_softc** %3, align 8
  %122 = getelementptr inbounds %struct.ubsec_softc, %struct.ubsec_softc* %121, i32 0, i32 3
  %123 = call i32 @mtx_unlock(i32* %122)
  br label %139

124:                                              ; preds = %32
  %125 = load %struct.ubsec_softc*, %struct.ubsec_softc** %3, align 8
  %126 = getelementptr inbounds %struct.ubsec_softc, %struct.ubsec_softc* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = add nsw i64 %127, -1
  store i64 %128, i64* %126, align 8
  %129 = load %struct.ubsec_softc*, %struct.ubsec_softc** %3, align 8
  %130 = getelementptr inbounds %struct.ubsec_softc, %struct.ubsec_softc* %129, i32 0, i32 3
  %131 = call i32 @mtx_unlock(i32* %130)
  %132 = load %struct.ubsec_softc*, %struct.ubsec_softc** %3, align 8
  %133 = getelementptr inbounds %struct.ubsec_softc, %struct.ubsec_softc* %132, i32 0, i32 2
  %134 = load %struct.ubsec_softc*, %struct.ubsec_softc** %3, align 8
  %135 = getelementptr inbounds %struct.ubsec_softc, %struct.ubsec_softc* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 8
  %137 = load %struct.ubsec_softc*, %struct.ubsec_softc** %3, align 8
  %138 = call i32 @callout_reset(i32* %133, i32 %136, void (i8*)* @ubsec_rng, %struct.ubsec_softc* %137)
  br label %139

139:                                              ; preds = %124, %33, %18
  ret void
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i8* @htole16(i32) #1

declare dso_local i8* @htole32(i32) #1

declare dso_local i32 @ubsec_dma_sync(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @SIMPLEQ_INSERT_TAIL(i32*, %struct.TYPE_14__*, i32) #1

declare dso_local i32 @ubsec_feed2(%struct.ubsec_softc*) #1

declare dso_local i32 @callout_reset(i32*, i32, void (i8*)*, %struct.ubsec_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
