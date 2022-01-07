; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/template/extr_usb_template.c_usb_hw_ep_resolve.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/template/extr_usb_template.c_usb_hw_ep_resolve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { i64, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { %struct.usb_hw_ep_scratch* }
%struct.usb_hw_ep_scratch = type { %struct.usb_hw_ep_scratch_sub*, %struct.usb_hw_ep_scratch_sub*, %struct.usb_device*, %struct.usb_bus_methods*, i8* }
%struct.usb_hw_ep_scratch_sub = type { i64, i64 }
%struct.usb_bus_methods = type { i32 (%struct.usb_device*, %struct.usb_hw_ep_profile**, i32)* }
%struct.usb_hw_ep_profile = type { i32 }
%struct.TYPE_3__ = type { %struct.usb_bus_methods* }
%struct.usb_descriptor = type { i64, i32 }
%struct.usb_device_descriptor = type { i32 }

@USB_ERR_INVAL = common dso_local global i32 0, align 4
@UDESC_DEVICE = common dso_local global i64 0, align 8
@UE_CONTROL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Endpoint 0 does not support control\0A\00", align 1
@USB_SPEED_FULL = common dso_local global i64 0, align 8
@UDESC_CONFIG = common dso_local global i64 0, align 8
@UE_ISOCHRONOUS = common dso_local global i32 0, align 4
@UE_INTERRUPT = common dso_local global i32 0, align 4
@UE_BULK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"Could not get needs\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"Could not find match\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"Could not update endpoint address\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_device*, %struct.usb_descriptor*)* @usb_hw_ep_resolve to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usb_hw_ep_resolve(%struct.usb_device* %0, %struct.usb_descriptor* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_device*, align 8
  %5 = alloca %struct.usb_descriptor*, align 8
  %6 = alloca %struct.usb_hw_ep_scratch*, align 8
  %7 = alloca %struct.usb_hw_ep_scratch_sub*, align 8
  %8 = alloca %struct.usb_hw_ep_profile*, align 8
  %9 = alloca %struct.usb_bus_methods*, align 8
  %10 = alloca %struct.usb_device_descriptor*, align 8
  %11 = alloca i32, align 4
  store %struct.usb_device* %0, %struct.usb_device** %4, align 8
  store %struct.usb_descriptor* %1, %struct.usb_descriptor** %5, align 8
  %12 = load %struct.usb_descriptor*, %struct.usb_descriptor** %5, align 8
  %13 = icmp eq %struct.usb_descriptor* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* @USB_ERR_INVAL, align 4
  store i32 %15, i32* %3, align 4
  br label %236

16:                                               ; preds = %2
  %17 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %18 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %17, i32 0, i32 2
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load %struct.usb_bus_methods*, %struct.usb_bus_methods** %20, align 8
  store %struct.usb_bus_methods* %21, %struct.usb_bus_methods** %9, align 8
  %22 = load %struct.usb_bus_methods*, %struct.usb_bus_methods** %9, align 8
  %23 = getelementptr inbounds %struct.usb_bus_methods, %struct.usb_bus_methods* %22, i32 0, i32 0
  %24 = load i32 (%struct.usb_device*, %struct.usb_hw_ep_profile**, i32)*, i32 (%struct.usb_device*, %struct.usb_hw_ep_profile**, i32)** %23, align 8
  %25 = icmp eq i32 (%struct.usb_device*, %struct.usb_hw_ep_profile**, i32)* %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %16
  %27 = load i32, i32* @USB_ERR_INVAL, align 4
  store i32 %27, i32* %3, align 4
  br label %236

28:                                               ; preds = %16
  %29 = load %struct.usb_descriptor*, %struct.usb_descriptor** %5, align 8
  %30 = getelementptr inbounds %struct.usb_descriptor, %struct.usb_descriptor* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @UDESC_DEVICE, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %106

34:                                               ; preds = %28
  %35 = load %struct.usb_descriptor*, %struct.usb_descriptor** %5, align 8
  %36 = getelementptr inbounds %struct.usb_descriptor, %struct.usb_descriptor* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = sext i32 %37 to i64
  %39 = icmp ult i64 %38, 4
  br i1 %39, label %40, label %42

40:                                               ; preds = %34
  %41 = load i32, i32* @USB_ERR_INVAL, align 4
  store i32 %41, i32* %3, align 4
  br label %236

42:                                               ; preds = %34
  %43 = load %struct.usb_descriptor*, %struct.usb_descriptor** %5, align 8
  %44 = bitcast %struct.usb_descriptor* %43 to i8*
  %45 = bitcast i8* %44 to %struct.usb_device_descriptor*
  store %struct.usb_device_descriptor* %45, %struct.usb_device_descriptor** %10, align 8
  %46 = load %struct.usb_bus_methods*, %struct.usb_bus_methods** %9, align 8
  %47 = getelementptr inbounds %struct.usb_bus_methods, %struct.usb_bus_methods* %46, i32 0, i32 0
  %48 = load i32 (%struct.usb_device*, %struct.usb_hw_ep_profile**, i32)*, i32 (%struct.usb_device*, %struct.usb_hw_ep_profile**, i32)** %47, align 8
  %49 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %50 = call i32 %48(%struct.usb_device* %49, %struct.usb_hw_ep_profile** %8, i32 0)
  %51 = load %struct.usb_hw_ep_profile*, %struct.usb_hw_ep_profile** %8, align 8
  %52 = icmp eq %struct.usb_hw_ep_profile* %51, null
  br i1 %52, label %53, label %55

53:                                               ; preds = %42
  %54 = load i32, i32* @USB_ERR_INVAL, align 4
  store i32 %54, i32* %3, align 4
  br label %236

55:                                               ; preds = %42
  %56 = load %struct.usb_hw_ep_profile*, %struct.usb_hw_ep_profile** %8, align 8
  %57 = load i32, i32* @UE_CONTROL, align 4
  %58 = call i32 @usb_hw_ep_match(%struct.usb_hw_ep_profile* %56, i32 %57, i32 0)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %55
  %61 = call i32 @DPRINTFN(i32 0, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %62 = load i32, i32* @USB_ERR_INVAL, align 4
  store i32 %62, i32* %3, align 4
  br label %236

63:                                               ; preds = %55
  %64 = load %struct.usb_device_descriptor*, %struct.usb_device_descriptor** %10, align 8
  %65 = getelementptr inbounds %struct.usb_device_descriptor, %struct.usb_device_descriptor* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  store i32 %66, i32* %11, align 4
  %67 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %68 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @USB_SPEED_FULL, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %92

72:                                               ; preds = %63
  br label %73

73:                                               ; preds = %72, %87
  %74 = load %struct.usb_hw_ep_profile*, %struct.usb_hw_ep_profile** %8, align 8
  %75 = getelementptr inbounds %struct.usb_hw_ep_profile, %struct.usb_hw_ep_profile* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %11, align 4
  %78 = icmp sge i32 %76, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %73
  br label %88

80:                                               ; preds = %73
  %81 = load i32, i32* %11, align 4
  %82 = sdiv i32 %81, 2
  store i32 %82, i32* %11, align 4
  %83 = load i32, i32* %11, align 4
  %84 = icmp slt i32 %83, 8
  br i1 %84, label %85, label %87

85:                                               ; preds = %80
  %86 = load i32, i32* @USB_ERR_INVAL, align 4
  store i32 %86, i32* %3, align 4
  br label %236

87:                                               ; preds = %80
  br label %73

88:                                               ; preds = %79
  %89 = load i32, i32* %11, align 4
  %90 = load %struct.usb_device_descriptor*, %struct.usb_device_descriptor** %10, align 8
  %91 = getelementptr inbounds %struct.usb_device_descriptor, %struct.usb_device_descriptor* %90, i32 0, i32 0
  store i32 %89, i32* %91, align 4
  br label %105

92:                                               ; preds = %63
  %93 = load i32, i32* %11, align 4
  %94 = icmp eq i32 %93, 255
  br i1 %94, label %95, label %96

95:                                               ; preds = %92
  store i32 512, i32* %11, align 4
  br label %96

96:                                               ; preds = %95, %92
  %97 = load %struct.usb_hw_ep_profile*, %struct.usb_hw_ep_profile** %8, align 8
  %98 = getelementptr inbounds %struct.usb_hw_ep_profile, %struct.usb_hw_ep_profile* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* %11, align 4
  %101 = icmp slt i32 %99, %100
  br i1 %101, label %102, label %104

102:                                              ; preds = %96
  %103 = load i32, i32* @USB_ERR_INVAL, align 4
  store i32 %103, i32* %3, align 4
  br label %236

104:                                              ; preds = %96
  br label %105

105:                                              ; preds = %104, %88
  store i32 0, i32* %3, align 4
  br label %236

106:                                              ; preds = %28
  %107 = load %struct.usb_descriptor*, %struct.usb_descriptor** %5, align 8
  %108 = getelementptr inbounds %struct.usb_descriptor, %struct.usb_descriptor* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @UDESC_CONFIG, align 8
  %111 = icmp ne i64 %109, %110
  br i1 %111, label %112, label %114

112:                                              ; preds = %106
  %113 = load i32, i32* @USB_ERR_INVAL, align 4
  store i32 %113, i32* %3, align 4
  br label %236

114:                                              ; preds = %106
  %115 = load %struct.usb_descriptor*, %struct.usb_descriptor** %5, align 8
  %116 = getelementptr inbounds %struct.usb_descriptor, %struct.usb_descriptor* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 8
  %118 = sext i32 %117 to i64
  %119 = icmp ult i64 %118, 1
  br i1 %119, label %120, label %122

120:                                              ; preds = %114
  %121 = load i32, i32* @USB_ERR_INVAL, align 4
  store i32 %121, i32* %3, align 4
  br label %236

122:                                              ; preds = %114
  %123 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %124 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 0
  %126 = load %struct.usb_hw_ep_scratch*, %struct.usb_hw_ep_scratch** %125, align 8
  store %struct.usb_hw_ep_scratch* %126, %struct.usb_hw_ep_scratch** %6, align 8
  %127 = load %struct.usb_hw_ep_scratch*, %struct.usb_hw_ep_scratch** %6, align 8
  %128 = call i32 @memset(%struct.usb_hw_ep_scratch* %127, i32 0, i32 40)
  %129 = load %struct.usb_hw_ep_scratch*, %struct.usb_hw_ep_scratch** %6, align 8
  %130 = getelementptr inbounds %struct.usb_hw_ep_scratch, %struct.usb_hw_ep_scratch* %129, i32 0, i32 0
  %131 = load %struct.usb_hw_ep_scratch_sub*, %struct.usb_hw_ep_scratch_sub** %130, align 8
  %132 = load %struct.usb_hw_ep_scratch*, %struct.usb_hw_ep_scratch** %6, align 8
  %133 = getelementptr inbounds %struct.usb_hw_ep_scratch, %struct.usb_hw_ep_scratch* %132, i32 0, i32 1
  store %struct.usb_hw_ep_scratch_sub* %131, %struct.usb_hw_ep_scratch_sub** %133, align 8
  %134 = load %struct.usb_descriptor*, %struct.usb_descriptor** %5, align 8
  %135 = bitcast %struct.usb_descriptor* %134 to i8*
  %136 = load %struct.usb_hw_ep_scratch*, %struct.usb_hw_ep_scratch** %6, align 8
  %137 = getelementptr inbounds %struct.usb_hw_ep_scratch, %struct.usb_hw_ep_scratch* %136, i32 0, i32 4
  store i8* %135, i8** %137, align 8
  %138 = load %struct.usb_bus_methods*, %struct.usb_bus_methods** %9, align 8
  %139 = load %struct.usb_hw_ep_scratch*, %struct.usb_hw_ep_scratch** %6, align 8
  %140 = getelementptr inbounds %struct.usb_hw_ep_scratch, %struct.usb_hw_ep_scratch* %139, i32 0, i32 3
  store %struct.usb_bus_methods* %138, %struct.usb_bus_methods** %140, align 8
  %141 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %142 = load %struct.usb_hw_ep_scratch*, %struct.usb_hw_ep_scratch** %6, align 8
  %143 = getelementptr inbounds %struct.usb_hw_ep_scratch, %struct.usb_hw_ep_scratch* %142, i32 0, i32 2
  store %struct.usb_device* %141, %struct.usb_device** %143, align 8
  %144 = load %struct.usb_hw_ep_scratch*, %struct.usb_hw_ep_scratch** %6, align 8
  %145 = load i32, i32* @UE_ISOCHRONOUS, align 4
  %146 = call i64 @usb_hw_ep_get_needs(%struct.usb_hw_ep_scratch* %144, i32 %145, i32 0)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %163, label %148

148:                                              ; preds = %122
  %149 = load %struct.usb_hw_ep_scratch*, %struct.usb_hw_ep_scratch** %6, align 8
  %150 = load i32, i32* @UE_INTERRUPT, align 4
  %151 = call i64 @usb_hw_ep_get_needs(%struct.usb_hw_ep_scratch* %149, i32 %150, i32 0)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %163, label %153

153:                                              ; preds = %148
  %154 = load %struct.usb_hw_ep_scratch*, %struct.usb_hw_ep_scratch** %6, align 8
  %155 = load i32, i32* @UE_CONTROL, align 4
  %156 = call i64 @usb_hw_ep_get_needs(%struct.usb_hw_ep_scratch* %154, i32 %155, i32 0)
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %163, label %158

158:                                              ; preds = %153
  %159 = load %struct.usb_hw_ep_scratch*, %struct.usb_hw_ep_scratch** %6, align 8
  %160 = load i32, i32* @UE_BULK, align 4
  %161 = call i64 @usb_hw_ep_get_needs(%struct.usb_hw_ep_scratch* %159, i32 %160, i32 0)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %166

163:                                              ; preds = %158, %153, %148, %122
  %164 = call i32 @DPRINTFN(i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %165 = load i32, i32* @USB_ERR_INVAL, align 4
  store i32 %165, i32* %3, align 4
  br label %236

166:                                              ; preds = %158
  %167 = load %struct.usb_hw_ep_scratch*, %struct.usb_hw_ep_scratch** %6, align 8
  %168 = getelementptr inbounds %struct.usb_hw_ep_scratch, %struct.usb_hw_ep_scratch* %167, i32 0, i32 0
  %169 = load %struct.usb_hw_ep_scratch_sub*, %struct.usb_hw_ep_scratch_sub** %168, align 8
  store %struct.usb_hw_ep_scratch_sub* %169, %struct.usb_hw_ep_scratch_sub** %7, align 8
  br label %170

170:                                              ; preds = %204, %166
  %171 = load %struct.usb_hw_ep_scratch_sub*, %struct.usb_hw_ep_scratch_sub** %7, align 8
  %172 = load %struct.usb_hw_ep_scratch*, %struct.usb_hw_ep_scratch** %6, align 8
  %173 = getelementptr inbounds %struct.usb_hw_ep_scratch, %struct.usb_hw_ep_scratch* %172, i32 0, i32 1
  %174 = load %struct.usb_hw_ep_scratch_sub*, %struct.usb_hw_ep_scratch_sub** %173, align 8
  %175 = icmp ne %struct.usb_hw_ep_scratch_sub* %171, %174
  br i1 %175, label %176, label %207

176:                                              ; preds = %170
  br label %177

177:                                              ; preds = %202, %176
  %178 = load %struct.usb_hw_ep_scratch_sub*, %struct.usb_hw_ep_scratch_sub** %7, align 8
  %179 = getelementptr inbounds %struct.usb_hw_ep_scratch_sub, %struct.usb_hw_ep_scratch_sub* %178, i32 0, i32 1
  %180 = load i64, i64* %179, align 8
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %187, label %182

182:                                              ; preds = %177
  %183 = load %struct.usb_hw_ep_scratch_sub*, %struct.usb_hw_ep_scratch_sub** %7, align 8
  %184 = getelementptr inbounds %struct.usb_hw_ep_scratch_sub, %struct.usb_hw_ep_scratch_sub* %183, i32 0, i32 0
  %185 = load i64, i64* %184, align 8
  %186 = icmp ne i64 %185, 0
  br label %187

187:                                              ; preds = %182, %177
  %188 = phi i1 [ true, %177 ], [ %186, %182 ]
  br i1 %188, label %189, label %203

189:                                              ; preds = %187
  %190 = load %struct.usb_hw_ep_scratch*, %struct.usb_hw_ep_scratch** %6, align 8
  %191 = load %struct.usb_hw_ep_scratch_sub*, %struct.usb_hw_ep_scratch_sub** %7, align 8
  %192 = call i64 @usb_hw_ep_find_match(%struct.usb_hw_ep_scratch* %190, %struct.usb_hw_ep_scratch_sub* %191, i32 1)
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %202

194:                                              ; preds = %189
  %195 = load %struct.usb_hw_ep_scratch*, %struct.usb_hw_ep_scratch** %6, align 8
  %196 = load %struct.usb_hw_ep_scratch_sub*, %struct.usb_hw_ep_scratch_sub** %7, align 8
  %197 = call i64 @usb_hw_ep_find_match(%struct.usb_hw_ep_scratch* %195, %struct.usb_hw_ep_scratch_sub* %196, i32 0)
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %202

199:                                              ; preds = %194
  %200 = call i32 @DPRINTFN(i32 0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %201 = load i32, i32* @USB_ERR_INVAL, align 4
  store i32 %201, i32* %3, align 4
  br label %236

202:                                              ; preds = %194, %189
  br label %177

203:                                              ; preds = %187
  br label %204

204:                                              ; preds = %203
  %205 = load %struct.usb_hw_ep_scratch_sub*, %struct.usb_hw_ep_scratch_sub** %7, align 8
  %206 = getelementptr inbounds %struct.usb_hw_ep_scratch_sub, %struct.usb_hw_ep_scratch_sub* %205, i32 1
  store %struct.usb_hw_ep_scratch_sub* %206, %struct.usb_hw_ep_scratch_sub** %7, align 8
  br label %170

207:                                              ; preds = %170
  %208 = load %struct.usb_hw_ep_scratch*, %struct.usb_hw_ep_scratch** %6, align 8
  %209 = getelementptr inbounds %struct.usb_hw_ep_scratch, %struct.usb_hw_ep_scratch* %208, i32 0, i32 0
  %210 = load %struct.usb_hw_ep_scratch_sub*, %struct.usb_hw_ep_scratch_sub** %209, align 8
  %211 = load %struct.usb_hw_ep_scratch*, %struct.usb_hw_ep_scratch** %6, align 8
  %212 = getelementptr inbounds %struct.usb_hw_ep_scratch, %struct.usb_hw_ep_scratch* %211, i32 0, i32 1
  store %struct.usb_hw_ep_scratch_sub* %210, %struct.usb_hw_ep_scratch_sub** %212, align 8
  %213 = load %struct.usb_hw_ep_scratch*, %struct.usb_hw_ep_scratch** %6, align 8
  %214 = load i32, i32* @UE_ISOCHRONOUS, align 4
  %215 = call i64 @usb_hw_ep_get_needs(%struct.usb_hw_ep_scratch* %213, i32 %214, i32 1)
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %232, label %217

217:                                              ; preds = %207
  %218 = load %struct.usb_hw_ep_scratch*, %struct.usb_hw_ep_scratch** %6, align 8
  %219 = load i32, i32* @UE_INTERRUPT, align 4
  %220 = call i64 @usb_hw_ep_get_needs(%struct.usb_hw_ep_scratch* %218, i32 %219, i32 1)
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %232, label %222

222:                                              ; preds = %217
  %223 = load %struct.usb_hw_ep_scratch*, %struct.usb_hw_ep_scratch** %6, align 8
  %224 = load i32, i32* @UE_CONTROL, align 4
  %225 = call i64 @usb_hw_ep_get_needs(%struct.usb_hw_ep_scratch* %223, i32 %224, i32 1)
  %226 = icmp ne i64 %225, 0
  br i1 %226, label %232, label %227

227:                                              ; preds = %222
  %228 = load %struct.usb_hw_ep_scratch*, %struct.usb_hw_ep_scratch** %6, align 8
  %229 = load i32, i32* @UE_BULK, align 4
  %230 = call i64 @usb_hw_ep_get_needs(%struct.usb_hw_ep_scratch* %228, i32 %229, i32 1)
  %231 = icmp ne i64 %230, 0
  br i1 %231, label %232, label %235

232:                                              ; preds = %227, %222, %217, %207
  %233 = call i32 @DPRINTFN(i32 0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  %234 = load i32, i32* @USB_ERR_INVAL, align 4
  store i32 %234, i32* %3, align 4
  br label %236

235:                                              ; preds = %227
  store i32 0, i32* %3, align 4
  br label %236

236:                                              ; preds = %235, %232, %199, %163, %120, %112, %105, %102, %85, %60, %53, %40, %26, %14
  %237 = load i32, i32* %3, align 4
  ret i32 %237
}

declare dso_local i32 @usb_hw_ep_match(%struct.usb_hw_ep_profile*, i32, i32) #1

declare dso_local i32 @DPRINTFN(i32, i8*) #1

declare dso_local i32 @memset(%struct.usb_hw_ep_scratch*, i32, i32) #1

declare dso_local i64 @usb_hw_ep_get_needs(%struct.usb_hw_ep_scratch*, i32, i32) #1

declare dso_local i64 @usb_hw_ep_find_match(%struct.usb_hw_ep_scratch*, %struct.usb_hw_ep_scratch_sub*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
