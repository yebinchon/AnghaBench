; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/cpufreq/extr_powernow.c_pn_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/cpufreq/extr_powernow.c_pn_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pn_softc = type { i32, i32, i32, i64 }
%struct.pcpu = type { i32 }

@MSR_AMDK7_FIDVID_STATUS = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@cpu_id = common dso_local global i32 0, align 4
@PN7_TYPE = common dso_local global i32 0, align 4
@pn7_fid_to_mult = common dso_local global i32* null, align 8
@pn7_mobile_vid_to_volts = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"PowerNow! K7\00", align 1
@pn7_desktop_vid_to_volts = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"Cool`n'Quiet K7\00", align 1
@PN8_TYPE = common dso_local global i32 0, align 4
@pn8_vid_to_volts = common dso_local global i32 0, align 4
@pn8_fid_to_mult = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [13 x i8] c"PowerNow! K8\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"Cool`n'Quiet K8\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @pn_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pn_probe(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.pn_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.pcpu*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = call %struct.pn_softc* @device_get_softc(i32 %11)
  store %struct.pn_softc* %12, %struct.pn_softc** %4, align 8
  %13 = load %struct.pn_softc*, %struct.pn_softc** %4, align 8
  %14 = getelementptr inbounds %struct.pn_softc, %struct.pn_softc* %13, i32 0, i32 3
  store i64 0, i64* %14, align 8
  %15 = load i32, i32* @MSR_AMDK7_FIDVID_STATUS, align 4
  %16 = call i32 @rdmsr(i32 %15)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %3, align 4
  %18 = call %struct.pcpu* @cpu_get_pcpu(i32 %17)
  store %struct.pcpu* %18, %struct.pcpu** %7, align 8
  %19 = load %struct.pcpu*, %struct.pcpu** %7, align 8
  %20 = icmp eq %struct.pcpu* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %1
  %22 = load i32, i32* @ENODEV, align 4
  store i32 %22, i32* %2, align 4
  br label %104

23:                                               ; preds = %1
  %24 = load %struct.pcpu*, %struct.pcpu** %7, align 8
  %25 = getelementptr inbounds %struct.pcpu, %struct.pcpu* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @cpu_est_clockrate(i32 %26, i32* %6)
  %28 = load i32, i32* @cpu_id, align 4
  %29 = and i32 %28, 3840
  switch i32 %29, label %101 [
    i32 1536, label %30
    i32 3840, label %67
  ]

30:                                               ; preds = %23
  %31 = load i32, i32* %5, align 4
  %32 = call i64 @PN7_STA_SFID(i32 %31)
  store i64 %32, i64* %8, align 8
  %33 = load i32, i32* %5, align 4
  %34 = call i64 @PN7_STA_MFID(i32 %33)
  store i64 %34, i64* %9, align 8
  %35 = load i32, i32* %5, align 4
  %36 = call i64 @PN7_STA_CFID(i32 %35)
  store i64 %36, i64* %10, align 8
  %37 = load i32, i32* @PN7_TYPE, align 4
  %38 = load %struct.pn_softc*, %struct.pn_softc** %4, align 8
  %39 = getelementptr inbounds %struct.pn_softc, %struct.pn_softc* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 8
  %40 = load i32, i32* %6, align 4
  %41 = sdiv i32 %40, 100000
  %42 = load i32*, i32** @pn7_fid_to_mult, align 8
  %43 = load i64, i64* %10, align 8
  %44 = getelementptr inbounds i32, i32* %42, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = sdiv i32 %41, %45
  %47 = load %struct.pn_softc*, %struct.pn_softc** %4, align 8
  %48 = getelementptr inbounds %struct.pn_softc, %struct.pn_softc* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 8
  %49 = load i32, i32* %5, align 4
  %50 = call i64 @PN7_STA_SFID(i32 %49)
  %51 = load i32, i32* %5, align 4
  %52 = call i64 @PN7_STA_MFID(i32 %51)
  %53 = icmp ne i64 %50, %52
  br i1 %53, label %54, label %60

54:                                               ; preds = %30
  %55 = load i32, i32* @pn7_mobile_vid_to_volts, align 4
  %56 = load %struct.pn_softc*, %struct.pn_softc** %4, align 8
  %57 = getelementptr inbounds %struct.pn_softc, %struct.pn_softc* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 4
  %58 = load i32, i32* %3, align 4
  %59 = call i32 @device_set_desc(i32 %58, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  br label %66

60:                                               ; preds = %30
  %61 = load i32, i32* @pn7_desktop_vid_to_volts, align 4
  %62 = load %struct.pn_softc*, %struct.pn_softc** %4, align 8
  %63 = getelementptr inbounds %struct.pn_softc, %struct.pn_softc* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 4
  %64 = load i32, i32* %3, align 4
  %65 = call i32 @device_set_desc(i32 %64, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  br label %66

66:                                               ; preds = %60, %54
  br label %103

67:                                               ; preds = %23
  %68 = load i32, i32* %5, align 4
  %69 = call i64 @PN8_STA_SFID(i32 %68)
  store i64 %69, i64* %8, align 8
  %70 = load i32, i32* %5, align 4
  %71 = call i64 @PN8_STA_MFID(i32 %70)
  store i64 %71, i64* %9, align 8
  %72 = load i32, i32* %5, align 4
  %73 = call i64 @PN8_STA_CFID(i32 %72)
  store i64 %73, i64* %10, align 8
  %74 = load i32, i32* @PN8_TYPE, align 4
  %75 = load %struct.pn_softc*, %struct.pn_softc** %4, align 8
  %76 = getelementptr inbounds %struct.pn_softc, %struct.pn_softc* %75, i32 0, i32 2
  store i32 %74, i32* %76, align 8
  %77 = load i32, i32* @pn8_vid_to_volts, align 4
  %78 = load %struct.pn_softc*, %struct.pn_softc** %4, align 8
  %79 = getelementptr inbounds %struct.pn_softc, %struct.pn_softc* %78, i32 0, i32 1
  store i32 %77, i32* %79, align 4
  %80 = load i32, i32* %6, align 4
  %81 = sdiv i32 %80, 100000
  %82 = load i32*, i32** @pn8_fid_to_mult, align 8
  %83 = load i64, i64* %10, align 8
  %84 = getelementptr inbounds i32, i32* %82, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = sdiv i32 %81, %85
  %87 = load %struct.pn_softc*, %struct.pn_softc** %4, align 8
  %88 = getelementptr inbounds %struct.pn_softc, %struct.pn_softc* %87, i32 0, i32 0
  store i32 %86, i32* %88, align 8
  %89 = load i32, i32* %5, align 4
  %90 = call i64 @PN8_STA_SFID(i32 %89)
  %91 = load i32, i32* %5, align 4
  %92 = call i64 @PN8_STA_MFID(i32 %91)
  %93 = icmp ne i64 %90, %92
  br i1 %93, label %94, label %97

94:                                               ; preds = %67
  %95 = load i32, i32* %3, align 4
  %96 = call i32 @device_set_desc(i32 %95, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  br label %100

97:                                               ; preds = %67
  %98 = load i32, i32* %3, align 4
  %99 = call i32 @device_set_desc(i32 %98, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  br label %100

100:                                              ; preds = %97, %94
  br label %103

101:                                              ; preds = %23
  %102 = load i32, i32* @ENODEV, align 4
  store i32 %102, i32* %2, align 4
  br label %104

103:                                              ; preds = %100, %66
  store i32 0, i32* %2, align 4
  br label %104

104:                                              ; preds = %103, %101, %21
  %105 = load i32, i32* %2, align 4
  ret i32 %105
}

declare dso_local %struct.pn_softc* @device_get_softc(i32) #1

declare dso_local i32 @rdmsr(i32) #1

declare dso_local %struct.pcpu* @cpu_get_pcpu(i32) #1

declare dso_local i32 @cpu_est_clockrate(i32, i32*) #1

declare dso_local i64 @PN7_STA_SFID(i32) #1

declare dso_local i64 @PN7_STA_MFID(i32) #1

declare dso_local i64 @PN7_STA_CFID(i32) #1

declare dso_local i32 @device_set_desc(i32, i8*) #1

declare dso_local i64 @PN8_STA_SFID(i32) #1

declare dso_local i64 @PN8_STA_MFID(i32) #1

declare dso_local i64 @PN8_STA_CFID(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
