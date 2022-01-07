; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_request.c_usbd_req_get_desc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_request.c_usbd_req_get_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { i32 }
%struct.mtx = type { i32 }
%struct.usb_device_request = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [38 x i8] c"id=%d, type=%d, index=%d, max_len=%d\0A\00", align 1
@UT_READ_DEVICE = common dso_local global i32 0, align 4
@UR_GET_DESCRIPTOR = common dso_local global i32 0, align 4
@USB_ERR_INVAL = common dso_local global i64 0, align 8
@USB_ERR_TIMEOUT = common dso_local global i64 0, align 8
@USB_SHORT_XFER_OK = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @usbd_req_get_desc(%struct.usb_device* %0, %struct.mtx* %1, i32* %2, i8* %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9) #0 {
  %11 = alloca %struct.usb_device*, align 8
  %12 = alloca %struct.mtx*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.usb_device_request, align 4
  %22 = alloca i32*, align 8
  %23 = alloca i64, align 8
  store %struct.usb_device* %0, %struct.usb_device** %11, align 8
  store %struct.mtx* %1, %struct.mtx** %12, align 8
  store i32* %2, i32** %13, align 8
  store i8* %3, i8** %14, align 8
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store i32 %8, i32* %19, align 4
  store i32 %9, i32* %20, align 4
  %24 = load i8*, i8** %14, align 8
  %25 = bitcast i8* %24 to i32*
  store i32* %25, i32** %22, align 8
  %26 = load i32, i32* %17, align 4
  %27 = load i32, i32* %18, align 4
  %28 = load i32, i32* %19, align 4
  %29 = load i32, i32* %16, align 4
  %30 = call i32 @DPRINTFN(i32 4, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %26, i32 %27, i32 %28, i32 %29)
  %31 = load i32, i32* @UT_READ_DEVICE, align 4
  %32 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %21, i32 0, i32 4
  store i32 %31, i32* %32, align 4
  %33 = load i32, i32* @UR_GET_DESCRIPTOR, align 4
  %34 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %21, i32 0, i32 3
  store i32 %33, i32* %34, align 4
  %35 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %21, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %18, align 4
  %38 = load i32, i32* %19, align 4
  %39 = call i32 @USETW2(i32 %36, i32 %37, i32 %38)
  %40 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %21, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %17, align 4
  %43 = call i32 @USETW(i32 %41, i32 %42)
  br label %44

44:                                               ; preds = %10, %119, %169
  %45 = load i32, i32* %15, align 4
  %46 = icmp slt i32 %45, 2
  br i1 %46, label %50, label %47

47:                                               ; preds = %44
  %48 = load i32, i32* %16, align 4
  %49 = icmp slt i32 %48, 2
  br i1 %49, label %50, label %52

50:                                               ; preds = %47, %44
  %51 = load i64, i64* @USB_ERR_INVAL, align 8
  store i64 %51, i64* %23, align 8
  br label %171

52:                                               ; preds = %47
  %53 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %21, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %15, align 4
  %56 = call i32 @USETW(i32 %54, i32 %55)
  %57 = load %struct.usb_device*, %struct.usb_device** %11, align 8
  %58 = load %struct.mtx*, %struct.mtx** %12, align 8
  %59 = load i8*, i8** %14, align 8
  %60 = call i64 @usbd_do_request_flags(%struct.usb_device* %57, %struct.mtx* %58, %struct.usb_device_request* %21, i8* %59, i32 0, i32* null, i32 500)
  store i64 %60, i64* %23, align 8
  %61 = load i64, i64* %23, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %112

63:                                               ; preds = %52
  %64 = load i64, i64* %23, align 8
  %65 = load i64, i64* @USB_ERR_TIMEOUT, align 8
  %66 = icmp ne i64 %64, %65
  br i1 %66, label %67, label %112

67:                                               ; preds = %63
  %68 = load i32, i32* %15, align 4
  %69 = load i32, i32* %16, align 4
  %70 = icmp ne i32 %68, %69
  br i1 %70, label %71, label %112

71:                                               ; preds = %67
  %72 = load i8*, i8** %14, align 8
  %73 = load i32, i32* %16, align 4
  %74 = call i32 @memset(i8* %72, i32 0, i32 %73)
  %75 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %21, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %16, align 4
  %78 = call i32 @USETW(i32 %76, i32 %77)
  %79 = load %struct.usb_device*, %struct.usb_device** %11, align 8
  %80 = load %struct.mtx*, %struct.mtx** %12, align 8
  %81 = load i8*, i8** %14, align 8
  %82 = load i32, i32* @USB_SHORT_XFER_OK, align 4
  %83 = call i64 @usbd_do_request_flags(%struct.usb_device* %79, %struct.mtx* %80, %struct.usb_device_request* %21, i8* %81, i32 %82, i32* null, i32 500)
  store i64 %83, i64* %23, align 8
  %84 = load i64, i64* %23, align 8
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %86, label %111

86:                                               ; preds = %71
  %87 = load i32*, i32** %22, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 0
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* %16, align 4
  %91 = icmp sgt i32 %89, %90
  br i1 %91, label %92, label %96

92:                                               ; preds = %86
  %93 = load i32, i32* %16, align 4
  %94 = load i32*, i32** %22, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 0
  store i32 %93, i32* %95, align 4
  br label %104

