; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_muge.c_lan78xx_set_mdix_auto.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_muge.c_lan78xx_set_mdix_auto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.muge_softc = type { i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@MUGE_EXT_PAGE_ACCESS = common dso_local global i32 0, align 4
@MUGE_EXT_PAGE_SPACE_1 = common dso_local global i64 0, align 8
@MUGE_EXT_MODE_CTRL = common dso_local global i32 0, align 4
@MUGE_EXT_MODE_CTRL_MDIX_MASK_ = common dso_local global i64 0, align 8
@MUGE_EXT_MODE_CTRL_AUTO_MDIX_ = common dso_local global i64 0, align 8
@MII_BMCR = common dso_local global i32 0, align 4
@MUGE_EXT_PAGE_SPACE_0 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"error setting PHY's MDIX status\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.muge_softc*)* @lan78xx_set_mdix_auto to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lan78xx_set_mdix_auto(%struct.muge_softc* %0) #0 {
  %2 = alloca %struct.muge_softc*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store %struct.muge_softc* %0, %struct.muge_softc** %2, align 8
  %5 = load %struct.muge_softc*, %struct.muge_softc** %2, align 8
  %6 = getelementptr inbounds %struct.muge_softc, %struct.muge_softc* %5, i32 0, i32 2
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.muge_softc*, %struct.muge_softc** %2, align 8
  %10 = getelementptr inbounds %struct.muge_softc, %struct.muge_softc* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @MUGE_EXT_PAGE_ACCESS, align 4
  %13 = load i64, i64* @MUGE_EXT_PAGE_SPACE_1, align 8
  %14 = call i64 @lan78xx_miibus_writereg(i32 %8, i32 %11, i32 %12, i64 %13)
  store i64 %14, i64* %4, align 8
  %15 = load %struct.muge_softc*, %struct.muge_softc** %2, align 8
  %16 = getelementptr inbounds %struct.muge_softc, %struct.muge_softc* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.muge_softc*, %struct.muge_softc** %2, align 8
  %20 = getelementptr inbounds %struct.muge_softc, %struct.muge_softc* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @MUGE_EXT_MODE_CTRL, align 4
  %23 = call i64 @lan78xx_miibus_readreg(i32 %18, i32 %21, i32 %22)
  store i64 %23, i64* %3, align 8
  %24 = load i64, i64* @MUGE_EXT_MODE_CTRL_MDIX_MASK_, align 8
  %25 = xor i64 %24, -1
  %26 = load i64, i64* %3, align 8
  %27 = and i64 %26, %25
  store i64 %27, i64* %3, align 8
  %28 = load i64, i64* @MUGE_EXT_MODE_CTRL_AUTO_MDIX_, align 8
  %29 = load i64, i64* %3, align 8
  %30 = or i64 %29, %28
  store i64 %30, i64* %3, align 8
  %31 = load %struct.muge_softc*, %struct.muge_softc** %2, align 8
  %32 = getelementptr inbounds %struct.muge_softc, %struct.muge_softc* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.muge_softc*, %struct.muge_softc** %2, align 8
  %36 = getelementptr inbounds %struct.muge_softc, %struct.muge_softc* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @MII_BMCR, align 4
  %39 = call i64 @lan78xx_miibus_readreg(i32 %34, i32 %37, i32 %38)
  %40 = load %struct.muge_softc*, %struct.muge_softc** %2, align 8
  %41 = getelementptr inbounds %struct.muge_softc, %struct.muge_softc* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.muge_softc*, %struct.muge_softc** %2, align 8
  %45 = getelementptr inbounds %struct.muge_softc, %struct.muge_softc* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @MUGE_EXT_MODE_CTRL, align 4
  %48 = load i64, i64* %3, align 8
  %49 = call i64 @lan78xx_miibus_writereg(i32 %43, i32 %46, i32 %47, i64 %48)
  %50 = load i64, i64* %4, align 8
  %51 = add nsw i64 %50, %49
  store i64 %51, i64* %4, align 8
  %52 = load %struct.muge_softc*, %struct.muge_softc** %2, align 8
  %53 = getelementptr inbounds %struct.muge_softc, %struct.muge_softc* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.muge_softc*, %struct.muge_softc** %2, align 8
  %57 = getelementptr inbounds %struct.muge_softc, %struct.muge_softc* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @MUGE_EXT_PAGE_ACCESS, align 4
  %60 = load i64, i64* @MUGE_EXT_PAGE_SPACE_0, align 8
  %61 = call i64 @lan78xx_miibus_writereg(i32 %55, i32 %58, i32 %59, i64 %60)
  %62 = load i64, i64* %4, align 8
  %63 = add nsw i64 %62, %61
  store i64 %63, i64* %4, align 8
  %64 = load i64, i64* %4, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %1
  %67 = load %struct.muge_softc*, %struct.muge_softc** %2, align 8
  %68 = call i32 @muge_warn_printf(%struct.muge_softc* %67, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %69

69:                                               ; preds = %66, %1
  %70 = load i64, i64* %3, align 8
  %71 = load %struct.muge_softc*, %struct.muge_softc** %2, align 8
  %72 = getelementptr inbounds %struct.muge_softc, %struct.muge_softc* %71, i32 0, i32 0
  store i64 %70, i64* %72, align 8
  ret void
}

declare dso_local i64 @lan78xx_miibus_writereg(i32, i32, i32, i64) #1

declare dso_local i64 @lan78xx_miibus_readreg(i32, i32, i32) #1

declare dso_local i32 @muge_warn_printf(%struct.muge_softc*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
