; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_request.c_usbd_req_get_string_any.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_request.c_usbd_req_get_string_any.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.mtx = type { i32 }

@USB_ERR_NORMAL_COMPLETION = common dso_local global i64 0, align 8
@USB_ERR_INVAL = common dso_local global i64 0, align 8
@USB_ERR_STALLED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @usbd_req_get_string_any(%struct.usb_device* %0, %struct.mtx* %1, i8* %2, i32 %3, i64 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.usb_device*, align 8
  %8 = alloca %struct.mtx*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  store %struct.usb_device* %0, %struct.usb_device** %7, align 8
  store %struct.mtx* %1, %struct.mtx** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  %19 = load i32, i32* %10, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %5
  %22 = load i64, i64* @USB_ERR_NORMAL_COMPLETION, align 8
  store i64 %22, i64* %6, align 8
  br label %187

23:                                               ; preds = %5
  %24 = load i64, i64* %11, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %23
  %27 = load i8*, i8** %9, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 0
  store i8 0, i8* %28, align 1
  %29 = load i64, i64* @USB_ERR_INVAL, align 8
  store i64 %29, i64* %6, align 8
  br label %187

30:                                               ; preds = %23
  %31 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %32 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %30
  %37 = load i8*, i8** %9, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 0
  store i8 0, i8* %38, align 1
  %39 = load i64, i64* @USB_ERR_STALLED, align 8
  store i64 %39, i64* %6, align 8
  br label %187

40:                                               ; preds = %30
  %41 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %42 = load %struct.mtx*, %struct.mtx** %8, align 8
  %43 = load i8*, i8** %9, align 8
  %44 = load i32, i32* %10, align 4
  %45 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %46 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i64, i64* %11, align 8
  %49 = call i64 @usbd_req_get_string_desc(%struct.usb_device* %41, %struct.mtx* %42, i8* %43, i32 %44, i32 %47, i64 %48)
  store i64 %49, i64* %18, align 8
  %50 = load i64, i64* %18, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %40
  %53 = load i8*, i8** %9, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 0
  store i8 0, i8* %54, align 1
  %55 = load i64, i64* %18, align 8
  store i64 %55, i64* %6, align 8
  br label %187

56:                                               ; preds = %40
  %57 = load i8*, i8** %9, align 8
  %58 = bitcast i8* %57 to i64*
  store i64* %58, i64** %13, align 8
  %59 = load i64*, i64** %13, align 8
  %60 = getelementptr inbounds i64, i64* %59, i64 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp slt i64 %61, 2
  br i1 %62, label %63, label %67

63:                                               ; preds = %56
  %64 = load i8*, i8** %9, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 0
  store i8 0, i8* %65, align 1
  %66 = load i64, i64* @USB_ERR_INVAL, align 8
  store i64 %66, i64* %6, align 8
  br label %187

67:                                               ; preds = %56
  %68 = load i32, i32* %10, align 4
  %69 = add nsw i32 %68, -1
  store i32 %69, i32* %10, align 4
  %70 = load i8*, i8** %9, align 8
  store i8* %70, i8** %12, align 8
  %71 = load i64*, i64** %13, align 8
  %72 = getelementptr inbounds i64, i64* %71, i64 0
  %73 = load i64, i64* %72, align 8
  %74 = sdiv i64 %73, 2
  %75 = sub nsw i64 %74, 1
  %76 = trunc i64 %75 to i32
  store i32 %76, i32* %15, align 4
  %77 = load i32, i32* %15, align 4
  %78 = load i32, i32* %10, align 4
  %79 = icmp sgt i32 %77, %78
  br i1 %79, label %80, label %82

80:                                               ; preds = %67
  %81 = load i32, i32* %10, align 4
  store i32 %81, i32* %15, align 4
  br label %82

82:                                               ; preds = %80, %67
  %83 = load i64*, i64** %13, align 8
  %84 = getelementptr inbounds i64, i64* %83, i64 2
  store i64* %84, i64** %13, align 8
  store i64 3, i64* %17, align 8
  store i32 0, i32* %14, align 4
  br label %85

85:                                               ; preds = %181, %82
  %86 = load i32, i32* %14, align 4
  %87 = load i32, i32* %15, align 4
  %88 = icmp ne i32 %86, %87
  br i1 %88, label %89, label %184

89:                                               ; preds = %85
  %90 = load i64*, i64** %13, align 8
  %91 = load i32, i32* %14, align 4
  %92 = mul nsw i32 2, %91
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i64, i64* %90, i64 %93
  %95 = call i32 @UGETW(i64* %94)
  store i32 %95, i32* %16, align 4
  %96 = load i32, i32* %16, align 4
  %97 = and i32 %96, 65280
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %107

99:                                               ; preds = %89
  %100 = load i64, i64* %17, align 8
  %101 = and i64 %100, 1
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %99
  %104 = load i32, i32* %16, align 4
  %105 = trunc i32 %104 to i8
  %106 = load i8*, i8** %12, align 8
  store i8 %105, i8* %106, align 1
  store i64 1, i64* %17, align 8
  br label %122

107:                                              ; preds = %99, %89
  %108 = load i32, i32* %16, align 4
  %109 = and i32 %108, 255
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %120

111:                                              ; preds = %107
  %112 = load i64, i64* %17, align 8
  %113 = and i64 %112, 2
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %120

115:                                              ; preds = %111
  %116 = load i32, i32* %16, align 4
  %117 = ashr i32 %116, 8
  %118 = trunc i32 %117 to i8
  %119 = load i8*, i8** %12, align 8
  store i8 %118, i8* %119, align 1
  store i64 2, i64* %17, align 8
  br label %121

120:                                              ; preds = %111, %107
  br label %181

121:                                              ; preds = %115
  br label %122

122:                                              ; preds = %121, %103
  %123 = load i8*, i8** %12, align 8
  %124 = load i8, i8* %123, align 1
  %125 = call i64 @isalpha(i8 signext %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %177, label %127

127:                                              ; preds = %122
  %128 = load i8*, i8** %12, align 8
  %129 = load i8, i8* %128, align 1
  %130 = call i64 @isdigit(i8 signext %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %177, label %132

132:                                              ; preds = %127
  %133 = load i8*, i8** %12, align 8
  %134 = load i8, i8* %133, align 1
  %135 = sext i8 %134 to i32
  %136 = icmp eq i32 %135, 45
  br i1 %136, label %177, label %137

137:                                              ; preds = %132
  %138 = load i8*, i8** %12, align 8
  %139 = load i8, i8* %138, align 1
  %140 = sext i8 %139 to i32
  %141 = icmp eq i32 %140, 43
  br i1 %141, label %177, label %142

142:                                              ; preds = %137
  %143 = load i8*, i8** %12, align 8
  %144 = load i8, i8* %143, align 1
  %145 = sext i8 %144 to i32
  %146 = icmp eq i32 %145, 32
  br i1 %146, label %177, label %147

147:                                              ; preds = %142
  %148 = load i8*, i8** %12, align 8
  %149 = load i8, i8* %148, align 1
  %150 = sext i8 %149 to i32
  %151 = icmp eq i32 %150, 46
  br i1 %151, label %177, label %152

152:                                              ; preds = %147
  %153 = load i8*, i8** %12, align 8
  %154 = load i8, i8* %153, align 1
  %155 = sext i8 %154 to i32
  %156 = icmp eq i32 %155, 44
  br i1 %156, label %177, label %157

157:                                              ; preds = %152
  %158 = load i8*, i8** %12, align 8
  %159 = load i8, i8* %158, align 1
  %160 = sext i8 %159 to i32
  %161 = icmp eq i32 %160, 58
  br i1 %161, label %177, label %162

162:                                              ; preds = %157
  %163 = load i8*, i8** %12, align 8
  %164 = load i8, i8* %163, align 1
  %165 = sext i8 %164 to i32
  %166 = icmp eq i32 %165, 47
  br i1 %166, label %177, label %167

167:                                              ; preds = %162
  %168 = load i8*, i8** %12, align 8
  %169 = load i8, i8* %168, align 1
  %170 = sext i8 %169 to i32
  %171 = icmp eq i32 %170, 40
  br i1 %171, label %177, label %172

172:                                              ; preds = %167
  %173 = load i8*, i8** %12, align 8
  %174 = load i8, i8* %173, align 1
  %175 = sext i8 %174 to i32
  %176 = icmp eq i32 %175, 41
  br i1 %176, label %177, label %180

177:                                              ; preds = %172, %167, %162, %157, %152, %147, %142, %137, %132, %127, %122
  %178 = load i8*, i8** %12, align 8
  %179 = getelementptr inbounds i8, i8* %178, i32 1
  store i8* %179, i8** %12, align 8
  br label %180

180:                                              ; preds = %177, %172
  br label %181

181:                                              ; preds = %180, %120
  %182 = load i32, i32* %14, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %14, align 4
  br label %85

184:                                              ; preds = %85
  %185 = load i8*, i8** %12, align 8
  store i8 0, i8* %185, align 1
  %186 = load i64, i64* @USB_ERR_NORMAL_COMPLETION, align 8
  store i64 %186, i64* %6, align 8
  br label %187

187:                                              ; preds = %184, %63, %52, %36, %26, %21
  %188 = load i64, i64* %6, align 8
  ret i64 %188
}

declare dso_local i64 @usbd_req_get_string_desc(%struct.usb_device*, %struct.mtx*, i8*, i32, i32, i64) #1

declare dso_local i32 @UGETW(i64*) #1

declare dso_local i64 @isalpha(i8 signext) #1

declare dso_local i64 @isdigit(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
