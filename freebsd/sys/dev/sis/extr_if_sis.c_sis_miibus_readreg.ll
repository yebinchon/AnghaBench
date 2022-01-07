; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sis/extr_if_sis.c_sis_miibus_readreg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sis/extr_if_sis.c_sis_miibus_readreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sis_softc = type { i64, i64, i32 }

@SIS_TYPE_83815 = common dso_local global i64 0, align 8
@NS_BMSR = common dso_local global i64 0, align 8
@NS_BMCR = common dso_local global i64 0, align 8
@SIS_TYPE_900 = common dso_local global i64 0, align 8
@SIS_REV_635 = common dso_local global i64 0, align 8
@SIS_PHYCTL = common dso_local global i64 0, align 8
@SIS_PHYOP_READ = common dso_local global i32 0, align 4
@SIS_PHYCTL_ACCESS = common dso_local global i32 0, align 4
@SIS_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"PHY failed to come ready\0A\00", align 1
@sis_mii_bitbang_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @sis_miibus_readreg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sis_miibus_readreg(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.sis_softc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %5, align 4
  %12 = call %struct.sis_softc* @device_get_softc(i32 %11)
  store %struct.sis_softc* %12, %struct.sis_softc** %8, align 8
  %13 = load %struct.sis_softc*, %struct.sis_softc** %8, align 8
  %14 = getelementptr inbounds %struct.sis_softc, %struct.sis_softc* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @SIS_TYPE_83815, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %37

18:                                               ; preds = %3
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %18
  store i32 0, i32* %4, align 4
  br label %109

22:                                               ; preds = %18
  %23 = load %struct.sis_softc*, %struct.sis_softc** %8, align 8
  %24 = load i64, i64* @NS_BMSR, align 8
  %25 = call i32 @CSR_READ_4(%struct.sis_softc* %23, i64 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %22
  %28 = call i32 @DELAY(i32 1000)
  br label %29

29:                                               ; preds = %27, %22
  %30 = load %struct.sis_softc*, %struct.sis_softc** %8, align 8
  %31 = load i64, i64* @NS_BMCR, align 8
  %32 = load i32, i32* %7, align 4
  %33 = mul nsw i32 %32, 4
  %34 = sext i32 %33 to i64
  %35 = add nsw i64 %31, %34
  %36 = call i32 @CSR_READ_4(%struct.sis_softc* %30, i64 %35)
  store i32 %36, i32* %4, align 4
  br label %109

37:                                               ; preds = %3
  %38 = load %struct.sis_softc*, %struct.sis_softc** %8, align 8
  %39 = getelementptr inbounds %struct.sis_softc, %struct.sis_softc* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @SIS_TYPE_900, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %104

43:                                               ; preds = %37
  %44 = load %struct.sis_softc*, %struct.sis_softc** %8, align 8
  %45 = getelementptr inbounds %struct.sis_softc, %struct.sis_softc* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @SIS_REV_635, align 8
  %48 = icmp slt i64 %46, %47
  br i1 %48, label %49, label %104

49:                                               ; preds = %43
  store i32 0, i32* %10, align 4
  %50 = load i32, i32* %6, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %49
  store i32 0, i32* %4, align 4
  br label %109

53:                                               ; preds = %49
  %54 = load %struct.sis_softc*, %struct.sis_softc** %8, align 8
  %55 = load i64, i64* @SIS_PHYCTL, align 8
  %56 = load i32, i32* %6, align 4
  %57 = shl i32 %56, 11
  %58 = load i32, i32* %7, align 4
  %59 = shl i32 %58, 6
  %60 = or i32 %57, %59
  %61 = load i32, i32* @SIS_PHYOP_READ, align 4
  %62 = or i32 %60, %61
  %63 = call i32 @CSR_WRITE_4(%struct.sis_softc* %54, i64 %55, i32 %62)
  %64 = load %struct.sis_softc*, %struct.sis_softc** %8, align 8
  %65 = load i64, i64* @SIS_PHYCTL, align 8
  %66 = load i32, i32* @SIS_PHYCTL_ACCESS, align 4
  %67 = call i32 @SIS_SETBIT(%struct.sis_softc* %64, i64 %65, i32 %66)
  store i32 0, i32* %9, align 4
  br label %68

68:                                               ; preds = %81, %53
  %69 = load i32, i32* %9, align 4
  %70 = load i32, i32* @SIS_TIMEOUT, align 4
  %71 = icmp slt i32 %69, %70
  br i1 %71, label %72, label %84

72:                                               ; preds = %68
  %73 = load %struct.sis_softc*, %struct.sis_softc** %8, align 8
  %74 = load i64, i64* @SIS_PHYCTL, align 8
  %75 = call i32 @CSR_READ_4(%struct.sis_softc* %73, i64 %74)
  %76 = load i32, i32* @SIS_PHYCTL_ACCESS, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %80, label %79

79:                                               ; preds = %72
  br label %84

80:                                               ; preds = %72
  br label %81

81:                                               ; preds = %80
  %82 = load i32, i32* %9, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %9, align 4
  br label %68

84:                                               ; preds = %79, %68
  %85 = load i32, i32* %9, align 4
  %86 = load i32, i32* @SIS_TIMEOUT, align 4
  %87 = icmp eq i32 %85, %86
  br i1 %87, label %88, label %93

88:                                               ; preds = %84
  %89 = load %struct.sis_softc*, %struct.sis_softc** %8, align 8
  %90 = getelementptr inbounds %struct.sis_softc, %struct.sis_softc* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @device_printf(i32 %91, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %109

93:                                               ; preds = %84
  %94 = load %struct.sis_softc*, %struct.sis_softc** %8, align 8
  %95 = load i64, i64* @SIS_PHYCTL, align 8
  %96 = call i32 @CSR_READ_4(%struct.sis_softc* %94, i64 %95)
  %97 = ashr i32 %96, 16
  %98 = and i32 %97, 65535
  store i32 %98, i32* %10, align 4
  %99 = load i32, i32* %10, align 4
  %100 = icmp eq i32 %99, 65535
  br i1 %100, label %101, label %102

101:                                              ; preds = %93
  store i32 0, i32* %4, align 4
  br label %109

102:                                              ; preds = %93
  %103 = load i32, i32* %10, align 4
  store i32 %103, i32* %4, align 4
  br label %109

104:                                              ; preds = %43, %37
  %105 = load i32, i32* %5, align 4
  %106 = load i32, i32* %6, align 4
  %107 = load i32, i32* %7, align 4
  %108 = call i32 @mii_bitbang_readreg(i32 %105, i32* @sis_mii_bitbang_ops, i32 %106, i32 %107)
  store i32 %108, i32* %4, align 4
  br label %109

109:                                              ; preds = %104, %102, %101, %88, %52, %29, %21
  %110 = load i32, i32* %4, align 4
  ret i32 %110
}

declare dso_local %struct.sis_softc* @device_get_softc(i32) #1

declare dso_local i32 @CSR_READ_4(%struct.sis_softc*, i64) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @CSR_WRITE_4(%struct.sis_softc*, i64, i32) #1

declare dso_local i32 @SIS_SETBIT(%struct.sis_softc*, i64, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @mii_bitbang_readreg(i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
