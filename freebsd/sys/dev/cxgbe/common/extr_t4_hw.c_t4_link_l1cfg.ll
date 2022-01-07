; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/common/extr_t4_hw.c_t4_link_l1cfg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/common/extr_t4_hw.c_t4_link_l1cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i64*, %struct.TYPE_5__, i32* }
%struct.TYPE_5__ = type { i64 }
%struct.link_config = type { i32, i32, i32, i64, i32, i64 }
%struct.fw_port_cmd = type { %struct.TYPE_8__, i8*, i8* }
%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i8* }
%struct.TYPE_6__ = type { i8* }

@FW_PORT_CAP32_MDI_AUTO = common dso_local global i32 0, align 4
@PAUSE_RX = common dso_local global i32 0, align 4
@FW_PORT_CAP32_FC_RX = common dso_local global i32 0, align 4
@PAUSE_TX = common dso_local global i32 0, align 4
@FW_PORT_CAP32_FC_TX = common dso_local global i32 0, align 4
@PAUSE_AUTONEG = common dso_local global i32 0, align 4
@FW_PORT_CAP32_FORCE_PAUSE = common dso_local global i32 0, align 4
@FEC_AUTO = common dso_local global i32 0, align 4
@FEC_RS = common dso_local global i32 0, align 4
@FW_PORT_CAP32_FEC_RS = common dso_local global i32 0, align 4
@FEC_BASER_RS = common dso_local global i32 0, align 4
@FW_PORT_CAP32_FEC_BASER_RS = common dso_local global i32 0, align 4
@AUTONEG_DISABLE = common dso_local global i64 0, align 8
@AUTONEG_ENABLE = common dso_local global i64 0, align 8
@FW_PORT_CAP32_ANEG = common dso_local global i32 0, align 4
@M_FW_PORT_CAP32_SPEED = common dso_local global i32 0, align 4
@FW_PORT_CMD = common dso_local global i32 0, align 4
@F_FW_CMD_REQUEST = common dso_local global i32 0, align 4
@F_FW_CMD_EXEC = common dso_local global i32 0, align 4
@FW_PORT_ACTION_L1_CFG32 = common dso_local global i32 0, align 4
@FW_PORT_ACTION_L1_CFG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @t4_link_l1cfg(%struct.adapter* %0, i32 %1, i32 %2, %struct.link_config* %3) #0 {
  %5 = alloca %struct.adapter*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.link_config*, align 8
  %9 = alloca %struct.fw_port_cmd, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.link_config* %3, %struct.link_config** %8, align 8
  %16 = load i32, i32* @FW_PORT_CAP32_MDI_AUTO, align 4
  %17 = call i32 @V_FW_PORT_CAP32_MDI(i32 %16)
  store i32 %17, i32* %10, align 4
  store i32 0, i32* %12, align 4
  %18 = load %struct.link_config*, %struct.link_config** %8, align 8
  %19 = getelementptr inbounds %struct.link_config, %struct.link_config* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @PAUSE_RX, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %4
  %25 = load i32, i32* @FW_PORT_CAP32_FC_RX, align 4
  %26 = load i32, i32* %12, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %12, align 4
  br label %28

28:                                               ; preds = %24, %4
  %29 = load %struct.link_config*, %struct.link_config** %8, align 8
  %30 = getelementptr inbounds %struct.link_config, %struct.link_config* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @PAUSE_TX, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %28
  %36 = load i32, i32* @FW_PORT_CAP32_FC_TX, align 4
  %37 = load i32, i32* %12, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %12, align 4
  br label %39

39:                                               ; preds = %35, %28
  %40 = load %struct.link_config*, %struct.link_config** %8, align 8
  %41 = getelementptr inbounds %struct.link_config, %struct.link_config* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @PAUSE_AUTONEG, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %50, label %46

46:                                               ; preds = %39
  %47 = load i32, i32* @FW_PORT_CAP32_FORCE_PAUSE, align 4
  %48 = load i32, i32* %12, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %12, align 4
  br label %50