96:                                               ; preds = %86
  %97 = load i32*, i32** %22, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 0
  %99 = load i32, i32* %98, align 4
  %100 = icmp slt i32 %99, 2
  br i1 %100, label %101, label %103

101:                                              ; preds = %96
  %102 = load i64, i64* @USB_ERR_INVAL, align 8
  store i64 %102, i64* %23, align 8
  br label %103

103:                                              ; preds = %101, %96
  br label %104

104:                                              ; preds = %103, %92
  %105 = load i32*, i32** %22, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 0
  %107 = load i32, i32* %106, align 4
  store i32 %107, i32* %15, align 4
  %108 = load i32, i32* %18, align 4
  %109 = load i32*, i32** %22, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 1
  store i32 %108, i32* %110, align 4
  br label %171

111:                                              ; preds = %71
  br label %112

112:                                              ; preds = %111, %67, %63, %52
  %113 = load i64, i64* %23, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %126

115:                                              ; preds = %112
  %116 = load i32, i32* %20, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %119, label %118

118:                                              ; preds = %115
  br label %171

119:                                              ; preds = %115
  %120 = load i32, i32* %20, align 4
  %121 = add nsw i32 %120, -1
  store i32 %121, i32* %20, align 4
  %122 = load %struct.mtx*, %struct.mtx** %12, align 8
  %123 = load i32, i32* @hz, align 4
  %124 = sdiv i32 %123, 5
  %125 = call i32 @usb_pause_mtx(%struct.mtx* %122, i32 %124)
  br label %44

126:                                              ; preds = %112
  %127 = load i32, i32* %15, align 4
  %128 = load i32, i32* %16, align 4
  %129 = icmp eq i32 %127, %128
  br i1 %129, label %130, label %147

130:                                              ; preds = %126
  %131 = load i32*, i32** %22, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 0
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* %15, align 4
  %135 = icmp sgt i32 %133, %134
  br i1 %135, label %136, label %143

136:                                              ; preds = %130
  %137 = load i32*, i32** %13, align 8
  %138 = icmp eq i32* %137, null
  br i1 %138, label %139, label %143

139:                                              ; preds = %136
  %140 = load i32, i32* %15, align 4
  %141 = load i32*, i32** %22, align 8
  %142 = getelementptr inbounds i32, i32* %141, i64 0
  store i32 %140, i32* %142, align 4
  br label %143

143:                                              ; preds = %139, %136, %130
  %144 = load i32, i32* %18, align 4
  %145 = load i32*, i32** %22, align 8
  %146 = getelementptr inbounds i32, i32* %145, i64 1
  store i32 %144, i32* %146, align 4
  br label %171

147:                                              ; preds = %126
  %148 = load i32, i32* %16, align 4
  %149 = load i32*, i32** %22, align 8
  %150 = getelementptr inbounds i32, i32* %149, i64 0
  %151 = load i32, i32* %150, align 4
  %152 = icmp sgt i32 %148, %151
  br i1 %152, label %153, label %157

153:                                              ; preds = %147
  %154 = load i32*, i32** %22, align 8
  %155 = getelementptr inbounds i32, i32* %154, i64 0
  %156 = load i32, i32* %155, align 4
  store i32 %156, i32* %16, align 4
  br label %157

157:                                              ; preds = %153, %147
  br label %158

158:                                              ; preds = %162, %157
  %159 = load i32, i32* %15, align 4
  %160 = load i32, i32* %16, align 4
  %161 = icmp sgt i32 %159, %160
  br i1 %161, label %162, label %169

162:                                              ; preds = %158
  %163 = load i32, i32* %15, align 4
  %164 = add nsw i32 %163, -1
  store i32 %164, i32* %15, align 4
  %165 = load i32*, i32** %22, align 8
  %166 = load i32, i32* %15, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i32, i32* %165, i64 %167
  store i32 0, i32* %168, align 4
  br label %158

169:                                              ; preds = %158
  %170 = load i32, i32* %16, align 4
  store i32 %170, i32* %15, align 4
  br label %44

171:                                              ; preds = %143, %118, %104, %50
  %172 = load i32*, i32** %13, align 8
  %173 = icmp ne i32* %172, null
  br i1 %173, label %174, label %183

174:                                              ; preds = %171
  %175 = load i64, i64* %23, align 8
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %179

177:                                              ; preds = %174
  %178 = load i32*, i32** %13, align 8
  store i32 0, i32* %178, align 4
  br label %182

179:                                              ; preds = %174
  %180 = load i32, i32* %15, align 4
  %181 = load i32*, i32** %13, align 8
  store i32 %180, i32* %181, align 4
  br label %182

182:                                              ; preds = %179, %177
  br label %183

183:                                              ; preds = %182, %171
  %184 = load i64, i64* %23, align 8
  ret i64 %184
}

declare dso_local i32 @DPRINTFN(i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @USETW2(i32, i32, i32) #1

declare dso_local i32 @USETW(i32, i32) #1

declare dso_local i64 @usbd_do_request_flags(%struct.usb_device*, %struct.mtx*, %struct.usb_device_request*, i8*, i32, i32*, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @usb_pause_mtx(%struct.mtx*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
