; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_transfer.c_usbd_setup_ctrl_transfer.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_transfer.c_usbd_setup_ctrl_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_xfer = type { i32, i32, i32*, i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32, i32, i64, i32, i32 }
%struct.TYPE_3__ = type { i64, i64, i64 }

@.str = private unnamed_addr constant [21 x i8] c"Too many frames: %u\0A\00", align 1
@USB_MODE_DEVICE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [29 x i8] c"Wrong framelength %u != %zu\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"Misconfigured transfer\0A\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"Length (%d) greater than remaining length (%d)\0A\00", align 1
@.str.4 = private unnamed_addr constant [53 x i8] c"Short control transfer without force_short_xfer set\0A\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"Invalid parameter combination\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_xfer*)* @usbd_setup_ctrl_transfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usbd_setup_ctrl_transfer(%struct.usb_xfer* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_xfer*, align 8
  %4 = alloca i32, align 4
  store %struct.usb_xfer* %0, %struct.usb_xfer** %3, align 8
  %5 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %6 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %5, i32 0, i32 5
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 2
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %23

10:                                               ; preds = %1
  %11 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %12 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %11, i32 0, i32 4
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %10
  %17 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %18 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %17, i32 0, i32 4
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  store i32 1, i32* %19, align 4
  %20 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %21 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %20, i32 0, i32 4
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  store i32 0, i32* %22, align 8
  br label %27

23:                                               ; preds = %10, %1
  %24 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %25 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %24, i32 0, i32 4
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  store i32 0, i32* %26, align 4
  br label %27

27:                                               ; preds = %23, %16
  %28 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %29 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp sgt i32 %30, 2
  br i1 %31, label %32, label %37

32:                                               ; preds = %27
  %33 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %34 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 (i32, i8*, ...) @DPRINTFN(i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %35)
  br label %203

37:                                               ; preds = %27
  %38 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %39 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %38, i32 0, i32 4
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %67

43:                                               ; preds = %37
  %44 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %45 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %44, i32 0, i32 4
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %63

49:                                               ; preds = %43
  %50 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %51 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %50, i32 0, i32 4
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 2
  store i32 0, i32* %52, align 8
  %53 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %54 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %53, i32 0, i32 4
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 3
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @USB_MODE_DEVICE, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %49
  %60 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %61 = call i32 @usbd_control_transfer_init(%struct.usb_xfer* %60)
  br label %62

62:                                               ; preds = %59, %49
  br label %63

63:                                               ; preds = %62, %43
  %64 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %65 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  store i32 %66, i32* %4, align 4
  br label %113

67:                                               ; preds = %37
  %68 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %69 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %68, i32 0, i32 2
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 0
  %72 = load i32, i32* %71, align 4
  %73 = sext i32 %72 to i64
  %74 = icmp ne i64 %73, 4
  br i1 %74, label %75, label %82

75:                                               ; preds = %67
  %76 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %77 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %76, i32 0, i32 2
  %78 = load i32*, i32** %77, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 (i32, i8*, ...) @DPRINTFN(i32 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %80, i64 4)
  br label %203

82:                                               ; preds = %67
  %83 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %84 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %83, i32 0, i32 4
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 3
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @USB_MODE_DEVICE, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %100

89:                                               ; preds = %82
  %90 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %91 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = icmp ne i32 %92, 1
  br i1 %93, label %94, label %96

94:                                               ; preds = %89
  %95 = call i32 @DPRINTF(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  br label %203

96:                                               ; preds = %89
  %97 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %98 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %97, i32 0, i32 4
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 4
  store i32 65535, i32* %99, align 8
  br label %103

100:                                              ; preds = %82
  %101 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %102 = call i32 @usbd_control_transfer_init(%struct.usb_xfer* %101)
  br label %103

103:                                              ; preds = %100, %96
  %104 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %105 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %104, i32 0, i32 4
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 2
  store i32 1, i32* %106, align 8
  %107 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %108 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = sext i32 %109 to i64
  %111 = sub i64 %110, 4
  %112 = trunc i64 %111 to i32
  store i32 %112, i32* %4, align 4
  br label %113

113:                                              ; preds = %103, %63
  %114 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %115 = call i32 @usbd_control_transfer_did_data(%struct.usb_xfer* %114)
  %116 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %117 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %116, i32 0, i32 4
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 5
  store i32 %115, i32* %118, align 4
  %119 = load i32, i32* %4, align 4
  %120 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %121 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %120, i32 0, i32 4
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 4
  %123 = load i32, i32* %122, align 8
  %124 = icmp sgt i32 %119, %123
  br i1 %124, label %125, label %132

125:                                              ; preds = %113
  %126 = load i32, i32* %4, align 4
  %127 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %128 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %127, i32 0, i32 4
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 4
  %130 = load i32, i32* %129, align 8
  %131 = call i32 (i32, i8*, ...) @DPRINTFN(i32 0, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0), i32 %126, i32 %130)
  br label %203

132:                                              ; preds = %113
  %133 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %134 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %133, i32 0, i32 5
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %142

138:                                              ; preds = %132
  %139 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %140 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %139, i32 0, i32 4
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 4
  store i32 0, i32* %141, align 8
  br label %169

142:                                              ; preds = %132
  %143 = load i32, i32* %4, align 4
  %144 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %145 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %144, i32 0, i32 3
  %146 = load i32, i32* %145, align 8
  %147 = icmp ne i32 %143, %146
  br i1 %147, label %148, label %162

148:                                              ; preds = %142
  %149 = load i32, i32* %4, align 4
  %150 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %151 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %150, i32 0, i32 4
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i32 0, i32 4
  %153 = load i32, i32* %152, align 8
  %154 = icmp ne i32 %149, %153
  br i1 %154, label %155, label %162

155:                                              ; preds = %148
  %156 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %157 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = icmp ne i32 %158, 1
  br i1 %159, label %160, label %162

160:                                              ; preds = %155
  %161 = call i32 (i32, i8*, ...) @DPRINTFN(i32 0, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.4, i64 0, i64 0))
  br label %203

