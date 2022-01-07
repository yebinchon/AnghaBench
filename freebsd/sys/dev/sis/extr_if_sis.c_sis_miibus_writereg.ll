; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sis/extr_if_sis.c_sis_miibus_writereg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sis/extr_if_sis.c_sis_miibus_writereg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sis_softc = type { i64, i64, i32 }

@SIS_TYPE_83815 = common dso_local global i64 0, align 8
@NS_BMCR = common dso_local global i64 0, align 8
@SIS_TYPE_900 = common dso_local global i64 0, align 8
@SIS_REV_635 = common dso_local global i64 0, align 8
@SIS_PHYCTL = common dso_local global i64 0, align 8
@SIS_PHYOP_WRITE = common dso_local global i32 0, align 4
@SIS_PHYCTL_ACCESS = common dso_local global i32 0, align 4
@SIS_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"PHY failed to come ready\0A\00", align 1
@sis_mii_bitbang_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32)* @sis_miibus_writereg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sis_miibus_writereg(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.sis_softc*, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* %6, align 4
  %13 = call %struct.sis_softc* @device_get_softc(i32 %12)
  store %struct.sis_softc* %13, %struct.sis_softc** %10, align 8
  %14 = load %struct.sis_softc*, %struct.sis_softc** %10, align 8
  %15 = getelementptr inbounds %struct.sis_softc, %struct.sis_softc* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @SIS_TYPE_83815, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %32

19:                                               ; preds = %4
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  store i32 0, i32* %5, align 4
  br label %99

23:                                               ; preds = %19
  %24 = load %struct.sis_softc*, %struct.sis_softc** %10, align 8
  %25 = load i64, i64* @NS_BMCR, align 8
  %26 = load i32, i32* %8, align 4
  %27 = mul nsw i32 %26, 4
  %28 = sext i32 %27 to i64
  %29 = add nsw i64 %25, %28
  %30 = load i32, i32* %9, align 4
  %31 = call i32 @CSR_WRITE_4(%struct.sis_softc* %24, i64 %29, i32 %30)
  store i32 0, i32* %5, align 4
  br label %99

32:                                               ; preds = %4
  %33 = load %struct.sis_softc*, %struct.sis_softc** %10, align 8
  %34 = getelementptr inbounds %struct.sis_softc, %struct.sis_softc* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @SIS_TYPE_900, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %92

38:                                               ; preds = %32
  %39 = load %struct.sis_softc*, %struct.sis_softc** %10, align 8
  %40 = getelementptr inbounds %struct.sis_softc, %struct.sis_softc* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @SIS_REV_635, align 8
  %43 = icmp slt i64 %41, %42
  br i1 %43, label %44, label %92

44:                                               ; preds = %38
  %45 = load i32, i32* %7, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %44
  store i32 0, i32* %5, align 4
  br label %99

48:                                               ; preds = %44
  %49 = load %struct.sis_softc*, %struct.sis_softc** %10, align 8
  %50 = load i64, i64* @SIS_PHYCTL, align 8
  %51 = load i32, i32* %9, align 4
  %52 = shl i32 %51, 16
  %53 = load i32, i32* %7, align 4
  %54 = shl i32 %53, 11
  %55 = or i32 %52, %54
  %56 = load i32, i32* %8, align 4
  %57 = shl i32 %56, 6
  %58 = or i32 %55, %57
  %59 = load i32, i32* @SIS_PHYOP_WRITE, align 4
  %60 = or i32 %58, %59
  %61 = call i32 @CSR_WRITE_4(%struct.sis_softc* %49, i64 %50, i32 %60)
  %62 = load %struct.sis_softc*, %struct.sis_softc** %10, align 8
  %63 = load i64, i64* @SIS_PHYCTL, align 8
  %64 = load i32, i32* @SIS_PHYCTL_ACCESS, align 4
  %65 = call i32 @SIS_SETBIT(%struct.sis_softc* %62, i64 %63, i32 %64)
  store i32 0, i32* %11, align 4
  br label %66

66:                                               ; preds = %79, %48
  %67 = load i32, i32* %11, align 4
  %68 = load i32, i32* @SIS_TIMEOUT, align 4
  %69 = icmp slt i32 %67, %68
  br i1 %69, label %70, label %82

70:                                               ; preds = %66
  %71 = load %struct.sis_softc*, %struct.sis_softc** %10, align 8
  %72 = load i64, i64* @SIS_PHYCTL, align 8
  %73 = call i32 @CSR_READ_4(%struct.sis_softc* %71, i64 %72)
  %74 = load i32, i32* @SIS_PHYCTL_ACCESS, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %78, label %77

77:                                               ; preds = %70
  br label %82

78:                                               ; preds = %70
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* %11, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %11, align 4
  br label %66

82:                                               ; preds = %77, %66
  %83 = load i32, i32* %11, align 4
  %84 = load i32, i32* @SIS_TIMEOUT, align 4
  %85 = icmp eq i32 %83, %84
  br i1 %85, label %86, label %91

86:                                               ; preds = %82
  %87 = load %struct.sis_softc*, %struct.sis_softc** %10, align 8
  %88 = getelementptr inbounds %struct.sis_softc, %struct.sis_softc* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @device_printf(i32 %89, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %91

91:                                               ; preds = %86, %82
  br label %98

92:                                               ; preds = %38, %32
  %93 = load i32, i32* %6, align 4
  %94 = load i32, i32* %7, align 4
  %95 = load i32, i32* %8, align 4
  %96 = load i32, i32* %9, align 4
  %97 = call i32 @mii_bitbang_writereg(i32 %93, i32* @sis_mii_bitbang_ops, i32 %94, i32 %95, i32 %96)
  br label %98

98:                                               ; preds = %92, %91
  store i32 0, i32* %5, align 4
  br label %99

99:                                               ; preds = %98, %47, %23, %22
  %100 = load i32, i32* %5, align 4
  ret i32 %100
}

declare dso_local %struct.sis_softc* @device_get_softc(i32) #1

declare dso_local i32 @CSR_WRITE_4(%struct.sis_softc*, i64, i32) #1

declare dso_local i32 @SIS_SETBIT(%struct.sis_softc*, i64, i32) #1

declare dso_local i32 @CSR_READ_4(%struct.sis_softc*, i64) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @mii_bitbang_writereg(i32, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
