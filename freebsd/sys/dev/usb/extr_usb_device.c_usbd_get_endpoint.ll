; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_device.c_usbd_get_endpoint.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_device.c_usbd_get_endpoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_endpoint = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i64 }
%struct.usb_device = type { i32, %struct.usb_endpoint, %struct.TYPE_3__, %struct.usb_endpoint* }
%struct.TYPE_3__ = type { i64 }
%struct.usb_config = type { i64, i64, i64, i64, i64 }

@.str = private unnamed_addr constant [65 x i8] c"udev=%p iface_index=%d address=0x%x type=0x%x dir=0x%x index=%d\0A\00", align 1
@USB_MODE_DUAL = common dso_local global i64 0, align 8
@UE_DIR_RX = common dso_local global i64 0, align 8
@UE_DIR_IN = common dso_local global i64 0, align 8
@UE_DIR_OUT = common dso_local global i64 0, align 8
@USB_MODE_DEVICE = common dso_local global i64 0, align 8
@UE_DIR_TX = common dso_local global i64 0, align 8
@UE_DIR_ANY = common dso_local global i64 0, align 8
@UE_ADDR_ANY = common dso_local global i64 0, align 8
@UE_ADDR = common dso_local global i64 0, align 8
@UE_BULK_INTR = common dso_local global i64 0, align 8
@UE_TYPE_ANY = common dso_local global i64 0, align 8
@UE_XFERTYPE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.usb_endpoint* @usbd_get_endpoint(%struct.usb_device* %0, i64 %1, %struct.usb_config* %2) #0 {
  %4 = alloca %struct.usb_endpoint*, align 8
  %5 = alloca %struct.usb_device*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.usb_config*, align 8
  %8 = alloca %struct.usb_endpoint*, align 8
  %9 = alloca %struct.usb_endpoint*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.usb_device* %0, %struct.usb_device** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.usb_config* %2, %struct.usb_config** %7, align 8
  %15 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %16 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %15, i32 0, i32 3
  %17 = load %struct.usb_endpoint*, %struct.usb_endpoint** %16, align 8
  store %struct.usb_endpoint* %17, %struct.usb_endpoint** %8, align 8
  %18 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %19 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %18, i32 0, i32 3
  %20 = load %struct.usb_endpoint*, %struct.usb_endpoint** %19, align 8
  %21 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %22 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.usb_endpoint, %struct.usb_endpoint* %20, i64 %24
  store %struct.usb_endpoint* %25, %struct.usb_endpoint** %9, align 8
  %26 = load %struct.usb_config*, %struct.usb_config** %7, align 8
  %27 = getelementptr inbounds %struct.usb_config, %struct.usb_config* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %10, align 8
  %29 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %30 = load i64, i64* %6, align 8
  %31 = load %struct.usb_config*, %struct.usb_config** %7, align 8
  %32 = getelementptr inbounds %struct.usb_config, %struct.usb_config* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.usb_config*, %struct.usb_config** %7, align 8
  %35 = getelementptr inbounds %struct.usb_config, %struct.usb_config* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.usb_config*, %struct.usb_config** %7, align 8
  %38 = getelementptr inbounds %struct.usb_config, %struct.usb_config* %37, i32 0, i32 3
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.usb_config*, %struct.usb_config** %7, align 8
  %41 = getelementptr inbounds %struct.usb_config, %struct.usb_config* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @DPRINTFN(i32 10, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0), %struct.usb_device* %29, i64 %30, i64 %33, i64 %36, i64 %39, i64 %42)
  %44 = load %struct.usb_config*, %struct.usb_config** %7, align 8
  %45 = getelementptr inbounds %struct.usb_config, %struct.usb_config* %44, i32 0, i32 4
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @USB_MODE_DUAL, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %59

49:                                               ; preds = %3
  %50 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %51 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.usb_config*, %struct.usb_config** %7, align 8
  %55 = getelementptr inbounds %struct.usb_config, %struct.usb_config* %54, i32 0, i32 4
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %53, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %49
  store %struct.usb_endpoint* null, %struct.usb_endpoint** %4, align 8
  br label %247

