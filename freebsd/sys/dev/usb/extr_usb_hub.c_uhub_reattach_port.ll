; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_hub.c_uhub_reattach_port.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_hub.c_uhub_reattach_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uhub_softc = type { i64, %struct.usb_device*, %struct.TYPE_8__, i32 }
%struct.usb_device = type { i32, i32, i32, %struct.TYPE_7__*, %struct.TYPE_5__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32 }

@.str = private unnamed_addr constant [21 x i8] c"reattaching port %d\0A\00", align 1
@UHF_C_PORT_CONNECTION = common dso_local global i32 0, align 4
@UPS_CURRENT_CONNECT_STATUS = common dso_local global i32 0, align 4
@UPS_PORT_POWER = common dso_local global i32 0, align 4
@UPS_PORT_POWER_SS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"WARNING: strange, connected port %d has no power\0A\00", align 1
@UPS_PORT_MODE_DEVICE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"Port %d is in Host Mode\0A\00", align 1
@UPS_SUSPEND = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [40 x i8] c"Port %d was still suspended, clearing.\0A\00", align 1
@UHF_PORT_SUSPEND = common dso_local global i32 0, align 4
@usb_port_powerup_delay = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [32 x i8] c"port %d reset failed, error=%s\0A\00", align 1
@UPS_C_CONNECT_STATUS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [40 x i8] c"giving up port reset - device vanished\0A\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"Port %d is in Device Mode\0A\00", align 1
@UPS_OTHER_SPEED = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [37 x i8] c"port %d U1 timeout failed, error=%s\0A\00", align 1
@.str.8 = private unnamed_addr constant [37 x i8] c"port %d U2 timeout failed, error=%s\0A\00", align 1
@USB_MODE_DEVICE = common dso_local global i32 0, align 4
@USB_MODE_HOST = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [31 x i8] c"could not allocate new device\0A\00", align 1
@UPS_PORT_ENABLED = common dso_local global i32 0, align 4
@UHF_PORT_ENABLE = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [40 x i8] c"device problem (%s), disabling port %d\0A\00", align 1
@usb_disable_enumeration = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.uhub_softc*, i32)* @uhub_reattach_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @uhub_reattach_port(%struct.uhub_softc* %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.uhub_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.usb_device*, align 8
  %7 = alloca %struct.usb_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.uhub_softc* %0, %struct.uhub_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %13)
  store i32 0, i32* %12, align 4
  %15 = load %struct.uhub_softc*, %struct.uhub_softc** %4, align 8
  %16 = getelementptr inbounds %struct.uhub_softc, %struct.uhub_softc* %15, i32 0, i32 1
  %17 = load %struct.usb_device*, %struct.usb_device** %16, align 8
  store %struct.usb_device* %17, %struct.usb_device** %7, align 8
  %18 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %19 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %22 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %21, i32 0, i32 4
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %5, align 4
  %27 = add nsw i32 %25, %26
  %28 = sub nsw i32 %27, 1
  %29 = call %struct.usb_device* @usb_bus_port_get_device(i32 %20, i32 %28)
  store %struct.usb_device* %29, %struct.usb_device** %6, align 8
  br label %30

30:                                               ; preds = %155, %2
  %31 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @UHF_C_PORT_CONNECTION, align 4
  %34 = call i64 @usbd_req_clear_port_feature(%struct.usb_device* %31, i32* null, i32 %32, i32 %33)
  store i64 %34, i64* %10, align 8
  %35 = load i64, i64* %10, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %30
  br label %301

38:                                               ; preds = %30
  %39 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %40 = icmp ne %struct.usb_device* %39, null
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %43 = call i32 @usb_free_device(%struct.usb_device* %42, i32 0)
  store %struct.usb_device* null, %struct.usb_device** %6, align 8
  br label %44

44:                                               ; preds = %41, %38
  %45 = load %struct.uhub_softc*, %struct.uhub_softc** %4, align 8
  %46 = load i32, i32* %5, align 4
  %47 = call i64 @uhub_read_port_status(%struct.uhub_softc* %45, i32 %46)
  store i64 %47, i64* %10, align 8
  %48 = load i64, i64* %10, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %44
  br label %301

51:                                               ; preds = %44
  %52 = load %struct.uhub_softc*, %struct.uhub_softc** %4, align 8
  %53 = getelementptr inbounds %struct.uhub_softc, %struct.uhub_softc* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @UPS_CURRENT_CONNECT_STATUS, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %51
  br label %301

