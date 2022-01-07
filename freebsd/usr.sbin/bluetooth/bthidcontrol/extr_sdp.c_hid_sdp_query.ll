; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bluetooth/bthidcontrol/extr_sdp.c_hid_sdp_query.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bluetooth/bthidcontrol/extr_sdp.c_hid_sdp_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32, i64, i32* }
%struct.hid_device = type { i64, i64, i32, i32, i32, i32*, i8*, i8*, i8*, i32, i32 }

@HCI_DEVNAME_SIZE = common dso_local global i32 0, align 4
@NG_HCI_BDADDR_ANY = common dso_local global i32* null, align 8
@EINVAL = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i64 0, align 8
@service = common dso_local global i32 0, align 4
@nattrs = common dso_local global i32 0, align 4
@attrs = common dso_local global i32* null, align 8
@nvalues = common dso_local global i64 0, align 8
@values = common dso_local global %struct.TYPE_6__* null, align 8
@SDP_ATTR_OK = common dso_local global i64 0, align 8
@service_devid = common dso_local global i32 0, align 4
@attrs_devid = common dso_local global i32 0, align 4
@ENOATTR = common dso_local global i64 0, align 8
@SDP_ATTR_INVALID = common dso_local global i64 0, align 8
@SDP_DATA_UINT16 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, %struct.hid_device*, i64*)* @hid_sdp_query to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @hid_sdp_query(i32* %0, %struct.hid_device* %1, i64* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.hid_device*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i8*, align 8
  %23 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store %struct.hid_device* %1, %struct.hid_device** %5, align 8
  store i64* %2, i64** %6, align 8
  store i8* null, i8** %7, align 8
  store i32* null, i32** %8, align 8
  store i64 -1, i64* %11, align 8
  store i64 -1, i64* %12, align 8
  store i64 -1, i64* %13, align 8
  store i64 0, i64* %14, align 8
  store i64 0, i64* %15, align 8
  store i64 -1, i64* %16, align 8
  store i8* null, i8** %18, align 8
  store i8* null, i8** %19, align 8
  store i8* null, i8** %20, align 8
  %24 = load i32, i32* @HCI_DEVNAME_SIZE, align 4
  %25 = zext i32 %24 to i64
  %26 = call i8* @llvm.stacksave()
  store i8* %26, i8** %22, align 8
  %27 = alloca i8, i64 %25, align 16
  store i64 %25, i64* %23, align 8
  %28 = load i32*, i32** %4, align 8
  %29 = icmp eq i32* %28, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %3
  %31 = load i32*, i32** @NG_HCI_BDADDR_ANY, align 8
  store i32* %31, i32** %4, align 8
  br label %32

32:                                               ; preds = %30, %3
  %33 = load %struct.hid_device*, %struct.hid_device** %5, align 8
  %34 = icmp eq %struct.hid_device* %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = load i64, i64* @EINVAL, align 8
  %37 = call i32 @hid_sdp_query_exit(i64 %36)
  br label %38

38:                                               ; preds = %35, %32
  %39 = call i32 (...) @hid_init_return_values()
  %40 = load i32*, i32** %4, align 8
  %41 = load %struct.hid_device*, %struct.hid_device** %5, align 8
  %42 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %41, i32 0, i32 9
  %43 = call i8* @sdp_open(i32* %40, i32* %42)
  store i8* %43, i8** %7, align 8
  %44 = icmp eq i8* %43, null
  br i1 %44, label %45, label %48

45:                                               ; preds = %38
  %46 = load i64, i64* @ENOMEM, align 8
  %47 = call i32 @hid_sdp_query_exit(i64 %46)
  br label %48

48:                                               ; preds = %45, %38
  %49 = load i8*, i8** %7, align 8
  %50 = call i64 @sdp_error(i8* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %48
  %53 = load i8*, i8** %7, align 8
  %54 = call i64 @sdp_error(i8* %53)
  %55 = call i32 @hid_sdp_query_exit(i64 %54)
  br label %56

56:                                               ; preds = %52, %48
  %57 = load i8*, i8** %7, align 8
  %58 = load i32, i32* @nattrs, align 4
  %59 = load i32*, i32** @attrs, align 8
  %60 = load i64, i64* @nvalues, align 8
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** @values, align 8
  %62 = call i64 @sdp_search(i8* %57, i32 1, i32* @service, i32 %58, i32* %59, i64 %60, %struct.TYPE_6__* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %56
  %65 = load i8*, i8** %7, align 8
  %66 = call i64 @sdp_error(i8* %65)
  %67 = call i32 @hid_sdp_query_exit(i64 %66)
  br label %68

68:                                               ; preds = %64, %56
  store i64 0, i64* %10, align 8
  br label %69

69:                                               ; preds = %132, %68
  %70 = load i64, i64* %10, align 8
  %71 = load i64, i64* @nvalues, align 8
  %72 = icmp ult i64 %70, %71
  br i1 %72, label %73, label %135

73:                                               ; preds = %69
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** @values, align 8
  %75 = load i64, i64* %10, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @SDP_ATTR_OK, align 8
  %80 = icmp ne i64 %78, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %73
  br label %132

82:                                               ; preds = %73
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** @values, align 8
  %84 = load i64, i64* %10, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  switch i32 %87, label %131 [
    i32 128, label %88
    i32 132, label %93
    i32 517, label %98
    i32 518, label %103
    i32 521, label %121
    i32 525, label %126
  ]

88:                                               ; preds = %82
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** @values, align 8
  %90 = load i64, i64* %10, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i64 %90
  %92 = call i64 @hid_sdp_parse_protocol_descriptor_list(%struct.TYPE_6__* %91)
  store i64 %92, i64* %11, align 8
  br label %131

93:                                               ; preds = %82
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** @values, align 8
  %95 = load i64, i64* %10, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i64 %95
  %97 = call i64 @hid_sdp_parse_protocol_descriptor_list(%struct.TYPE_6__* %96)
  store i64 %97, i64* %12, align 8
  br label %131

98:                                               ; preds = %82
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** @values, align 8
  %100 = load i64, i64* %10, align 8
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i64 %100
  %102 = call i64 @hid_sdp_parse_boolean(%struct.TYPE_6__* %101)
  store i64 %102, i64* %13, align 8
  br label %131

103:                                              ; preds = %82
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** @values, align 8
  %105 = load i64, i64* %10, align 8
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i64 %105
  %107 = call i32 @hid_sdp_parse_hid_descriptor(%struct.TYPE_6__* %106)
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %120

109:                                              ; preds = %103
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** @values, align 8
  %111 = load i64, i64* %10, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 3
  %114 = load i32*, i32** %113, align 8
  store i32* %114, i32** %8, align 8
  %115 = load %struct.TYPE_6__*, %struct.TYPE_6__** @values, align 8
  %116 = load i64, i64* %10, align 8
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 2
  %119 = load i64, i64* %118, align 8
  store i64 %119, i64* %16, align 8
  br label %120

120:                                              ; preds = %109, %103
  br label %131

121:                                              ; preds = %82
  %122 = load %struct.TYPE_6__*, %struct.TYPE_6__** @values, align 8
  %123 = load i64, i64* %10, align 8
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i64 %123
  %125 = call i64 @hid_sdp_parse_boolean(%struct.TYPE_6__* %124)
  store i64 %125, i64* %15, align 8
  br label %131

126:                                              ; preds = %82
  %127 = load %struct.TYPE_6__*, %struct.TYPE_6__** @values, align 8
  %128 = load i64, i64* %10, align 8
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i64 %128
  %130 = call i64 @hid_sdp_parse_boolean(%struct.TYPE_6__* %129)
  store i64 %130, i64* %14, align 8
  br label %131

131:                                              ; preds = %82, %126, %121, %120, %98, %93, %88
  br label %132

132:                                              ; preds = %131, %81
  %133 = load i64, i64* %10, align 8
  %134 = add i64 %133, 1
  store i64 %134, i64* %10, align 8
  br label %69

135:                                              ; preds = %69
  %136 = call i32 (...) @hid_init_return_values()
  %137 = load i8*, i8** %7, align 8
  %138 = load i64, i64* @nvalues, align 8
  %139 = load %struct.TYPE_6__*, %struct.TYPE_6__** @values, align 8
  %140 = call i64 @sdp_search(i8* %137, i32 1, i32* @service_devid, i32 1, i32* @attrs_devid, i64 %138, %struct.TYPE_6__* %139)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %146

142:                                              ; preds = %135
  %143 = load i8*, i8** %7, align 8
  %144 = call i64 @sdp_error(i8* %143)
  %145 = call i32 @hid_sdp_query_exit(i64 %144)
  br label %146

146:                                              ; preds = %142, %135
  %147 = load i8*, i8** %7, align 8
  %148 = call i64 @sdp_get_lcaddr(i8* %147, i32* %21)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %153, label %150

150:                                              ; preds = %146
  %151 = call i64 @bt_devname(i8* %27, i32* %21)
  %152 = icmp eq i64 %151, 0
  br i1 %152, label %153, label %156

153:                                              ; preds = %150, %146
  %154 = load i64, i64* @ENOATTR, align 8
  %155 = call i32 @hid_sdp_query_exit(i64 %154)
  br label %156

156:                                              ; preds = %153, %150
  %157 = load i8*, i8** %7, align 8
  %158 = call i32 @sdp_close(i8* %157)
  store i8* null, i8** %7, align 8
  store i64 0, i64* %10, align 8
  br label %159

159:                                              ; preds = %212, %156
  %160 = load i64, i64* %10, align 8
  %161 = icmp ult i64 %160, 3
  br i1 %161, label %162, label %215

162:                                              ; preds = %159
  %163 = load %struct.TYPE_6__*, %struct.TYPE_6__** @values, align 8
  %164 = load i64, i64* %10, align 8
  %165 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %163, i64 %164
  %166 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = load i64, i64* @SDP_ATTR_INVALID, align 8
  %169 = icmp eq i64 %167, %168
  br i1 %169, label %170, label %171

170:                                              ; preds = %162
  br label %212

171:                                              ; preds = %162
  %172 = load %struct.TYPE_6__*, %struct.TYPE_6__** @values, align 8
  %173 = load i64, i64* %10, align 8
  %174 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %172, i64 %173
  %175 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %174, i32 0, i32 2
  %176 = load i64, i64* %175, align 8
  %177 = icmp ne i64 %176, 3
  br i1 %177, label %178, label %179

178:                                              ; preds = %171
  br label %212

179:                                              ; preds = %171
  %180 = load %struct.TYPE_6__*, %struct.TYPE_6__** @values, align 8
  %181 = load i64, i64* %10, align 8
  %182 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %180, i64 %181
  %183 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %182, i32 0, i32 3
  %184 = load i32*, i32** %183, align 8
  store i32* %184, i32** %9, align 8
  %185 = load i64, i64* %17, align 8
  %186 = load i32*, i32** %9, align 8
  %187 = call i32 @SDP_GET8(i64 %185, i32* %186)
  %188 = load i64, i64* %17, align 8
  %189 = load i64, i64* @SDP_DATA_UINT16, align 8
  %190 = icmp ne i64 %188, %189
  br i1 %190, label %191, label %192

191:                                              ; preds = %179
  br label %212

192:                                              ; preds = %179
  %193 = load %struct.TYPE_6__*, %struct.TYPE_6__** @values, align 8
  %194 = load i64, i64* %10, align 8
  %195 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %193, i64 %194
  %196 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 8
  switch i32 %197, label %210 [
    i32 130, label %198
    i32 131, label %202
    i32 129, label %206
  ]

198:                                              ; preds = %192
  %199 = load i8*, i8** %18, align 8
  %200 = load i32*, i32** %9, align 8
  %201 = call i32 @SDP_GET16(i8* %199, i32* %200)
  br label %211

202:                                              ; preds = %192
  %203 = load i8*, i8** %19, align 8
  %204 = load i32*, i32** %9, align 8
  %205 = call i32 @SDP_GET16(i8* %203, i32* %204)
  br label %211

206:                                              ; preds = %192
  %207 = load i8*, i8** %20, align 8
  %208 = load i32*, i32** %9, align 8
  %209 = call i32 @SDP_GET16(i8* %207, i32* %208)
  br label %211

210:                                              ; preds = %192
  br label %211

211:                                              ; preds = %210, %206, %202, %198
  br label %212

212:                                              ; preds = %211, %191, %178, %170
  %213 = load i64, i64* %10, align 8
  %214 = add i64 %213, 1
  store i64 %214, i64* %10, align 8
  br label %159

215:                                              ; preds = %159
  %216 = load i64, i64* %11, align 8
  %217 = icmp eq i64 %216, -1
  br i1 %217, label %230, label %218

218:                                              ; preds = %215
  %219 = load i64, i64* %12, align 8
  %220 = icmp eq i64 %219, -1
  br i1 %220, label %230, label %221

221:                                              ; preds = %218
  %222 = load i64, i64* %13, align 8
  %223 = icmp eq i64 %222, -1
  br i1 %223, label %230, label %224

224:                                              ; preds = %221
  %225 = load i32*, i32** %8, align 8
  %226 = icmp eq i32* %225, null
  br i1 %226, label %230, label %227

227:                                              ; preds = %224
  %228 = load i64, i64* %16, align 8
  %229 = icmp eq i64 %228, -1
  br i1 %229, label %230, label %233

230:                                              ; preds = %227, %224, %221, %218, %215
  %231 = load i64, i64* @ENOATTR, align 8
  %232 = call i32 @hid_sdp_query_exit(i64 %231)
  br label %233

233:                                              ; preds = %230, %227
  %234 = load %struct.hid_device*, %struct.hid_device** %5, align 8
  %235 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %234, i32 0, i32 9
  %236 = call i32 @bt_devremote_name_gen(i8* %27, i32* %235)
  %237 = load %struct.hid_device*, %struct.hid_device** %5, align 8
  %238 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %237, i32 0, i32 10
  store i32 %236, i32* %238, align 4
  %239 = load i8*, i8** %18, align 8
  %240 = load %struct.hid_device*, %struct.hid_device** %5, align 8
  %241 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %240, i32 0, i32 8
  store i8* %239, i8** %241, align 8
  %242 = load i8*, i8** %19, align 8
  %243 = load %struct.hid_device*, %struct.hid_device** %5, align 8
  %244 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %243, i32 0, i32 7
  store i8* %242, i8** %244, align 8
  %245 = load i8*, i8** %20, align 8
  %246 = load %struct.hid_device*, %struct.hid_device** %5, align 8
  %247 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %246, i32 0, i32 6
  store i8* %245, i8** %247, align 8
  %248 = load i64, i64* %11, align 8
  %249 = load %struct.hid_device*, %struct.hid_device** %5, align 8
  %250 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %249, i32 0, i32 0
  store i64 %248, i64* %250, align 8
  %251 = load i64, i64* %12, align 8
  %252 = load %struct.hid_device*, %struct.hid_device** %5, align 8
  %253 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %252, i32 0, i32 1
  store i64 %251, i64* %253, align 8
  %254 = load i64, i64* %13, align 8
  %255 = icmp ne i64 %254, 0
  %256 = zext i1 %255 to i64
  %257 = select i1 %255, i32 1, i32 0
  %258 = load %struct.hid_device*, %struct.hid_device** %5, align 8
  %259 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %258, i32 0, i32 2
  store i32 %257, i32* %259, align 8
  %260 = load i64, i64* %15, align 8
  %261 = icmp ne i64 %260, 0
  %262 = zext i1 %261 to i64
  %263 = select i1 %261, i32 1, i32 0
  %264 = load %struct.hid_device*, %struct.hid_device** %5, align 8
  %265 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %264, i32 0, i32 3
  store i32 %263, i32* %265, align 4
  %266 = load i64, i64* %14, align 8
  %267 = icmp ne i64 %266, 0
  %268 = zext i1 %267 to i64
  %269 = select i1 %267, i32 1, i32 0
  %270 = load %struct.hid_device*, %struct.hid_device** %5, align 8
  %271 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %270, i32 0, i32 4
  store i32 %269, i32* %271, align 8
  %272 = load i32*, i32** %8, align 8
  %273 = load i64, i64* %16, align 8
  %274 = call i32* @hid_use_report_desc(i32* %272, i64 %273)
  %275 = load %struct.hid_device*, %struct.hid_device** %5, align 8
  %276 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %275, i32 0, i32 5
  store i32* %274, i32** %276, align 8
  %277 = load %struct.hid_device*, %struct.hid_device** %5, align 8
  %278 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %277, i32 0, i32 5
  %279 = load i32*, i32** %278, align 8
  %280 = icmp eq i32* %279, null
  br i1 %280, label %281, label %284

281:                                              ; preds = %233
  %282 = load i64, i64* @ENOMEM, align 8
  %283 = call i32 @hid_sdp_query_exit(i64 %282)
  br label %284

284:                                              ; preds = %281, %233
  %285 = load i8*, i8** %22, align 8
  call void @llvm.stackrestore(i8* %285)
  ret i64 0
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @hid_sdp_query_exit(i64) #2

declare dso_local i32 @hid_init_return_values(...) #2

declare dso_local i8* @sdp_open(i32*, i32*) #2

declare dso_local i64 @sdp_error(i8*) #2

declare dso_local i64 @sdp_search(i8*, i32, i32*, i32, i32*, i64, %struct.TYPE_6__*) #2

declare dso_local i64 @hid_sdp_parse_protocol_descriptor_list(%struct.TYPE_6__*) #2

declare dso_local i64 @hid_sdp_parse_boolean(%struct.TYPE_6__*) #2

declare dso_local i32 @hid_sdp_parse_hid_descriptor(%struct.TYPE_6__*) #2

declare dso_local i64 @sdp_get_lcaddr(i8*, i32*) #2

declare dso_local i64 @bt_devname(i8*, i32*) #2

declare dso_local i32 @sdp_close(i8*) #2

declare dso_local i32 @SDP_GET8(i64, i32*) #2

declare dso_local i32 @SDP_GET16(i8*, i32*) #2

declare dso_local i32 @bt_devremote_name_gen(i8*, i32*) #2

declare dso_local i32* @hid_use_report_desc(i32*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
