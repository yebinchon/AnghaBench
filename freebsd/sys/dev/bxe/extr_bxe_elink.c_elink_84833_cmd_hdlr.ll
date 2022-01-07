; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe_elink.c_elink_84833_cmd_hdlr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe_elink.c_elink_84833_cmd_hdlr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elink_phy = type { i32 }
%struct.elink_params = type { %struct.bxe_softc* }
%struct.bxe_softc = type { i32 }

@ELINK_STATUS_OK = common dso_local global i64 0, align 8
@PHY84833_MB_PROCESS2 = common dso_local global i32 0, align 4
@MDIO_CTL_DEVAD = common dso_local global i32 0, align 4
@MDIO_848xx_CMD_HDLR_STATUS = common dso_local global i64 0, align 8
@PHY84833_STATUS_CMD_OPEN_OVERRIDE = common dso_local global i64 0, align 8
@PHY848xx_CMDHDLR_WAIT = common dso_local global i32 0, align 4
@PHY84833_STATUS_CMD_OPEN_FOR_CMDS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"FW cmd: FW not ready.\0A\00", align 1
@PHY84833_STATUS_CMD_COMPLETE_PASS = common dso_local global i64 0, align 8
@PHY84833_STATUS_CMD_COMPLETE_ERROR = common dso_local global i64 0, align 8
@PHY84833_STATUS_CMD_CLEAR_COMPLETE = common dso_local global i64 0, align 8
@ELINK_STATUS_ERROR = common dso_local global i64 0, align 8
@PHY84833_MB_PROCESS1 = common dso_local global i32 0, align 4
@MDIO_848xx_CMD_HDLR_DATA1 = common dso_local global i64 0, align 8
@MDIO_848xx_CMD_HDLR_COMMAND = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"FW cmd failed.\0A\00", align 1
@PHY84833_MB_PROCESS3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.elink_phy*, %struct.elink_params*, i64, i64*, i32, i32)* @elink_84833_cmd_hdlr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @elink_84833_cmd_hdlr(%struct.elink_phy* %0, %struct.elink_params* %1, i64 %2, i64* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca %struct.elink_phy*, align 8
  %9 = alloca %struct.elink_params*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca %struct.bxe_softc*, align 8
  %17 = alloca i64, align 8
  store %struct.elink_phy* %0, %struct.elink_phy** %8, align 8
  store %struct.elink_params* %1, %struct.elink_params** %9, align 8
  store i64 %2, i64* %10, align 8
  store i64* %3, i64** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %18 = load %struct.elink_params*, %struct.elink_params** %9, align 8
  %19 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %18, i32 0, i32 0
  %20 = load %struct.bxe_softc*, %struct.bxe_softc** %19, align 8
  store %struct.bxe_softc* %20, %struct.bxe_softc** %16, align 8
  %21 = load i64, i64* @ELINK_STATUS_OK, align 8
  store i64 %21, i64* %17, align 8
  %22 = load i32, i32* %13, align 4
  %23 = load i32, i32* @PHY84833_MB_PROCESS2, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %32

25:                                               ; preds = %6
  %26 = load %struct.bxe_softc*, %struct.bxe_softc** %16, align 8
  %27 = load %struct.elink_phy*, %struct.elink_phy** %8, align 8
  %28 = load i32, i32* @MDIO_CTL_DEVAD, align 4
  %29 = load i64, i64* @MDIO_848xx_CMD_HDLR_STATUS, align 8
  %30 = load i64, i64* @PHY84833_STATUS_CMD_OPEN_OVERRIDE, align 8
  %31 = call i32 @elink_cl45_write(%struct.bxe_softc* %26, %struct.elink_phy* %27, i32 %28, i64 %29, i64 %30)
  br label %32

32:                                               ; preds = %25, %6
  store i32 0, i32* %14, align 4
  br label %33

33:                                               ; preds = %49, %32
  %34 = load i32, i32* %14, align 4
  %35 = load i32, i32* @PHY848xx_CMDHDLR_WAIT, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %52

37:                                               ; preds = %33
  %38 = load %struct.bxe_softc*, %struct.bxe_softc** %16, align 8
  %39 = load %struct.elink_phy*, %struct.elink_phy** %8, align 8
  %40 = load i32, i32* @MDIO_CTL_DEVAD, align 4
  %41 = load i64, i64* @MDIO_848xx_CMD_HDLR_STATUS, align 8
  %42 = call i32 @elink_cl45_read(%struct.bxe_softc* %38, %struct.elink_phy* %39, i32 %40, i64 %41, i64* %15)
  %43 = load i64, i64* %15, align 8
  %44 = load i64, i64* @PHY84833_STATUS_CMD_OPEN_FOR_CMDS, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %37
  br label %52

47:                                               ; preds = %37
  %48 = call i32 @DELAY(i32 1000)
  br label %49

49:                                               ; preds = %47
  %50 = load i32, i32* %14, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %14, align 4
  br label %33

52:                                               ; preds = %46, %33
  %53 = load i32, i32* %14, align 4
  %54 = load i32, i32* @PHY848xx_CMDHDLR_WAIT, align 4
  %55 = icmp sge i32 %53, %54
  br i1 %55, label %56, label %75

56:                                               ; preds = %52
  %57 = load %struct.bxe_softc*, %struct.bxe_softc** %16, align 8
  %58 = call i32 @ELINK_DEBUG_P0(%struct.bxe_softc* %57, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %59 = load i64, i64* %15, align 8
  %60 = load i64, i64* @PHY84833_STATUS_CMD_COMPLETE_PASS, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %66, label %62

62:                                               ; preds = %56
  %63 = load i64, i64* %15, align 8
  %64 = load i64, i64* @PHY84833_STATUS_CMD_COMPLETE_ERROR, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %73

66:                                               ; preds = %62, %56
  %67 = load %struct.bxe_softc*, %struct.bxe_softc** %16, align 8
  %68 = load %struct.elink_phy*, %struct.elink_phy** %8, align 8
  %69 = load i32, i32* @MDIO_CTL_DEVAD, align 4
  %70 = load i64, i64* @MDIO_848xx_CMD_HDLR_STATUS, align 8
  %71 = load i64, i64* @PHY84833_STATUS_CMD_CLEAR_COMPLETE, align 8
  %72 = call i32 @elink_cl45_write(%struct.bxe_softc* %67, %struct.elink_phy* %68, i32 %69, i64 %70, i64 %71)
  br label %73

73:                                               ; preds = %66, %62
  %74 = load i64, i64* @ELINK_STATUS_ERROR, align 8
  store i64 %74, i64* %7, align 8
  br label %195

75:                                               ; preds = %52
  %76 = load i32, i32* %13, align 4
  %77 = load i32, i32* @PHY84833_MB_PROCESS1, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %83, label %79

79:                                               ; preds = %75
  %80 = load i32, i32* %13, align 4
  %81 = load i32, i32* @PHY84833_MB_PROCESS2, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %83, label %106

83:                                               ; preds = %79, %75
  store i32 0, i32* %14, align 4
  br label %84

84:                                               ; preds = %102, %83
  %85 = load i32, i32* %14, align 4
  %86 = load i32, i32* %12, align 4
  %87 = icmp slt i32 %85, %86
  br i1 %87, label %88, label %105

88:                                               ; preds = %84
  %89 = load %struct.bxe_softc*, %struct.bxe_softc** %16, align 8
  %90 = load %struct.elink_phy*, %struct.elink_phy** %8, align 8
  %91 = load i32, i32* @MDIO_CTL_DEVAD, align 4
  %92 = load i64, i64* @MDIO_848xx_CMD_HDLR_DATA1, align 8
  %93 = load i32, i32* %14, align 4
  %94 = sext i32 %93 to i64
  %95 = add nsw i64 %92, %94
  %96 = load i64*, i64** %11, align 8
  %97 = load i32, i32* %14, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i64, i64* %96, i64 %98
  %100 = load i64, i64* %99, align 8
  %101 = call i32 @elink_cl45_write(%struct.bxe_softc* %89, %struct.elink_phy* %90, i32 %91, i64 %95, i64 %100)
  br label %102

102:                                              ; preds = %88
  %103 = load i32, i32* %14, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %14, align 4
  br label %84

105:                                              ; preds = %84
  br label %106

106:                                              ; preds = %105, %79
  %107 = load %struct.bxe_softc*, %struct.bxe_softc** %16, align 8
  %108 = load %struct.elink_phy*, %struct.elink_phy** %8, align 8
  %109 = load i32, i32* @MDIO_CTL_DEVAD, align 4
  %110 = load i64, i64* @MDIO_848xx_CMD_HDLR_COMMAND, align 8
  %111 = load i64, i64* %10, align 8
  %112 = call i32 @elink_cl45_write(%struct.bxe_softc* %107, %struct.elink_phy* %108, i32 %109, i64 %110, i64 %111)
  store i32 0, i32* %14, align 4
  br label %113

113:                                              ; preds = %133, %106
  %114 = load i32, i32* %14, align 4
  %115 = load i32, i32* @PHY848xx_CMDHDLR_WAIT, align 4
  %116 = icmp slt i32 %114, %115
  br i1 %116, label %117, label %136

117:                                              ; preds = %113
  %118 = load %struct.bxe_softc*, %struct.bxe_softc** %16, align 8
  %119 = load %struct.elink_phy*, %struct.elink_phy** %8, align 8
  %120 = load i32, i32* @MDIO_CTL_DEVAD, align 4
  %121 = load i64, i64* @MDIO_848xx_CMD_HDLR_STATUS, align 8
  %122 = call i32 @elink_cl45_read(%struct.bxe_softc* %118, %struct.elink_phy* %119, i32 %120, i64 %121, i64* %15)
  %123 = load i64, i64* %15, align 8
  %124 = load i64, i64* @PHY84833_STATUS_CMD_COMPLETE_PASS, align 8
  %125 = icmp eq i64 %123, %124
  br i1 %125, label %130, label %126

126:                                              ; preds = %117
  %127 = load i64, i64* %15, align 8
  %128 = load i64, i64* @PHY84833_STATUS_CMD_COMPLETE_ERROR, align 8
  %129 = icmp eq i64 %127, %128
  br i1 %129, label %130, label %131

130:                                              ; preds = %126, %117
  br label %136

131:                                              ; preds = %126
  %132 = call i32 @DELAY(i32 1000)
  br label %133

133:                                              ; preds = %131
  %134 = load i32, i32* %14, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %14, align 4
  br label %113

136:                                              ; preds = %130, %113
  %137 = load i32, i32* %14, align 4
  %138 = load i32, i32* @PHY848xx_CMDHDLR_WAIT, align 4
  %139 = icmp sge i32 %137, %138
  br i1 %139, label %144, label %140

140:                                              ; preds = %136
  %141 = load i64, i64* %15, align 8
  %142 = load i64, i64* @PHY84833_STATUS_CMD_COMPLETE_ERROR, align 8
  %143 = icmp eq i64 %141, %142
  br i1 %143, label %144, label %148

144:                                              ; preds = %140, %136
  %145 = load %struct.bxe_softc*, %struct.bxe_softc** %16, align 8
  %146 = call i32 @ELINK_DEBUG_P0(%struct.bxe_softc* %145, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %147 = load i64, i64* @ELINK_STATUS_ERROR, align 8
  store i64 %147, i64* %17, align 8
  br label %148

148:                                              ; preds = %144, %140
  %149 = load i32, i32* %13, align 4
  %150 = load i32, i32* @PHY84833_MB_PROCESS3, align 4
  %151 = icmp eq i32 %149, %150
  br i1 %151, label %152, label %178

152:                                              ; preds = %148
  %153 = load i64, i64* %17, align 8
  %154 = load i64, i64* @ELINK_STATUS_OK, align 8
  %155 = icmp eq i64 %153, %154
  br i1 %155, label %156, label %178

156:                                              ; preds = %152
  store i32 0, i32* %14, align 4
  br label %157

157:                                              ; preds = %174, %156
  %158 = load i32, i32* %14, align 4
  %159 = load i32, i32* %12, align 4
  %160 = icmp slt i32 %158, %159
  br i1 %160, label %161, label %177

161:                                              ; preds = %157
  %162 = load %struct.bxe_softc*, %struct.bxe_softc** %16, align 8
  %163 = load %struct.elink_phy*, %struct.elink_phy** %8, align 8
  %164 = load i32, i32* @MDIO_CTL_DEVAD, align 4
  %165 = load i64, i64* @MDIO_848xx_CMD_HDLR_DATA1, align 8
  %166 = load i32, i32* %14, align 4
  %167 = sext i32 %166 to i64
  %168 = add nsw i64 %165, %167
  %169 = load i64*, i64** %11, align 8
  %170 = load i32, i32* %14, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i64, i64* %169, i64 %171
  %173 = call i32 @elink_cl45_read(%struct.bxe_softc* %162, %struct.elink_phy* %163, i32 %164, i64 %168, i64* %172)
  br label %174

174:                                              ; preds = %161
  %175 = load i32, i32* %14, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %14, align 4
  br label %157

177:                                              ; preds = %157
  br label %178

178:                                              ; preds = %177, %152, %148
  %179 = load i64, i64* %15, align 8
  %180 = load i64, i64* @PHY84833_STATUS_CMD_COMPLETE_ERROR, align 8
  %181 = icmp eq i64 %179, %180
  br i1 %181, label %186, label %182

182:                                              ; preds = %178
  %183 = load i64, i64* %15, align 8
  %184 = load i64, i64* @PHY84833_STATUS_CMD_COMPLETE_PASS, align 8
  %185 = icmp eq i64 %183, %184
  br i1 %185, label %186, label %193

186:                                              ; preds = %182, %178
  %187 = load %struct.bxe_softc*, %struct.bxe_softc** %16, align 8
  %188 = load %struct.elink_phy*, %struct.elink_phy** %8, align 8
  %189 = load i32, i32* @MDIO_CTL_DEVAD, align 4
  %190 = load i64, i64* @MDIO_848xx_CMD_HDLR_STATUS, align 8
  %191 = load i64, i64* @PHY84833_STATUS_CMD_CLEAR_COMPLETE, align 8
  %192 = call i32 @elink_cl45_write(%struct.bxe_softc* %187, %struct.elink_phy* %188, i32 %189, i64 %190, i64 %191)
  br label %193

193:                                              ; preds = %186, %182
  %194 = load i64, i64* %17, align 8
  store i64 %194, i64* %7, align 8
  br label %195

195:                                              ; preds = %193, %73
  %196 = load i64, i64* %7, align 8
  ret i64 %196
}

declare dso_local i32 @elink_cl45_write(%struct.bxe_softc*, %struct.elink_phy*, i32, i64, i64) #1

declare dso_local i32 @elink_cl45_read(%struct.bxe_softc*, %struct.elink_phy*, i32, i64, i64*) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @ELINK_DEBUG_P0(%struct.bxe_softc*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