60:                                               ; preds = %51
  %61 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %62 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  switch i32 %63, label %76 [
    i32 130, label %64
    i32 131, label %64
    i32 129, label %64
    i32 128, label %66
  ]

64:                                               ; preds = %60, %60, %60
  %65 = load i32, i32* @UPS_PORT_POWER, align 4
  store i32 %65, i32* %11, align 4
  br label %77

66:                                               ; preds = %60
  %67 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %68 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %67, i32 0, i32 3
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %68, align 8
  %70 = icmp eq %struct.TYPE_7__* %69, null
  br i1 %70, label %71, label %73

71:                                               ; preds = %66
  %72 = load i32, i32* @UPS_PORT_POWER, align 4
  store i32 %72, i32* %11, align 4
  br label %75

73:                                               ; preds = %66
  %74 = load i32, i32* @UPS_PORT_POWER_SS, align 4
  store i32 %74, i32* %11, align 4
  br label %75

75:                                               ; preds = %73, %71
  br label %77

76:                                               ; preds = %60
  store i32 0, i32* %11, align 4
  br label %77

77:                                               ; preds = %76, %75, %64
  %78 = load %struct.uhub_softc*, %struct.uhub_softc** %4, align 8
  %79 = getelementptr inbounds %struct.uhub_softc, %struct.uhub_softc* %78, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* %11, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %88, label %85

85:                                               ; preds = %77
  %86 = load i32, i32* %5, align 4
  %87 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 %86)
  br label %88

88:                                               ; preds = %85, %77
  %89 = load %struct.uhub_softc*, %struct.uhub_softc** %4, align 8
  %90 = getelementptr inbounds %struct.uhub_softc, %struct.uhub_softc* %89, i32 0, i32 2
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* @UPS_PORT_MODE_DEVICE, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %157, label %96

96:                                               ; preds = %88
  %97 = load i32, i32* %5, align 4
  %98 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %97)
  %99 = load %struct.uhub_softc*, %struct.uhub_softc** %4, align 8
  %100 = getelementptr inbounds %struct.uhub_softc, %struct.uhub_softc* %99, i32 0, i32 2
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* @UPS_SUSPEND, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %113

106:                                              ; preds = %96
  %107 = load i32, i32* %5, align 4
  %108 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i32 %107)
  %109 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %110 = load i32, i32* %5, align 4
  %111 = load i32, i32* @UHF_PORT_SUSPEND, align 4
  %112 = call i64 @usbd_req_clear_port_feature(%struct.usb_device* %109, i32* null, i32 %110, i32 %111)
  store i64 %112, i64* %10, align 8
  br label %113

113:                                              ; preds = %106, %96
  %114 = load i32, i32* @usb_port_powerup_delay, align 4
  %115 = call i32 @USB_MS_TO_TICKS(i32 %114)
  %116 = call i32 @usb_pause_mtx(i32* null, i32 %115)
  %117 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %118 = load i32, i32* %5, align 4
  %119 = call i64 @usbd_req_reset_port(%struct.usb_device* %117, i32* null, i32 %118)
  store i64 %119, i64* %10, align 8
  %120 = load i64, i64* %10, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %127

122:                                              ; preds = %113
  %123 = load i32, i32* %5, align 4
  %124 = load i64, i64* %10, align 8
  %125 = call i32 @usbd_errstr(i64 %124)
  %126 = call i32 (i32, i8*, ...) @DPRINTFN(i32 0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i32 %123, i32 %125)
  br label %301

127:                                              ; preds = %113
  %128 = load %struct.uhub_softc*, %struct.uhub_softc** %4, align 8
  %129 = load i32, i32* %5, align 4
  %130 = call i64 @uhub_read_port_status(%struct.uhub_softc* %128, i32 %129)
  store i64 %130, i64* %10, align 8
  %131 = load i64, i64* %10, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %127
  br label %301

134:                                              ; preds = %127
  %135 = load %struct.uhub_softc*, %struct.uhub_softc** %4, align 8
  %136 = getelementptr inbounds %struct.uhub_softc, %struct.uhub_softc* %135, i32 0, i32 2
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* @UPS_C_CONNECT_STATUS, align 4
  %140 = and i32 %138, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %150, label %142

