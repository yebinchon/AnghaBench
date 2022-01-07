; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/esp/extr_ncr53c9x.c_ncr53c9x_callout.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/esp/extr_ncr53c9x.c_ncr53c9x_callout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ncr53c9x_ecb = type { i32, i8*, i32, i32, %struct.ncr53c9x_softc*, %union.ccb* }
%struct.ncr53c9x_softc = type { i32, %struct.ncr53c9x_ecb*, i32, i32, i64, i32, i32, i32, %struct.ncr53c9x_tinfo* }
%struct.ncr53c9x_tinfo = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i64 }
%union.ccb = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i32, i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [128 x i8] c"timed out [ecb %p (flags 0x%x, dleft %x, stat %x)], <state %d, nexus %p, phase(l %x, c %x, p %x), resid %lx, msg(q %x,o %x) %s>\00", align 1
@NCR_STAT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"DMA active\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@ECB_ABORT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c" AGAIN\0A\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@CAM_CMD_TIMEOUT = common dso_local global i32 0, align 4
@MSGI = common dso_local global i32 0, align 4
@CDI = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [27 x i8] c"sync negotiation disabled\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @ncr53c9x_callout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ncr53c9x_callout(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.ncr53c9x_ecb*, align 8
  %4 = alloca %union.ccb*, align 8
  %5 = alloca %struct.ncr53c9x_softc*, align 8
  %6 = alloca %struct.ncr53c9x_tinfo*, align 8
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = bitcast i8* %7 to %struct.ncr53c9x_ecb*
  store %struct.ncr53c9x_ecb* %8, %struct.ncr53c9x_ecb** %3, align 8
  %9 = load %struct.ncr53c9x_ecb*, %struct.ncr53c9x_ecb** %3, align 8
  %10 = getelementptr inbounds %struct.ncr53c9x_ecb, %struct.ncr53c9x_ecb* %9, i32 0, i32 5
  %11 = load %union.ccb*, %union.ccb** %10, align 8
  store %union.ccb* %11, %union.ccb** %4, align 8
  %12 = load %struct.ncr53c9x_ecb*, %struct.ncr53c9x_ecb** %3, align 8
  %13 = getelementptr inbounds %struct.ncr53c9x_ecb, %struct.ncr53c9x_ecb* %12, i32 0, i32 4
  %14 = load %struct.ncr53c9x_softc*, %struct.ncr53c9x_softc** %13, align 8
  store %struct.ncr53c9x_softc* %14, %struct.ncr53c9x_softc** %5, align 8
  %15 = load %struct.ncr53c9x_softc*, %struct.ncr53c9x_softc** %5, align 8
  %16 = load i32, i32* @MA_OWNED, align 4
  %17 = call i32 @NCR_LOCK_ASSERT(%struct.ncr53c9x_softc* %15, i32 %16)
  %18 = load %struct.ncr53c9x_softc*, %struct.ncr53c9x_softc** %5, align 8
  %19 = getelementptr inbounds %struct.ncr53c9x_softc, %struct.ncr53c9x_softc* %18, i32 0, i32 8
  %20 = load %struct.ncr53c9x_tinfo*, %struct.ncr53c9x_tinfo** %19, align 8
  %21 = load %union.ccb*, %union.ccb** %4, align 8
  %22 = bitcast %union.ccb* %21 to %struct.TYPE_6__*
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds %struct.ncr53c9x_tinfo, %struct.ncr53c9x_tinfo* %20, i64 %24
  store %struct.ncr53c9x_tinfo* %25, %struct.ncr53c9x_tinfo** %6, align 8
  %26 = load %union.ccb*, %union.ccb** %4, align 8
  %27 = bitcast %union.ccb* %26 to %struct.TYPE_6__*
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @xpt_print_path(i32 %29)
  %31 = load %struct.ncr53c9x_softc*, %struct.ncr53c9x_softc** %5, align 8
  %32 = getelementptr inbounds %struct.ncr53c9x_softc, %struct.ncr53c9x_softc* %31, i32 0, i32 7
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.ncr53c9x_ecb*, %struct.ncr53c9x_ecb** %3, align 8
  %35 = load %struct.ncr53c9x_ecb*, %struct.ncr53c9x_ecb** %3, align 8
  %36 = getelementptr inbounds %struct.ncr53c9x_ecb, %struct.ncr53c9x_ecb* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.ncr53c9x_ecb*, %struct.ncr53c9x_ecb** %3, align 8
  %39 = getelementptr inbounds %struct.ncr53c9x_ecb, %struct.ncr53c9x_ecb* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.ncr53c9x_ecb*, %struct.ncr53c9x_ecb** %3, align 8
  %42 = getelementptr inbounds %struct.ncr53c9x_ecb, %struct.ncr53c9x_ecb* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.ncr53c9x_softc*, %struct.ncr53c9x_softc** %5, align 8
  %45 = getelementptr inbounds %struct.ncr53c9x_softc, %struct.ncr53c9x_softc* %44, i32 0, i32 6
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.ncr53c9x_softc*, %struct.ncr53c9x_softc** %5, align 8
  %48 = getelementptr inbounds %struct.ncr53c9x_softc, %struct.ncr53c9x_softc* %47, i32 0, i32 1
  %49 = load %struct.ncr53c9x_ecb*, %struct.ncr53c9x_ecb** %48, align 8
  %50 = load %struct.ncr53c9x_softc*, %struct.ncr53c9x_softc** %5, align 8
  %51 = load i32, i32* @NCR_STAT, align 4
  %52 = call i32 @NCR_READ_REG(%struct.ncr53c9x_softc* %50, i32 %51)
  %53 = load %struct.ncr53c9x_softc*, %struct.ncr53c9x_softc** %5, align 8
  %54 = getelementptr inbounds %struct.ncr53c9x_softc, %struct.ncr53c9x_softc* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.ncr53c9x_softc*, %struct.ncr53c9x_softc** %5, align 8
  %57 = getelementptr inbounds %struct.ncr53c9x_softc, %struct.ncr53c9x_softc* %56, i32 0, i32 5
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.ncr53c9x_softc*, %struct.ncr53c9x_softc** %5, align 8
  %60 = getelementptr inbounds %struct.ncr53c9x_softc, %struct.ncr53c9x_softc* %59, i32 0, i32 4
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.ncr53c9x_softc*, %struct.ncr53c9x_softc** %5, align 8
  %63 = getelementptr inbounds %struct.ncr53c9x_softc, %struct.ncr53c9x_softc* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.ncr53c9x_softc*, %struct.ncr53c9x_softc** %5, align 8
  %66 = getelementptr inbounds %struct.ncr53c9x_softc, %struct.ncr53c9x_softc* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.ncr53c9x_softc*, %struct.ncr53c9x_softc** %5, align 8
  %69 = call i64 @NCRDMA_ISACTIVE(%struct.ncr53c9x_softc* %68)
  %70 = icmp ne i64 %69, 0
  %71 = zext i1 %70 to i64
  %72 = select i1 %70, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %73 = call i32 @device_printf(i32 %33, i8* getelementptr inbounds ([128 x i8], [128 x i8]* @.str, i64 0, i64 0), %struct.ncr53c9x_ecb* %34, i32 %37, i32 %40, i32 %43, i32 %46, %struct.ncr53c9x_ecb* %49, i32 %52, i32 %55, i32 %58, i64 %61, i32 %64, i32 %67, i8* %72)
  %74 = load %struct.ncr53c9x_ecb*, %struct.ncr53c9x_ecb** %3, align 8
  %75 = getelementptr inbounds %struct.ncr53c9x_ecb, %struct.ncr53c9x_ecb* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @ECB_ABORT, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %1
  %81 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %82 = load %struct.ncr53c9x_softc*, %struct.ncr53c9x_softc** %5, align 8
  %83 = call i32 @ncr53c9x_init(%struct.ncr53c9x_softc* %82, i32 1)
  br label %124

