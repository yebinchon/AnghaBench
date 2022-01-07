; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vnic/extr_thunder_bgx.c_bgx_xaui_check_link.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vnic/extr_thunder_bgx.c_bgx_xaui_check_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lmac = type { i32, %struct.bgx* }
%struct.bgx = type { i32, i32, i64 }

@BGX_SPUX_MISC_CONTROL = common dso_local global i32 0, align 4
@SPU_MISC_CTL_RX_DIS = common dso_local global i64 0, align 8
@BGX_SPUX_INT = common dso_local global i32 0, align 4
@BGX_SPUX_BR_PMD_CRTL = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@BGX_SPUX_CONTROL1 = common dso_local global i32 0, align 4
@SPU_CTL_RESET = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"BGX SPU reset not completed\0A\00", align 1
@BGX_MODE_10G_KR = common dso_local global i32 0, align 4
@BGX_MODE_XFI = common dso_local global i32 0, align 4
@BGX_MODE_40G_KR = common dso_local global i32 0, align 4
@BGX_MODE_XLAUI = common dso_local global i32 0, align 4
@BGX_SPUX_BR_STATUS1 = common dso_local global i32 0, align 4
@SPU_BR_STATUS_BLK_LOCK = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"SPU_BR_STATUS_BLK_LOCK not completed\0A\00", align 1
@BGX_SPUX_BX_STATUS = common dso_local global i32 0, align 4
@SPU_BX_STATUS_RX_ALIGN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"SPU_BX_STATUS_RX_ALIGN not completed\0A\00", align 1
@BGX_SPUX_STATUS2 = common dso_local global i32 0, align 4
@SPU_STATUS2_RCVFLT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"Receive fault, retry training\0A\00", align 1
@BGX_SMUX_RX_CTL = common dso_local global i32 0, align 4
@SMU_RX_CTL_STATUS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [22 x i8] c"SMU RX link not okay\0A\00", align 1
@BGX_SMUX_CTL = common dso_local global i32 0, align 4
@SMU_CTL_RX_IDLE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [17 x i8] c"SMU RX not idle\0A\00", align 1
@SMU_CTL_TX_IDLE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [17 x i8] c"SMU TX not idle\0A\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"Receive fault\0A\00", align 1
@BGX_SPUX_STATUS1 = common dso_local global i32 0, align 4
@SPU_STATUS1_RCV_LNK = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [23 x i8] c"SPU receive link down\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lmac*)* @bgx_xaui_check_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bgx_xaui_check_link(%struct.lmac* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lmac*, align 8
  %4 = alloca %struct.bgx*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.lmac* %0, %struct.lmac** %3, align 8
  %8 = load %struct.lmac*, %struct.lmac** %3, align 8
  %9 = getelementptr inbounds %struct.lmac, %struct.lmac* %8, i32 0, i32 1
  %10 = load %struct.bgx*, %struct.bgx** %9, align 8
  store %struct.bgx* %10, %struct.bgx** %4, align 8
  %11 = load %struct.lmac*, %struct.lmac** %3, align 8
  %12 = getelementptr inbounds %struct.lmac, %struct.lmac* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %5, align 4
  %14 = load %struct.bgx*, %struct.bgx** %4, align 8
  %15 = getelementptr inbounds %struct.bgx, %struct.bgx* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %6, align 4
  %17 = load %struct.bgx*, %struct.bgx** %4, align 8
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @BGX_SPUX_MISC_CONTROL, align 4
  %20 = load i64, i64* @SPU_MISC_CTL_RX_DIS, align 8
  %21 = trunc i64 %20 to i32
  %22 = call i32 @bgx_reg_modify(%struct.bgx* %17, i32 %18, i32 %19, i32 %21)
  %23 = load %struct.bgx*, %struct.bgx** %4, align 8
  %24 = getelementptr inbounds %struct.bgx, %struct.bgx* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %56

