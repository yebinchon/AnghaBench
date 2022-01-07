; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe_elink.c_elink_84858_cmd_hdlr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe_elink.c_elink_84858_cmd_hdlr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elink_phy = type { i32 }
%struct.elink_params = type { %struct.bxe_softc* }
%struct.bxe_softc = type { i32 }

@PHY848xx_CMDHDLR_WAIT = common dso_local global i32 0, align 4
@MDIO_CTL_DEVAD = common dso_local global i32 0, align 4
@MDIO_848xx_CMD_HDLR_STATUS = common dso_local global i64 0, align 8
@PHY84858_STATUS_CMD_IN_PROGRESS = common dso_local global i64 0, align 8
@PHY84858_STATUS_CMD_SYSTEM_BUSY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"FW cmd: FW not ready.\0A\00", align 1
@ELINK_STATUS_ERROR = common dso_local global i32 0, align 4
@MDIO_848xx_CMD_HDLR_DATA1 = common dso_local global i64 0, align 8
@MDIO_848xx_CMD_HDLR_COMMAND = common dso_local global i64 0, align 8
@PHY84858_STATUS_CMD_COMPLETE_PASS = common dso_local global i64 0, align 8
@PHY84858_STATUS_CMD_COMPLETE_ERROR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"FW cmd failed.\0A\00", align 1
@ELINK_STATUS_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.elink_phy*, %struct.elink_params*, i64, i64*, i32)* @elink_84858_cmd_hdlr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @elink_84858_cmd_hdlr(%struct.elink_phy* %0, %struct.elink_params* %1, i64 %2, i64* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.elink_phy*, align 8
  %8 = alloca %struct.elink_params*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca %struct.bxe_softc*, align 8
  store %struct.elink_phy* %0, %struct.elink_phy** %7, align 8
  store %struct.elink_params* %1, %struct.elink_params** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64* %3, i64** %10, align 8
  store i32 %4, i32* %11, align 4
  %15 = load %struct.elink_params*, %struct.elink_params** %8, align 8
  %16 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %15, i32 0, i32 0
  %17 = load %struct.bxe_softc*, %struct.bxe_softc** %16, align 8
  store %struct.bxe_softc* %17, %struct.bxe_softc** %14, align 8
  store i32 0, i32* %12, align 4
  br label %18

18:                                               ; preds = %38, %5
  %19 = load i32, i32* %12, align 4
  %20 = load i32, i32* @PHY848xx_CMDHDLR_WAIT, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %41

22:                                               ; preds = %18
  %23 = load %struct.bxe_softc*, %struct.bxe_softc** %14, align 8
  %24 = load %struct.elink_phy*, %struct.elink_phy** %7, align 8
  %25 = load i32, i32* @MDIO_CTL_DEVAD, align 4
  %26 = load i64, i64* @MDIO_848xx_CMD_HDLR_STATUS, align 8
  %27 = call i32 @elink_cl45_read(%struct.bxe_softc* %23, %struct.elink_phy* %24, i32 %25, i64 %26, i64* %13)
  %28 = load i64, i64* %13, align 8
  %29 = load i64, i64* @PHY84858_STATUS_CMD_IN_PROGRESS, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %36

31:                                               ; preds = %22
  %32 = load i64, i64* %13, align 8
  %33 = load i64, i64* @PHY84858_STATUS_CMD_SYSTEM_BUSY, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  br label %41

36:                                               ; preds = %31, %22
  %37 = call i32 @DELAY(i32 1000)
  br label %38

38:                                               ; preds = %36
  %39 = load i32, i32* %12, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %12, align 4
  br label %18

41:                                               ; preds = %35, %18
  %42 = load i32, i32* %12, align 4
  %43 = load i32, i32* @PHY848xx_CMDHDLR_WAIT, align 4
  %44 = icmp sge i32 %42, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %41
  %46 = load %struct.bxe_softc*, %struct.bxe_softc** %14, align 8
  %47 = call i32 @ELINK_DEBUG_P0(%struct.bxe_softc* %46, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %48 = load i32, i32* @ELINK_STATUS_ERROR, align 4
  store i32 %48, i32* %6, align 4
  br label %136

49:                                               ; preds = %41
  store i32 0, i32* %12, align 4
  br label %50

50:                                               ; preds = %68, %49
  %51 = load i32, i32* %12, align 4
  %52 = load i32, i32* %11, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %71

54:                                               ; preds = %50
  %55 = load %struct.bxe_softc*, %struct.bxe_softc** %14, align 8
  %56 = load %struct.elink_phy*, %struct.elink_phy** %7, align 8
  %57 = load i32, i32* @MDIO_CTL_DEVAD, align 4
  %58 = load i64, i64* @MDIO_848xx_CMD_HDLR_DATA1, align 8
  %59 = load i32, i32* %12, align 4
  %60 = sext i32 %59 to i64
  %61 = add nsw i64 %58, %60
  %62 = load i64*, i64** %10, align 8
  %63 = load i32, i32* %12, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i64, i64* %62, i64 %64
  %66 = load i64, i64* %65, align 8
  %67 = call i32 @elink_cl45_write(%struct.bxe_softc* %55, %struct.elink_phy* %56, i32 %57, i64 %61, i64 %66)
  br label %68

68:                                               ; preds = %54
  %69 = load i32, i32* %12, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %12, align 4
  br label %50

71:                                               ; preds = %50
  %72 = load %struct.bxe_softc*, %struct.bxe_softc** %14, align 8
  %73 = load %struct.elink_phy*, %struct.elink_phy** %7, align 8
  %74 = load i32, i32* @MDIO_CTL_DEVAD, align 4
  %75 = load i64, i64* @MDIO_848xx_CMD_HDLR_COMMAND, align 8
  %76 = load i64, i64* %9, align 8
  %77 = call i32 @elink_cl45_write(%struct.bxe_softc* %72, %struct.elink_phy* %73, i32 %74, i64 %75, i64 %76)
  store i32 0, i32* %12, align 4
  br label %78

78:                                               ; preds = %98, %71
  %79 = load i32, i32* %12, align 4
  %80 = load i32, i32* @PHY848xx_CMDHDLR_WAIT, align 4
  %81 = icmp slt i32 %79, %80
  br i1 %81, label %82, label %101

82:                                               ; preds = %78
  %83 = load %struct.bxe_softc*, %struct.bxe_softc** %14, align 8
  %84 = load %struct.elink_phy*, %struct.elink_phy** %7, align 8
  %85 = load i32, i32* @MDIO_CTL_DEVAD, align 4
  %86 = load i64, i64* @MDIO_848xx_CMD_HDLR_STATUS, align 8
  %87 = call i32 @elink_cl45_read(%struct.bxe_softc* %83, %struct.elink_phy* %84, i32 %85, i64 %86, i64* %13)
  %88 = load i64, i64* %13, align 8
  %89 = load i64, i64* @PHY84858_STATUS_CMD_COMPLETE_PASS, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %95, label %91

91:                                               ; preds = %82
  %92 = load i64, i64* %13, align 8
  %93 = load i64, i64* @PHY84858_STATUS_CMD_COMPLETE_ERROR, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %91, %82
  br label %101

96:                                               ; preds = %91
  %97 = call i32 @DELAY(i32 1000)
  br label %98

98:                                               ; preds = %96
  %99 = load i32, i32* %12, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %12, align 4
  br label %78

101:                                              ; preds = %95, %78
  %102 = load i32, i32* %12, align 4
  %103 = load i32, i32* @PHY848xx_CMDHDLR_WAIT, align 4
  %104 = icmp sge i32 %102, %103
  br i1 %104, label %109, label %105

105:                                              ; preds = %101
  %106 = load i64, i64* %13, align 8
  %107 = load i64, i64* @PHY84858_STATUS_CMD_COMPLETE_ERROR, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %109, label %113

109:                                              ; preds = %105, %101
  %110 = load %struct.bxe_softc*, %struct.bxe_softc** %14, align 8
  %111 = call i32 @ELINK_DEBUG_P0(%struct.bxe_softc* %110, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %112 = load i32, i32* @ELINK_STATUS_ERROR, align 4
  store i32 %112, i32* %6, align 4
  br label %136

113:                                              ; preds = %105
  store i32 0, i32* %12, align 4
  br label %114

114:                                              ; preds = %131, %113
  %115 = load i32, i32* %12, align 4
  %116 = load i32, i32* %11, align 4
  %117 = icmp slt i32 %115, %116
  br i1 %117, label %118, label %134

118:                                              ; preds = %114
  %119 = load %struct.bxe_softc*, %struct.bxe_softc** %14, align 8
  %120 = load %struct.elink_phy*, %struct.elink_phy** %7, align 8
  %121 = load i32, i32* @MDIO_CTL_DEVAD, align 4
  %122 = load i64, i64* @MDIO_848xx_CMD_HDLR_DATA1, align 8
  %123 = load i32, i32* %12, align 4
  %124 = sext i32 %123 to i64
  %125 = add nsw i64 %122, %124
  %126 = load i64*, i64** %10, align 8
  %127 = load i32, i32* %12, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i64, i64* %126, i64 %128
  %130 = call i32 @elink_cl45_read(%struct.bxe_softc* %119, %struct.elink_phy* %120, i32 %121, i64 %125, i64* %129)
  br label %131

131:                                              ; preds = %118
  %132 = load i32, i32* %12, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %12, align 4
  br label %114

134:                                              ; preds = %114
  %135 = load i32, i32* @ELINK_STATUS_OK, align 4
  store i32 %135, i32* %6, align 4
  br label %136

136:                                              ; preds = %134, %109, %45
  %137 = load i32, i32* %6, align 4
  ret i32 %137
}

declare dso_local i32 @elink_cl45_read(%struct.bxe_softc*, %struct.elink_phy*, i32, i64, i64*) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @ELINK_DEBUG_P0(%struct.bxe_softc*, i8*) #1

declare dso_local i32 @elink_cl45_write(%struct.bxe_softc*, %struct.elink_phy*, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
