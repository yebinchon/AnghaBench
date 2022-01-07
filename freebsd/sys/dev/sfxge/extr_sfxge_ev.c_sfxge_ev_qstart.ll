; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sfxge/extr_sfxge_ev.c_sfxge_ev_qstart.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sfxge/extr_sfxge_ev.c_sfxge_ev_qstart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sfxge_softc = type { i32, i32, %struct.sfxge_evq** }
%struct.sfxge_evq = type { i64, i32, i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@SFXGE_EVQ_INITIALIZED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [41 x i8] c"evq->init_state != SFXGE_EVQ_INITIALIZED\00", align 1
@EFX_EVQ_FLAGS_TYPE_AUTO = common dso_local global i32 0, align 4
@SFXGE_EVQ_STARTING = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"sfxge evq init\00", align 1
@hz = common dso_local global i32 0, align 4
@SFXGE_EVQ_STARTED = common dso_local global i64 0, align 8
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sfxge_softc*, i32)* @sfxge_ev_qstart to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sfxge_ev_qstart(%struct.sfxge_softc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sfxge_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sfxge_evq*, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.sfxge_softc* %0, %struct.sfxge_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.sfxge_softc*, %struct.sfxge_softc** %4, align 8
  %11 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %10, i32 0, i32 2
  %12 = load %struct.sfxge_evq**, %struct.sfxge_evq*** %11, align 8
  %13 = load i32, i32* %5, align 4
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds %struct.sfxge_evq*, %struct.sfxge_evq** %12, i64 %14
  %16 = load %struct.sfxge_evq*, %struct.sfxge_evq** %15, align 8
  store %struct.sfxge_evq* %16, %struct.sfxge_evq** %6, align 8
  %17 = load %struct.sfxge_evq*, %struct.sfxge_evq** %6, align 8
  %18 = getelementptr inbounds %struct.sfxge_evq, %struct.sfxge_evq* %17, i32 0, i32 5
  store %struct.TYPE_4__* %18, %struct.TYPE_4__** %7, align 8
  %19 = load %struct.sfxge_evq*, %struct.sfxge_evq** %6, align 8
  %20 = getelementptr inbounds %struct.sfxge_evq, %struct.sfxge_evq* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @SFXGE_EVQ_INITIALIZED, align 8
  %23 = icmp eq i64 %21, %22
  %24 = zext i1 %23 to i32
  %25 = call i32 @KASSERT(i32 %24, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.sfxge_evq*, %struct.sfxge_evq** %6, align 8
  %30 = getelementptr inbounds %struct.sfxge_evq, %struct.sfxge_evq* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @EFX_EVQ_SIZE(i32 %31)
  %33 = call i32 @memset(i32 %28, i32 255, i32 %32)
  %34 = load %struct.sfxge_softc*, %struct.sfxge_softc** %4, align 8
  %35 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.sfxge_evq*, %struct.sfxge_evq** %6, align 8
  %38 = getelementptr inbounds %struct.sfxge_evq, %struct.sfxge_evq* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %41 = load %struct.sfxge_evq*, %struct.sfxge_evq** %6, align 8
  %42 = getelementptr inbounds %struct.sfxge_evq, %struct.sfxge_evq* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @EFX_EVQ_NBUFS(i32 %43)
  %45 = call i32 @efx_sram_buf_tbl_set(i32 %36, i32 %39, %struct.TYPE_4__* %40, i32 %44)
  store i32 %45, i32* %9, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %2
  %48 = load i32, i32* %9, align 4
  store i32 %48, i32* %3, align 4
  br label %132

49:                                               ; preds = %2
  %50 = load %struct.sfxge_softc*, %struct.sfxge_softc** %4, align 8
  %51 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* %5, align 4
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %55 = load %struct.sfxge_evq*, %struct.sfxge_evq** %6, align 8
  %56 = getelementptr inbounds %struct.sfxge_evq, %struct.sfxge_evq* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.sfxge_evq*, %struct.sfxge_evq** %6, align 8
  %59 = getelementptr inbounds %struct.sfxge_evq, %struct.sfxge_evq* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.sfxge_softc*, %struct.sfxge_softc** %4, align 8
  %62 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @EFX_EVQ_FLAGS_TYPE_AUTO, align 4
  %65 = load %struct.sfxge_evq*, %struct.sfxge_evq** %6, align 8
  %66 = getelementptr inbounds %struct.sfxge_evq, %struct.sfxge_evq* %65, i32 0, i32 3
  %67 = call i32 @efx_ev_qcreate(i32 %52, i32 %53, %struct.TYPE_4__* %54, i32 %57, i32 %60, i32 %63, i32 %64, i32* %66)
  store i32 %67, i32* %9, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %49
  br label %119

70:                                               ; preds = %49
  %71 = load %struct.sfxge_evq*, %struct.sfxge_evq** %6, align 8
  %72 = call i32 @SFXGE_EVQ_LOCK(%struct.sfxge_evq* %71)
  %73 = load %struct.sfxge_evq*, %struct.sfxge_evq** %6, align 8
  %74 = getelementptr inbounds %struct.sfxge_evq, %struct.sfxge_evq* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.sfxge_evq*, %struct.sfxge_evq** %6, align 8
  %77 = getelementptr inbounds %struct.sfxge_evq, %struct.sfxge_evq* %76, i32 0, i32 4
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @efx_ev_qprime(i32 %75, i32 %78)
  store i32 %79, i32* %9, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %70
  br label %112

82:                                               ; preds = %70
  %83 = load i64, i64* @SFXGE_EVQ_STARTING, align 8
  %84 = load %struct.sfxge_evq*, %struct.sfxge_evq** %6, align 8
  %85 = getelementptr inbounds %struct.sfxge_evq, %struct.sfxge_evq* %84, i32 0, i32 0
  store i64 %83, i64* %85, align 8
  %86 = load %struct.sfxge_evq*, %struct.sfxge_evq** %6, align 8
  %87 = call i32 @SFXGE_EVQ_UNLOCK(%struct.sfxge_evq* %86)
  store i32 0, i32* %8, align 4
  br label %88

88:                                               ; preds = %99, %82
  %89 = load i32, i32* @hz, align 4
  %90 = sdiv i32 %89, 10
  %91 = call i32 @pause(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %90)
  %92 = load %struct.sfxge_evq*, %struct.sfxge_evq** %6, align 8
  %93 = getelementptr inbounds %struct.sfxge_evq, %struct.sfxge_evq* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @SFXGE_EVQ_STARTED, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %98

97:                                               ; preds = %88
  br label %105

98:                                               ; preds = %88
  br label %99

99:                                               ; preds = %98
  %100 = load i32, i32* %8, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %8, align 4
  %102 = icmp slt i32 %101, 20
  br i1 %102, label %88, label %103

103:                                              ; preds = %99
  %104 = load i32, i32* @ETIMEDOUT, align 4
  store i32 %104, i32* %9, align 4
  br label %106

105:                                              ; preds = %97
  store i32 0, i32* %3, align 4
  br label %132

106:                                              ; preds = %103
  %107 = load %struct.sfxge_evq*, %struct.sfxge_evq** %6, align 8
  %108 = call i32 @SFXGE_EVQ_LOCK(%struct.sfxge_evq* %107)
  %109 = load i64, i64* @SFXGE_EVQ_INITIALIZED, align 8
  %110 = load %struct.sfxge_evq*, %struct.sfxge_evq** %6, align 8
  %111 = getelementptr inbounds %struct.sfxge_evq, %struct.sfxge_evq* %110, i32 0, i32 0
  store i64 %109, i64* %111, align 8
  br label %112

112:                                              ; preds = %106, %81
  %113 = load %struct.sfxge_evq*, %struct.sfxge_evq** %6, align 8
  %114 = call i32 @SFXGE_EVQ_UNLOCK(%struct.sfxge_evq* %113)
  %115 = load %struct.sfxge_evq*, %struct.sfxge_evq** %6, align 8
  %116 = getelementptr inbounds %struct.sfxge_evq, %struct.sfxge_evq* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 8
  %118 = call i32 @efx_ev_qdestroy(i32 %117)
  br label %119

119:                                              ; preds = %112, %69
  %120 = load %struct.sfxge_softc*, %struct.sfxge_softc** %4, align 8
  %121 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = load %struct.sfxge_evq*, %struct.sfxge_evq** %6, align 8
  %124 = getelementptr inbounds %struct.sfxge_evq, %struct.sfxge_evq* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.sfxge_evq*, %struct.sfxge_evq** %6, align 8
  %127 = getelementptr inbounds %struct.sfxge_evq, %struct.sfxge_evq* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 8
  %129 = call i32 @EFX_EVQ_NBUFS(i32 %128)
  %130 = call i32 @efx_sram_buf_tbl_clear(i32 %122, i32 %125, i32 %129)
  %131 = load i32, i32* %9, align 4
  store i32 %131, i32* %3, align 4
  br label %132

132:                                              ; preds = %119, %105, %47
  %133 = load i32, i32* %3, align 4
  ret i32 %133
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @EFX_EVQ_SIZE(i32) #1

declare dso_local i32 @efx_sram_buf_tbl_set(i32, i32, %struct.TYPE_4__*, i32) #1

declare dso_local i32 @EFX_EVQ_NBUFS(i32) #1

declare dso_local i32 @efx_ev_qcreate(i32, i32, %struct.TYPE_4__*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @SFXGE_EVQ_LOCK(%struct.sfxge_evq*) #1

declare dso_local i32 @efx_ev_qprime(i32, i32) #1

declare dso_local i32 @SFXGE_EVQ_UNLOCK(%struct.sfxge_evq*) #1

declare dso_local i32 @pause(i8*, i32) #1

declare dso_local i32 @efx_ev_qdestroy(i32) #1

declare dso_local i32 @efx_sram_buf_tbl_clear(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
