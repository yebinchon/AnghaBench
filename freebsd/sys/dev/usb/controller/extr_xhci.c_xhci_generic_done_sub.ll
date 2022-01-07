; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_xhci.c_xhci_generic_done_sub.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_xhci.c_xhci_generic_done_sub.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_xfer = type { i64, i64, i8*, %struct.xhci_td*, %struct.TYPE_2__, i32* }
%struct.xhci_td = type { i64, i64, i64, %struct.xhci_td*, %struct.xhci_td*, i32 }
%struct.TYPE_2__ = type { i64, i64, i64 }

@.str = private unnamed_addr constant [36 x i8] c"xfer=%p[%u/%u] rem=%u/%u status=%u\0A\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"Invalid status length, 0x%04x/0x%04x bytes\0A\00", align 1
@XHCI_TRB_ERROR_LENGTH = common dso_local global i64 0, align 8
@XHCI_TRB_ERROR_SHORT_PKT = common dso_local global i64 0, align 8
@XHCI_TRB_ERROR_SUCCESS = common dso_local global i64 0, align 8
@XHCI_TRB_ERROR_STALL = common dso_local global i64 0, align 8
@USB_ERR_STALLED = common dso_local global i32 0, align 4
@USB_ERR_IOERROR = common dso_local global i32 0, align 4
@USB_ERR_NORMAL_COMPLETION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_xfer*)* @xhci_generic_done_sub to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xhci_generic_done_sub(%struct.usb_xfer* %0) #0 {
  %2 = alloca %struct.usb_xfer*, align 8
  %3 = alloca %struct.xhci_td*, align 8
  %4 = alloca %struct.xhci_td*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.usb_xfer* %0, %struct.usb_xfer** %2, align 8
  %7 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %8 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %7, i32 0, i32 3
  %9 = load %struct.xhci_td*, %struct.xhci_td** %8, align 8
  store %struct.xhci_td* %9, %struct.xhci_td** %3, align 8
  %10 = load %struct.xhci_td*, %struct.xhci_td** %3, align 8
  %11 = getelementptr inbounds %struct.xhci_td, %struct.xhci_td* %10, i32 0, i32 3
  %12 = load %struct.xhci_td*, %struct.xhci_td** %11, align 8
  store %struct.xhci_td* %12, %struct.xhci_td** %4, align 8
  %13 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %14 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %17 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %15, %18
  br i1 %19, label %20, label %26

20:                                               ; preds = %1
  %21 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %22 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %23 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @usbd_xfer_set_frame_len(%struct.usb_xfer* %21, i64 %24, i32 0)
  br label %26

26:                                               ; preds = %20, %1
  br label %27

27:                                               ; preds = %26, %148
  %28 = load %struct.xhci_td*, %struct.xhci_td** %3, align 8
  %29 = getelementptr inbounds %struct.xhci_td, %struct.xhci_td* %28, i32 0, i32 5
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @usb_pc_cpu_invalidate(i32 %30)
  %32 = load %struct.xhci_td*, %struct.xhci_td** %3, align 8
  %33 = getelementptr inbounds %struct.xhci_td, %struct.xhci_td* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %6, align 8
  %35 = load %struct.xhci_td*, %struct.xhci_td** %3, align 8
  %36 = getelementptr inbounds %struct.xhci_td, %struct.xhci_td* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  store i64 %37, i64* %5, align 8
  %38 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %39 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %40 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = trunc i64 %41 to i32
  %43 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %44 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = trunc i64 %45 to i32
  %47 = load i64, i64* %5, align 8
  %48 = trunc i64 %47 to i32
  %49 = load %struct.xhci_td*, %struct.xhci_td** %3, align 8
  %50 = getelementptr inbounds %struct.xhci_td, %struct.xhci_td* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = trunc i64 %51 to i32
  %53 = load i64, i64* %6, align 8
  %54 = trunc i64 %53 to i32
  %55 = call i32 @DPRINTFN(i32 4, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), %struct.usb_xfer* %38, i32 %42, i32 %46, i32 %48, i32 %52, i32 %54)
  %56 = load i64, i64* %5, align 8
  %57 = load %struct.xhci_td*, %struct.xhci_td** %3, align 8
  %58 = getelementptr inbounds %struct.xhci_td, %struct.xhci_td* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = icmp sgt i64 %56, %59
  br i1 %60, label %61, label %68

61:                                               ; preds = %27
  %62 = load i64, i64* %5, align 8
  %63 = load %struct.xhci_td*, %struct.xhci_td** %3, align 8
  %64 = getelementptr inbounds %struct.xhci_td, %struct.xhci_td* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = call i32 @DPRINTF(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i64 %62, i64 %65)
  %67 = load i64, i64* @XHCI_TRB_ERROR_LENGTH, align 8
  store i64 %67, i64* %6, align 8
  br label %94

68:                                               ; preds = %27
  %69 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %70 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %73 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %71, %74
  br i1 %75, label %76, label %93

76:                                               ; preds = %68
  %77 = load %struct.xhci_td*, %struct.xhci_td** %3, align 8
  %78 = getelementptr inbounds %struct.xhci_td, %struct.xhci_td* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* %5, align 8
  %81 = sub nsw i64 %79, %80
  %82 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %83 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %82, i32 0, i32 5
  %84 = load i32*, i32** %83, align 8
  %85 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %86 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = getelementptr inbounds i32, i32* %84, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = sext i32 %89 to i64
  %91 = add nsw i64 %90, %81
  %92 = trunc i64 %91 to i32
  store i32 %92, i32* %88, align 4
  br label %93

