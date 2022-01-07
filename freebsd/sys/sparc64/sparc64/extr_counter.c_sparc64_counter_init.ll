; ModuleID = '/home/carl/AnghaBench/freebsd/sys/sparc64/sparc64/extr_counter.c_sparc64_counter_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/sparc64/sparc64/extr_counter.c_sparc64_counter_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timecounter = type { i32, %struct.ct_softc*, i32, i32, i32, i32 }
%struct.ct_softc = type { i64, i32, i32 }

@.str = private unnamed_addr constant [28 x i8] c"initializing counter-timer\0A\00", align 1
@CTR_CT0 = common dso_local global i64 0, align 8
@CTR_LIMIT = common dso_local global i64 0, align 8
@COUNTER_MASK = common dso_local global i32 0, align 4
@CTR_CT1 = common dso_local global i64 0, align 8
@M_DEVBUF = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@counter_get_timecount = common dso_local global i32 0, align 4
@COUNTER_FREQ = common dso_local global i32 0, align 4
@COUNTER_QUALITY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sparc64_counter_init(i8* %0, i32 %1, i32 %2, i64 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.timecounter*, align 8
  %10 = alloca %struct.ct_softc*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  %11 = call i32 @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* %7, align 4
  %14 = load i64, i64* %8, align 8
  %15 = load i64, i64* @CTR_CT0, align 8
  %16 = add nsw i64 %14, %15
  %17 = load i64, i64* @CTR_LIMIT, align 8
  %18 = add nsw i64 %16, %17
  %19 = load i32, i32* @COUNTER_MASK, align 4
  %20 = call i32 @bus_space_write_8(i32 %12, i32 %13, i64 %18, i32 %19)
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* %7, align 4
  %23 = load i64, i64* %8, align 8
  %24 = load i64, i64* @CTR_CT1, align 8
  %25 = add nsw i64 %23, %24
  %26 = load i64, i64* @CTR_LIMIT, align 8
  %27 = add nsw i64 %25, %26
  %28 = load i32, i32* @COUNTER_MASK, align 4
  %29 = call i32 @bus_space_write_8(i32 %21, i32 %22, i64 %27, i32 %28)
  %30 = load i32, i32* @M_DEVBUF, align 4
  %31 = load i32, i32* @M_WAITOK, align 4
  %32 = load i32, i32* @M_ZERO, align 4
  %33 = or i32 %31, %32
  %34 = call i8* @malloc(i32 32, i32 %30, i32 %33)
  %35 = bitcast i8* %34 to %struct.timecounter*
  store %struct.timecounter* %35, %struct.timecounter** %9, align 8
  %36 = load i32, i32* @M_DEVBUF, align 4
  %37 = load i32, i32* @M_WAITOK, align 4
  %38 = call i8* @malloc(i32 16, i32 %36, i32 %37)
  %39 = bitcast i8* %38 to %struct.ct_softc*
  store %struct.ct_softc* %39, %struct.ct_softc** %10, align 8
  %40 = load i32, i32* %6, align 4
  %41 = load %struct.ct_softc*, %struct.ct_softc** %10, align 8
  %42 = getelementptr inbounds %struct.ct_softc, %struct.ct_softc* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* %7, align 4
  %44 = load %struct.ct_softc*, %struct.ct_softc** %10, align 8
  %45 = getelementptr inbounds %struct.ct_softc, %struct.ct_softc* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 8
  %46 = load i64, i64* %8, align 8
  %47 = load i64, i64* @CTR_CT0, align 8
  %48 = add nsw i64 %46, %47
  %49 = load %struct.ct_softc*, %struct.ct_softc** %10, align 8
  %50 = getelementptr inbounds %struct.ct_softc, %struct.ct_softc* %49, i32 0, i32 0
  store i64 %48, i64* %50, align 8
  %51 = load i32, i32* @counter_get_timecount, align 4
  %52 = load %struct.timecounter*, %struct.timecounter** %9, align 8
  %53 = getelementptr inbounds %struct.timecounter, %struct.timecounter* %52, i32 0, i32 5
  store i32 %51, i32* %53, align 4
  %54 = load i32, i32* @COUNTER_MASK, align 4
  %55 = load %struct.timecounter*, %struct.timecounter** %9, align 8
  %56 = getelementptr inbounds %struct.timecounter, %struct.timecounter* %55, i32 0, i32 4
  store i32 %54, i32* %56, align 8
  %57 = load i32, i32* @COUNTER_FREQ, align 4
  %58 = load %struct.timecounter*, %struct.timecounter** %9, align 8
  %59 = getelementptr inbounds %struct.timecounter, %struct.timecounter* %58, i32 0, i32 3
  store i32 %57, i32* %59, align 4
  %60 = load i8*, i8** %5, align 8
  %61 = load i32, i32* @M_DEVBUF, align 4
  %62 = call i32 @strdup(i8* %60, i32 %61)
  %63 = load %struct.timecounter*, %struct.timecounter** %9, align 8
  %64 = getelementptr inbounds %struct.timecounter, %struct.timecounter* %63, i32 0, i32 2
  store i32 %62, i32* %64, align 8
  %65 = load %struct.ct_softc*, %struct.ct_softc** %10, align 8
  %66 = load %struct.timecounter*, %struct.timecounter** %9, align 8
  %67 = getelementptr inbounds %struct.timecounter, %struct.timecounter* %66, i32 0, i32 1
  store %struct.ct_softc* %65, %struct.ct_softc** %67, align 8
  %68 = load i32, i32* @COUNTER_QUALITY, align 4
  %69 = load %struct.timecounter*, %struct.timecounter** %9, align 8
  %70 = getelementptr inbounds %struct.timecounter, %struct.timecounter* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 8
  %71 = load %struct.timecounter*, %struct.timecounter** %9, align 8
  %72 = call i32 @tc_init(%struct.timecounter* %71)
  ret void
}

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @bus_space_write_8(i32, i32, i64, i32) #1

declare dso_local i8* @malloc(i32, i32, i32) #1

declare dso_local i32 @strdup(i8*, i32) #1

declare dso_local i32 @tc_init(%struct.timecounter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