142:                                              ; preds = %134
  %143 = load %struct.uhub_softc*, %struct.uhub_softc** %4, align 8
  %144 = getelementptr inbounds %struct.uhub_softc, %struct.uhub_softc* %143, i32 0, i32 2
  %145 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = load i32, i32* @UPS_CURRENT_CONNECT_STATUS, align 4
  %148 = and i32 %146, %147
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %156, label %150

150:                                              ; preds = %142, %134
  %151 = load i32, i32* %12, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %155

153:                                              ; preds = %150
  %154 = call i32 (i32, i8*, ...) @DPRINTFN(i32 0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0))
  br label %301

155:                                              ; preds = %150
  store i32 1, i32* %12, align 4
  br label %30

156:                                              ; preds = %142
  br label %160

157:                                              ; preds = %88
  %158 = load i32, i32* %5, align 4
  %159 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), i32 %158)
  br label %160

160:                                              ; preds = %157, %156
  %161 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %162 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  switch i32 %163, label %213 [
    i32 130, label %164
    i32 131, label %183
    i32 129, label %193
    i32 128, label %194
  ]

164:                                              ; preds = %160
  %165 = load %struct.uhub_softc*, %struct.uhub_softc** %4, align 8
  %166 = getelementptr inbounds %struct.uhub_softc, %struct.uhub_softc* %165, i32 0, i32 2
  %167 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = and i32 %168, 133
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %172

171:                                              ; preds = %164
  store i32 130, i32* %8, align 4
  br label %182

172:                                              ; preds = %164
  %173 = load %struct.uhub_softc*, %struct.uhub_softc** %4, align 8
  %174 = getelementptr inbounds %struct.uhub_softc, %struct.uhub_softc* %173, i32 0, i32 2
  %175 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = and i32 %176, 132
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %180

179:                                              ; preds = %172
  store i32 129, i32* %8, align 4
  br label %181

180:                                              ; preds = %172
  store i32 131, i32* %8, align 4
  br label %181

181:                                              ; preds = %180, %179
  br label %182

182:                                              ; preds = %181, %171
  br label %217

183:                                              ; preds = %160
  %184 = load %struct.uhub_softc*, %struct.uhub_softc** %4, align 8
  %185 = getelementptr inbounds %struct.uhub_softc, %struct.uhub_softc* %184, i32 0, i32 2
  %186 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = and i32 %187, 132
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %191

190:                                              ; preds = %183
  store i32 129, i32* %8, align 4
  br label %192

191:                                              ; preds = %183
  store i32 131, i32* %8, align 4
  br label %192

192:                                              ; preds = %191, %190
  br label %217

193:                                              ; preds = %160
  store i32 129, i32* %8, align 4
  br label %217

194:                                              ; preds = %160
  %195 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %196 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %195, i32 0, i32 3
  %197 = load %struct.TYPE_7__*, %struct.TYPE_7__** %196, align 8
  %198 = icmp eq %struct.TYPE_7__* %197, null
  br i1 %198, label %199, label %211

199:                                              ; preds = %194
  %200 = load %struct.uhub_softc*, %struct.uhub_softc** %4, align 8
  %201 = getelementptr inbounds %struct.uhub_softc, %struct.uhub_softc* %200, i32 0, i32 2
  %202 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 8
  %204 = load i32, i32* @UPS_OTHER_SPEED, align 4
  %205 = and i32 %203, %204
  switch i32 %205, label %209 [
    i32 0, label %206
    i32 132, label %207
    i32 133, label %208
  ]

206:                                              ; preds = %199
  store i32 131, i32* %8, align 4
  br label %210

207:                                              ; preds = %199
  store i32 129, i32* %8, align 4
  br label %210

208:                                              ; preds = %199
  store i32 130, i32* %8, align 4
  br label %210

209:                                              ; preds = %199
  store i32 128, i32* %8, align 4
  br label %210

210:                                              ; preds = %209, %208, %207, %206
  br label %212

211:                                              ; preds = %194
  store i32 128, i32* %8, align 4
  br label %212

212:                                              ; preds = %211, %210
  br label %217

213:                                              ; preds = %160
  %214 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %215 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 8
  store i32 %216, i32* %8, align 4
  br label %217

217:                                              ; preds = %213, %212, %193, %192, %182
  %218 = load i32, i32* %8, align 4
  %219 = icmp eq i32 %218, 128
  br i1 %219, label %220, label %253

