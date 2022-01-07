; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_axe.c_axe_ax88178_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_axe.c_axe_ax88178_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.axe_softc = type { i32, %struct.usb_ether }
%struct.usb_ether = type { i32 }

@AXE_CMD_SROM_WR_ENABLE = common dso_local global i32 0, align 4
@AXE_CMD_SROM_READ = common dso_local global i32 0, align 4
@AXE_CMD_SROM_WR_DISABLE = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [40 x i8] c"EEPROM data : 0x%04x, phymode : 0x%02x\0A\00", align 1
@AXE_GPIO_RELOAD_EEPROM = common dso_local global i32 0, align 4
@AXE_GPIO0_EN = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@AXE_GPIO2 = common dso_local global i32 0, align 4
@AXE_GPIO2_EN = common dso_local global i32 0, align 4
@AXE_GPIO1 = common dso_local global i32 0, align 4
@AXE_GPIO1_EN = common dso_local global i32 0, align 4
@AXE_GPIO0 = common dso_local global i32 0, align 4
@AXE_CMD_SW_RESET_REG = common dso_local global i32 0, align 4
@AXE_SW_RESET_CLEAR = common dso_local global i32 0, align 4
@AXE_SW_RESET_PRL = common dso_local global i32 0, align 4
@AXE_178_RESET_MAGIC = common dso_local global i32 0, align 4
@AXE_CMD_SW_PHY_SELECT = common dso_local global i32 0, align 4
@AXE_CMD_RXCTL_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.axe_softc*)* @axe_ax88178_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @axe_ax88178_init(%struct.axe_softc* %0) #0 {
  %2 = alloca %struct.axe_softc*, align 8
  %3 = alloca %struct.usb_ether*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.axe_softc* %0, %struct.axe_softc** %2, align 8
  %9 = load %struct.axe_softc*, %struct.axe_softc** %2, align 8
  %10 = getelementptr inbounds %struct.axe_softc, %struct.axe_softc* %9, i32 0, i32 1
  store %struct.usb_ether* %10, %struct.usb_ether** %3, align 8
  %11 = load %struct.axe_softc*, %struct.axe_softc** %2, align 8
  %12 = load i32, i32* @AXE_CMD_SROM_WR_ENABLE, align 4
  %13 = call i32 @axe_cmd(%struct.axe_softc* %11, i32 %12, i32 0, i32 0, i32* null)
  %14 = load %struct.axe_softc*, %struct.axe_softc** %2, align 8
  %15 = load i32, i32* @AXE_CMD_SROM_READ, align 4
  %16 = call i32 @axe_cmd(%struct.axe_softc* %14, i32 %15, i32 0, i32 23, i32* %7)
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @le16toh(i32 %17)
  store i32 %18, i32* %7, align 4
  %19 = load %struct.axe_softc*, %struct.axe_softc** %2, align 8
  %20 = load i32, i32* @AXE_CMD_SROM_WR_DISABLE, align 4
  %21 = call i32 @axe_cmd(%struct.axe_softc* %19, i32 %20, i32 0, i32 0, i32* null)
  %22 = load i32, i32* %7, align 4
  %23 = icmp eq i32 %22, 65535
  br i1 %23, label %24, label %25

24:                                               ; preds = %1
  store i32 131, i32* %6, align 4
  store i32 1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %35

25:                                               ; preds = %1
  %26 = load i32, i32* %7, align 4
  %27 = and i32 %26, 127
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %7, align 4
  %29 = and i32 %28, 128
  %30 = icmp ne i32 %29, 0
  %31 = zext i1 %30 to i64
  %32 = select i1 %30, i32 0, i32 1
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* %7, align 4
  %34 = ashr i32 %33, 8
  store i32 %34, i32* %5, align 4
  br label %35

35:                                               ; preds = %25, %24
  %36 = load i64, i64* @bootverbose, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %35
  %39 = load %struct.axe_softc*, %struct.axe_softc** %2, align 8
  %40 = getelementptr inbounds %struct.axe_softc, %struct.axe_softc* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.usb_ether, %struct.usb_ether* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @device_printf(i32 %42, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %43, i32 %44)
  br label %46

