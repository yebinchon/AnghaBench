; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgb/common/extr_cxgb_mv88e1xxx.c_mv88e1xxx_get_link_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgb/common/extr_cxgb_mv88e1xxx.c_mv88e1xxx_get_link_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cphy = type { i32 }

@MV88E1XXX_SPECIFIC_STATUS = common dso_local global i32 0, align 4
@V_PSSR_STATUS_RESOLVED = common dso_local global i32 0, align 4
@V_PSSR_RX_PAUSE = common dso_local global i32 0, align 4
@PAUSE_RX = common dso_local global i32 0, align 4
@V_PSSR_TX_PAUSE = common dso_local global i32 0, align 4
@PAUSE_TX = common dso_local global i32 0, align 4
@V_PSSR_DUPLEX = common dso_local global i32 0, align 4
@DUPLEX_FULL = common dso_local global i32 0, align 4
@DUPLEX_HALF = common dso_local global i32 0, align 4
@SPEED_10 = common dso_local global i32 0, align 4
@SPEED_100 = common dso_local global i32 0, align 4
@SPEED_1000 = common dso_local global i32 0, align 4
@V_PSSR_LINK = common dso_local global i32 0, align 4
@PHY_LINK_UP = common dso_local global i32 0, align 4
@PHY_LINK_DOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cphy*, i32*, i32*, i32*, i32*)* @mv88e1xxx_get_link_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mv88e1xxx_get_link_status(%struct.cphy* %0, i32* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca %struct.cphy*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.cphy* %0, %struct.cphy** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  store i32 -1, i32* %12, align 4
  store i32 -1, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %15 = load %struct.cphy*, %struct.cphy** %6, align 8
  %16 = load i32, i32* @MV88E1XXX_SPECIFIC_STATUS, align 4
  %17 = call i32 @mdio_read(%struct.cphy* %15, i32 0, i32 %16, i32* %11)
  %18 = load i32, i32* %11, align 4
  %19 = load i32, i32* @V_PSSR_STATUS_RESOLVED, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %66

22:                                               ; preds = %5
  %23 = load i32, i32* %11, align 4
  %24 = load i32, i32* @V_PSSR_RX_PAUSE, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %22
  %28 = load i32, i32* @PAUSE_RX, align 4
  %29 = load i32, i32* %14, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %14, align 4
  br label %31

31:                                               ; preds = %27, %22
  %32 = load i32, i32* %11, align 4
  %33 = load i32, i32* @V_PSSR_TX_PAUSE, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %31
  %37 = load i32, i32* @PAUSE_TX, align 4
  %38 = load i32, i32* %14, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %14, align 4
  br label %40

40:                                               ; preds = %36, %31
  %41 = load i32, i32* %11, align 4
  %42 = load i32, i32* @V_PSSR_DUPLEX, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %40
  %46 = load i32, i32* @DUPLEX_FULL, align 4
  br label %49

47:                                               ; preds = %40
  %48 = load i32, i32* @DUPLEX_HALF, align 4
  br label %49

49:                                               ; preds = %47, %45
  %50 = phi i32 [ %46, %45 ], [ %48, %47 ]
  store i32 %50, i32* %13, align 4
  %51 = load i32, i32* %11, align 4
  %52 = call i32 @G_PSSR_SPEED(i32 %51)
  store i32 %52, i32* %12, align 4
  %53 = load i32, i32* %12, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %49
  %56 = load i32, i32* @SPEED_10, align 4
  store i32 %56, i32* %12, align 4
  br label %65

57:                                               ; preds = %49
  %58 = load i32, i32* %12, align 4
  %59 = icmp eq i32 %58, 1
  br i1 %59, label %60, label %62

60:                                               ; preds = %57
  %61 = load i32, i32* @SPEED_100, align 4
  store i32 %61, i32* %12, align 4
  br label %64

62:                                               ; preds = %57
  %63 = load i32, i32* @SPEED_1000, align 4
  store i32 %63, i32* %12, align 4
  br label %64

64:                                               ; preds = %62, %60
  br label %65

65:                                               ; preds = %64, %55
  br label %66

66:                                               ; preds = %65, %5
  %67 = load i32*, i32** %7, align 8
  %68 = icmp ne i32* %67, null
  br i1 %68, label %69, label %81

69:                                               ; preds = %66
  %70 = load i32, i32* %11, align 4
  %71 = load i32, i32* @V_PSSR_LINK, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %69
  %75 = load i32, i32* @PHY_LINK_UP, align 4
  br label %78

76:                                               ; preds = %69
  %77 = load i32, i32* @PHY_LINK_DOWN, align 4
  br label %78

78:                                               ; preds = %76, %74
  %79 = phi i32 [ %75, %74 ], [ %77, %76 ]
  %80 = load i32*, i32** %7, align 8
  store i32 %79, i32* %80, align 4
  br label %81

81:                                               ; preds = %78, %66
  %82 = load i32*, i32** %8, align 8
  %83 = icmp ne i32* %82, null
  br i1 %83, label %84, label %87

84:                                               ; preds = %81
  %85 = load i32, i32* %12, align 4
  %86 = load i32*, i32** %8, align 8
  store i32 %85, i32* %86, align 4
  br label %87

87:                                               ; preds = %84, %81
  %88 = load i32*, i32** %9, align 8
  %89 = icmp ne i32* %88, null
  br i1 %89, label %90, label %93

90:                                               ; preds = %87
  %91 = load i32, i32* %13, align 4
  %92 = load i32*, i32** %9, align 8
  store i32 %91, i32* %92, align 4
  br label %93

93:                                               ; preds = %90, %87
  %94 = load i32*, i32** %10, align 8
  %95 = icmp ne i32* %94, null
  br i1 %95, label %96, label %99

96:                                               ; preds = %93
  %97 = load i32, i32* %14, align 4
  %98 = load i32*, i32** %10, align 8
  store i32 %97, i32* %98, align 4
  br label %99

99:                                               ; preds = %96, %93
  ret i32 0
}

declare dso_local i32 @mdio_read(%struct.cphy*, i32, i32, i32*) #1

declare dso_local i32 @G_PSSR_SPEED(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