84:                                               ; preds = %1
  %85 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %86 = load i32, i32* @CAM_CMD_TIMEOUT, align 4
  %87 = load %union.ccb*, %union.ccb** %4, align 8
  %88 = bitcast %union.ccb* %87 to %struct.TYPE_6__*
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 2
  store i32 %86, i32* %89, align 4
  %90 = load %struct.ncr53c9x_softc*, %struct.ncr53c9x_softc** %5, align 8
  %91 = load %struct.ncr53c9x_ecb*, %struct.ncr53c9x_ecb** %3, align 8
  %92 = call i32 @ncr53c9x_abort(%struct.ncr53c9x_softc* %90, %struct.ncr53c9x_ecb* %91)
  %93 = load %struct.ncr53c9x_ecb*, %struct.ncr53c9x_ecb** %3, align 8
  %94 = load %struct.ncr53c9x_softc*, %struct.ncr53c9x_softc** %5, align 8
  %95 = getelementptr inbounds %struct.ncr53c9x_softc, %struct.ncr53c9x_softc* %94, i32 0, i32 1
  %96 = load %struct.ncr53c9x_ecb*, %struct.ncr53c9x_ecb** %95, align 8
  %97 = icmp eq %struct.ncr53c9x_ecb* %93, %96
  br i1 %97, label %98, label %123

98:                                               ; preds = %84
  %99 = load %struct.ncr53c9x_tinfo*, %struct.ncr53c9x_tinfo** %6, align 8
  %100 = getelementptr inbounds %struct.ncr53c9x_tinfo, %struct.ncr53c9x_tinfo* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %123

104:                                              ; preds = %98
  %105 = load %struct.ncr53c9x_softc*, %struct.ncr53c9x_softc** %5, align 8
  %106 = getelementptr inbounds %struct.ncr53c9x_softc, %struct.ncr53c9x_softc* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* @MSGI, align 4
  %109 = load i32, i32* @CDI, align 4
  %110 = or i32 %108, %109
  %111 = and i32 %107, %110
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %123

113:                                              ; preds = %104
  %114 = load %struct.ncr53c9x_tinfo*, %struct.ncr53c9x_tinfo** %6, align 8
  %115 = getelementptr inbounds %struct.ncr53c9x_tinfo, %struct.ncr53c9x_tinfo* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 0
  store i64 0, i64* %116, align 8
  %117 = load %union.ccb*, %union.ccb** %4, align 8
  %118 = bitcast %union.ccb* %117 to %struct.TYPE_6__*
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 8
  %121 = call i32 @xpt_print_path(i32 %120)
  %122 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  br label %123

123:                                              ; preds = %113, %104, %98, %84
  br label %124

124:                                              ; preds = %123, %80
  ret void
}

declare dso_local i32 @NCR_LOCK_ASSERT(%struct.ncr53c9x_softc*, i32) #1

declare dso_local i32 @xpt_print_path(i32) #1

declare dso_local i32 @device_printf(i32, i8*, %struct.ncr53c9x_ecb*, i32, i32, i32, i32, %struct.ncr53c9x_ecb*, i32, i32, i32, i64, i32, i32, i8*) #1

declare dso_local i32 @NCR_READ_REG(%struct.ncr53c9x_softc*, i32) #1

declare dso_local i64 @NCRDMA_ISACTIVE(%struct.ncr53c9x_softc*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @ncr53c9x_init(%struct.ncr53c9x_softc*, i32) #1

declare dso_local i32 @ncr53c9x_abort(%struct.ncr53c9x_softc*, %struct.ncr53c9x_ecb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