46:                                               ; preds = %38, %35
  %47 = load i32, i32* %6, align 4
  switch i32 %47, label %272 [
    i32 131, label %48
    i32 134, label %133
    i32 133, label %133
    i32 132, label %133
    i32 135, label %155
    i32 129, label %192
    i32 130, label %192
    i32 128, label %192
  ]

48:                                               ; preds = %46
  %49 = load i32, i32* %4, align 4
  %50 = icmp eq i32 %49, 1
  br i1 %50, label %51, label %80

51:                                               ; preds = %48
  %52 = load i32, i32* @AXE_GPIO_RELOAD_EEPROM, align 4
  %53 = load i32, i32* @AXE_GPIO0_EN, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* @hz, align 4
  %56 = sdiv i32 %55, 32
  %57 = call i32 @AXE_GPIO_WRITE(i32 %54, i32 %56)
  %58 = load i32, i32* @AXE_GPIO0_EN, align 4
  %59 = load i32, i32* @AXE_GPIO2, align 4
  %60 = or i32 %58, %59
  %61 = load i32, i32* @AXE_GPIO2_EN, align 4
  %62 = or i32 %60, %61
  %63 = load i32, i32* @hz, align 4
  %64 = sdiv i32 %63, 32
  %65 = call i32 @AXE_GPIO_WRITE(i32 %62, i32 %64)
  %66 = load i32, i32* @AXE_GPIO0_EN, align 4
  %67 = load i32, i32* @AXE_GPIO2_EN, align 4
  %68 = or i32 %66, %67
  %69 = load i32, i32* @hz, align 4
  %70 = sdiv i32 %69, 4
  %71 = call i32 @AXE_GPIO_WRITE(i32 %68, i32 %70)
  %72 = load i32, i32* @AXE_GPIO0_EN, align 4
  %73 = load i32, i32* @AXE_GPIO2, align 4
  %74 = or i32 %72, %73
  %75 = load i32, i32* @AXE_GPIO2_EN, align 4
  %76 = or i32 %74, %75
  %77 = load i32, i32* @hz, align 4
  %78 = sdiv i32 %77, 32
  %79 = call i32 @AXE_GPIO_WRITE(i32 %76, i32 %78)
  br label %132

80:                                               ; preds = %48
  %81 = load i32, i32* @AXE_GPIO_RELOAD_EEPROM, align 4
  %82 = load i32, i32* @AXE_GPIO1, align 4
  %83 = or i32 %81, %82
  %84 = load i32, i32* @AXE_GPIO1_EN, align 4
  %85 = or i32 %83, %84
  %86 = load i32, i32* @hz, align 4
  %87 = sdiv i32 %86, 3
  %88 = call i32 @AXE_GPIO_WRITE(i32 %85, i32 %87)
  %89 = load i32, i32* %5, align 4
  %90 = icmp eq i32 %89, 1
  br i1 %90, label %91, label %102

91:                                               ; preds = %80
  %92 = load i32, i32* @AXE_GPIO1_EN, align 4
  %93 = load i32, i32* @hz, align 4
  %94 = sdiv i32 %93, 3
  %95 = call i32 @AXE_GPIO_WRITE(i32 %92, i32 %94)
  %96 = load i32, i32* @AXE_GPIO1, align 4
  %97 = load i32, i32* @AXE_GPIO1_EN, align 4
  %98 = or i32 %96, %97
  %99 = load i32, i32* @hz, align 4
  %100 = sdiv i32 %99, 3
  %101 = call i32 @AXE_GPIO_WRITE(i32 %98, i32 %100)
  br label %131

