; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_device.c_usb_config_parse.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_device.c_usb_config_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { i64, i64, %struct.usb_interface*, %struct.usb_interface*, i32, i32*, i32, i32 }
%struct.usb_interface = type { i64, i64, i64, i64, i64, %struct.usb_interface_descriptor* }
%struct.usb_interface_descriptor = type { i32 }
%struct.usb_idesc_parse_state = type { i64, i64, i64, i64, i64, %struct.usb_interface_descriptor* }
%struct.usb_endpoint_descriptor = type { i32 }
%struct.usb_endpoint = type { i64, i64, i64, i64, i64, %struct.usb_interface_descriptor* }

@USB_IFACE_INDEX_ANY = common dso_local global i64 0, align 8
@USB_CFG_INIT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"iface_index=%d cmd=%d\0A\00", align 1
@USB_CFG_FREE = common dso_local global i64 0, align 8
@SA_LOCKED = common dso_local global i32 0, align 4
@USB_ERR_IN_USE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"found idesc nendpt=%d\0A\00", align 1
@USB_MAX_EP_UNITS = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [24 x i8] c"Endpoint limit reached\0A\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"Found endpoint companion descriptor\0A\00", align 1
@USB_CFG_ALLOC = common dso_local global i64 0, align 8
@M_USB = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@USB_ERR_NOMEM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.usb_device*, i64, i64)* @usb_config_parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @usb_config_parse(%struct.usb_device* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.usb_device*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.usb_idesc_parse_state, align 8
  %9 = alloca %struct.usb_interface_descriptor*, align 8
  %10 = alloca %struct.usb_endpoint_descriptor*, align 8
  %11 = alloca %struct.usb_interface*, align 8
  %12 = alloca %struct.usb_endpoint*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i8*, align 8
  store %struct.usb_device* %0, %struct.usb_device** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %20 = load i64, i64* %6, align 8
  %21 = load i64, i64* @USB_IFACE_INDEX_ANY, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %3
  %24 = load i64, i64* %7, align 8
  store i64 %24, i64* %18, align 8
  %25 = load i64, i64* @USB_CFG_INIT, align 8
  store i64 %25, i64* %7, align 8
  br label %27

26:                                               ; preds = %3
  store i64 0, i64* %18, align 8
  br label %27

27:                                               ; preds = %26, %23
  store i64 0, i64* %13, align 8
  %28 = load i64, i64* %6, align 8
  %29 = load i64, i64* %7, align 8
  %30 = call i32 (i32, i8*, ...) @DPRINTFN(i32 5, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i64 %28, i64 %29)
  %31 = load i64, i64* %7, align 8
  %32 = load i64, i64* @USB_CFG_FREE, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %27
  br label %297

35:                                               ; preds = %27
  %36 = load i64, i64* %7, align 8
  %37 = load i64, i64* @USB_CFG_INIT, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %89

39:                                               ; preds = %35
  %40 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %41 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %40, i32 0, i32 7
  %42 = load i32, i32* @SA_LOCKED, align 4
  %43 = call i32 @sx_assert(i32* %41, i32 %42)
  %44 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %45 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %44, i32 0, i32 2
  %46 = load %struct.usb_interface*, %struct.usb_interface** %45, align 8
  %47 = bitcast %struct.usb_interface* %46 to %struct.usb_endpoint*
  store %struct.usb_endpoint* %47, %struct.usb_endpoint** %12, align 8
  %48 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %49 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  store i64 %50, i64* %15, align 8
  br label %51

51:                                               ; preds = %80, %39
  %52 = load i64, i64* %15, align 8
  %53 = add nsw i64 %52, -1
  store i64 %53, i64* %15, align 8
  %54 = icmp ne i64 %52, 0
  br i1 %54, label %55, label %83

55:                                               ; preds = %51
  %56 = load i64, i64* %6, align 8
  %57 = load i64, i64* @USB_IFACE_INDEX_ANY, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %65, label %59

59:                                               ; preds = %55
  %60 = load i64, i64* %6, align 8
  %61 = load %struct.usb_endpoint*, %struct.usb_endpoint** %12, align 8
  %62 = getelementptr inbounds %struct.usb_endpoint, %struct.usb_endpoint* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp eq i64 %60, %63
  br i1 %64, label %65, label %80

65:                                               ; preds = %59, %55
  %66 = load %struct.usb_endpoint*, %struct.usb_endpoint** %12, align 8
  %67 = getelementptr inbounds %struct.usb_endpoint, %struct.usb_endpoint* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %65
  %71 = load i64, i64* @USB_ERR_IN_USE, align 8
  store i64 %71, i64* %13, align 8
  br label %79

72:                                               ; preds = %65
  %73 = load %struct.usb_endpoint*, %struct.usb_endpoint** %12, align 8
  %74 = bitcast %struct.usb_endpoint* %73 to %struct.usb_interface*
  %75 = call i32 @memset(%struct.usb_interface* %74, i32 0, i32 48)
  %76 = load i64, i64* @USB_IFACE_INDEX_ANY, align 8
  %77 = load %struct.usb_endpoint*, %struct.usb_endpoint** %12, align 8
  %78 = getelementptr inbounds %struct.usb_endpoint, %struct.usb_endpoint* %77, i32 0, i32 0
  store i64 %76, i64* %78, align 8
  br label %79

79:                                               ; preds = %72, %70
  br label %80

80:                                               ; preds = %79, %59
  %81 = load %struct.usb_endpoint*, %struct.usb_endpoint** %12, align 8
  %82 = getelementptr inbounds %struct.usb_endpoint, %struct.usb_endpoint* %81, i32 1
  store %struct.usb_endpoint* %82, %struct.usb_endpoint** %12, align 8
  br label %51

83:                                               ; preds = %51
  %84 = load i64, i64* %13, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %83
  %87 = load i64, i64* %13, align 8
  store i64 %87, i64* %4, align 8
  br label %329

88:                                               ; preds = %83
  br label %89

89:                                               ; preds = %88, %35
  %90 = bitcast %struct.usb_idesc_parse_state* %8 to %struct.usb_interface*
  %91 = call i32 @memset(%struct.usb_interface* %90, i32 0, i32 48)
  store i64 0, i64* %14, align 8
  store i64 0, i64* %15, align 8
  br label %92

92:                                               ; preds = %212, %89
  %93 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %94 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %93, i32 0, i32 6
  %95 = load i32, i32* %94, align 8
  %96 = bitcast %struct.usb_idesc_parse_state* %8 to %struct.usb_interface*
  %97 = call %struct.usb_interface_descriptor* @usb_idesc_foreach(i32 %95, %struct.usb_interface* %96)
  store %struct.usb_interface_descriptor* %97, %struct.usb_interface_descriptor** %9, align 8
  %98 = icmp ne %struct.usb_interface_descriptor* %97, null
  br i1 %98, label %99, label %213

99:                                               ; preds = %92
  %100 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %101 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %100, i32 0, i32 3
  %102 = load %struct.usb_interface*, %struct.usb_interface** %101, align 8
  %103 = getelementptr inbounds %struct.usb_idesc_parse_state, %struct.usb_idesc_parse_state* %8, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %102, i64 %104
  store %struct.usb_interface* %105, %struct.usb_interface** %11, align 8
  %106 = load i64, i64* %7, align 8
  %107 = load i64, i64* @USB_CFG_INIT, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %109, label %128

109:                                              ; preds = %99
  %110 = load i64, i64* %6, align 8
  %111 = load i64, i64* @USB_IFACE_INDEX_ANY, align 8
  %112 = icmp ne i64 %110, %111
  br i1 %112, label %113, label %119

113:                                              ; preds = %109
  %114 = load i64, i64* %6, align 8
  %115 = getelementptr inbounds %struct.usb_idesc_parse_state, %struct.usb_idesc_parse_state* %8, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %114, %116
  br i1 %117, label %118, label %119

118:                                              ; preds = %113
  store i64 0, i64* %17, align 8
  br label %127

119:                                              ; preds = %113, %109
  %120 = load i64, i64* %18, align 8
  %121 = getelementptr inbounds %struct.usb_idesc_parse_state, %struct.usb_idesc_parse_state* %8, i32 0, i32 2
  %122 = load i64, i64* %121, align 8
  %123 = icmp ne i64 %120, %122
  br i1 %123, label %124, label %125

124:                                              ; preds = %119
  store i64 0, i64* %17, align 8
  br label %126

125:                                              ; preds = %119
  store i64 1, i64* %17, align 8
  br label %126

126:                                              ; preds = %125, %124
  br label %127

127:                                              ; preds = %126, %118
  br label %129

128:                                              ; preds = %99
  store i64 0, i64* %17, align 8
  br label %129

129:                                              ; preds = %128, %127
  %130 = getelementptr inbounds %struct.usb_idesc_parse_state, %struct.usb_idesc_parse_state* %8, i32 0, i32 2
  %131 = load i64, i64* %130, align 8
  %132 = icmp eq i64 %131, 0
  br i1 %132, label %133, label %135

133:                                              ; preds = %129
  %134 = load i64, i64* %15, align 8
  store i64 %134, i64* %14, align 8
  br label %135

135:                                              ; preds = %133, %129
  %136 = load i64, i64* %17, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %153

138:                                              ; preds = %135
  %139 = load %struct.usb_interface_descriptor*, %struct.usb_interface_descriptor** %9, align 8
  %140 = load %struct.usb_interface*, %struct.usb_interface** %11, align 8
  %141 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %140, i32 0, i32 5
  store %struct.usb_interface_descriptor* %139, %struct.usb_interface_descriptor** %141, align 8
  %142 = load i64, i64* %18, align 8
  %143 = load %struct.usb_interface*, %struct.usb_interface** %11, align 8
  %144 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %143, i32 0, i32 4
  store i64 %142, i64* %144, align 8
  %145 = load i64, i64* %6, align 8
  %146 = load i64, i64* @USB_IFACE_INDEX_ANY, align 8
  %147 = icmp eq i64 %145, %146
  br i1 %147, label %148, label %152

148:                                              ; preds = %138
  %149 = load i64, i64* @USB_IFACE_INDEX_ANY, align 8
  %150 = load %struct.usb_interface*, %struct.usb_interface** %11, align 8
  %151 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %150, i32 0, i32 3
  store i64 %149, i64* %151, align 8
  br label %152

152:                                              ; preds = %148, %138
  br label %153

153:                                              ; preds = %152, %135
  %154 = load %struct.usb_interface_descriptor*, %struct.usb_interface_descriptor** %9, align 8
  %155 = getelementptr inbounds %struct.usb_interface_descriptor, %struct.usb_interface_descriptor* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = call i32 (i32, i8*, ...) @DPRINTFN(i32 5, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %156)
  %158 = load %struct.usb_interface_descriptor*, %struct.usb_interface_descriptor** %9, align 8
  %159 = bitcast %struct.usb_interface_descriptor* %158 to %struct.usb_endpoint_descriptor*
  store %struct.usb_endpoint_descriptor* %159, %struct.usb_endpoint_descriptor** %10, align 8
  %160 = load i64, i64* %14, align 8
  store i64 %160, i64* %16, align 8
  br label %161

161:                                              ; preds = %211, %153
  %162 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %163 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %162, i32 0, i32 6
  %164 = load i32, i32* %163, align 8
  %165 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %10, align 8
  %166 = call %struct.usb_endpoint_descriptor* @usb_edesc_foreach(i32 %164, %struct.usb_endpoint_descriptor* %165)
  store %struct.usb_endpoint_descriptor* %166, %struct.usb_endpoint_descriptor** %10, align 8
  %167 = icmp ne %struct.usb_endpoint_descriptor* %166, null
  br i1 %167, label %168, label %212

168:                                              ; preds = %161
  %169 = load i64, i64* %16, align 8
  %170 = load i64, i64* @USB_MAX_EP_UNITS, align 8
  %171 = icmp sge i64 %169, %170
  br i1 %171, label %172, label %174

172:                                              ; preds = %168
  %173 = call i32 @DPRINTF(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  br label %212

174:                                              ; preds = %168
  %175 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %176 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %175, i32 0, i32 2
  %177 = load %struct.usb_interface*, %struct.usb_interface** %176, align 8
  %178 = load i64, i64* %16, align 8
  %179 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %177, i64 %178
  %180 = bitcast %struct.usb_interface* %179 to %struct.usb_endpoint*
  store %struct.usb_endpoint* %180, %struct.usb_endpoint** %12, align 8
  %181 = load i64, i64* %17, align 8
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %203

183:                                              ; preds = %174
  %184 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %185 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %184, i32 0, i32 6
  %186 = load i32, i32* %185, align 8
  %187 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %10, align 8
  %188 = bitcast %struct.usb_endpoint_descriptor* %187 to i8*
  %189 = call i8* @usb_ed_comp_foreach(i32 %186, i8* %188)
  store i8* %189, i8** %19, align 8
  %190 = load i8*, i8** %19, align 8
  %191 = icmp ne i8* %190, null
  br i1 %191, label %192, label %194

192:                                              ; preds = %183
  %193 = call i32 (i32, i8*, ...) @DPRINTFN(i32 5, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  br label %194

194:                                              ; preds = %192, %183
  %195 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %196 = getelementptr inbounds %struct.usb_idesc_parse_state, %struct.usb_idesc_parse_state* %8, i32 0, i32 0
  %197 = load i64, i64* %196, align 8
  %198 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %10, align 8
  %199 = load i8*, i8** %19, align 8
  %200 = load %struct.usb_endpoint*, %struct.usb_endpoint** %12, align 8
  %201 = bitcast %struct.usb_endpoint* %200 to %struct.usb_interface*
  %202 = call i32 @usb_init_endpoint(%struct.usb_device* %195, i64 %197, %struct.usb_endpoint_descriptor* %198, i8* %199, %struct.usb_interface* %201)
  br label %203

203:                                              ; preds = %194, %174
  %204 = load i64, i64* %16, align 8
  %205 = add nsw i64 %204, 1
  store i64 %205, i64* %16, align 8
  %206 = load i64, i64* %15, align 8
  %207 = load i64, i64* %16, align 8
  %208 = icmp slt i64 %206, %207
  br i1 %208, label %209, label %211

209:                                              ; preds = %203
  %210 = load i64, i64* %16, align 8
  store i64 %210, i64* %15, align 8
  br label %211

211:                                              ; preds = %209, %203
  br label %161

212:                                              ; preds = %172, %161
  br label %92

213:                                              ; preds = %92
  %214 = load i64, i64* %7, align 8
  %215 = load i64, i64* @USB_CFG_ALLOC, align 8
  %216 = icmp eq i64 %214, %215
  br i1 %216, label %217, label %288

217:                                              ; preds = %213
  %218 = getelementptr inbounds %struct.usb_idesc_parse_state, %struct.usb_idesc_parse_state* %8, i32 0, i32 0
  %219 = load i64, i64* %218, align 8
  %220 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %221 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %220, i32 0, i32 1
  store i64 %219, i64* %221, align 8
  %222 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %223 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %222, i32 0, i32 3
  store %struct.usb_interface* null, %struct.usb_interface** %223, align 8
  %224 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %225 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %224, i32 0, i32 1
  %226 = load i64, i64* %225, align 8
  %227 = icmp ne i64 %226, 0
  br i1 %227, label %228, label %249

228:                                              ; preds = %217
  %229 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %230 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %229, i32 0, i32 1
  %231 = load i64, i64* %230, align 8
  %232 = mul i64 48, %231
  %233 = trunc i64 %232 to i32
  %234 = load i32, i32* @M_USB, align 4
  %235 = load i32, i32* @M_WAITOK, align 4
  %236 = load i32, i32* @M_ZERO, align 4
  %237 = or i32 %235, %236
  %238 = call i8* @malloc(i32 %233, i32 %234, i32 %237)
  %239 = bitcast i8* %238 to %struct.usb_interface*
  %240 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %241 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %240, i32 0, i32 3
  store %struct.usb_interface* %239, %struct.usb_interface** %241, align 8
  %242 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %243 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %242, i32 0, i32 3
  %244 = load %struct.usb_interface*, %struct.usb_interface** %243, align 8
  %245 = icmp eq %struct.usb_interface* %244, null
  br i1 %245, label %246, label %248

246:                                              ; preds = %228
  %247 = load i64, i64* @USB_ERR_NOMEM, align 8
  store i64 %247, i64* %13, align 8
  br label %289

248:                                              ; preds = %228
  br label %249

249:                                              ; preds = %248, %217
  %250 = load i64, i64* %15, align 8
  %251 = icmp ne i64 %250, 0
  br i1 %251, label %252, label %271

252:                                              ; preds = %249
  %253 = load i64, i64* %15, align 8
  %254 = mul i64 48, %253
  %255 = trunc i64 %254 to i32
  %256 = load i32, i32* @M_USB, align 4
  %257 = load i32, i32* @M_WAITOK, align 4
  %258 = load i32, i32* @M_ZERO, align 4
  %259 = or i32 %257, %258
  %260 = call i8* @malloc(i32 %255, i32 %256, i32 %259)
  %261 = bitcast i8* %260 to %struct.usb_interface*
  %262 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %263 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %262, i32 0, i32 2
  store %struct.usb_interface* %261, %struct.usb_interface** %263, align 8
  %264 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %265 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %264, i32 0, i32 2
  %266 = load %struct.usb_interface*, %struct.usb_interface** %265, align 8
  %267 = icmp eq %struct.usb_interface* %266, null
  br i1 %267, label %268, label %270

268:                                              ; preds = %252
  %269 = load i64, i64* @USB_ERR_NOMEM, align 8
  store i64 %269, i64* %13, align 8
  br label %289

270:                                              ; preds = %252
  br label %274

271:                                              ; preds = %249
  %272 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %273 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %272, i32 0, i32 2
  store %struct.usb_interface* null, %struct.usb_interface** %273, align 8
  br label %274

274:                                              ; preds = %271, %270
  %275 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %276 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %275, i32 0, i32 4
  %277 = load i32, i32* %276, align 8
  %278 = call i32 @USB_BUS_LOCK(i32 %277)
  %279 = load i64, i64* %15, align 8
  %280 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %281 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %280, i32 0, i32 0
  store i64 %279, i64* %281, align 8
  %282 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %283 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %282, i32 0, i32 5
  store i32* null, i32** %283, align 8
  %284 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %285 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %284, i32 0, i32 4
  %286 = load i32, i32* %285, align 8
  %287 = call i32 @USB_BUS_UNLOCK(i32 %286)
  br label %288

288:                                              ; preds = %274, %213
  br label %289

289:                                              ; preds = %288, %268, %246
  %290 = load i64, i64* %13, align 8
  %291 = icmp ne i64 %290, 0
  br i1 %291, label %292, label %327

292:                                              ; preds = %289
  %293 = load i64, i64* %7, align 8
  %294 = load i64, i64* @USB_CFG_ALLOC, align 8
  %295 = icmp eq i64 %293, %294
  br i1 %295, label %296, label %326

296:                                              ; preds = %292
  br label %297

297:                                              ; preds = %296, %34
  %298 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %299 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %298, i32 0, i32 4
  %300 = load i32, i32* %299, align 8
  %301 = call i32 @USB_BUS_LOCK(i32 %300)
  %302 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %303 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %302, i32 0, i32 0
  store i64 0, i64* %303, align 8
  %304 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %305 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %304, i32 0, i32 5
  store i32* null, i32** %305, align 8
  %306 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %307 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %306, i32 0, i32 4
  %308 = load i32, i32* %307, align 8
  %309 = call i32 @USB_BUS_UNLOCK(i32 %308)
  %310 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %311 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %310, i32 0, i32 3
  %312 = load %struct.usb_interface*, %struct.usb_interface** %311, align 8
  %313 = load i32, i32* @M_USB, align 4
  %314 = call i32 @free(%struct.usb_interface* %312, i32 %313)
  %315 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %316 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %315, i32 0, i32 3
  store %struct.usb_interface* null, %struct.usb_interface** %316, align 8
  %317 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %318 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %317, i32 0, i32 2
  %319 = load %struct.usb_interface*, %struct.usb_interface** %318, align 8
  %320 = load i32, i32* @M_USB, align 4
  %321 = call i32 @free(%struct.usb_interface* %319, i32 %320)
  %322 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %323 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %322, i32 0, i32 2
  store %struct.usb_interface* null, %struct.usb_interface** %323, align 8
  %324 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %325 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %324, i32 0, i32 1
  store i64 0, i64* %325, align 8
  br label %326

326:                                              ; preds = %297, %292
  br label %327

327:                                              ; preds = %326, %289
  %328 = load i64, i64* %13, align 8
  store i64 %328, i64* %4, align 8
  br label %329

329:                                              ; preds = %327, %86
  %330 = load i64, i64* %4, align 8
  ret i64 %330
}

declare dso_local i32 @DPRINTFN(i32, i8*, ...) #1

declare dso_local i32 @sx_assert(i32*, i32) #1

declare dso_local i32 @memset(%struct.usb_interface*, i32, i32) #1

declare dso_local %struct.usb_interface_descriptor* @usb_idesc_foreach(i32, %struct.usb_interface*) #1

declare dso_local %struct.usb_endpoint_descriptor* @usb_edesc_foreach(i32, %struct.usb_endpoint_descriptor*) #1

declare dso_local i32 @DPRINTF(i8*) #1

declare dso_local i8* @usb_ed_comp_foreach(i32, i8*) #1

declare dso_local i32 @usb_init_endpoint(%struct.usb_device*, i64, %struct.usb_endpoint_descriptor*, i8*, %struct.usb_interface*) #1

declare dso_local i8* @malloc(i32, i32, i32) #1

declare dso_local i32 @USB_BUS_LOCK(i32) #1

declare dso_local i32 @USB_BUS_UNLOCK(i32) #1

declare dso_local i32 @free(%struct.usb_interface*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