59:                                               ; preds = %49, %3
  %60 = load %struct.usb_config*, %struct.usb_config** %7, align 8
  %61 = getelementptr inbounds %struct.usb_config, %struct.usb_config* %60, i32 0, i32 3
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @UE_DIR_RX, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %81

65:                                               ; preds = %59
  %66 = load i64, i64* @UE_DIR_IN, align 8
  %67 = load i64, i64* @UE_DIR_OUT, align 8
  %68 = or i64 %66, %67
  store i64 %68, i64* %11, align 8
  %69 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %70 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @USB_MODE_DEVICE, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %77

75:                                               ; preds = %65
  %76 = load i64, i64* @UE_DIR_OUT, align 8
  br label %79

77:                                               ; preds = %65
  %78 = load i64, i64* @UE_DIR_IN, align 8
  br label %79

79:                                               ; preds = %77, %75
  %80 = phi i64 [ %76, %75 ], [ %78, %77 ]
  store i64 %80, i64* %12, align 8
  br label %123

81:                                               ; preds = %59
  %82 = load %struct.usb_config*, %struct.usb_config** %7, align 8
  %83 = getelementptr inbounds %struct.usb_config, %struct.usb_config* %82, i32 0, i32 3
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @UE_DIR_TX, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %103

87:                                               ; preds = %81
  %88 = load i64, i64* @UE_DIR_IN, align 8
  %89 = load i64, i64* @UE_DIR_OUT, align 8
  %90 = or i64 %88, %89
  store i64 %90, i64* %11, align 8
  %91 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %92 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %91, i32 0, i32 2
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @USB_MODE_DEVICE, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %99

97:                                               ; preds = %87
  %98 = load i64, i64* @UE_DIR_IN, align 8
  br label %101

99:                                               ; preds = %87
  %100 = load i64, i64* @UE_DIR_OUT, align 8
  br label %101

101:                                              ; preds = %99, %97
  %102 = phi i64 [ %98, %97 ], [ %100, %99 ]
  store i64 %102, i64* %12, align 8
  br label %122

103:                                              ; preds = %81
  %104 = load %struct.usb_config*, %struct.usb_config** %7, align 8
  %105 = getelementptr inbounds %struct.usb_config, %struct.usb_config* %104, i32 0, i32 3
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @UE_DIR_ANY, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %109, label %110

109:                                              ; preds = %103
  store i64 0, i64* %11, align 8
  store i64 0, i64* %12, align 8
  br label %121

110:                                              ; preds = %103
  %111 = load i64, i64* @UE_DIR_IN, align 8
  %112 = load i64, i64* @UE_DIR_OUT, align 8
  %113 = or i64 %111, %112
  store i64 %113, i64* %11, align 8
  %114 = load %struct.usb_config*, %struct.usb_config** %7, align 8
  %115 = getelementptr inbounds %struct.usb_config, %struct.usb_config* %114, i32 0, i32 3
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* @UE_DIR_IN, align 8
  %118 = load i64, i64* @UE_DIR_OUT, align 8
  %119 = or i64 %117, %118
  %120 = and i64 %116, %119
  store i64 %120, i64* %12, align 8
  br label %121

121:                                              ; preds = %110, %109
  br label %122

122:                                              ; preds = %121, %101
  br label %123

123:                                              ; preds = %122, %79
  %124 = load %struct.usb_config*, %struct.usb_config** %7, align 8
  %125 = getelementptr inbounds %struct.usb_config, %struct.usb_config* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* @UE_ADDR_ANY, align 8
  %128 = icmp eq i64 %126, %127
  br i1 %128, label %129, label %130

129:                                              ; preds = %123
  br label %141

130:                                              ; preds = %123
  %131 = load i64, i64* @UE_ADDR, align 8
  %132 = load i64, i64* %11, align 8
  %133 = or i64 %132, %131
  store i64 %133, i64* %11, align 8
  %134 = load %struct.usb_config*, %struct.usb_config** %7, align 8
  %135 = getelementptr inbounds %struct.usb_config, %struct.usb_config* %134, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = load i64, i64* @UE_ADDR, align 8
  %138 = and i64 %136, %137
  %139 = load i64, i64* %12, align 8
  %140 = or i64 %139, %138
  store i64 %140, i64* %12, align 8
  br label %141