102:                                              ; preds = %80
  %103 = load i32, i32* @AXE_GPIO1, align 4
  %104 = load i32, i32* @AXE_GPIO1_EN, align 4
  %105 = or i32 %103, %104
  %106 = load i32, i32* @AXE_GPIO2, align 4
  %107 = or i32 %105, %106
  %108 = load i32, i32* @AXE_GPIO2_EN, align 4
  %109 = or i32 %107, %108
  %110 = load i32, i32* @hz, align 4
  %111 = sdiv i32 %110, 32
  %112 = call i32 @AXE_GPIO_WRITE(i32 %109, i32 %111)
  %113 = load i32, i32* @AXE_GPIO1, align 4
  %114 = load i32, i32* @AXE_GPIO1_EN, align 4
  %115 = or i32 %113, %114
  %116 = load i32, i32* @AXE_GPIO2_EN, align 4
  %117 = or i32 %115, %116
  %118 = load i32, i32* @hz, align 4
  %119 = sdiv i32 %118, 4
  %120 = call i32 @AXE_GPIO_WRITE(i32 %117, i32 %119)
  %121 = load i32, i32* @AXE_GPIO1, align 4
  %122 = load i32, i32* @AXE_GPIO1_EN, align 4
  %123 = or i32 %121, %122
  %124 = load i32, i32* @AXE_GPIO2, align 4
  %125 = or i32 %123, %124
  %126 = load i32, i32* @AXE_GPIO2_EN, align 4
  %127 = or i32 %125, %126
  %128 = load i32, i32* @hz, align 4
  %129 = sdiv i32 %128, 32
  %130 = call i32 @AXE_GPIO_WRITE(i32 %127, i32 %129)
  br label %131

131:                                              ; preds = %102, %91
  br label %132

132:                                              ; preds = %131, %51
  br label %273

133:                                              ; preds = %46, %46, %46
  %134 = load i32, i32* %4, align 4
  %135 = icmp eq i32 %134, 1
  br i1 %135, label %136, label %145

136:                                              ; preds = %133
  %137 = load i32, i32* @AXE_GPIO_RELOAD_EEPROM, align 4
  %138 = load i32, i32* @AXE_GPIO0, align 4
  %139 = or i32 %137, %138
  %140 = load i32, i32* @AXE_GPIO0_EN, align 4
  %141 = or i32 %139, %140
  %142 = load i32, i32* @hz, align 4
  %143 = sdiv i32 %142, 32
  %144 = call i32 @AXE_GPIO_WRITE(i32 %141, i32 %143)
  br label %154

145:                                              ; preds = %133
  %146 = load i32, i32* @AXE_GPIO_RELOAD_EEPROM, align 4
  %147 = load i32, i32* @AXE_GPIO1, align 4
  %148 = or i32 %146, %147
  %149 = load i32, i32* @AXE_GPIO1_EN, align 4
  %150 = or i32 %148, %149
  %151 = load i32, i32* @hz, align 4
  %152 = sdiv i32 %151, 32
  %153 = call i32 @AXE_GPIO_WRITE(i32 %150, i32 %152)
  br label %154

154:                                              ; preds = %145, %136
  br label %273

155:                                              ; preds = %46
  %156 = load i32, i32* @AXE_GPIO_RELOAD_EEPROM, align 4
  %157 = load i32, i32* @AXE_GPIO1, align 4
  %158 = or i32 %156, %157
  %159 = load i32, i32* @AXE_GPIO1_EN, align 4
  %160 = or i32 %158, %159
  %161 = load i32, i32* @hz, align 4
  %162 = sdiv i32 %161, 32
  %163 = call i32 @AXE_GPIO_WRITE(i32 %160, i32 %162)
  %164 = load i32, i32* @AXE_GPIO1, align 4
  %165 = load i32, i32* @AXE_GPIO1_EN, align 4
  %166 = or i32 %164, %165
  %167 = load i32, i32* @AXE_GPIO2, align 4
  %168 = or i32 %166, %167
  %169 = load i32, i32* @AXE_GPIO2_EN, align 4
  %170 = or i32 %168, %169
  %171 = load i32, i32* @hz, align 4
  %172 = sdiv i32 %171, 32
  %173 = call i32 @AXE_GPIO_WRITE(i32 %170, i32 %172)
  %174 = load i32, i32* @AXE_GPIO1, align 4
  %175 = load i32, i32* @AXE_GPIO1_EN, align 4
  %176 = or i32 %174, %175
  %177 = load i32, i32* @AXE_GPIO2_EN, align 4
  %178 = or i32 %176, %177
  %179 = load i32, i32* @hz, align 4
  %180 = sdiv i32 %179, 4
  %181 = call i32 @AXE_GPIO_WRITE(i32 %178, i32 %180)
  %182 = load i32, i32* @AXE_GPIO1, align 4
  %183 = load i32, i32* @AXE_GPIO1_EN, align 4
  %184 = or i32 %182, %183
  %185 = load i32, i32* @AXE_GPIO2, align 4
  %186 = or i32 %184, %185
  %187 = load i32, i32* @AXE_GPIO2_EN, align 4
  %188 = or i32 %186, %187
  %189 = load i32, i32* @hz, align 4
  %190 = sdiv i32 %189, 32
  %191 = call i32 @AXE_GPIO_WRITE(i32 %188, i32 %190)
  br label %273