162:                                              ; preds = %155, %148, %142
  %163 = load i32, i32* %4, align 4
  %164 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %165 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %164, i32 0, i32 4
  %166 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %165, i32 0, i32 4
  %167 = load i32, i32* %166, align 8
  %168 = sub nsw i32 %167, %163
  store i32 %168, i32* %166, align 8
  br label %169

169:                                              ; preds = %162, %138
  %170 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %171 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %170, i32 0, i32 4
  %172 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %171, i32 0, i32 4
  %173 = load i32, i32* %172, align 8
  %174 = icmp sgt i32 %173, 0
  br i1 %174, label %181, label %175

175:                                              ; preds = %169
  %176 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %177 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %176, i32 0, i32 5
  %178 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %177, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %198

181:                                              ; preds = %175, %169
  %182 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %183 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %182, i32 0, i32 4
  %184 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %183, i32 0, i32 0
  store i32 1, i32* %184, align 8
  %185 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %186 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %185, i32 0, i32 4
  %187 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %186, i32 0, i32 2
  %188 = load i32, i32* %187, align 8
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %197, label %190

190:                                              ; preds = %181
  %191 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %192 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = icmp eq i32 %193, 1
  br i1 %194, label %195, label %197

195:                                              ; preds = %190
  %196 = call i32 (i32, i8*, ...) @DPRINTFN(i32 0, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0))
  br label %203

197:                                              ; preds = %190, %181
  br label %202

198:                                              ; preds = %175
  %199 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %200 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %199, i32 0, i32 4
  %201 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %200, i32 0, i32 0
  store i32 0, i32* %201, align 8
  br label %202

202:                                              ; preds = %198, %197
  store i32 0, i32* %2, align 4
  br label %204

203:                                              ; preds = %195, %160, %125, %94, %75, %32
  store i32 1, i32* %2, align 4
  br label %204

204:                                              ; preds = %203, %202
  %205 = load i32, i32* %2, align 4
  ret i32 %205
}

declare dso_local i32 @DPRINTFN(i32, i8*, ...) #1

declare dso_local i32 @usbd_control_transfer_init(%struct.usb_xfer*) #1

declare dso_local i32 @DPRINTF(i8*) #1

declare dso_local i32 @usbd_control_transfer_did_data(%struct.usb_xfer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
