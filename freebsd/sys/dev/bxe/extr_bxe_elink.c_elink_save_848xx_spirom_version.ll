; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe_elink.c_elink_save_848xx_spirom_version.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe_elink.c_elink_save_848xx_spirom_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elink_reg_set = type { i32, i32, i32, i32, i32, i32 }
%struct.elink_phy = type { i32 }
%struct.bxe_softc = type { i32 }

@elink_save_848xx_spirom_version.reg_set = internal global [5 x %struct.elink_reg_set] [%struct.elink_reg_set { i32 128, i32 43033, i32 20, i32 0, i32 0, i32 0 }, %struct.elink_reg_set { i32 128, i32 43034, i32 49664, i32 0, i32 0, i32 0 }, %struct.elink_reg_set { i32 128, i32 43035, i32 0, i32 0, i32 0, i32 0 }, %struct.elink_reg_set { i32 128, i32 43036, i32 768, i32 0, i32 0, i32 0 }, %struct.elink_reg_set { i32 128, i32 43031, i32 9, i32 0, i32 0, i32 0 }], align 16
@MDIO_CTL_DEVAD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Unable to read 848xx phy fw version(1)\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"Unable to read 848xx phy fw version(2)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.elink_phy*, %struct.bxe_softc*, i32)* @elink_save_848xx_spirom_version to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @elink_save_848xx_spirom_version(%struct.elink_phy* %0, %struct.bxe_softc* %1, i32 %2) #0 {
  %4 = alloca %struct.elink_phy*, align 8
  %5 = alloca %struct.bxe_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.elink_phy* %0, %struct.elink_phy** %4, align 8
  store %struct.bxe_softc* %1, %struct.bxe_softc** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.elink_phy*, %struct.elink_phy** %4, align 8
  %13 = call i64 @elink_is_8483x_8485x(%struct.elink_phy* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %28

15:                                               ; preds = %3
  %16 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %17 = load %struct.elink_phy*, %struct.elink_phy** %4, align 8
  %18 = load i32, i32* @MDIO_CTL_DEVAD, align 4
  %19 = call i32 @elink_cl45_read(%struct.bxe_softc* %16, %struct.elink_phy* %17, i32 %18, i32 16399, i32* %11)
  %20 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* %11, align 4
  %23 = and i32 %22, 4095
  %24 = load %struct.elink_phy*, %struct.elink_phy** %4, align 8
  %25 = getelementptr inbounds %struct.elink_phy, %struct.elink_phy* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @elink_save_spirom_version(%struct.bxe_softc* %20, i32 %21, i32 %23, i32 %26)
  br label %139

28:                                               ; preds = %3
  store i32 0, i32* %10, align 4
  br label %29

29:                                               ; preds = %52, %28
  %30 = load i32, i32* %10, align 4
  %31 = call i32 @ARRAY_SIZE(%struct.elink_reg_set* getelementptr inbounds ([5 x %struct.elink_reg_set], [5 x %struct.elink_reg_set]* @elink_save_848xx_spirom_version.reg_set, i64 0, i64 0))
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %55

33:                                               ; preds = %29
  %34 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %35 = load %struct.elink_phy*, %struct.elink_phy** %4, align 8
  %36 = load i32, i32* %10, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [5 x %struct.elink_reg_set], [5 x %struct.elink_reg_set]* @elink_save_848xx_spirom_version.reg_set, i64 0, i64 %37
  %39 = getelementptr inbounds %struct.elink_reg_set, %struct.elink_reg_set* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* %10, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [5 x %struct.elink_reg_set], [5 x %struct.elink_reg_set]* @elink_save_848xx_spirom_version.reg_set, i64 0, i64 %42
  %44 = getelementptr inbounds %struct.elink_reg_set, %struct.elink_reg_set* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* %10, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [5 x %struct.elink_reg_set], [5 x %struct.elink_reg_set]* @elink_save_848xx_spirom_version.reg_set, i64 0, i64 %47
  %49 = getelementptr inbounds %struct.elink_reg_set, %struct.elink_reg_set* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @elink_cl45_write(%struct.bxe_softc* %34, %struct.elink_phy* %35, i32 %40, i32 %45, i32 %50)
  br label %52

52:                                               ; preds = %33
  %53 = load i32, i32* %10, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %10, align 4
  br label %29

55:                                               ; preds = %29
  store i32 0, i32* %9, align 4
  br label %56

56:                                               ; preds = %69, %55
  %57 = load i32, i32* %9, align 4
  %58 = icmp slt i32 %57, 100
  br i1 %58, label %59, label %72

59:                                               ; preds = %56
  %60 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %61 = load %struct.elink_phy*, %struct.elink_phy** %4, align 8
  %62 = call i32 @elink_cl45_read(%struct.bxe_softc* %60, %struct.elink_phy* %61, i32 128, i32 43032, i32* %7)
  %63 = load i32, i32* %7, align 4
  %64 = and i32 %63, 1
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %59
  br label %72

67:                                               ; preds = %59
  %68 = call i32 @DELAY(i32 5)
  br label %69

69:                                               ; preds = %67
  %70 = load i32, i32* %9, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %9, align 4
  br label %56

72:                                               ; preds = %66, %56
  %73 = load i32, i32* %9, align 4
  %74 = icmp eq i32 %73, 100
  br i1 %74, label %75, label %84

75:                                               ; preds = %72
  %76 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %77 = call i32 @ELINK_DEBUG_P0(%struct.bxe_softc* %76, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %78 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %79 = load i32, i32* %6, align 4
  %80 = load %struct.elink_phy*, %struct.elink_phy** %4, align 8
  %81 = getelementptr inbounds %struct.elink_phy, %struct.elink_phy* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @elink_save_spirom_version(%struct.bxe_softc* %78, i32 %79, i32 0, i32 %82)
  br label %139

84:                                               ; preds = %72
  %85 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %86 = load %struct.elink_phy*, %struct.elink_phy** %4, align 8
  %87 = call i32 @elink_cl45_write(%struct.bxe_softc* %85, %struct.elink_phy* %86, i32 128, i32 43033, i32 0)
  %88 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %89 = load %struct.elink_phy*, %struct.elink_phy** %4, align 8
  %90 = call i32 @elink_cl45_write(%struct.bxe_softc* %88, %struct.elink_phy* %89, i32 128, i32 43034, i32 49664)
  %91 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %92 = load %struct.elink_phy*, %struct.elink_phy** %4, align 8
  %93 = call i32 @elink_cl45_write(%struct.bxe_softc* %91, %struct.elink_phy* %92, i32 128, i32 43031, i32 10)
  store i32 0, i32* %9, align 4
  br label %94

94:                                               ; preds = %107, %84
  %95 = load i32, i32* %9, align 4
  %96 = icmp slt i32 %95, 100
  br i1 %96, label %97, label %110

97:                                               ; preds = %94
  %98 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %99 = load %struct.elink_phy*, %struct.elink_phy** %4, align 8
  %100 = call i32 @elink_cl45_read(%struct.bxe_softc* %98, %struct.elink_phy* %99, i32 128, i32 43032, i32* %7)
  %101 = load i32, i32* %7, align 4
  %102 = and i32 %101, 1
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %97
  br label %110

105:                                              ; preds = %97
  %106 = call i32 @DELAY(i32 5)
  br label %107

107:                                              ; preds = %105
  %108 = load i32, i32* %9, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %9, align 4
  br label %94

110:                                              ; preds = %104, %94
  %111 = load i32, i32* %9, align 4
  %112 = icmp eq i32 %111, 100
  br i1 %112, label %113, label %122

113:                                              ; preds = %110
  %114 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %115 = call i32 @ELINK_DEBUG_P0(%struct.bxe_softc* %114, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %116 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %117 = load i32, i32* %6, align 4
  %118 = load %struct.elink_phy*, %struct.elink_phy** %4, align 8
  %119 = getelementptr inbounds %struct.elink_phy, %struct.elink_phy* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @elink_save_spirom_version(%struct.bxe_softc* %116, i32 %117, i32 0, i32 %120)
  br label %139

122:                                              ; preds = %110
  %123 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %124 = load %struct.elink_phy*, %struct.elink_phy** %4, align 8
  %125 = call i32 @elink_cl45_read(%struct.bxe_softc* %123, %struct.elink_phy* %124, i32 128, i32 43035, i32* %11)
  %126 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %127 = load %struct.elink_phy*, %struct.elink_phy** %4, align 8
  %128 = call i32 @elink_cl45_read(%struct.bxe_softc* %126, %struct.elink_phy* %127, i32 128, i32 43036, i32* %8)
  %129 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %130 = load i32, i32* %6, align 4
  %131 = load i32, i32* %8, align 4
  %132 = shl i32 %131, 16
  %133 = load i32, i32* %11, align 4
  %134 = or i32 %132, %133
  %135 = load %struct.elink_phy*, %struct.elink_phy** %4, align 8
  %136 = getelementptr inbounds %struct.elink_phy, %struct.elink_phy* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @elink_save_spirom_version(%struct.bxe_softc* %129, i32 %130, i32 %134, i32 %137)
  br label %139

139:                                              ; preds = %75, %113, %122, %15
  ret void
}

declare dso_local i64 @elink_is_8483x_8485x(%struct.elink_phy*) #1

declare dso_local i32 @elink_cl45_read(%struct.bxe_softc*, %struct.elink_phy*, i32, i32, i32*) #1

declare dso_local i32 @elink_save_spirom_version(%struct.bxe_softc*, i32, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.elink_reg_set*) #1

declare dso_local i32 @elink_cl45_write(%struct.bxe_softc*, %struct.elink_phy*, i32, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @ELINK_DEBUG_P0(%struct.bxe_softc*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
