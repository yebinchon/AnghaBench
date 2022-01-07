; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgb/common/extr_cxgb_t3_hw.c_t3_phy_advertise.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgb/common/extr_cxgb_t3_hw.c_t3_phy_advertise.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cphy = type { i32 }

@MII_CTRL1000 = common dso_local global i32 0, align 4
@ADVERTISE_1000HALF = common dso_local global i32 0, align 4
@ADVERTISE_1000FULL = common dso_local global i32 0, align 4
@ADVERTISED_1000baseT_Half = common dso_local global i32 0, align 4
@ADVERTISED_1000baseT_Full = common dso_local global i32 0, align 4
@ADVERTISED_10baseT_Half = common dso_local global i32 0, align 4
@ADVERTISE_10HALF = common dso_local global i32 0, align 4
@ADVERTISED_10baseT_Full = common dso_local global i32 0, align 4
@ADVERTISE_10FULL = common dso_local global i32 0, align 4
@ADVERTISED_100baseT_Half = common dso_local global i32 0, align 4
@ADVERTISE_100HALF = common dso_local global i32 0, align 4
@ADVERTISED_100baseT_Full = common dso_local global i32 0, align 4
@ADVERTISE_100FULL = common dso_local global i32 0, align 4
@ADVERTISED_Pause = common dso_local global i32 0, align 4
@ADVERTISE_PAUSE_CAP = common dso_local global i32 0, align 4
@ADVERTISED_Asym_Pause = common dso_local global i32 0, align 4
@ADVERTISE_PAUSE_ASYM = common dso_local global i32 0, align 4
@MII_ADVERTISE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @t3_phy_advertise(%struct.cphy* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cphy*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.cphy* %0, %struct.cphy** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %7, align 4
  %8 = load %struct.cphy*, %struct.cphy** %4, align 8
  %9 = load i32, i32* @MII_CTRL1000, align 4
  %10 = call i32 @mdio_read(%struct.cphy* %8, i32 0, i32 %9, i32* %7)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* %6, align 4
  store i32 %14, i32* %3, align 4
  br label %107

15:                                               ; preds = %2
  %16 = load i32, i32* @ADVERTISE_1000HALF, align 4
  %17 = load i32, i32* @ADVERTISE_1000FULL, align 4
  %18 = or i32 %16, %17
  %19 = xor i32 %18, -1
  %20 = load i32, i32* %7, align 4
  %21 = and i32 %20, %19
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @ADVERTISED_1000baseT_Half, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %15
  %27 = load i32, i32* @ADVERTISE_1000HALF, align 4
  %28 = load i32, i32* %7, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %7, align 4
  br label %30

30:                                               ; preds = %26, %15
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @ADVERTISED_1000baseT_Full, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %30
  %36 = load i32, i32* @ADVERTISE_1000FULL, align 4
  %37 = load i32, i32* %7, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %7, align 4
  br label %39

39:                                               ; preds = %35, %30
  %40 = load %struct.cphy*, %struct.cphy** %4, align 8
  %41 = load i32, i32* @MII_CTRL1000, align 4
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @mdio_write(%struct.cphy* %40, i32 0, i32 %41, i32 %42)
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %6, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %39
  %47 = load i32, i32* %6, align 4
  store i32 %47, i32* %3, align 4
  br label %107

48:                                               ; preds = %39
  store i32 1, i32* %7, align 4
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* @ADVERTISED_10baseT_Half, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %48
  %54 = load i32, i32* @ADVERTISE_10HALF, align 4
  %55 = load i32, i32* %7, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %7, align 4
  br label %57

57:                                               ; preds = %53, %48
  %58 = load i32, i32* %5, align 4
  %59 = load i32, i32* @ADVERTISED_10baseT_Full, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %57
  %63 = load i32, i32* @ADVERTISE_10FULL, align 4
  %64 = load i32, i32* %7, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %7, align 4
  br label %66

66:                                               ; preds = %62, %57
  %67 = load i32, i32* %5, align 4
  %68 = load i32, i32* @ADVERTISED_100baseT_Half, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %66
  %72 = load i32, i32* @ADVERTISE_100HALF, align 4
  %73 = load i32, i32* %7, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %7, align 4
  br label %75

75:                                               ; preds = %71, %66
  %76 = load i32, i32* %5, align 4
  %77 = load i32, i32* @ADVERTISED_100baseT_Full, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %75
  %81 = load i32, i32* @ADVERTISE_100FULL, align 4
  %82 = load i32, i32* %7, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %7, align 4
  br label %84

84:                                               ; preds = %80, %75
  %85 = load i32, i32* %5, align 4
  %86 = load i32, i32* @ADVERTISED_Pause, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %84
  %90 = load i32, i32* @ADVERTISE_PAUSE_CAP, align 4
  %91 = load i32, i32* %7, align 4
  %92 = or i32 %91, %90
  store i32 %92, i32* %7, align 4
  br label %93

93:                                               ; preds = %89, %84
  %94 = load i32, i32* %5, align 4
  %95 = load i32, i32* @ADVERTISED_Asym_Pause, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %93
  %99 = load i32, i32* @ADVERTISE_PAUSE_ASYM, align 4
  %100 = load i32, i32* %7, align 4
  %101 = or i32 %100, %99
  store i32 %101, i32* %7, align 4
  br label %102

102:                                              ; preds = %98, %93
  %103 = load %struct.cphy*, %struct.cphy** %4, align 8
  %104 = load i32, i32* @MII_ADVERTISE, align 4
  %105 = load i32, i32* %7, align 4
  %106 = call i32 @mdio_write(%struct.cphy* %103, i32 0, i32 %104, i32 %105)
  store i32 %106, i32* %3, align 4
  br label %107

107:                                              ; preds = %102, %46, %13
  %108 = load i32, i32* %3, align 4
  ret i32 %108
}

declare dso_local i32 @mdio_read(%struct.cphy*, i32, i32, i32*) #1

declare dso_local i32 @mdio_write(%struct.cphy*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
