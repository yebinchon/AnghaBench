; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/cpufreq/extr_powernow.c_pn7_setfidvid.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/cpufreq/extr_powernow.c_pn7_setfidvid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pn_softc = type { i32, i32 }

@MSR_AMDK7_FIDVID_STATUS = common dso_local global i32 0, align 4
@MSR_AMDK7_FIDVID_CTL = common dso_local global i32 0, align 4
@PN7_CTR_FIDCHRATIO = common dso_local global i32 0, align 4
@A0_ERRATA = common dso_local global i32 0, align 4
@pn7_fid_to_mult = common dso_local global i64* null, align 8
@PN7_CTR_FIDC = common dso_local global i32 0, align 4
@PN7_CTR_VIDC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pn_softc*, i32, i32)* @pn7_setfidvid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pn7_setfidvid(%struct.pn_softc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pn_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.pn_softc* %0, %struct.pn_softc** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load i32, i32* @MSR_AMDK7_FIDVID_STATUS, align 4
  %13 = call i32 @rdmsr(i32 %12)
  store i32 %13, i32* %10, align 4
  %14 = load i32, i32* %10, align 4
  %15 = call i32 @PN7_STA_CFID(i32 %14)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %10, align 4
  %17 = call i32 @PN7_STA_CVID(i32 %16)
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %26

21:                                               ; preds = %3
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* %9, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  store i32 0, i32* %4, align 4
  br label %107

26:                                               ; preds = %21, %3
  %27 = load i32, i32* @MSR_AMDK7_FIDVID_CTL, align 4
  %28 = call i32 @rdmsr(i32 %27)
  %29 = load i32, i32* @PN7_CTR_FIDCHRATIO, align 4
  %30 = and i32 %28, %29
  store i32 %30, i32* %11, align 4
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @PN7_CTR_FID(i32 %31)
  %33 = load i32, i32* %11, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @PN7_CTR_VID(i32 %35)
  %37 = load i32, i32* %11, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %11, align 4
  %39 = load %struct.pn_softc*, %struct.pn_softc** %5, align 8
  %40 = getelementptr inbounds %struct.pn_softc, %struct.pn_softc* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @PN7_CTR_SGTC(i32 %41)
  %43 = load i32, i32* %11, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %11, align 4
  %45 = load %struct.pn_softc*, %struct.pn_softc** %5, align 8
  %46 = getelementptr inbounds %struct.pn_softc, %struct.pn_softc* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @A0_ERRATA, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %26
  %52 = call i32 (...) @disable_intr()
  br label %53

53:                                               ; preds = %51, %26
  %54 = load i64*, i64** @pn7_fid_to_mult, align 8
  %55 = load i32, i32* %6, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i64, i64* %54, i64 %56
  %58 = load i64, i64* %57, align 8
  %59 = load i64*, i64** @pn7_fid_to_mult, align 8
  %60 = load i32, i32* %8, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i64, i64* %59, i64 %61
  %63 = load i64, i64* %62, align 8
  %64 = icmp slt i64 %58, %63
  br i1 %64, label %65, label %81

65:                                               ; preds = %53
  %66 = load i32, i32* @MSR_AMDK7_FIDVID_CTL, align 4
  %67 = load i32, i32* %11, align 4
  %68 = load i32, i32* @PN7_CTR_FIDC, align 4
  %69 = or i32 %67, %68
  %70 = call i32 @wrmsr(i32 %66, i32 %69)
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* %9, align 4
  %73 = icmp ne i32 %71, %72
  br i1 %73, label %74, label %80

74:                                               ; preds = %65
  %75 = load i32, i32* @MSR_AMDK7_FIDVID_CTL, align 4
  %76 = load i32, i32* %11, align 4
  %77 = load i32, i32* @PN7_CTR_VIDC, align 4
  %78 = or i32 %76, %77
  %79 = call i32 @wrmsr(i32 %75, i32 %78)
  br label %80

80:                                               ; preds = %74, %65
  br label %97

81:                                               ; preds = %53
  %82 = load i32, i32* @MSR_AMDK7_FIDVID_CTL, align 4
  %83 = load i32, i32* %11, align 4
  %84 = load i32, i32* @PN7_CTR_VIDC, align 4
  %85 = or i32 %83, %84
  %86 = call i32 @wrmsr(i32 %82, i32 %85)
  %87 = load i32, i32* %6, align 4
  %88 = load i32, i32* %8, align 4
  %89 = icmp ne i32 %87, %88
  br i1 %89, label %90, label %96

90:                                               ; preds = %81
  %91 = load i32, i32* @MSR_AMDK7_FIDVID_CTL, align 4
  %92 = load i32, i32* %11, align 4
  %93 = load i32, i32* @PN7_CTR_FIDC, align 4
  %94 = or i32 %92, %93
  %95 = call i32 @wrmsr(i32 %91, i32 %94)
  br label %96

96:                                               ; preds = %90, %81
  br label %97

97:                                               ; preds = %96, %80
  %98 = load %struct.pn_softc*, %struct.pn_softc** %5, align 8
  %99 = getelementptr inbounds %struct.pn_softc, %struct.pn_softc* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @A0_ERRATA, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %97
  %105 = call i32 (...) @enable_intr()
  br label %106

106:                                              ; preds = %104, %97
  store i32 0, i32* %4, align 4
  br label %107

107:                                              ; preds = %106, %25
  %108 = load i32, i32* %4, align 4
  ret i32 %108
}

declare dso_local i32 @rdmsr(i32) #1

declare dso_local i32 @PN7_STA_CFID(i32) #1

declare dso_local i32 @PN7_STA_CVID(i32) #1

declare dso_local i32 @PN7_CTR_FID(i32) #1

declare dso_local i32 @PN7_CTR_VID(i32) #1

declare dso_local i32 @PN7_CTR_SGTC(i32) #1

declare dso_local i32 @disable_intr(...) #1

declare dso_local i32 @wrmsr(i32, i32) #1

declare dso_local i32 @enable_intr(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