192:                                              ; preds = %46, %46, %46
  %193 = load i32, i32* %4, align 4
  %194 = icmp eq i32 %193, 1
  br i1 %194, label %195, label %199

195:                                              ; preds = %192
  %196 = load i32, i32* @AXE_GPIO0, align 4
  %197 = load i32, i32* @AXE_GPIO0_EN, align 4
  %198 = or i32 %196, %197
  br label %203

199:                                              ; preds = %192
  %200 = load i32, i32* @AXE_GPIO1, align 4
  %201 = load i32, i32* @AXE_GPIO1_EN, align 4
  %202 = or i32 %200, %201
  br label %203

203:                                              ; preds = %199, %195
  %204 = phi i32 [ %198, %195 ], [ %202, %199 ]
  store i32 %204, i32* %8, align 4
  %205 = load i32, i32* %8, align 4
  %206 = load i32, i32* @hz, align 4
  %207 = sdiv i32 %206, 32
  %208 = call i32 @AXE_GPIO_WRITE(i32 %205, i32 %207)
  %209 = load i32, i32* %8, align 4
  %210 = load i32, i32* @AXE_GPIO2, align 4
  %211 = or i32 %209, %210
  %212 = load i32, i32* @AXE_GPIO2_EN, align 4
  %213 = or i32 %211, %212
  %214 = load i32, i32* @hz, align 4
  %215 = sdiv i32 %214, 32
  %216 = call i32 @AXE_GPIO_WRITE(i32 %213, i32 %215)
  %217 = load i32, i32* %8, align 4
  %218 = load i32, i32* @AXE_GPIO2_EN, align 4
  %219 = or i32 %217, %218
  %220 = load i32, i32* @hz, align 4
  %221 = sdiv i32 %220, 4
  %222 = call i32 @AXE_GPIO_WRITE(i32 %219, i32 %221)
  %223 = load i32, i32* %8, align 4
  %224 = load i32, i32* @AXE_GPIO2, align 4
  %225 = or i32 %223, %224
  %226 = load i32, i32* @AXE_GPIO2_EN, align 4
  %227 = or i32 %225, %226
  %228 = load i32, i32* @hz, align 4
  %229 = sdiv i32 %228, 32
  %230 = call i32 @AXE_GPIO_WRITE(i32 %227, i32 %229)
  %231 = load i32, i32* %6, align 4
  %232 = icmp eq i32 %231, 129
  br i1 %232, label %233, label %271

233:                                              ; preds = %203
  %234 = load %struct.usb_ether*, %struct.usb_ether** %3, align 8
  %235 = getelementptr inbounds %struct.usb_ether, %struct.usb_ether* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 4
  %237 = load %struct.axe_softc*, %struct.axe_softc** %2, align 8
  %238 = getelementptr inbounds %struct.axe_softc, %struct.axe_softc* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 4
  %240 = call i32 @axe_miibus_writereg(i32 %236, i32 %239, i32 31, i32 5)
  %241 = load %struct.usb_ether*, %struct.usb_ether** %3, align 8
  %242 = getelementptr inbounds %struct.usb_ether, %struct.usb_ether* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 4
  %244 = load %struct.axe_softc*, %struct.axe_softc** %2, align 8
  %245 = getelementptr inbounds %struct.axe_softc, %struct.axe_softc* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 4
  %247 = call i32 @axe_miibus_writereg(i32 %243, i32 %246, i32 12, i32 0)
  %248 = load %struct.usb_ether*, %struct.usb_ether** %3, align 8
  %249 = getelementptr inbounds %struct.usb_ether, %struct.usb_ether* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 4
  %251 = load %struct.axe_softc*, %struct.axe_softc** %2, align 8
  %252 = getelementptr inbounds %struct.axe_softc, %struct.axe_softc* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 4
  %254 = call i32 @axe_miibus_readreg(i32 %250, i32 %253, i32 1)
  store i32 %254, i32* %8, align 4
  %255 = load %struct.usb_ether*, %struct.usb_ether** %3, align 8
  %256 = getelementptr inbounds %struct.usb_ether, %struct.usb_ether* %255, i32 0, i32 0
  %257 = load i32, i32* %256, align 4
  %258 = load %struct.axe_softc*, %struct.axe_softc** %2, align 8
  %259 = getelementptr inbounds %struct.axe_softc, %struct.axe_softc* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 4
  %261 = load i32, i32* %8, align 4
  %262 = or i32 %261, 128
  %263 = call i32 @axe_miibus_writereg(i32 %257, i32 %260, i32 1, i32 %262)
  %264 = load %struct.usb_ether*, %struct.usb_ether** %3, align 8
  %265 = getelementptr inbounds %struct.usb_ether, %struct.usb_ether* %264, i32 0, i32 0
  %266 = load i32, i32* %265, align 4
  %267 = load %struct.axe_softc*, %struct.axe_softc** %2, align 8
  %268 = getelementptr inbounds %struct.axe_softc, %struct.axe_softc* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 4
  %270 = call i32 @axe_miibus_writereg(i32 %266, i32 %269, i32 31, i32 0)
  br label %271