220:                                              ; preds = %217
  %221 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %222 = load i32, i32* %5, align 4
  %223 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %224 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %223, i32 0, i32 1
  %225 = load i32, i32* %224, align 4
  %226 = mul nsw i32 2, %225
  %227 = sub nsw i32 128, %226
  %228 = call i64 @usbd_req_set_hub_u1_timeout(%struct.usb_device* %221, i32* null, i32 %222, i32 %227)
  store i64 %228, i64* %10, align 8
  %229 = load i64, i64* %10, align 8
  %230 = icmp ne i64 %229, 0
  br i1 %230, label %231, label %236

231:                                              ; preds = %220
  %232 = load i32, i32* %5, align 4
  %233 = load i64, i64* %10, align 8
  %234 = call i32 @usbd_errstr(i64 %233)
  %235 = call i32 (i32, i8*, ...) @DPRINTFN(i32 0, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i64 0, i64 0), i32 %232, i32 %234)
  br label %236

236:                                              ; preds = %231, %220
  %237 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %238 = load i32, i32* %5, align 4
  %239 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %240 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %239, i32 0, i32 1
  %241 = load i32, i32* %240, align 4
  %242 = mul nsw i32 2, %241
  %243 = sub nsw i32 128, %242
  %244 = call i64 @usbd_req_set_hub_u2_timeout(%struct.usb_device* %237, i32* null, i32 %238, i32 %243)
  store i64 %244, i64* %10, align 8
  %245 = load i64, i64* %10, align 8
  %246 = icmp ne i64 %245, 0
  br i1 %246, label %247, label %252

247:                                              ; preds = %236
  %248 = load i32, i32* %5, align 4
  %249 = load i64, i64* %10, align 8
  %250 = call i32 @usbd_errstr(i64 %249)
  %251 = call i32 (i32, i8*, ...) @DPRINTFN(i32 0, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.8, i64 0, i64 0), i32 %248, i32 %250)
  br label %252

252:                                              ; preds = %247, %236
  br label %253

253:                                              ; preds = %252, %217
  %254 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %255 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %254, i32 0, i32 3
  %256 = load %struct.TYPE_7__*, %struct.TYPE_7__** %255, align 8
  %257 = icmp ne %struct.TYPE_7__* %256, null
  br i1 %257, label %258, label %265

258:                                              ; preds = %253
  %259 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %260 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %259, i32 0, i32 3
  %261 = load %struct.TYPE_7__*, %struct.TYPE_7__** %260, align 8
  %262 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %261, i32 0, i32 0
  %263 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %262, i32 0, i32 0
  %264 = load i32, i32* %263, align 4
  store i32 %264, i32* %9, align 4
  br label %278

265:                                              ; preds = %253
  %266 = load %struct.uhub_softc*, %struct.uhub_softc** %4, align 8
  %267 = getelementptr inbounds %struct.uhub_softc, %struct.uhub_softc* %266, i32 0, i32 2
  %268 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 8
  %270 = load i32, i32* @UPS_PORT_MODE_DEVICE, align 4
  %271 = and i32 %269, %270
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %273, label %275

273:                                              ; preds = %265
  %274 = load i32, i32* @USB_MODE_DEVICE, align 4
  store i32 %274, i32* %9, align 4
  br label %277

275:                                              ; preds = %265
  %276 = load i32, i32* @USB_MODE_HOST, align 4
  store i32 %276, i32* %9, align 4
  br label %277

277:                                              ; preds = %275, %273
  br label %278

278:                                              ; preds = %277, %258
  %279 = load %struct.uhub_softc*, %struct.uhub_softc** %4, align 8
  %280 = getelementptr inbounds %struct.uhub_softc, %struct.uhub_softc* %279, i32 0, i32 3
  %281 = load i32, i32* %280, align 8
  %282 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %283 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %282, i32 0, i32 2
  %284 = load i32, i32* %283, align 8
  %285 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %286 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %287 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %286, i32 0, i32 1
  %288 = load i32, i32* %287, align 4
  %289 = add nsw i32 %288, 1
  %290 = load i32, i32* %5, align 4
  %291 = sub nsw i32 %290, 1
  %292 = load i32, i32* %5, align 4
  %293 = load i32, i32* %8, align 4
  %294 = load i32, i32* %9, align 4
  %295 = call %struct.usb_device* @usb_alloc_device(i32 %281, i32 %284, %struct.usb_device* %285, i32 %289, i32 %291, i32 %292, i32 %293, i32 %294)
  store %struct.usb_device* %295, %struct.usb_device** %6, align 8
  %296 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %297 = icmp eq %struct.usb_device* %296, null
  br i1 %297, label %298, label %300

