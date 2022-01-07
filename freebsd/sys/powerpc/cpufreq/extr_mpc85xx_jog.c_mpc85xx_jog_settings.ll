; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/cpufreq/extr_mpc85xx_jog.c_mpc85xx_jog_settings.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/cpufreq/extr_mpc85xx_jog.c_mpc85xx_jog_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cf_setting = type { i32, i32*, i32 }
%struct.mpc85xx_jog_softc = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@E2BIG = common dso_local global i32 0, align 4
@CPUFREQ_VAL_UNKNOWN = common dso_local global i32 0, align 4
@MHZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.cf_setting*, i32*)* @mpc85xx_jog_settings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpc85xx_jog_settings(i32 %0, %struct.cf_setting* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.cf_setting*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.mpc85xx_jog_softc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.cf_setting* %1, %struct.cf_setting** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call %struct.mpc85xx_jog_softc* @device_get_softc(i32 %11)
  store %struct.mpc85xx_jog_softc* %12, %struct.mpc85xx_jog_softc** %8, align 8
  %13 = load %struct.cf_setting*, %struct.cf_setting** %6, align 8
  %14 = icmp eq %struct.cf_setting* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %3
  %16 = load i32*, i32** %7, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %15, %3
  %19 = load i32, i32* @EINVAL, align 4
  store i32 %19, i32* %4, align 4
  br label %100

20:                                               ; preds = %15
  %21 = load i32*, i32** %7, align 8
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.mpc85xx_jog_softc*, %struct.mpc85xx_jog_softc** %8, align 8
  %24 = getelementptr inbounds %struct.mpc85xx_jog_softc, %struct.mpc85xx_jog_softc* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = sub nsw i32 %25, 1
  %27 = icmp slt i32 %22, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %20
  %29 = load i32, i32* @E2BIG, align 4
  store i32 %29, i32* %4, align 4
  br label %100

30:                                               ; preds = %20
  %31 = call i32 (...) @mpc85xx_get_system_clock()
  store i32 %31, i32* %9, align 4
  %32 = load %struct.cf_setting*, %struct.cf_setting** %6, align 8
  %33 = load i32, i32* @CPUFREQ_VAL_UNKNOWN, align 4
  %34 = load %struct.mpc85xx_jog_softc*, %struct.mpc85xx_jog_softc** %8, align 8
  %35 = getelementptr inbounds %struct.mpc85xx_jog_softc, %struct.mpc85xx_jog_softc* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = sext i32 %36 to i64
  %38 = mul i64 24, %37
  %39 = trunc i64 %38 to i32
  %40 = call i32 @memset(%struct.cf_setting* %32, i32 %33, i32 %39)
  %41 = load %struct.mpc85xx_jog_softc*, %struct.mpc85xx_jog_softc** %8, align 8
  %42 = getelementptr inbounds %struct.mpc85xx_jog_softc, %struct.mpc85xx_jog_softc* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %10, align 4
  br label %44

44:                                               ; preds = %87, %30
  %45 = load i32, i32* %10, align 4
  %46 = load %struct.mpc85xx_jog_softc*, %struct.mpc85xx_jog_softc** %8, align 8
  %47 = getelementptr inbounds %struct.mpc85xx_jog_softc, %struct.mpc85xx_jog_softc* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = icmp sge i32 %45, %48
  br i1 %49, label %50, label %90

50:                                               ; preds = %44
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* %10, align 4
  %53 = mul nsw i32 %51, %52
  %54 = load i32, i32* @MHZ, align 4
  %55 = sdiv i32 %53, %54
  %56 = load %struct.cf_setting*, %struct.cf_setting** %6, align 8
  %57 = load %struct.mpc85xx_jog_softc*, %struct.mpc85xx_jog_softc** %8, align 8
  %58 = getelementptr inbounds %struct.mpc85xx_jog_softc, %struct.mpc85xx_jog_softc* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %10, align 4
  %61 = sub nsw i32 %59, %60
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.cf_setting, %struct.cf_setting* %56, i64 %62
  %64 = getelementptr inbounds %struct.cf_setting, %struct.cf_setting* %63, i32 0, i32 0
  store i32 %55, i32* %64, align 8
  %65 = load i32, i32* %5, align 4
  %66 = load %struct.cf_setting*, %struct.cf_setting** %6, align 8
  %67 = load %struct.mpc85xx_jog_softc*, %struct.mpc85xx_jog_softc** %8, align 8
  %68 = getelementptr inbounds %struct.mpc85xx_jog_softc, %struct.mpc85xx_jog_softc* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %10, align 4
  %71 = sub nsw i32 %69, %70
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.cf_setting, %struct.cf_setting* %66, i64 %72
  %74 = getelementptr inbounds %struct.cf_setting, %struct.cf_setting* %73, i32 0, i32 2
  store i32 %65, i32* %74, align 8
  %75 = load i32, i32* %10, align 4
  %76 = load %struct.cf_setting*, %struct.cf_setting** %6, align 8
  %77 = load %struct.mpc85xx_jog_softc*, %struct.mpc85xx_jog_softc** %8, align 8
  %78 = getelementptr inbounds %struct.mpc85xx_jog_softc, %struct.mpc85xx_jog_softc* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %10, align 4
  %81 = sub nsw i32 %79, %80
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.cf_setting, %struct.cf_setting* %76, i64 %82
  %84 = getelementptr inbounds %struct.cf_setting, %struct.cf_setting* %83, i32 0, i32 1
  %85 = load i32*, i32** %84, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 0
  store i32 %75, i32* %86, align 4
  br label %87

87:                                               ; preds = %50
  %88 = load i32, i32* %10, align 4
  %89 = add nsw i32 %88, -1
  store i32 %89, i32* %10, align 4
  br label %44

90:                                               ; preds = %44
  %91 = load %struct.mpc85xx_jog_softc*, %struct.mpc85xx_jog_softc** %8, align 8
  %92 = getelementptr inbounds %struct.mpc85xx_jog_softc, %struct.mpc85xx_jog_softc* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.mpc85xx_jog_softc*, %struct.mpc85xx_jog_softc** %8, align 8
  %95 = getelementptr inbounds %struct.mpc85xx_jog_softc, %struct.mpc85xx_jog_softc* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = sub nsw i32 %93, %96
  %98 = add nsw i32 %97, 1
  %99 = load i32*, i32** %7, align 8
  store i32 %98, i32* %99, align 4
  store i32 0, i32* %4, align 4
  br label %100

100:                                              ; preds = %90, %28, %18
  %101 = load i32, i32* %4, align 4
  ret i32 %101
}

declare dso_local %struct.mpc85xx_jog_softc* @device_get_softc(i32) #1

declare dso_local i32 @mpc85xx_get_system_clock(...) #1

declare dso_local i32 @memset(%struct.cf_setting*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