271:                                              ; preds = %233, %203
  br label %273

272:                                              ; preds = %46
  br label %273

273:                                              ; preds = %272, %271, %155, %154, %132
  %274 = load %struct.axe_softc*, %struct.axe_softc** %2, align 8
  %275 = load i32, i32* @AXE_CMD_SW_RESET_REG, align 4
  %276 = load i32, i32* @AXE_SW_RESET_CLEAR, align 4
  %277 = call i32 @axe_cmd(%struct.axe_softc* %274, i32 %275, i32 0, i32 %276, i32* null)
  %278 = load %struct.usb_ether*, %struct.usb_ether** %3, align 8
  %279 = load i32, i32* @hz, align 4
  %280 = sdiv i32 %279, 4
  %281 = call i32 @uether_pause(%struct.usb_ether* %278, i32 %280)
  %282 = load %struct.axe_softc*, %struct.axe_softc** %2, align 8
  %283 = load i32, i32* @AXE_CMD_SW_RESET_REG, align 4
  %284 = load i32, i32* @AXE_SW_RESET_PRL, align 4
  %285 = load i32, i32* @AXE_178_RESET_MAGIC, align 4
  %286 = or i32 %284, %285
  %287 = call i32 @axe_cmd(%struct.axe_softc* %282, i32 %283, i32 0, i32 %286, i32* null)
  %288 = load %struct.usb_ether*, %struct.usb_ether** %3, align 8
  %289 = load i32, i32* @hz, align 4
  %290 = sdiv i32 %289, 4
  %291 = call i32 @uether_pause(%struct.usb_ether* %288, i32 %290)
  %292 = load %struct.axe_softc*, %struct.axe_softc** %2, align 8
  %293 = load i32, i32* @AXE_CMD_SW_PHY_SELECT, align 4
  %294 = call i32 @axe_cmd(%struct.axe_softc* %292, i32 %293, i32 0, i32 0, i32* null)
  %295 = load %struct.usb_ether*, %struct.usb_ether** %3, align 8
  %296 = load i32, i32* @hz, align 4
  %297 = sdiv i32 %296, 4
  %298 = call i32 @uether_pause(%struct.usb_ether* %295, i32 %297)
  %299 = load %struct.axe_softc*, %struct.axe_softc** %2, align 8
  %300 = load i32, i32* @AXE_CMD_RXCTL_WRITE, align 4
  %301 = call i32 @axe_cmd(%struct.axe_softc* %299, i32 %300, i32 0, i32 0, i32* null)
  ret void
}

declare dso_local i32 @axe_cmd(%struct.axe_softc*, i32, i32, i32, i32*) #1

declare dso_local i32 @le16toh(i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32, i32) #1

declare dso_local i32 @AXE_GPIO_WRITE(i32, i32) #1

declare dso_local i32 @axe_miibus_writereg(i32, i32, i32, i32) #1

declare dso_local i32 @axe_miibus_readreg(i32, i32, i32) #1

declare dso_local i32 @uether_pause(%struct.usb_ether*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
