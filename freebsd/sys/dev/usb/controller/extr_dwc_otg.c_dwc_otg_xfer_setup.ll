; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_dwc_otg.c_dwc_otg_xfer_setup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_dwc_otg.c_dwc_otg_xfer_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_setup_params = type { i32, i32, i32, i32*, %struct.TYPE_13__*, i64, i64, %struct.usb_xfer* }
%struct.TYPE_13__ = type { i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64 }
%struct.usb_xfer = type { i64, i32, i32, i8**, i32, %struct.TYPE_10__, %struct.TYPE_9__* }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.usb_hw_ep_profile = type { i32 }
%struct.dwc_otg_td = type { i32, i8*, i8*, i8*, i32, i32 }

@UE_XFERTYPE = common dso_local global i32 0, align 4
@UE_CONTROL = common dso_local global i8* null, align 8
@UE_ADDR = common dso_local global i32 0, align 4
@USB_MODE_DEVICE = common dso_local global i64 0, align 8
@USB_ERR_INVAL = common dso_local global i64 0, align 8
@USB_HOST_ALIGN = common dso_local global i32 0, align 4
@UDPROTO_HSHUBMTT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_setup_params*)* @dwc_otg_xfer_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dwc_otg_xfer_setup(%struct.usb_setup_params* %0) #0 {
  %2 = alloca %struct.usb_setup_params*, align 8
  %3 = alloca %struct.usb_xfer*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.usb_hw_ep_profile*, align 8
  %10 = alloca %struct.dwc_otg_td*, align 8
  store %struct.usb_setup_params* %0, %struct.usb_setup_params** %2, align 8
  %11 = load %struct.usb_setup_params*, %struct.usb_setup_params** %2, align 8
  %12 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %11, i32 0, i32 7
  %13 = load %struct.usb_xfer*, %struct.usb_xfer** %12, align 8
  store %struct.usb_xfer* %13, %struct.usb_xfer** %3, align 8
  %14 = load %struct.usb_setup_params*, %struct.usb_setup_params** %2, align 8
  %15 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %14, i32 0, i32 0
  store i32 1280, i32* %15, align 8
  %16 = load %struct.usb_setup_params*, %struct.usb_setup_params** %2, align 8
  %17 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %16, i32 0, i32 1
  store i32 3, i32* %17, align 4
  %18 = load %struct.usb_setup_params*, %struct.usb_setup_params** %2, align 8
  %19 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %18, i32 0, i32 2
  store i32 3840, i32* %19, align 8
  %20 = load %struct.usb_setup_params*, %struct.usb_setup_params** %2, align 8
  %21 = call i32 @usbd_transfer_setup_sub(%struct.usb_setup_params* %20)
  %22 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %23 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %22, i32 0, i32 6
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @UE_XFERTYPE, align 4
  %30 = and i32 %28, %29
  %31 = sext i32 %30 to i64
  %32 = inttoptr i64 %31 to i8*
  store i8* %32, i8** %8, align 8
  %33 = load i8*, i8** %8, align 8
  %34 = load i8*, i8** @UE_CONTROL, align 8
  %35 = icmp eq i8* %33, %34
  br i1 %35, label %36, label %44

36:                                               ; preds = %1
  %37 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %38 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = add nsw i64 %39, 1
  %41 = add nsw i64 %40, 1
  %42 = add nsw i64 %41, 1
  %43 = add nsw i64 %42, 1
  store i64 %43, i64* %5, align 8
  br label %49

44:                                               ; preds = %1
  %45 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %46 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = add nsw i64 %47, 1
  store i64 %48, i64* %5, align 8
  br label %49

49:                                               ; preds = %44, %36
  %50 = load %struct.usb_setup_params*, %struct.usb_setup_params** %2, align 8
  %51 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %50, i32 0, i32 6
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %49
  br label %213

55:                                               ; preds = %49
  store i8* null, i8** %4, align 8
  %56 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %57 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @UE_ADDR, align 4
  %60 = and i32 %58, %59
  %61 = sext i32 %60 to i64
  %62 = inttoptr i64 %61 to i8*
  store i8* %62, i8** %7, align 8
  %63 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %64 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %63, i32 0, i32 5
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @USB_MODE_DEVICE, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %82

