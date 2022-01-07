; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgb/common/extr_cxgb_ael1002.c_get_link_status_r.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgb/common/extr_cxgb_ael1002.c_get_link_status_r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cphy = type { i32 }

@MDIO_DEV_PMA_PMD = common dso_local global i32 0, align 4
@PMD_RSD = common dso_local global i32 0, align 4
@MDIO_DEV_PCS = common dso_local global i32 0, align 4
@PCS_STAT1_R = common dso_local global i32 0, align 4
@MDIO_DEV_XGXS = common dso_local global i32 0, align 4
@XS_LN_STAT = common dso_local global i32 0, align 4
@PHY_LINK_UP = common dso_local global i32 0, align 4
@PHY_LINK_PARTIAL = common dso_local global i32 0, align 4
@PHY_LINK_DOWN = common dso_local global i32 0, align 4
@SPEED_10000 = common dso_local global i32 0, align 4
@DUPLEX_FULL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cphy*, i32*, i32*, i32*, i32*)* @get_link_status_r to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_link_status_r(%struct.cphy* %0, i32* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.cphy*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.cphy* %0, %struct.cphy** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %16 = load i32*, i32** %8, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %77

18:                                               ; preds = %5
  %19 = load %struct.cphy*, %struct.cphy** %7, align 8
  %20 = load i32, i32* @MDIO_DEV_PMA_PMD, align 4
  %21 = load i32, i32* @PMD_RSD, align 4
  %22 = call i32 @mdio_read(%struct.cphy* %19, i32 %20, i32 %21, i32* %12)
  store i32 %22, i32* %15, align 4
  %23 = load i32, i32* %15, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %18
  %26 = load %struct.cphy*, %struct.cphy** %7, align 8
  %27 = load i32, i32* @MDIO_DEV_PCS, align 4
  %28 = load i32, i32* @PCS_STAT1_R, align 4
  %29 = call i32 @mdio_read(%struct.cphy* %26, i32 %27, i32 %28, i32* %13)
  store i32 %29, i32* %15, align 4
  br label %30

30:                                               ; preds = %25, %18
  %31 = load i32, i32* %15, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %30
  %34 = load %struct.cphy*, %struct.cphy** %7, align 8
  %35 = load i32, i32* @MDIO_DEV_XGXS, align 4
  %36 = load i32, i32* @XS_LN_STAT, align 4
  %37 = call i32 @mdio_read(%struct.cphy* %34, i32 %35, i32 %36, i32* %14)
  store i32 %37, i32* %15, align 4
  br label %38

38:                                               ; preds = %33, %30
  %39 = load i32, i32* %15, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %38
  %42 = load i32, i32* %15, align 4
  store i32 %42, i32* %6, align 4
  br label %90

43:                                               ; preds = %38
  %44 = load i32, i32* %12, align 4
  %45 = and i32 %44, 1
  store i32 %45, i32* %12, align 4
  %46 = load i32, i32* %13, align 4
  %47 = and i32 %46, 1
  store i32 %47, i32* %13, align 4
  %48 = load i32, i32* %14, align 4
  %49 = lshr i32 %48, 12
  %50 = and i32 %49, 1
  store i32 %50, i32* %14, align 4
  %51 = load i32, i32* %12, align 4
  %52 = load i32, i32* %13, align 4
  %53 = and i32 %51, %52
  %54 = load i32, i32* %14, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %43
  %58 = load i32, i32* @PHY_LINK_UP, align 4
  %59 = load i32*, i32** %8, align 8
  store i32 %58, i32* %59, align 4
  br label %76

60:                                               ; preds = %43
  %61 = load i32, i32* %12, align 4
  %62 = icmp eq i32 %61, 1
  br i1 %62, label %63, label %72

63:                                               ; preds = %60
  %64 = load i32, i32* %13, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %63
  %67 = load i32, i32* %14, align 4
  %68 = icmp eq i32 %67, 1
  br i1 %68, label %69, label %72

69:                                               ; preds = %66
  %70 = load i32, i32* @PHY_LINK_PARTIAL, align 4
  %71 = load i32*, i32** %8, align 8
  store i32 %70, i32* %71, align 4
  br label %75

72:                                               ; preds = %66, %63, %60
  %73 = load i32, i32* @PHY_LINK_DOWN, align 4
  %74 = load i32*, i32** %8, align 8
  store i32 %73, i32* %74, align 4
  br label %75

75:                                               ; preds = %72, %69
  br label %76

76:                                               ; preds = %75, %57
  br label %77

77:                                               ; preds = %76, %5
  %78 = load i32*, i32** %9, align 8
  %79 = icmp ne i32* %78, null
  br i1 %79, label %80, label %83

80:                                               ; preds = %77
  %81 = load i32, i32* @SPEED_10000, align 4
  %82 = load i32*, i32** %9, align 8
  store i32 %81, i32* %82, align 4
  br label %83

83:                                               ; preds = %80, %77
  %84 = load i32*, i32** %10, align 8
  %85 = icmp ne i32* %84, null
  br i1 %85, label %86, label %89

86:                                               ; preds = %83
  %87 = load i32, i32* @DUPLEX_FULL, align 4
  %88 = load i32*, i32** %10, align 8
  store i32 %87, i32* %88, align 4
  br label %89

89:                                               ; preds = %86, %83
  store i32 0, i32* %6, align 4
  br label %90

90:                                               ; preds = %89, %41
  %91 = load i32, i32* %6, align 4
  ret i32 %91
}

declare dso_local i32 @mdio_read(%struct.cphy*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