50:                                               ; preds = %46, %39
  store i32 0, i32* %13, align 4
  %51 = load %struct.link_config*, %struct.link_config** %8, align 8
  %52 = getelementptr inbounds %struct.link_config, %struct.link_config* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @FEC_AUTO, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %50
  %57 = load %struct.link_config*, %struct.link_config** %8, align 8
  %58 = getelementptr inbounds %struct.link_config, %struct.link_config* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  store i32 %59, i32* %13, align 4
  br label %83

60:                                               ; preds = %50
  %61 = load %struct.link_config*, %struct.link_config** %8, align 8
  %62 = getelementptr inbounds %struct.link_config, %struct.link_config* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @FEC_RS, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %60
  %68 = load i32, i32* @FW_PORT_CAP32_FEC_RS, align 4
  %69 = load i32, i32* %13, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %13, align 4
  br label %71

71:                                               ; preds = %67, %60
  %72 = load %struct.link_config*, %struct.link_config** %8, align 8
  %73 = getelementptr inbounds %struct.link_config, %struct.link_config* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @FEC_BASER_RS, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %71
  %79 = load i32, i32* @FW_PORT_CAP32_FEC_BASER_RS, align 4
  %80 = load i32, i32* %13, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %13, align 4
  br label %82

82:                                               ; preds = %78, %71
  br label %83

83:                                               ; preds = %82, %56
  %84 = load %struct.link_config*, %struct.link_config** %8, align 8
  %85 = getelementptr inbounds %struct.link_config, %struct.link_config* %84, i32 0, i32 3
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @AUTONEG_DISABLE, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %83
  store i32 0, i32* %11, align 4
  br label %105

90:                                               ; preds = %83
  %91 = load %struct.link_config*, %struct.link_config** %8, align 8
  %92 = getelementptr inbounds %struct.link_config, %struct.link_config* %91, i32 0, i32 3
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @AUTONEG_ENABLE, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %98

96:                                               ; preds = %90
  %97 = load i32, i32* @FW_PORT_CAP32_ANEG, align 4
  store i32 %97, i32* %11, align 4
  br label %104

98:                                               ; preds = %90
  %99 = load %struct.link_config*, %struct.link_config** %8, align 8
  %100 = getelementptr inbounds %struct.link_config, %struct.link_config* %99, i32 0, i32 4
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* @FW_PORT_CAP32_ANEG, align 4
  %103 = and i32 %101, %102
  store i32 %103, i32* %11, align 4
  br label %104

104:                                              ; preds = %98, %96
  br label %105

105:                                              ; preds = %104, %89
  %106 = load i32, i32* %11, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %115

108:                                              ; preds = %105
  %109 = load %struct.link_config*, %struct.link_config** %8, align 8
  %110 = getelementptr inbounds %struct.link_config, %struct.link_config* %109, i32 0, i32 4
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* @M_FW_PORT_CAP32_SPEED, align 4
  %113 = call i32 @V_FW_PORT_CAP32_SPEED(i32 %112)
  %114 = and i32 %111, %113
  store i32 %114, i32* %14, align 4
  br label %131

115:                                              ; preds = %105
  %116 = load %struct.link_config*, %struct.link_config** %8, align 8
  %117 = getelementptr inbounds %struct.link_config, %struct.link_config* %116, i32 0, i32 5
  %118 = load i64, i64* %117, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %125

120:                                              ; preds = %115
  %121 = load %struct.link_config*, %struct.link_config** %8, align 8
  %122 = getelementptr inbounds %struct.link_config, %struct.link_config* %121, i32 0, i32 5
  %123 = load i64, i64* %122, align 8
  %124 = call i32 @speed_to_fwcap(i64 %123)
  store i32 %124, i32* %14, align 4
  br label %130

