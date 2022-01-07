; ModuleID = '/home/carl/AnghaBench/freebsd/sys/i386/bios/extr_apm.c_apm_record_event.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/i386/bios/extr_apm.c_apm_record_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.apm_softc = type { i32, i64, i64*, i64, i32, %struct.apm_event_info* }
%struct.apm_event_info = type { i64, i64 }

@SCFLAG_OPEN = common dso_local global i32 0, align 4
@APM_NEVENTS = common dso_local global i64 0, align 8
@apm_evindex = common dso_local global i64 0, align 8
@PZERO = common dso_local global i32 0, align 4
@SCFLAG_OCTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.apm_softc*, i64)* @apm_record_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @apm_record_event(%struct.apm_softc* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.apm_softc*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.apm_event_info*, align 8
  store %struct.apm_softc* %0, %struct.apm_softc** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.apm_softc*, %struct.apm_softc** %4, align 8
  %8 = getelementptr inbounds %struct.apm_softc, %struct.apm_softc* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @SCFLAG_OPEN, align 4
  %11 = and i32 %9, %10
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %70

14:                                               ; preds = %2
  %15 = load %struct.apm_softc*, %struct.apm_softc** %4, align 8
  %16 = getelementptr inbounds %struct.apm_softc, %struct.apm_softc* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @APM_NEVENTS, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  store i32 1, i32* %3, align 4
  br label %70

21:                                               ; preds = %14
  %22 = load %struct.apm_softc*, %struct.apm_softc** %4, align 8
  %23 = getelementptr inbounds %struct.apm_softc, %struct.apm_softc* %22, i32 0, i32 2
  %24 = load i64*, i64** %23, align 8
  %25 = load i64, i64* %5, align 8
  %26 = getelementptr inbounds i64, i64* %24, i64 %25
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %21
  store i32 1, i32* %3, align 4
  br label %70

30:                                               ; preds = %21
  %31 = load %struct.apm_softc*, %struct.apm_softc** %4, align 8
  %32 = getelementptr inbounds %struct.apm_softc, %struct.apm_softc* %31, i32 0, i32 5
  %33 = load %struct.apm_event_info*, %struct.apm_event_info** %32, align 8
  %34 = load %struct.apm_softc*, %struct.apm_softc** %4, align 8
  %35 = getelementptr inbounds %struct.apm_softc, %struct.apm_softc* %34, i32 0, i32 3
  %36 = load i64, i64* %35, align 8
  %37 = getelementptr inbounds %struct.apm_event_info, %struct.apm_event_info* %33, i64 %36
  store %struct.apm_event_info* %37, %struct.apm_event_info** %6, align 8
  %38 = load %struct.apm_softc*, %struct.apm_softc** %4, align 8
  %39 = getelementptr inbounds %struct.apm_softc, %struct.apm_softc* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = add i64 %40, 1
  store i64 %41, i64* %39, align 8
  %42 = load %struct.apm_softc*, %struct.apm_softc** %4, align 8
  %43 = getelementptr inbounds %struct.apm_softc, %struct.apm_softc* %42, i32 0, i32 3
  %44 = load i64, i64* %43, align 8
  %45 = add i64 %44, 1
  store i64 %45, i64* %43, align 8
  %46 = load i64, i64* @APM_NEVENTS, align 8
  %47 = load %struct.apm_softc*, %struct.apm_softc** %4, align 8
  %48 = getelementptr inbounds %struct.apm_softc, %struct.apm_softc* %47, i32 0, i32 3
  %49 = load i64, i64* %48, align 8
  %50 = urem i64 %49, %46
  store i64 %50, i64* %48, align 8
  %51 = load i64, i64* %5, align 8
  %52 = load %struct.apm_event_info*, %struct.apm_event_info** %6, align 8
  %53 = getelementptr inbounds %struct.apm_event_info, %struct.apm_event_info* %52, i32 0, i32 0
  store i64 %51, i64* %53, align 8
  %54 = load i64, i64* @apm_evindex, align 8
  %55 = add nsw i64 %54, 1
  store i64 %55, i64* @apm_evindex, align 8
  %56 = load %struct.apm_event_info*, %struct.apm_event_info** %6, align 8
  %57 = getelementptr inbounds %struct.apm_event_info, %struct.apm_event_info* %56, i32 0, i32 1
  store i64 %55, i64* %57, align 8
  %58 = load %struct.apm_softc*, %struct.apm_softc** %4, align 8
  %59 = getelementptr inbounds %struct.apm_softc, %struct.apm_softc* %58, i32 0, i32 4
  %60 = load i32, i32* @PZERO, align 4
  %61 = call i32 @selwakeuppri(i32* %59, i32 %60)
  %62 = load %struct.apm_softc*, %struct.apm_softc** %4, align 8
  %63 = getelementptr inbounds %struct.apm_softc, %struct.apm_softc* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @SCFLAG_OCTL, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  %68 = zext i1 %67 to i64
  %69 = select i1 %67, i32 0, i32 1
  store i32 %69, i32* %3, align 4
  br label %70

70:                                               ; preds = %30, %29, %20, %13
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local i32 @selwakeuppri(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