69:                                               ; preds = %55
  %70 = load %struct.usb_setup_params*, %struct.usb_setup_params** %2, align 8
  %71 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %70, i32 0, i32 4
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %71, align 8
  %73 = load i8*, i8** %7, align 8
  %74 = call i32 @dwc_otg_get_hw_ep_profile(%struct.TYPE_13__* %72, %struct.usb_hw_ep_profile** %9, i8* %73)
  %75 = load %struct.usb_hw_ep_profile*, %struct.usb_hw_ep_profile** %9, align 8
  %76 = icmp eq %struct.usb_hw_ep_profile* %75, null
  br i1 %76, label %77, label %81

77:                                               ; preds = %69
  %78 = load i64, i64* @USB_ERR_INVAL, align 8
  %79 = load %struct.usb_setup_params*, %struct.usb_setup_params** %2, align 8
  %80 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %79, i32 0, i32 6
  store i64 %78, i64* %80, align 8
  br label %213

81:                                               ; preds = %69
  br label %82

82:                                               ; preds = %81, %55
  %83 = load %struct.usb_setup_params*, %struct.usb_setup_params** %2, align 8
  %84 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %83, i32 0, i32 3
  %85 = load i32*, i32** %84, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 0
  %87 = load i32, i32* %86, align 4
  %88 = sub nsw i32 0, %87
  %89 = load i32, i32* @USB_HOST_ALIGN, align 4
  %90 = sub nsw i32 %89, 1
  %91 = and i32 %88, %90
  %92 = load %struct.usb_setup_params*, %struct.usb_setup_params** %2, align 8
  %93 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %92, i32 0, i32 3
  %94 = load i32*, i32** %93, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 0
  %96 = load i32, i32* %95, align 4
  %97 = add nsw i32 %96, %91
  store i32 %97, i32* %95, align 4
  store i64 0, i64* %6, align 8
  br label %98

98:                                               ; preds = %204, %82
  %99 = load i64, i64* %6, align 8
  %100 = load i64, i64* %5, align 8
  %101 = icmp ne i64 %99, %100
  br i1 %101, label %102, label %207

102:                                              ; preds = %98
  %103 = load %struct.usb_setup_params*, %struct.usb_setup_params** %2, align 8
  %104 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %103, i32 0, i32 5
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %195