125:                                              ; preds = %115
  %126 = load %struct.link_config*, %struct.link_config** %8, align 8
  %127 = getelementptr inbounds %struct.link_config, %struct.link_config* %126, i32 0, i32 4
  %128 = load i32, i32* %127, align 8
  %129 = call i32 @fwcap_top_speed(i32 %128)
  store i32 %129, i32* %14, align 4
  br label %130

130:                                              ; preds = %125, %120
  br label %131

131:                                              ; preds = %130, %108
  %132 = load %struct.adapter*, %struct.adapter** %5, align 8
  %133 = getelementptr inbounds %struct.adapter, %struct.adapter* %132, i32 0, i32 2
  %134 = load i32*, i32** %133, align 8
  %135 = load %struct.adapter*, %struct.adapter** %5, align 8
  %136 = getelementptr inbounds %struct.adapter, %struct.adapter* %135, i32 0, i32 0
  %137 = load i64*, i64** %136, align 8
  %138 = load i32, i32* %7, align 4
  %139 = zext i32 %138 to i64
  %140 = getelementptr inbounds i64, i64* %137, i64 %139
  %141 = load i64, i64* %140, align 8
  %142 = getelementptr inbounds i32, i32* %134, i64 %141
  %143 = load i32, i32* %142, align 4
  %144 = call i64 @is_bt(i32 %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %152

146:                                              ; preds = %131
  %147 = load %struct.link_config*, %struct.link_config** %8, align 8
  %148 = getelementptr inbounds %struct.link_config, %struct.link_config* %147, i32 0, i32 4
  %149 = load i32, i32* %148, align 8
  %150 = load i32, i32* @FW_PORT_CAP32_ANEG, align 4
  %151 = and i32 %149, %150
  store i32 %151, i32* %11, align 4
  br label %152

152:                                              ; preds = %146, %131
  %153 = load i32, i32* %11, align 4
  %154 = load i32, i32* %14, align 4
  %155 = or i32 %153, %154
  %156 = load i32, i32* %12, align 4
  %157 = or i32 %155, %156
  %158 = load i32, i32* %13, align 4
  %159 = or i32 %157, %158
  store i32 %159, i32* %15, align 4
  %160 = load i32, i32* %15, align 4
  %161 = load %struct.link_config*, %struct.link_config** %8, align 8
  %162 = getelementptr inbounds %struct.link_config, %struct.link_config* %161, i32 0, i32 4
  %163 = load i32, i32* %162, align 8
  %164 = or i32 %160, %163
  %165 = load %struct.link_config*, %struct.link_config** %8, align 8
  %166 = getelementptr inbounds %struct.link_config, %struct.link_config* %165, i32 0, i32 4
  %167 = load i32, i32* %166, align 8
  %168 = icmp ne i32 %164, %167
  br i1 %168, label %169, label %175

169:                                              ; preds = %152
  %170 = load %struct.link_config*, %struct.link_config** %8, align 8
  %171 = getelementptr inbounds %struct.link_config, %struct.link_config* %170, i32 0, i32 4
  %172 = load i32, i32* %171, align 8
  %173 = load i32, i32* %15, align 4
  %174 = and i32 %173, %172
  store i32 %174, i32* %15, align 4
  br label %175

175:                                              ; preds = %169, %152
  %176 = load i32, i32* %10, align 4
  %177 = load i32, i32* %15, align 4
  %178 = or i32 %177, %176
  store i32 %178, i32* %15, align 4
  %179 = call i32 @memset(%struct.fw_port_cmd* %9, i32 0, i32 32)
  %180 = load i32, i32* @FW_PORT_CMD, align 4
  %181 = call i32 @V_FW_CMD_OP(i32 %180)
  %182 = load i32, i32* @F_FW_CMD_REQUEST, align 4
  %183 = or i32 %181, %182
  %184 = load i32, i32* @F_FW_CMD_EXEC, align 4
  %185 = or i32 %183, %184
  %186 = load i32, i32* %7, align 4
  %187 = call i32 @V_FW_PORT_CMD_PORTID(i32 %186)
  %188 = or i32 %185, %187
  %189 = call i8* @cpu_to_be32(i32 %188)
  %190 = getelementptr inbounds %struct.fw_port_cmd, %struct.fw_port_cmd* %9, i32 0, i32 2
  store i8* %189, i8** %190, align 8
  %191 = load %struct.adapter*, %struct.adapter** %5, align 8
  %192 = getelementptr inbounds %struct.adapter, %struct.adapter* %191, i32 0, i32 1
  %193 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %192, i32 0, i32 0
  %194 = load i64, i64* %193, align 8
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %208

196:                                              ; preds = %175
  %197 = load i32, i32* @FW_PORT_ACTION_L1_CFG32, align 4
  %198 = call i32 @V_FW_PORT_CMD_ACTION(i32 %197)
  %199 = call i32 @FW_LEN16(%struct.fw_port_cmd* byval(%struct.fw_port_cmd) align 8 %9)
  %200 = or i32 %198, %199
  %201 = call i8* @cpu_to_be32(i32 %200)
  %202 = getelementptr inbounds %struct.fw_port_cmd, %struct.fw_port_cmd* %9, i32 0, i32 1
  store i8* %201, i8** %202, align 8
  %203 = load i32, i32* %15, align 4
  %204 = call i8* @cpu_to_be32(i32 %203)
  %205 = getelementptr inbounds %struct.fw_port_cmd, %struct.fw_port_cmd* %9, i32 0, i32 0
  %206 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %205, i32 0, i32 1
  %207 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %206, i32 0, i32 0
  store i8* %204, i8** %207, align 8
  br label %221

208:                                              ; preds = %175
  %209 = load i32, i32* @FW_PORT_ACTION_L1_CFG, align 4
  %210 = call i32 @V_FW_PORT_CMD_ACTION(i32 %209)
  %211 = call i32 @FW_LEN16(%struct.fw_port_cmd* byval(%struct.fw_port_cmd) align 8 %9)
  %212 = or i32 %210, %211
  %213 = call i8* @cpu_to_be32(i32 %212)
  %214 = getelementptr inbounds %struct.fw_port_cmd, %struct.fw_port_cmd* %9, i32 0, i32 1
  store i8* %213, i8** %214, align 8
  %215 = load i32, i32* %15, align 4
  %216 = call i32 @fwcaps32_to_caps16(i32 %215)
  %217 = call i8* @cpu_to_be32(i32 %216)
  %218 = getelementptr inbounds %struct.fw_port_cmd, %struct.fw_port_cmd* %9, i32 0, i32 0
  %219 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %218, i32 0, i32 0
  %220 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %219, i32 0, i32 0
  store i8* %217, i8** %220, align 8
  br label %221

221:                                              ; preds = %208, %196
  %222 = load %struct.adapter*, %struct.adapter** %5, align 8
  %223 = load i32, i32* %6, align 4
  %224 = call i32 @t4_wr_mbox_ns(%struct.adapter* %222, i32 %223, %struct.fw_port_cmd* %9, i32 32, i32* null)
  ret i32 %224
}

declare dso_local i32 @V_FW_PORT_CAP32_MDI(i32) #1

declare dso_local i32 @V_FW_PORT_CAP32_SPEED(i32) #1

declare dso_local i32 @speed_to_fwcap(i64) #1

declare dso_local i32 @fwcap_top_speed(i32) #1

declare dso_local i64 @is_bt(i32) #1

declare dso_local i32 @memset(%struct.fw_port_cmd*, i32, i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @V_FW_CMD_OP(i32) #1

declare dso_local i32 @V_FW_PORT_CMD_PORTID(i32) #1

declare dso_local i32 @V_FW_PORT_CMD_ACTION(i32) #1

declare dso_local i32 @FW_LEN16(%struct.fw_port_cmd* byval(%struct.fw_port_cmd) align 8) #1

declare dso_local i32 @fwcaps32_to_caps16(i32) #1

declare dso_local i32 @t4_wr_mbox_ns(%struct.adapter*, i32, %struct.fw_port_cmd*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