298:                                              ; preds = %278
  %299 = call i32 (i32, i8*, ...) @DPRINTFN(i32 0, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i64 0, i64 0))
  br label %301

300:                                              ; preds = %278
  store i64 0, i64* %3, align 8
  br label %336

301:                                              ; preds = %298, %153, %133, %122, %59, %50, %37
  %302 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %303 = icmp ne %struct.usb_device* %302, null
  br i1 %303, label %304, label %307

304:                                              ; preds = %301
  %305 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %306 = call i32 @usb_free_device(%struct.usb_device* %305, i32 0)
  store %struct.usb_device* null, %struct.usb_device** %6, align 8
  br label %307

307:                                              ; preds = %304, %301
  %308 = load i64, i64* %10, align 8
  %309 = icmp eq i64 %308, 0
  br i1 %309, label %310, label %326

310:                                              ; preds = %307
  %311 = load %struct.uhub_softc*, %struct.uhub_softc** %4, align 8
  %312 = getelementptr inbounds %struct.uhub_softc, %struct.uhub_softc* %311, i32 0, i32 2
  %313 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %312, i32 0, i32 0
  %314 = load i32, i32* %313, align 8
  %315 = load i32, i32* @UPS_PORT_ENABLED, align 4
  %316 = and i32 %314, %315
  %317 = icmp ne i32 %316, 0
  br i1 %317, label %318, label %325

318:                                              ; preds = %310
  %319 = load %struct.uhub_softc*, %struct.uhub_softc** %4, align 8
  %320 = getelementptr inbounds %struct.uhub_softc, %struct.uhub_softc* %319, i32 0, i32 1
  %321 = load %struct.usb_device*, %struct.usb_device** %320, align 8
  %322 = load i32, i32* %5, align 4
  %323 = load i32, i32* @UHF_PORT_ENABLE, align 4
  %324 = call i64 @usbd_req_clear_port_feature(%struct.usb_device* %321, i32* null, i32 %322, i32 %323)
  store i64 %324, i64* %10, align 8
  br label %325

325:                                              ; preds = %318, %310
  br label %326

326:                                              ; preds = %325, %307
  %327 = load i64, i64* %10, align 8
  %328 = icmp ne i64 %327, 0
  br i1 %328, label %329, label %334

329:                                              ; preds = %326
  %330 = load i64, i64* %10, align 8
  %331 = call i32 @usbd_errstr(i64 %330)
  %332 = load i32, i32* %5, align 4
  %333 = call i32 (i32, i8*, ...) @DPRINTFN(i32 0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.10, i64 0, i64 0), i32 %331, i32 %332)
  br label %334

334:                                              ; preds = %329, %326
  %335 = load i64, i64* %10, align 8
  store i64 %335, i64* %3, align 8
  br label %336

336:                                              ; preds = %334, %300
  %337 = load i64, i64* %3, align 8
  ret i64 %337
}

declare dso_local i32 @DPRINTF(i8*, ...) #1

declare dso_local %struct.usb_device* @usb_bus_port_get_device(i32, i32) #1

declare dso_local i64 @usbd_req_clear_port_feature(%struct.usb_device*, i32*, i32, i32) #1

declare dso_local i32 @usb_free_device(%struct.usb_device*, i32) #1

declare dso_local i64 @uhub_read_port_status(%struct.uhub_softc*, i32) #1

declare dso_local i32 @usb_pause_mtx(i32*, i32) #1

declare dso_local i32 @USB_MS_TO_TICKS(i32) #1

declare dso_local i64 @usbd_req_reset_port(%struct.usb_device*, i32*, i32) #1

declare dso_local i32 @DPRINTFN(i32, i8*, ...) #1

declare dso_local i32 @usbd_errstr(i64) #1

declare dso_local i64 @usbd_req_set_hub_u1_timeout(%struct.usb_device*, i32*, i32, i32) #1

declare dso_local i64 @usbd_req_set_hub_u2_timeout(%struct.usb_device*, i32*, i32, i32) #1

declare dso_local %struct.usb_device* @usb_alloc_device(i32, i32, %struct.usb_device*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