141:                                              ; preds = %130, %129
  %142 = load %struct.usb_config*, %struct.usb_config** %7, align 8
  %143 = getelementptr inbounds %struct.usb_config, %struct.usb_config* %142, i32 0, i32 2
  %144 = load i64, i64* %143, align 8
  %145 = load i64, i64* @UE_BULK_INTR, align 8
  %146 = icmp eq i64 %144, %145
  br i1 %146, label %147, label %148

147:                                              ; preds = %141
  store i64 2, i64* %13, align 8
  store i64 2, i64* %14, align 8
  br label %163

148:                                              ; preds = %141
  %149 = load %struct.usb_config*, %struct.usb_config** %7, align 8
  %150 = getelementptr inbounds %struct.usb_config, %struct.usb_config* %149, i32 0, i32 2
  %151 = load i64, i64* %150, align 8
  %152 = load i64, i64* @UE_TYPE_ANY, align 8
  %153 = icmp eq i64 %151, %152
  br i1 %153, label %154, label %155

154:                                              ; preds = %148
  store i64 0, i64* %13, align 8
  store i64 0, i64* %14, align 8
  br label %162

155:                                              ; preds = %148
  %156 = load i64, i64* @UE_XFERTYPE, align 8
  store i64 %156, i64* %13, align 8
  %157 = load %struct.usb_config*, %struct.usb_config** %7, align 8
  %158 = getelementptr inbounds %struct.usb_config, %struct.usb_config* %157, i32 0, i32 2
  %159 = load i64, i64* %158, align 8
  %160 = load i64, i64* @UE_XFERTYPE, align 8
  %161 = and i64 %159, %160
  store i64 %161, i64* %14, align 8
  br label %162

162:                                              ; preds = %155, %154
  br label %163

163:                                              ; preds = %162, %147
  br label %164

164:                                              ; preds = %207, %163
  %165 = load %struct.usb_endpoint*, %struct.usb_endpoint** %8, align 8
  %166 = load %struct.usb_endpoint*, %struct.usb_endpoint** %9, align 8
  %167 = icmp ne %struct.usb_endpoint* %165, %166
  br i1 %167, label %168, label %210

168:                                              ; preds = %164
  %169 = load %struct.usb_endpoint*, %struct.usb_endpoint** %8, align 8
  %170 = getelementptr inbounds %struct.usb_endpoint, %struct.usb_endpoint* %169, i32 0, i32 1
  %171 = load %struct.TYPE_4__*, %struct.TYPE_4__** %170, align 8
  %172 = icmp eq %struct.TYPE_4__* %171, null
  br i1 %172, label %179, label %173

173:                                              ; preds = %168
  %174 = load %struct.usb_endpoint*, %struct.usb_endpoint** %8, align 8
  %175 = getelementptr inbounds %struct.usb_endpoint, %struct.usb_endpoint* %174, i32 0, i32 0
  %176 = load i64, i64* %175, align 8
  %177 = load i64, i64* %6, align 8
  %178 = icmp ne i64 %176, %177
  br i1 %178, label %179, label %180

179:                                              ; preds = %173, %168
  br label %207

180:                                              ; preds = %173
  %181 = load %struct.usb_endpoint*, %struct.usb_endpoint** %8, align 8
  %182 = getelementptr inbounds %struct.usb_endpoint, %struct.usb_endpoint* %181, i32 0, i32 1
  %183 = load %struct.TYPE_4__*, %struct.TYPE_4__** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %183, i32 0, i32 0
  %185 = load i64, i64* %184, align 8
  %186 = load i64, i64* %11, align 8
  %187 = and i64 %185, %186
  %188 = load i64, i64* %12, align 8
  %189 = icmp eq i64 %187, %188
  br i1 %189, label %190, label %206