93:                                               ; preds = %76, %68
  br label %94

94:                                               ; preds = %93, %61
  %95 = load %struct.xhci_td*, %struct.xhci_td** %3, align 8
  %96 = bitcast %struct.xhci_td* %95 to i8*
  %97 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %98 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %97, i32 0, i32 2
  %99 = load i8*, i8** %98, align 8
  %100 = icmp eq i8* %96, %99
  br i1 %100, label %101, label %102

101:                                              ; preds = %94
  store %struct.xhci_td* null, %struct.xhci_td** %3, align 8
  br label %149

102:                                              ; preds = %94
  %103 = load i64, i64* %6, align 8
  %104 = load i64, i64* @XHCI_TRB_ERROR_SHORT_PKT, align 8
  %105 = icmp ne i64 %103, %104
  br i1 %105, label %106, label %111

106:                                              ; preds = %102
  %107 = load i64, i64* %6, align 8
  %108 = load i64, i64* @XHCI_TRB_ERROR_SUCCESS, align 8
  %109 = icmp ne i64 %107, %108
  br i1 %109, label %110, label %111

110:                                              ; preds = %106
  store %struct.xhci_td* null, %struct.xhci_td** %3, align 8
  br label %149

111:                                              ; preds = %106, %102
  %112 = load i64, i64* %5, align 8
  %113 = icmp sgt i64 %112, 0
  br i1 %113, label %114, label %138

114:                                              ; preds = %111
  %115 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %116 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %115, i32 0, i32 4
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 2
  %118 = load i64, i64* %117, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %132, label %120

120:                                              ; preds = %114
  %121 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %122 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %121, i32 0, i32 4
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %132, label %126

126:                                              ; preds = %120
  %127 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %128 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %127, i32 0, i32 4
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %136

132:                                              ; preds = %126, %120, %114
  %133 = load %struct.xhci_td*, %struct.xhci_td** %3, align 8
  %134 = getelementptr inbounds %struct.xhci_td, %struct.xhci_td* %133, i32 0, i32 3
  %135 = load %struct.xhci_td*, %struct.xhci_td** %134, align 8
  store %struct.xhci_td* %135, %struct.xhci_td** %3, align 8
  br label %137

136:                                              ; preds = %126
  store %struct.xhci_td* null, %struct.xhci_td** %3, align 8
  br label %137

137:                                              ; preds = %136, %132
  br label %149

138:                                              ; preds = %111
  %139 = load %struct.xhci_td*, %struct.xhci_td** %3, align 8
  %140 = getelementptr inbounds %struct.xhci_td, %struct.xhci_td* %139, i32 0, i32 4
  %141 = load %struct.xhci_td*, %struct.xhci_td** %140, align 8
  store %struct.xhci_td* %141, %struct.xhci_td** %3, align 8
  %142 = load %struct.xhci_td*, %struct.xhci_td** %3, align 8
  %143 = getelementptr inbounds %struct.xhci_td, %struct.xhci_td* %142, i32 0, i32 3
  %144 = load %struct.xhci_td*, %struct.xhci_td** %143, align 8
  %145 = load %struct.xhci_td*, %struct.xhci_td** %4, align 8
  %146 = icmp ne %struct.xhci_td* %144, %145
  br i1 %146, label %147, label %148

147:                                              ; preds = %138
  br label %149

148:                                              ; preds = %138
  br label %27

149:                                              ; preds = %147, %137, %110, %101
  %150 = load %struct.xhci_td*, %struct.xhci_td** %3, align 8
  %151 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %152 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %151, i32 0, i32 3
  store %struct.xhci_td* %150, %struct.xhci_td** %152, align 8
  %153 = load i64, i64* %6, align 8
  %154 = load i64, i64* @XHCI_TRB_ERROR_STALL, align 8
  %155 = icmp eq i64 %153, %154
  br i1 %155, label %156, label %158

156:                                              ; preds = %149
  %157 = load i32, i32* @USB_ERR_STALLED, align 4
  br label %172

158:                                              ; preds = %149
  %159 = load i64, i64* %6, align 8
  %160 = load i64, i64* @XHCI_TRB_ERROR_SHORT_PKT, align 8
  %161 = icmp ne i64 %159, %160
  br i1 %161, label %162, label %168

162:                                              ; preds = %158
  %163 = load i64, i64* %6, align 8
  %164 = load i64, i64* @XHCI_TRB_ERROR_SUCCESS, align 8
  %165 = icmp ne i64 %163, %164
  br i1 %165, label %166, label %168

166:                                              ; preds = %162
  %167 = load i32, i32* @USB_ERR_IOERROR, align 4
  br label %170

168:                                              ; preds = %162, %158
  %169 = load i32, i32* @USB_ERR_NORMAL_COMPLETION, align 4
  br label %170

170:                                              ; preds = %168, %166
  %171 = phi i32 [ %167, %166 ], [ %169, %168 ]
  br label %172

172:                                              ; preds = %170, %156
  %173 = phi i32 [ %157, %156 ], [ %171, %170 ]
  ret i32 %173
}

declare dso_local i32 @usbd_xfer_set_frame_len(%struct.usb_xfer*, i64, i32) #1

declare dso_local i32 @usb_pc_cpu_invalidate(i32) #1

declare dso_local i32 @DPRINTFN(i32, i8*, %struct.usb_xfer*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @DPRINTF(i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
