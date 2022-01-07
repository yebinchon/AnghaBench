; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_ehci.c_ehci_non_isoc_done_sub.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_ehci.c_ehci_non_isoc_done_sub.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_xfer = type { i64, i64, i8*, %struct.TYPE_7__*, i32, i32, %struct.TYPE_8__*, %struct.TYPE_5__, i32* }
%struct.TYPE_7__ = type { %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i64, i32* }
%struct.TYPE_8__ = type { i64, %struct.TYPE_8__*, %struct.TYPE_8__*, i32, i32 }
%struct.TYPE_5__ = type { i64 }

@.str = private unnamed_addr constant [44 x i8] c"Invalid status length, 0x%04x/0x%04x bytes\0A\00", align 1
@EHCI_QTD_HALTED = common dso_local global i32 0, align 4
@USB_ERR_IOERROR = common dso_local global i32 0, align 4
@USB_ERR_STALLED = common dso_local global i32 0, align 4
@USB_ERR_NORMAL_COMPLETION = common dso_local global i32 0, align 4
@EHCI_QTD_ACTIVE = common dso_local global i32 0, align 4
@EHCI_QTD_BABBLE = common dso_local global i32 0, align 4
@EHCI_QTD_BUFERR = common dso_local global i32 0, align 4
@EHCI_QTD_MISSEDMICRO = common dso_local global i32 0, align 4
@EHCI_QTD_PINGSTATE = common dso_local global i32 0, align 4
@EHCI_QTD_SPLITXSTATE = common dso_local global i32 0, align 4
@EHCI_QTD_STATERRS = common dso_local global i32 0, align 4
@EHCI_QTD_XACTERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_xfer*)* @ehci_non_isoc_done_sub to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ehci_non_isoc_done_sub(%struct.usb_xfer* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_xfer*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.usb_xfer* %0, %struct.usb_xfer** %3, align 8
  %9 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %10 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %9, i32 0, i32 3
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = call i32* @EHCI_BUS2SC(i32 %13)
  store i32* %14, i32** %4, align 8
  %15 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %16 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %15, i32 0, i32 6
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  store %struct.TYPE_8__* %17, %struct.TYPE_8__** %5, align 8
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  store %struct.TYPE_8__* %20, %struct.TYPE_8__** %6, align 8
  %21 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %22 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %25 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %23, %26
  br i1 %27, label %28, label %34

28:                                               ; preds = %1
  %29 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %30 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %31 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @usbd_xfer_set_frame_len(%struct.usb_xfer* %29, i64 %32, i32 0)
  br label %34

34:                                               ; preds = %28, %1
  br label %35

35:                                               ; preds = %34, %136
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @usb_pc_cpu_invalidate(i32 %38)
  %40 = load i32*, i32** %4, align 8
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @hc32toh(i32* %40, i32 %43)
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %7, align 4
  %46 = call i64 @EHCI_QTD_GET_BYTES(i32 %45)
  store i64 %46, i64* %8, align 8
  %47 = load i64, i64* %8, align 8
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp sgt i64 %47, %50
  br i1 %51, label %52, label %61

52:                                               ; preds = %35
  %53 = load i64, i64* %8, align 8
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = call i32 @DPRINTF(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i64 %53, i64 %56)
  %58 = load i32, i32* @EHCI_QTD_HALTED, align 4
  %59 = load i32, i32* %7, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %7, align 4
  br label %97

61:                                               ; preds = %35
  %62 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %63 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %66 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %64, %67
  br i1 %68, label %69, label %96

69:                                               ; preds = %61
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* %8, align 8
  %74 = sub nsw i64 %72, %73
  %75 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %76 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %75, i32 0, i32 8
  %77 = load i32*, i32** %76, align 8
  %78 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %79 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = getelementptr inbounds i32, i32* %77, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = sext i32 %82 to i64
  %84 = add nsw i64 %83, %74
  %85 = trunc i64 %84 to i32
  store i32 %85, i32* %81, align 4
  %86 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* %8, align 8
  %91 = sub nsw i64 %89, %90
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = call i32 @ehci_data_toggle_update(%struct.usb_xfer* %86, i64 %91, i64 %94)
  br label %96

96:                                               ; preds = %69, %61
  br label %97

97:                                               ; preds = %96, %52
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %99 = bitcast %struct.TYPE_8__* %98 to i8*
  %100 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %101 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %100, i32 0, i32 2
  %102 = load i8*, i8** %101, align 8
  %103 = icmp eq i8* %99, %102
  br i1 %103, label %104, label %105

104:                                              ; preds = %97
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %5, align 8
  br label %137

105:                                              ; preds = %97
  %106 = load i32, i32* %7, align 4
  %107 = load i32, i32* @EHCI_QTD_HALTED, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %105
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %5, align 8
  br label %137

111:                                              ; preds = %105
  %112 = load i64, i64* %8, align 8
  %113 = icmp sgt i64 %112, 0
  br i1 %113, label %114, label %126

114:                                              ; preds = %111
  %115 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %116 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %115, i32 0, i32 7
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %114
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 1
  %123 = load %struct.TYPE_8__*, %struct.TYPE_8__** %122, align 8
  store %struct.TYPE_8__* %123, %struct.TYPE_8__** %5, align 8
  br label %125

124:                                              ; preds = %114
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %5, align 8
  br label %125

125:                                              ; preds = %124, %120
  br label %137

126:                                              ; preds = %111
  %127 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 2
  %129 = load %struct.TYPE_8__*, %struct.TYPE_8__** %128, align 8
  store %struct.TYPE_8__* %129, %struct.TYPE_8__** %5, align 8
  %130 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 1
  %132 = load %struct.TYPE_8__*, %struct.TYPE_8__** %131, align 8
  %133 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %134 = icmp ne %struct.TYPE_8__* %132, %133
  br i1 %134, label %135, label %136

135:                                              ; preds = %126
  br label %137

136:                                              ; preds = %126
  br label %35

137:                                              ; preds = %135, %125, %110, %104
  %138 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %139 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %140 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %139, i32 0, i32 6
  store %struct.TYPE_8__* %138, %struct.TYPE_8__** %140, align 8
  %141 = load i32, i32* %7, align 4
  %142 = load i32, i32* @EHCI_QTD_HALTED, align 4
  %143 = and i32 %141, %142
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %172

145:                                              ; preds = %137
  %146 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %147 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %146, i32 0, i32 3
  %148 = load %struct.TYPE_7__*, %struct.TYPE_7__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %148, i32 0, i32 0
  %150 = load %struct.TYPE_6__*, %struct.TYPE_6__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i32 0, i32 1
  %152 = load i32*, i32** %151, align 8
  %153 = icmp ne i32* %152, null
  br i1 %153, label %163, label %154

154:                                              ; preds = %145
  %155 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %156 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %155, i32 0, i32 3
  %157 = load %struct.TYPE_7__*, %struct.TYPE_7__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %157, i32 0, i32 0
  %159 = load %struct.TYPE_6__*, %struct.TYPE_6__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %170

163:                                              ; preds = %154, %145
  %164 = load i32, i32* %7, align 4
  %165 = call i64 @EHCI_QTD_GET_CERR(i32 %164)
  %166 = icmp eq i64 %165, 0
  br i1 %166, label %167, label %169

167:                                              ; preds = %163
  %168 = load i32, i32* @USB_ERR_IOERROR, align 4
  store i32 %168, i32* %2, align 4
  br label %174

169:                                              ; preds = %163
  br label %170

170:                                              ; preds = %169, %154
  %171 = load i32, i32* @USB_ERR_STALLED, align 4
  store i32 %171, i32* %2, align 4
  br label %174

172:                                              ; preds = %137
  %173 = load i32, i32* @USB_ERR_NORMAL_COMPLETION, align 4
  store i32 %173, i32* %2, align 4
  br label %174

174:                                              ; preds = %172, %170, %167
  %175 = load i32, i32* %2, align 4
  ret i32 %175
}

declare dso_local i32* @EHCI_BUS2SC(i32) #1

declare dso_local i32 @usbd_xfer_set_frame_len(%struct.usb_xfer*, i64, i32) #1

declare dso_local i32 @usb_pc_cpu_invalidate(i32) #1

declare dso_local i32 @hc32toh(i32*, i32) #1

declare dso_local i64 @EHCI_QTD_GET_BYTES(i32) #1

declare dso_local i32 @DPRINTF(i8*, i64, i64) #1

declare dso_local i32 @ehci_data_toggle_update(%struct.usb_xfer*, i64, i64) #1

declare dso_local i64 @EHCI_QTD_GET_CERR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
