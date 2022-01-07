; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/storage/extr_umass.c_umass_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/storage/extr_umass.c_umass_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.umass_softc = type { i32, i32, %struct.TYPE_6__, %struct.TYPE_5__, i64, i32*, i32**, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.usb_attach_arg = type { %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.umass_probe_proto = type { i32, i32 }
%struct.usb_interface_descriptor = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@MTX_RECURSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"failed to get interface number\0A\00", align 1
@ALT_IFACE_1 = common dso_local global i32 0, align 4
@UDMASS_USB = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"could not switch to Alt Interface 1\0A\00", align 1
@umass_bbb_config = common dso_local global i32 0, align 4
@UMASS_T_BBB_MAX = common dso_local global i32 0, align 4
@UMASS_T_BBB_COMMAND = common dso_local global i32 0, align 4
@umass_cbi_config = common dso_local global i32 0, align 4
@UMASS_T_CBI_MAX = common dso_local global i32 0, align 4
@UMASS_T_CBI_COMMAND = common dso_local global i32 0, align 4
@USB_ERR_INVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [40 x i8] c"could not setup required transfers, %s\0A\00", align 1
@umass_scsi_transform = common dso_local global i32 0, align 4
@umass_ufi_transform = common dso_local global i32 0, align 4
@umass_atapi_transform = common dso_local global i32 0, align 4
@umass_rbc_transform = common dso_local global i32 0, align 4
@umass_no_transform = common dso_local global i32 0, align 4
@SHUTTLE_INIT = common dso_local global i32 0, align 4
@UMASS_PROTO_WIRE = common dso_local global i32 0, align 4
@NO_GETMAXLUN = common dso_local global i32 0, align 4
@REQUEST_SENSE = common dso_local global i32 0, align 4
@TEST_UNIT_READY = common dso_local global i32 0, align 4
@UDMASS_GEN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [17 x i8] c"Attach finished\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@UMASS_PROTO_COMMAND = common dso_local global i32 0, align 4
@UMASS_T_MAX = common dso_local global i64 0, align 8
@umass_throttle = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @umass_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @umass_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.umass_softc*, align 8
  %5 = alloca %struct.usb_attach_arg*, align 8
  %6 = alloca %struct.umass_probe_proto, align 4
  %7 = alloca %struct.usb_interface_descriptor*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call %struct.umass_softc* @device_get_softc(i32 %9)
  store %struct.umass_softc* %10, %struct.umass_softc** %4, align 8
  %11 = load i32, i32* %3, align 4
  %12 = call %struct.usb_attach_arg* @device_get_ivars(i32 %11)
  store %struct.usb_attach_arg* %12, %struct.usb_attach_arg** %5, align 8
  %13 = load i32, i32* %3, align 4
  %14 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %5, align 8
  %15 = call i64 @umass_probe_proto(i32 %13, %struct.usb_attach_arg* %14)
  %16 = bitcast %struct.umass_probe_proto* %6 to i64*
  store i64 %15, i64* %16, align 4
  %17 = load i32, i32* %3, align 4
  %18 = load %struct.umass_softc*, %struct.umass_softc** %4, align 8
  %19 = getelementptr inbounds %struct.umass_softc, %struct.umass_softc* %18, i32 0, i32 13
  store i32 %17, i32* %19, align 8
  %20 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %5, align 8
  %21 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.umass_softc*, %struct.umass_softc** %4, align 8
  %24 = getelementptr inbounds %struct.umass_softc, %struct.umass_softc* %23, i32 0, i32 12
  store i32 %22, i32* %24, align 4
  %25 = getelementptr inbounds %struct.umass_probe_proto, %struct.umass_probe_proto* %6, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.umass_softc*, %struct.umass_softc** %4, align 8
  %28 = getelementptr inbounds %struct.umass_softc, %struct.umass_softc* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  %29 = getelementptr inbounds %struct.umass_probe_proto, %struct.umass_probe_proto* %6, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.umass_softc*, %struct.umass_softc** %4, align 8
  %32 = getelementptr inbounds %struct.umass_softc, %struct.umass_softc* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* %3, align 4
  %34 = call i32 @device_get_unit(i32 %33)
  %35 = load %struct.umass_softc*, %struct.umass_softc** %4, align 8
  %36 = getelementptr inbounds %struct.umass_softc, %struct.umass_softc* %35, i32 0, i32 11
  store i32 %34, i32* %36, align 8
  %37 = load %struct.umass_softc*, %struct.umass_softc** %4, align 8
  %38 = getelementptr inbounds %struct.umass_softc, %struct.umass_softc* %37, i32 0, i32 10
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %3, align 4
  %41 = call i8* @device_get_nameunit(i32 %40)
  %42 = call i32 @snprintf(i32 %39, i32 4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %41)
  %43 = load i32, i32* %3, align 4
  %44 = call i32 @device_set_usb_desc(i32 %43)
  %45 = load %struct.umass_softc*, %struct.umass_softc** %4, align 8
  %46 = getelementptr inbounds %struct.umass_softc, %struct.umass_softc* %45, i32 0, i32 8
  %47 = load i32, i32* %3, align 4
  %48 = call i8* @device_get_nameunit(i32 %47)
  %49 = load i32, i32* @MTX_DEF, align 4
  %50 = load i32, i32* @MTX_RECURSE, align 4
  %51 = or i32 %49, %50
  %52 = call i32 @mtx_init(i32* %46, i8* %48, i32* null, i32 %51)
  %53 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %5, align 8
  %54 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = call %struct.usb_interface_descriptor* @usbd_get_interface_descriptor(i32 %55)
  store %struct.usb_interface_descriptor* %56, %struct.usb_interface_descriptor** %7, align 8
  %57 = load %struct.usb_interface_descriptor*, %struct.usb_interface_descriptor** %7, align 8
  %58 = icmp eq %struct.usb_interface_descriptor* %57, null
  br i1 %58, label %59, label %62

59:                                               ; preds = %1
  %60 = load i32, i32* %3, align 4
  %61 = call i32 (i32, i8*, ...) @device_printf(i32 %60, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %239

62:                                               ; preds = %1
  %63 = load %struct.usb_interface_descriptor*, %struct.usb_interface_descriptor** %7, align 8
  %64 = getelementptr inbounds %struct.usb_interface_descriptor, %struct.usb_interface_descriptor* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.umass_softc*, %struct.umass_softc** %4, align 8
  %67 = getelementptr inbounds %struct.umass_softc, %struct.umass_softc* %66, i32 0, i32 9
  store i32 %65, i32* %67, align 8
  %68 = load %struct.umass_softc*, %struct.umass_softc** %4, align 8
  %69 = getelementptr inbounds %struct.umass_softc, %struct.umass_softc* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @ALT_IFACE_1, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %90

74:                                               ; preds = %62
  %75 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %5, align 8
  %76 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %5, align 8
  %79 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @usbd_set_alt_interface_index(i32 %77, i32 %81, i32 1)
  store i32 %82, i32* %8, align 4
  %83 = load i32, i32* %8, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %74
  %86 = load %struct.umass_softc*, %struct.umass_softc** %4, align 8
  %87 = load i32, i32* @UDMASS_USB, align 4
  %88 = call i32 @DPRINTF(%struct.umass_softc* %86, i32 %87, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  br label %239

89:                                               ; preds = %74
  br label %90

90:                                               ; preds = %89, %62
  %91 = load %struct.umass_softc*, %struct.umass_softc** %4, align 8
  %92 = getelementptr inbounds %struct.umass_softc, %struct.umass_softc* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = and i32 %93, 133
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %115

96:                                               ; preds = %90
  %97 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %5, align 8
  %98 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %5, align 8
  %101 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 0
  %103 = load %struct.umass_softc*, %struct.umass_softc** %4, align 8
  %104 = getelementptr inbounds %struct.umass_softc, %struct.umass_softc* %103, i32 0, i32 6
  %105 = load i32**, i32*** %104, align 8
  %106 = load i32, i32* @umass_bbb_config, align 4
  %107 = load i32, i32* @UMASS_T_BBB_MAX, align 4
  %108 = load %struct.umass_softc*, %struct.umass_softc** %4, align 8
  %109 = load %struct.umass_softc*, %struct.umass_softc** %4, align 8
  %110 = getelementptr inbounds %struct.umass_softc, %struct.umass_softc* %109, i32 0, i32 8
  %111 = call i32 @usbd_transfer_setup(i32 %99, i32* %102, i32** %105, i32 %106, i32 %107, %struct.umass_softc* %108, i32* %110)
  store i32 %111, i32* %8, align 4
  %112 = load i32, i32* @UMASS_T_BBB_COMMAND, align 4
  %113 = load %struct.umass_softc*, %struct.umass_softc** %4, align 8
  %114 = getelementptr inbounds %struct.umass_softc, %struct.umass_softc* %113, i32 0, i32 7
  store i32 %112, i32* %114, align 8
  br label %143

115:                                              ; preds = %90
  %116 = load %struct.umass_softc*, %struct.umass_softc** %4, align 8
  %117 = getelementptr inbounds %struct.umass_softc, %struct.umass_softc* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = and i32 %118, 135
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %140

121:                                              ; preds = %115
  %122 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %5, align 8
  %123 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.usb_attach_arg*, %struct.usb_attach_arg** %5, align 8
  %126 = getelementptr inbounds %struct.usb_attach_arg, %struct.usb_attach_arg* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 0
  %128 = load %struct.umass_softc*, %struct.umass_softc** %4, align 8
  %129 = getelementptr inbounds %struct.umass_softc, %struct.umass_softc* %128, i32 0, i32 6
  %130 = load i32**, i32*** %129, align 8
  %131 = load i32, i32* @umass_cbi_config, align 4
  %132 = load i32, i32* @UMASS_T_CBI_MAX, align 4
  %133 = load %struct.umass_softc*, %struct.umass_softc** %4, align 8
  %134 = load %struct.umass_softc*, %struct.umass_softc** %4, align 8
  %135 = getelementptr inbounds %struct.umass_softc, %struct.umass_softc* %134, i32 0, i32 8
  %136 = call i32 @usbd_transfer_setup(i32 %124, i32* %127, i32** %130, i32 %131, i32 %132, %struct.umass_softc* %133, i32* %135)
  store i32 %136, i32* %8, align 4
  %137 = load i32, i32* @UMASS_T_CBI_COMMAND, align 4
  %138 = load %struct.umass_softc*, %struct.umass_softc** %4, align 8
  %139 = getelementptr inbounds %struct.umass_softc, %struct.umass_softc* %138, i32 0, i32 7
  store i32 %137, i32* %139, align 8
  br label %142

140:                                              ; preds = %115
  %141 = load i32, i32* @USB_ERR_INVAL, align 4
  store i32 %141, i32* %8, align 4
  br label %142

142:                                              ; preds = %140, %121
  br label %143

143:                                              ; preds = %142, %96
  %144 = load i32, i32* %8, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %151

146:                                              ; preds = %143
  %147 = load i32, i32* %3, align 4
  %148 = load i32, i32* %8, align 4
  %149 = call i32 @usbd_errstr(i32 %148)
  %150 = call i32 (i32, i8*, ...) @device_printf(i32 %147, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i32 %149)
  br label %239

151:                                              ; preds = %143
  %152 = load %struct.umass_softc*, %struct.umass_softc** %4, align 8
  %153 = getelementptr inbounds %struct.umass_softc, %struct.umass_softc* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = and i32 %154, 129
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %151
  br label %184

158:                                              ; preds = %151
  %159 = load %struct.umass_softc*, %struct.umass_softc** %4, align 8
  %160 = getelementptr inbounds %struct.umass_softc, %struct.umass_softc* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = and i32 %161, 128
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %165

164:                                              ; preds = %158
  br label %182

165:                                              ; preds = %158
  %166 = load %struct.umass_softc*, %struct.umass_softc** %4, align 8
  %167 = getelementptr inbounds %struct.umass_softc, %struct.umass_softc* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = and i32 %168, 134
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %172

171:                                              ; preds = %165
  br label %180

172:                                              ; preds = %165
  %173 = load %struct.umass_softc*, %struct.umass_softc** %4, align 8
  %174 = getelementptr inbounds %struct.umass_softc, %struct.umass_softc* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = and i32 %175, 130
  %177 = icmp ne i32 %176, 0
  %178 = zext i1 %177 to i64
  %179 = select i1 %177, i32* @umass_rbc_transform, i32* @umass_no_transform
  br label %180

180:                                              ; preds = %172, %171
  %181 = phi i32* [ @umass_atapi_transform, %171 ], [ %179, %172 ]
  br label %182

182:                                              ; preds = %180, %164
  %183 = phi i32* [ @umass_ufi_transform, %164 ], [ %181, %180 ]
  br label %184

184:                                              ; preds = %182, %157
  %185 = phi i32* [ @umass_scsi_transform, %157 ], [ %183, %182 ]
  %186 = load %struct.umass_softc*, %struct.umass_softc** %4, align 8
  %187 = getelementptr inbounds %struct.umass_softc, %struct.umass_softc* %186, i32 0, i32 5
  store i32* %185, i32** %187, align 8
  %188 = load %struct.umass_softc*, %struct.umass_softc** %4, align 8
  %189 = getelementptr inbounds %struct.umass_softc, %struct.umass_softc* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 4
  %191 = load i32, i32* @SHUTTLE_INIT, align 4
  %192 = and i32 %190, %191
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %197

194:                                              ; preds = %184
  %195 = load %struct.umass_softc*, %struct.umass_softc** %4, align 8
  %196 = call i32 @umass_init_shuttle(%struct.umass_softc* %195)
  br label %197

197:                                              ; preds = %194, %184
  %198 = load %struct.umass_softc*, %struct.umass_softc** %4, align 8
  %199 = getelementptr inbounds %struct.umass_softc, %struct.umass_softc* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  %201 = load i32, i32* @UMASS_PROTO_WIRE, align 4
  %202 = and i32 %200, %201
  %203 = icmp eq i32 %202, 133
  br i1 %203, label %204, label %216

204:                                              ; preds = %197
  %205 = load %struct.umass_softc*, %struct.umass_softc** %4, align 8
  %206 = getelementptr inbounds %struct.umass_softc, %struct.umass_softc* %205, i32 0, i32 1
  %207 = load i32, i32* %206, align 4
  %208 = load i32, i32* @NO_GETMAXLUN, align 4
  %209 = and i32 %207, %208
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %216, label %211

211:                                              ; preds = %204
  %212 = load %struct.umass_softc*, %struct.umass_softc** %4, align 8
  %213 = call i64 @umass_bbb_get_max_lun(%struct.umass_softc* %212)
  %214 = load %struct.umass_softc*, %struct.umass_softc** %4, align 8
  %215 = getelementptr inbounds %struct.umass_softc, %struct.umass_softc* %214, i32 0, i32 4
  store i64 %213, i64* %215, align 8
  br label %219

216:                                              ; preds = %204, %197
  %217 = load %struct.umass_softc*, %struct.umass_softc** %4, align 8
  %218 = getelementptr inbounds %struct.umass_softc, %struct.umass_softc* %217, i32 0, i32 4
  store i64 0, i64* %218, align 8
  br label %219

219:                                              ; preds = %216, %211
  %220 = load i32, i32* @REQUEST_SENSE, align 4
  %221 = load %struct.umass_softc*, %struct.umass_softc** %4, align 8
  %222 = getelementptr inbounds %struct.umass_softc, %struct.umass_softc* %221, i32 0, i32 3
  %223 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %222, i32 0, i32 0
  store i32 %220, i32* %223, align 4
  %224 = load i32, i32* @TEST_UNIT_READY, align 4
  %225 = load %struct.umass_softc*, %struct.umass_softc** %4, align 8
  %226 = getelementptr inbounds %struct.umass_softc, %struct.umass_softc* %225, i32 0, i32 2
  %227 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %226, i32 0, i32 0
  store i32 %224, i32* %227, align 8
  %228 = load %struct.umass_softc*, %struct.umass_softc** %4, align 8
  %229 = call i32 @umass_cam_attach_sim(%struct.umass_softc* %228)
  store i32 %229, i32* %8, align 4
  %230 = load i32, i32* %8, align 4
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %233

232:                                              ; preds = %219
  br label %239

233:                                              ; preds = %219
  %234 = load %struct.umass_softc*, %struct.umass_softc** %4, align 8
  %235 = call i32 @umass_cam_attach(%struct.umass_softc* %234)
  %236 = load %struct.umass_softc*, %struct.umass_softc** %4, align 8
  %237 = load i32, i32* @UDMASS_GEN, align 4
  %238 = call i32 @DPRINTF(%struct.umass_softc* %236, i32 %237, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %243

239:                                              ; preds = %232, %146, %85, %59
  %240 = load i32, i32* %3, align 4
  %241 = call i32 @umass_detach(i32 %240)
  %242 = load i32, i32* @ENXIO, align 4
  store i32 %242, i32* %2, align 4
  br label %243

243:                                              ; preds = %239, %233
  %244 = load i32, i32* %2, align 4
  ret i32 %244
}

declare dso_local %struct.umass_softc* @device_get_softc(i32) #1

declare dso_local %struct.usb_attach_arg* @device_get_ivars(i32) #1

declare dso_local i64 @umass_probe_proto(i32, %struct.usb_attach_arg*) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*) #1

declare dso_local i8* @device_get_nameunit(i32) #1

declare dso_local i32 @device_set_usb_desc(i32) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local %struct.usb_interface_descriptor* @usbd_get_interface_descriptor(i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @usbd_set_alt_interface_index(i32, i32, i32) #1

declare dso_local i32 @DPRINTF(%struct.umass_softc*, i32, i8*) #1

declare dso_local i32 @usbd_transfer_setup(i32, i32*, i32**, i32, i32, %struct.umass_softc*, i32*) #1

declare dso_local i32 @usbd_errstr(i32) #1

declare dso_local i32 @umass_init_shuttle(%struct.umass_softc*) #1

declare dso_local i64 @umass_bbb_get_max_lun(%struct.umass_softc*) #1

declare dso_local i32 @umass_cam_attach_sim(%struct.umass_softc*) #1

declare dso_local i32 @umass_cam_attach(%struct.umass_softc*) #1

declare dso_local i32 @umass_detach(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