190:                                              ; preds = %180
  %191 = load %struct.usb_endpoint*, %struct.usb_endpoint** %8, align 8
  %192 = getelementptr inbounds %struct.usb_endpoint, %struct.usb_endpoint* %191, i32 0, i32 1
  %193 = load %struct.TYPE_4__*, %struct.TYPE_4__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %193, i32 0, i32 1
  %195 = load i64, i64* %194, align 8
  %196 = load i64, i64* %13, align 8
  %197 = and i64 %195, %196
  %198 = load i64, i64* %14, align 8
  %199 = icmp eq i64 %197, %198
  br i1 %199, label %200, label %206

200:                                              ; preds = %190
  %201 = load i64, i64* %10, align 8
  %202 = add nsw i64 %201, -1
  store i64 %202, i64* %10, align 8
  %203 = icmp ne i64 %201, 0
  br i1 %203, label %205, label %204

204:                                              ; preds = %200
  br label %245

205:                                              ; preds = %200
  br label %206

206:                                              ; preds = %205, %190, %180
  br label %207

207:                                              ; preds = %206, %179
  %208 = load %struct.usb_endpoint*, %struct.usb_endpoint** %8, align 8
  %209 = getelementptr inbounds %struct.usb_endpoint, %struct.usb_endpoint* %208, i32 1
  store %struct.usb_endpoint* %209, %struct.usb_endpoint** %8, align 8
  br label %164

210:                                              ; preds = %164
  %211 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %212 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %211, i32 0, i32 1
  %213 = getelementptr inbounds %struct.usb_endpoint, %struct.usb_endpoint* %212, i32 0, i32 1
  %214 = load %struct.TYPE_4__*, %struct.TYPE_4__** %213, align 8
  %215 = icmp ne %struct.TYPE_4__* %214, null
  br i1 %215, label %216, label %244

216:                                              ; preds = %210
  %217 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %218 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %217, i32 0, i32 1
  %219 = getelementptr inbounds %struct.usb_endpoint, %struct.usb_endpoint* %218, i32 0, i32 1
  %220 = load %struct.TYPE_4__*, %struct.TYPE_4__** %219, align 8
  %221 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %220, i32 0, i32 0
  %222 = load i64, i64* %221, align 8
  %223 = load i64, i64* %11, align 8
  %224 = and i64 %222, %223
  %225 = load i64, i64* %12, align 8
  %226 = icmp eq i64 %224, %225
  br i1 %226, label %227, label %244

227:                                              ; preds = %216
  %228 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %229 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %228, i32 0, i32 1
  %230 = getelementptr inbounds %struct.usb_endpoint, %struct.usb_endpoint* %229, i32 0, i32 1
  %231 = load %struct.TYPE_4__*, %struct.TYPE_4__** %230, align 8
  %232 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %231, i32 0, i32 1
  %233 = load i64, i64* %232, align 8
  %234 = load i64, i64* %13, align 8
  %235 = and i64 %233, %234
  %236 = load i64, i64* %14, align 8
  %237 = icmp eq i64 %235, %236
  br i1 %237, label %238, label %244

238:                                              ; preds = %227
  %239 = load i64, i64* %10, align 8
  %240 = icmp ne i64 %239, 0
  br i1 %240, label %244, label %241

241:                                              ; preds = %238
  %242 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %243 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %242, i32 0, i32 1
  store %struct.usb_endpoint* %243, %struct.usb_endpoint** %8, align 8
  br label %245

244:                                              ; preds = %238, %227, %216, %210
  store %struct.usb_endpoint* null, %struct.usb_endpoint** %4, align 8
  br label %247

245:                                              ; preds = %241, %204
  %246 = load %struct.usb_endpoint*, %struct.usb_endpoint** %8, align 8
  store %struct.usb_endpoint* %246, %struct.usb_endpoint** %4, align 8
  br label %247

247:                                              ; preds = %245, %244, %58
  %248 = load %struct.usb_endpoint*, %struct.usb_endpoint** %4, align 8
  ret %struct.usb_endpoint* %248
}

declare dso_local i32 @DPRINTFN(i32, i8*, %struct.usb_device*, i64, i64, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
