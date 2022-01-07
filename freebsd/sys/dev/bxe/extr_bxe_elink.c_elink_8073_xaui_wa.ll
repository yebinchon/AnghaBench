; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe_elink.c_elink_8073_xaui_wa.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe_elink.c_elink_8073_xaui_wa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_softc = type { i32 }
%struct.elink_phy = type { i32 }

@MDIO_PMA_DEVAD = common dso_local global i32 0, align 4
@MDIO_PMA_REG_8073_CHIP_REV = common dso_local global i32 0, align 4
@ELINK_STATUS_OK = common dso_local global i32 0, align 4
@MDIO_PMA_REG_8073_SPEED_LINK_STATUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"XAUI work-around not required\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"bit 15 went off\0A\00", align 1
@MDIO_PMA_REG_8073_XAUI_WA = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"XAUI workaround has completed\0A\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"Warning: XAUI work-around timeout !!!\0A\00", align 1
@ELINK_STATUS_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bxe_softc*, %struct.elink_phy*)* @elink_8073_xaui_wa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @elink_8073_xaui_wa(%struct.bxe_softc* %0, %struct.elink_phy* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bxe_softc*, align 8
  %5 = alloca %struct.elink_phy*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.bxe_softc* %0, %struct.bxe_softc** %4, align 8
  store %struct.elink_phy* %1, %struct.elink_phy** %5, align 8
  %9 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %10 = load %struct.elink_phy*, %struct.elink_phy** %5, align 8
  %11 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %12 = load i32, i32* @MDIO_PMA_REG_8073_CHIP_REV, align 4
  %13 = call i32 @elink_cl45_read(%struct.bxe_softc* %9, %struct.elink_phy* %10, i32 %11, i32 %12, i32* %6)
  %14 = load i32, i32* %6, align 4
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* @ELINK_STATUS_OK, align 4
  store i32 %17, i32* %3, align 4
  br label %78

18:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %19

19:                                               ; preds = %71, %18
  %20 = load i32, i32* %7, align 4
  %21 = icmp slt i32 %20, 1000
  br i1 %21, label %22, label %74

22:                                               ; preds = %19
  %23 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %24 = load %struct.elink_phy*, %struct.elink_phy** %5, align 8
  %25 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %26 = load i32, i32* @MDIO_PMA_REG_8073_SPEED_LINK_STATUS, align 4
  %27 = call i32 @elink_cl45_read(%struct.bxe_softc* %23, %struct.elink_phy* %24, i32 %25, i32 %26, i32* %6)
  %28 = load i32, i32* %6, align 4
  %29 = and i32 %28, 16384
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %22
  %32 = load i32, i32* %6, align 4
  %33 = and i32 %32, 8192
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %31, %22
  %36 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %37 = call i32 @ELINK_DEBUG_P0(%struct.bxe_softc* %36, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %38 = load i32, i32* @ELINK_STATUS_OK, align 4
  store i32 %38, i32* %3, align 4
  br label %78

39:                                               ; preds = %31
  %40 = load i32, i32* %6, align 4
  %41 = and i32 %40, 32768
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %68, label %43

43:                                               ; preds = %39
  %44 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %45 = call i32 @ELINK_DEBUG_P0(%struct.bxe_softc* %44, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  br label %46

46:                                               ; preds = %64, %43
  %47 = load i32, i32* %8, align 4
  %48 = icmp slt i32 %47, 1000
  br i1 %48, label %49, label %67

49:                                               ; preds = %46
  %50 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %51 = load %struct.elink_phy*, %struct.elink_phy** %5, align 8
  %52 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %53 = load i32, i32* @MDIO_PMA_REG_8073_XAUI_WA, align 4
  %54 = call i32 @elink_cl45_read(%struct.bxe_softc* %50, %struct.elink_phy* %51, i32 %52, i32 %53, i32* %6)
  %55 = load i32, i32* %6, align 4
  %56 = and i32 %55, 32768
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %49
  %59 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %60 = call i32 @ELINK_DEBUG_P0(%struct.bxe_softc* %59, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %61 = load i32, i32* @ELINK_STATUS_OK, align 4
  store i32 %61, i32* %3, align 4
  br label %78

62:                                               ; preds = %49
  %63 = call i32 @DELAY(i32 3000)
  br label %64

64:                                               ; preds = %62
  %65 = load i32, i32* %8, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %8, align 4
  br label %46

67:                                               ; preds = %46
  br label %74

68:                                               ; preds = %39
  br label %69

69:                                               ; preds = %68
  %70 = call i32 @DELAY(i32 3000)
  br label %71

71:                                               ; preds = %69
  %72 = load i32, i32* %7, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %7, align 4
  br label %19

74:                                               ; preds = %67, %19
  %75 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %76 = call i32 @ELINK_DEBUG_P0(%struct.bxe_softc* %75, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  %77 = load i32, i32* @ELINK_STATUS_ERROR, align 4
  store i32 %77, i32* %3, align 4
  br label %78

78:                                               ; preds = %74, %58, %35, %16
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local i32 @elink_cl45_read(%struct.bxe_softc*, %struct.elink_phy*, i32, i32, i32*) #1

declare dso_local i32 @ELINK_DEBUG_P0(%struct.bxe_softc*, i8*) #1

declare dso_local i32 @DELAY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