27:                                               ; preds = %1
  %28 = load %struct.bgx*, %struct.bgx** %4, align 8
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @BGX_SPUX_INT, align 4
  %31 = call i32 @bgx_reg_read(%struct.bgx* %28, i32 %29, i32 %30)
  %32 = sext i32 %31 to i64
  store i64 %32, i64* %7, align 8
  %33 = load i64, i64* %7, align 8
  %34 = and i64 %33, 8192
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %55

36:                                               ; preds = %27
  store i64 24576, i64* %7, align 8
  %37 = load %struct.bgx*, %struct.bgx** %4, align 8
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @BGX_SPUX_INT, align 4
  %40 = load i64, i64* %7, align 8
  %41 = call i32 @bgx_reg_write(%struct.bgx* %37, i32 %38, i32 %39, i64 %40)
  %42 = load %struct.bgx*, %struct.bgx** %4, align 8
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* @BGX_SPUX_BR_PMD_CRTL, align 4
  %45 = call i32 @bgx_reg_read(%struct.bgx* %42, i32 %43, i32 %44)
  %46 = sext i32 %45 to i64
  store i64 %46, i64* %7, align 8
  %47 = load i64, i64* %7, align 8
  %48 = or i64 %47, 1
  store i64 %48, i64* %7, align 8
  %49 = load %struct.bgx*, %struct.bgx** %4, align 8
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* @BGX_SPUX_BR_PMD_CRTL, align 4
  %52 = load i64, i64* %7, align 8
  %53 = call i32 @bgx_reg_write(%struct.bgx* %49, i32 %50, i32 %51, i64 %52)
  %54 = load i32, i32* @ENXIO, align 4
  store i32 %54, i32* %2, align 4
  br label %259

55:                                               ; preds = %27
  br label %56