107:                                              ; preds = %102
  %108 = load %struct.usb_setup_params*, %struct.usb_setup_params** %2, align 8
  %109 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %108, i32 0, i32 5
  %110 = load i64, i64* %109, align 8
  %111 = load %struct.usb_setup_params*, %struct.usb_setup_params** %2, align 8
  %112 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %111, i32 0, i32 3
  %113 = load i32*, i32** %112, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 0
  %115 = load i32, i32* %114, align 4
  %116 = call %struct.dwc_otg_td* @USB_ADD_BYTES(i64 %110, i32 %115)
  store %struct.dwc_otg_td* %116, %struct.dwc_otg_td** %10, align 8
  %117 = load %struct.usb_setup_params*, %struct.usb_setup_params** %2, align 8
  %118 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %117, i32 0, i32 4
  %119 = load %struct.TYPE_13__*, %struct.TYPE_13__** %118, align 8
  %120 = call i64 @dwc_otg_uses_split(%struct.TYPE_13__* %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %152

122:                                              ; preds = %107
  %123 = load %struct.usb_setup_params*, %struct.usb_setup_params** %2, align 8
  %124 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %123, i32 0, i32 4
  %125 = load %struct.TYPE_13__*, %struct.TYPE_13__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %125, i32 0, i32 1
  %127 = load %struct.TYPE_12__*, %struct.TYPE_12__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* @UDPROTO_HSHUBMTT, align 8
  %132 = icmp eq i64 %130, %131
  br i1 %132, label %133, label %141

133:                                              ; preds = %122
  %134 = load %struct.usb_setup_params*, %struct.usb_setup_params** %2, align 8
  %135 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %134, i32 0, i32 4
  %136 = load %struct.TYPE_13__*, %struct.TYPE_13__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %10, align 8
  %140 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %139, i32 0, i32 5
  store i32 %138, i32* %140, align 4
  br label %151

141:                                              ; preds = %122
  %142 = load %struct.usb_setup_params*, %struct.usb_setup_params** %2, align 8
  %143 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %142, i32 0, i32 4
  %144 = load %struct.TYPE_13__*, %struct.TYPE_13__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %144, i32 0, i32 1
  %146 = load %struct.TYPE_12__*, %struct.TYPE_12__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %10, align 8
  %150 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %149, i32 0, i32 5
  store i32 %148, i32* %150, align 4
  br label %151

151:                                              ; preds = %141, %133
  br label %160

152:                                              ; preds = %107
  %153 = load %struct.usb_setup_params*, %struct.usb_setup_params** %2, align 8
  %154 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %153, i32 0, i32 4
  %155 = load %struct.TYPE_13__*, %struct.TYPE_13__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %10, align 8
  %159 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %158, i32 0, i32 5
  store i32 %157, i32* %159, align 4
  br label %160

160:                                              ; preds = %152, %151
  %161 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %162 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %161, i32 0, i32 4
  %163 = load i32, i32* %162, align 8
  %164 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %10, align 8
  %165 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %164, i32 0, i32 4
  store i32 %163, i32* %165, align 8
  %166 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %167 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %166, i32 0, i32 2
  %168 = load i32, i32* %167, align 4
  %169 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %10, align 8
  %170 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %169, i32 0, i32 0
  store i32 %168, i32* %170, align 8
  %171 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %10, align 8
  %172 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %180, label %175

175:                                              ; preds = %160
  %176 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %10, align 8
  %177 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = icmp sgt i32 %178, 3
  br i1 %179, label %180, label %183

180:                                              ; preds = %175, %160
  %181 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %10, align 8
  %182 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %181, i32 0, i32 0
  store i32 1, i32* %182, align 8
  br label %183

183:                                              ; preds = %180, %175
  %184 = load i8*, i8** %7, align 8
  %185 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %10, align 8
  %186 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %185, i32 0, i32 3
  store i8* %184, i8** %186, align 8
  %187 = load i8*, i8** %8, align 8
  %188 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %10, align 8
  %189 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %188, i32 0, i32 2
  store i8* %187, i8** %189, align 8
  %190 = load i8*, i8** %4, align 8
  %191 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %10, align 8
  %192 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %191, i32 0, i32 1
  store i8* %190, i8** %192, align 8
  %193 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %10, align 8
  %194 = bitcast %struct.dwc_otg_td* %193 to i8*
  store i8* %194, i8** %4, align 8
  br label %195

195:                                              ; preds = %183, %102
  %196 = load %struct.usb_setup_params*, %struct.usb_setup_params** %2, align 8
  %197 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %196, i32 0, i32 3
  %198 = load i32*, i32** %197, align 8
  %199 = getelementptr inbounds i32, i32* %198, i64 0
  %200 = load i32, i32* %199, align 4
  %201 = sext i32 %200 to i64
  %202 = add i64 %201, 40
  %203 = trunc i64 %202 to i32
  store i32 %203, i32* %199, align 4
  br label %204

204:                                              ; preds = %195
  %205 = load i64, i64* %6, align 8
  %206 = add nsw i64 %205, 1
  store i64 %206, i64* %6, align 8
  br label %98

207:                                              ; preds = %98
  %208 = load i8*, i8** %4, align 8
  %209 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %210 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %209, i32 0, i32 3
  %211 = load i8**, i8*** %210, align 8
  %212 = getelementptr inbounds i8*, i8** %211, i64 0
  store i8* %208, i8** %212, align 8
  br label %213

213:                                              ; preds = %207, %77, %54
  ret void
}

declare dso_local i32 @usbd_transfer_setup_sub(%struct.usb_setup_params*) #1

declare dso_local i32 @dwc_otg_get_hw_ep_profile(%struct.TYPE_13__*, %struct.usb_hw_ep_profile**, i8*) #1

declare dso_local %struct.dwc_otg_td* @USB_ADD_BYTES(i64, i32) #1

declare dso_local i64 @dwc_otg_uses_split(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
