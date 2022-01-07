; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgb/common/extr_cxgb_ael1002.c_xaui_direct_get_link_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgb/common/extr_cxgb_ael1002.c_xaui_direct_get_link_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cphy = type { i32, i32* }

@A_XGM_SERDES_STAT0 = common dso_local global i32 0, align 4
@A_XGM_SERDES_STAT1 = common dso_local global i32 0, align 4
@A_XGM_SERDES_STAT2 = common dso_local global i32 0, align 4
@A_XGM_SERDES_STAT3 = common dso_local global i32 0, align 4
@F_LOWSIG0 = common dso_local global i32 0, align 4
@PHY_LINK_DOWN = common dso_local global i32 0, align 4
@PHY_LINK_UP = common dso_local global i32 0, align 4
@SPEED_10000 = common dso_local global i32 0, align 4
@DUPLEX_FULL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cphy*, i32*, i32*, i32*, i32*)* @xaui_direct_get_link_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xaui_direct_get_link_status(%struct.cphy* %0, i32* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca %struct.cphy*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  store %struct.cphy* %0, %struct.cphy** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %13 = load i32*, i32** %7, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %61

15:                                               ; preds = %5
  %16 = load %struct.cphy*, %struct.cphy** %6, align 8
  %17 = getelementptr inbounds %struct.cphy, %struct.cphy* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %12, align 8
  %19 = load i32*, i32** %12, align 8
  %20 = load i32, i32* @A_XGM_SERDES_STAT0, align 4
  %21 = load %struct.cphy*, %struct.cphy** %6, align 8
  %22 = getelementptr inbounds %struct.cphy, %struct.cphy* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @XGM_REG(i32 %20, i32 %23)
  %25 = call i32 @t3_read_reg(i32* %19, i32 %24)
  %26 = load i32*, i32** %12, align 8
  %27 = load i32, i32* @A_XGM_SERDES_STAT1, align 4
  %28 = load %struct.cphy*, %struct.cphy** %6, align 8
  %29 = getelementptr inbounds %struct.cphy, %struct.cphy* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @XGM_REG(i32 %27, i32 %30)
  %32 = call i32 @t3_read_reg(i32* %26, i32 %31)
  %33 = or i32 %25, %32
  %34 = load i32*, i32** %12, align 8
  %35 = load i32, i32* @A_XGM_SERDES_STAT2, align 4
  %36 = load %struct.cphy*, %struct.cphy** %6, align 8
  %37 = getelementptr inbounds %struct.cphy, %struct.cphy* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @XGM_REG(i32 %35, i32 %38)
  %40 = call i32 @t3_read_reg(i32* %34, i32 %39)
  %41 = or i32 %33, %40
  %42 = load i32*, i32** %12, align 8
  %43 = load i32, i32* @A_XGM_SERDES_STAT3, align 4
  %44 = load %struct.cphy*, %struct.cphy** %6, align 8
  %45 = getelementptr inbounds %struct.cphy, %struct.cphy* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @XGM_REG(i32 %43, i32 %46)
  %48 = call i32 @t3_read_reg(i32* %42, i32 %47)
  %49 = or i32 %41, %48
  store i32 %49, i32* %11, align 4
  %50 = load i32, i32* %11, align 4
  %51 = load i32, i32* @F_LOWSIG0, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %15
  %55 = load i32, i32* @PHY_LINK_DOWN, align 4
  br label %58

56:                                               ; preds = %15
  %57 = load i32, i32* @PHY_LINK_UP, align 4
  br label %58

58:                                               ; preds = %56, %54
  %59 = phi i32 [ %55, %54 ], [ %57, %56 ]
  %60 = load i32*, i32** %7, align 8
  store i32 %59, i32* %60, align 4
  br label %61

61:                                               ; preds = %58, %5
  %62 = load i32*, i32** %8, align 8
  %63 = icmp ne i32* %62, null
  br i1 %63, label %64, label %67

64:                                               ; preds = %61
  %65 = load i32, i32* @SPEED_10000, align 4
  %66 = load i32*, i32** %8, align 8
  store i32 %65, i32* %66, align 4
  br label %67

67:                                               ; preds = %64, %61
  %68 = load i32*, i32** %9, align 8
  %69 = icmp ne i32* %68, null
  br i1 %69, label %70, label %73

70:                                               ; preds = %67
  %71 = load i32, i32* @DUPLEX_FULL, align 4
  %72 = load i32*, i32** %9, align 8
  store i32 %71, i32* %72, align 4
  br label %73

73:                                               ; preds = %70, %67
  ret i32 0
}

declare dso_local i32 @t3_read_reg(i32*, i32) #1

declare dso_local i32 @XGM_REG(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