56:                                               ; preds = %55, %1
  %57 = load %struct.bgx*, %struct.bgx** %4, align 8
  %58 = load i32, i32* %5, align 4
  %59 = load i32, i32* @BGX_SPUX_CONTROL1, align 4
  %60 = load i32, i32* @SPU_CTL_RESET, align 4
  %61 = load i32, i32* @TRUE, align 4
  %62 = call i64 @bgx_poll_reg(%struct.bgx* %57, i32 %58, i32 %59, i32 %60, i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %56
  %65 = load %struct.bgx*, %struct.bgx** %4, align 8
  %66 = getelementptr inbounds %struct.bgx, %struct.bgx* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @device_printf(i32 %67, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %69 = load i32, i32* @ENXIO, align 4
  store i32 %69, i32* %2, align 4
  br label %259

70:                                               ; preds = %56
  %71 = load i32, i32* %6, align 4
  %72 = load i32, i32* @BGX_MODE_10G_KR, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %86, label %74

74:                                               ; preds = %70
  %75 = load i32, i32* %6, align 4
  %76 = load i32, i32* @BGX_MODE_XFI, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %86, label %78

78:                                               ; preds = %74
  %79 = load i32, i32* %6, align 4
  %80 = load i32, i32* @BGX_MODE_40G_KR, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %86, label %82

82:                                               ; preds = %78
  %83 = load i32, i32* %6, align 4
  %84 = load i32, i32* @BGX_MODE_XLAUI, align 4
  %85 = icmp eq i32 %83, %84
  br i1 %85, label %86, label %101

86:                                               ; preds = %82, %78, %74, %70
  %87 = load %struct.bgx*, %struct.bgx** %4, align 8
  %88 = load i32, i32* %5, align 4
  %89 = load i32, i32* @BGX_SPUX_BR_STATUS1, align 4
  %90 = load i32, i32* @SPU_BR_STATUS_BLK_LOCK, align 4
  %91 = load i32, i32* @FALSE, align 4
  %92 = call i64 @bgx_poll_reg(%struct.bgx* %87, i32 %88, i32 %89, i32 %90, i32 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %100

94:                                               ; preds = %86
  %95 = load %struct.bgx*, %struct.bgx** %4, align 8
  %96 = getelementptr inbounds %struct.bgx, %struct.bgx* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @device_printf(i32 %97, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %99 = load i32, i32* @ENXIO, align 4
  store i32 %99, i32* %2, align 4
  br label %259

100:                                              ; preds = %86
  br label %116

101:                                              ; preds = %82
  %102 = load %struct.bgx*, %struct.bgx** %4, align 8
  %103 = load i32, i32* %5, align 4
  %104 = load i32, i32* @BGX_SPUX_BX_STATUS, align 4
  %105 = load i32, i32* @SPU_BX_STATUS_RX_ALIGN, align 4
  %106 = load i32, i32* @FALSE, align 4
  %107 = call i64 @bgx_poll_reg(%struct.bgx* %102, i32 %103, i32 %104, i32 %105, i32 %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %115

109:                                              ; preds = %101
  %110 = load %struct.bgx*, %struct.bgx** %4, align 8
  %111 = getelementptr inbounds %struct.bgx, %struct.bgx* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @device_printf(i32 %112, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  %114 = load i32, i32* @ENXIO, align 4
  store i32 %114, i32* %2, align 4
  br label %259

115:                                              ; preds = %101
  br label %116

116:                                              ; preds = %115, %100
  %117 = load %struct.bgx*, %struct.bgx** %4, align 8
  %118 = load i32, i32* %5, align 4
  %119 = load i32, i32* @BGX_SPUX_STATUS2, align 4
  %120 = load i32, i32* @SPU_STATUS2_RCVFLT, align 4
  %121 = call i32 @bgx_reg_modify(%struct.bgx* %117, i32 %118, i32 %119, i32 %120)
  %122 = load %struct.bgx*, %struct.bgx** %4, align 8
  %123 = load i32, i32* %5, align 4
  %124 = load i32, i32* @BGX_SPUX_STATUS2, align 4
  %125 = call i32 @bgx_reg_read(%struct.bgx* %122, i32 %123, i32 %124)
  %126 = load i32, i32* @SPU_STATUS2_RCVFLT, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %169

129:                                              ; preds = %116
  %130 = load %struct.bgx*, %struct.bgx** %4, align 8
  %131 = getelementptr inbounds %struct.bgx, %struct.bgx* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @device_printf(i32 %132, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  %134 = load %struct.bgx*, %struct.bgx** %4, align 8
  %135 = getelementptr inbounds %struct.bgx, %struct.bgx* %134, i32 0, i32 2
  %136 = load i64, i64* %135, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %167

138:                                              ; preds = %129
  %139 = load %struct.bgx*, %struct.bgx** %4, align 8
  %140 = load i32, i32* %5, align 4
  %141 = load i32, i32* @BGX_SPUX_INT, align 4
  %142 = call i32 @bgx_reg_read(%struct.bgx* %139, i32 %140, i32 %141)
  %143 = sext i32 %142 to i64
  store i64 %143, i64* %7, align 8
  %144 = load i64, i64* %7, align 8
  %145 = and i64 %144, 8192
  %146 = icmp eq i64 %145, 0
  br i1 %146, label %147, label %166

147:                                              ; preds = %138
  store i64 24576, i64* %7, align 8
  %148 = load %struct.bgx*, %struct.bgx** %4, align 8
  %149 = load i32, i32* %5, align 4
  %150 = load i32, i32* @BGX_SPUX_INT, align 4
  %151 = load i64, i64* %7, align 8
  %152 = call i32 @bgx_reg_write(%struct.bgx* %148, i32 %149, i32 %150, i64 %151)
  %153 = load %struct.bgx*, %struct.bgx** %4, align 8
  %154 = load i32, i32* %5, align 4
  %155 = load i32, i32* @BGX_SPUX_BR_PMD_CRTL, align 4
  %156 = call i32 @bgx_reg_read(%struct.bgx* %153, i32 %154, i32 %155)
  %157 = sext i32 %156 to i64
  store i64 %157, i64* %7, align 8
  %158 = load i64, i64* %7, align 8
  %159 = or i64 %158, 1
  store i64 %159, i64* %7, align 8
  %160 = load %struct.bgx*, %struct.bgx** %4, align 8
  %161 = load i32, i32* %5, align 4
  %162 = load i32, i32* @BGX_SPUX_BR_PMD_CRTL, align 4
  %163 = load i64, i64* %7, align 8
  %164 = call i32 @bgx_reg_write(%struct.bgx* %160, i32 %161, i32 %162, i64 %163)
  %165 = load i32, i32* @ENXIO, align 4
  store i32 %165, i32* %2, align 4
  br label %259

166:                                              ; preds = %138
  br label %167

167:                                              ; preds = %166, %129
  %168 = load i32, i32* @ENXIO, align 4
  store i32 %168, i32* %2, align 4
  br label %259

169:                                              ; preds = %116
  %170 = load %struct.bgx*, %struct.bgx** %4, align 8
  %171 = load i32, i32* %5, align 4
  %172 = load i32, i32* @BGX_SMUX_RX_CTL, align 4
  %173 = load i32, i32* @SMU_RX_CTL_STATUS, align 4
  %174 = load i32, i32* @TRUE, align 4
  %175 = call i64 @bgx_poll_reg(%struct.bgx* %170, i32 %171, i32 %172, i32 %173, i32 %174)
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %183

177:                                              ; preds = %169
  %178 = load %struct.bgx*, %struct.bgx** %4, align 8
  %179 = getelementptr inbounds %struct.bgx, %struct.bgx* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = call i32 @device_printf(i32 %180, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  %182 = load i32, i32* @ENXIO, align 4
  store i32 %182, i32* %2, align 4
  br label %259

183:                                              ; preds = %169
  %184 = load %struct.bgx*, %struct.bgx** %4, align 8
  %185 = load i32, i32* %5, align 4
  %186 = load i32, i32* @BGX_SMUX_CTL, align 4
  %187 = load i32, i32* @SMU_CTL_RX_IDLE, align 4
  %188 = load i32, i32* @FALSE, align 4
  %189 = call i64 @bgx_poll_reg(%struct.bgx* %184, i32 %185, i32 %186, i32 %187, i32 %188)
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %197

191:                                              ; preds = %183
  %192 = load %struct.bgx*, %struct.bgx** %4, align 8
  %193 = getelementptr inbounds %struct.bgx, %struct.bgx* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 4
  %195 = call i32 @device_printf(i32 %194, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0))
  %196 = load i32, i32* @ENXIO, align 4
  store i32 %196, i32* %2, align 4
  br label %259

197:                                              ; preds = %183
  %198 = load %struct.bgx*, %struct.bgx** %4, align 8
  %199 = load i32, i32* %5, align 4
  %200 = load i32, i32* @BGX_SMUX_CTL, align 4
  %201 = load i32, i32* @SMU_CTL_TX_IDLE, align 4
  %202 = load i32, i32* @FALSE, align 4
  %203 = call i64 @bgx_poll_reg(%struct.bgx* %198, i32 %199, i32 %200, i32 %201, i32 %202)
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %211

205:                                              ; preds = %197
  %206 = load %struct.bgx*, %struct.bgx** %4, align 8
  %207 = getelementptr inbounds %struct.bgx, %struct.bgx* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 4
  %209 = call i32 @device_printf(i32 %208, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0))
  %210 = load i32, i32* @ENXIO, align 4
  store i32 %210, i32* %2, align 4
  br label %259

211:                                              ; preds = %197
  %212 = load %struct.bgx*, %struct.bgx** %4, align 8
  %213 = load i32, i32* %5, align 4
  %214 = load i32, i32* @BGX_SPUX_STATUS2, align 4
  %215 = call i32 @bgx_reg_read(%struct.bgx* %212, i32 %213, i32 %214)
  %216 = load i32, i32* @SPU_STATUS2_RCVFLT, align 4
  %217 = and i32 %215, %216
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %225

219:                                              ; preds = %211
  %220 = load %struct.bgx*, %struct.bgx** %4, align 8
  %221 = getelementptr inbounds %struct.bgx, %struct.bgx* %220, i32 0, i32 1
  %222 = load i32, i32* %221, align 4
  %223 = call i32 @device_printf(i32 %222, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0))
  %224 = load i32, i32* @ENXIO, align 4
  store i32 %224, i32* %2, align 4
  br label %259

225:                                              ; preds = %211
  %226 = load %struct.bgx*, %struct.bgx** %4, align 8
  %227 = load i32, i32* %5, align 4
  %228 = load i32, i32* @BGX_SPUX_STATUS1, align 4
  %229 = load i32, i32* @SPU_STATUS1_RCV_LNK, align 4
  %230 = call i32 @bgx_reg_modify(%struct.bgx* %226, i32 %227, i32 %228, i32 %229)
  %231 = load %struct.bgx*, %struct.bgx** %4, align 8
  %232 = load i32, i32* %5, align 4
  %233 = load i32, i32* @BGX_SPUX_STATUS1, align 4
  %234 = load i32, i32* @SPU_STATUS1_RCV_LNK, align 4
  %235 = load i32, i32* @FALSE, align 4
  %236 = call i64 @bgx_poll_reg(%struct.bgx* %231, i32 %232, i32 %233, i32 %234, i32 %235)
  %237 = icmp ne i64 %236, 0
  br i1 %237, label %238, label %244

238:                                              ; preds = %225
  %239 = load %struct.bgx*, %struct.bgx** %4, align 8
  %240 = getelementptr inbounds %struct.bgx, %struct.bgx* %239, i32 0, i32 1
  %241 = load i32, i32* %240, align 4
  %242 = call i32 @device_printf(i32 %241, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0))
  %243 = load i32, i32* @ENXIO, align 4
  store i32 %243, i32* %2, align 4
  br label %259

244:                                              ; preds = %225
  %245 = load %struct.bgx*, %struct.bgx** %4, align 8
  %246 = load i32, i32* %5, align 4
  %247 = load i32, i32* @BGX_SPUX_MISC_CONTROL, align 4
  %248 = call i32 @bgx_reg_read(%struct.bgx* %245, i32 %246, i32 %247)
  %249 = sext i32 %248 to i64
  store i64 %249, i64* %7, align 8
  %250 = load i64, i64* @SPU_MISC_CTL_RX_DIS, align 8
  %251 = xor i64 %250, -1
  %252 = load i64, i64* %7, align 8
  %253 = and i64 %252, %251
  store i64 %253, i64* %7, align 8
  %254 = load %struct.bgx*, %struct.bgx** %4, align 8
  %255 = load i32, i32* %5, align 4
  %256 = load i32, i32* @BGX_SPUX_MISC_CONTROL, align 4
  %257 = load i64, i64* %7, align 8
  %258 = call i32 @bgx_reg_write(%struct.bgx* %254, i32 %255, i32 %256, i64 %257)
  store i32 0, i32* %2, align 4
  br label %259

259:                                              ; preds = %244, %238, %219, %205, %191, %177, %167, %147, %109, %94, %64, %36
  %260 = load i32, i32* %2, align 4
  ret i32 %260
}

declare dso_local i32 @bgx_reg_modify(%struct.bgx*, i32, i32, i32) #1

declare dso_local i32 @bgx_reg_read(%struct.bgx*, i32, i32) #1

declare dso_local i32 @bgx_reg_write(%struct.bgx*, i32, i32, i64) #1

declare dso_local i64 @bgx_poll_reg(%struct.bgx*, i32, i32, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
