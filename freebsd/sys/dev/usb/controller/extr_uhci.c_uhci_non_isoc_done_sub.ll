; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_uhci.c_uhci_non_isoc_done_sub.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_uhci.c_uhci_non_isoc_done_sub.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_xfer = type { i64, i64, i8*, i32, i32, %struct.TYPE_5__*, %struct.TYPE_6__*, %struct.TYPE_4__, i32*, i64 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i64, %struct.TYPE_6__*, %struct.TYPE_6__*, i64, i32, i32, i64 }
%struct.TYPE_4__ = type { i64 }
%struct.usb_page_search = type { i32 }

@.str = private unnamed_addr constant [44 x i8] c"Invalid status length, 0x%04x/0x%04x bytes\0A\00", align 1
@UHCI_TD_STALLED = common dso_local global i32 0, align 4
@USB_ERR_IOERROR = common dso_local global i32 0, align 4
@USB_ERR_STALLED = common dso_local global i32 0, align 4
@USB_ERR_NORMAL_COMPLETION = common dso_local global i32 0, align 4
@UHCI_TD_ACTIVE = common dso_local global i32 0, align 4
@UHCI_TD_BABBLE = common dso_local global i32 0, align 4
@UHCI_TD_BITSTUFF = common dso_local global i32 0, align 4
@UHCI_TD_CRCTO = common dso_local global i32 0, align 4
@UHCI_TD_DBUFFER = common dso_local global i32 0, align 4
@UHCI_TD_ERROR = common dso_local global i32 0, align 4
@UHCI_TD_IOC = common dso_local global i32 0, align 4
@UHCI_TD_IOS = common dso_local global i32 0, align 4
@UHCI_TD_LS = common dso_local global i32 0, align 4
@UHCI_TD_NAK = common dso_local global i32 0, align 4
@UHCI_TD_SPD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_xfer*)* @uhci_non_isoc_done_sub to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uhci_non_isoc_done_sub(%struct.usb_xfer* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_xfer*, align 8
  %4 = alloca %struct.usb_page_search, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.usb_xfer* %0, %struct.usb_xfer** %3, align 8
  %10 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %11 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %10, i32 0, i32 6
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  store %struct.TYPE_6__* %12, %struct.TYPE_6__** %5, align 8
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  store %struct.TYPE_6__* %15, %struct.TYPE_6__** %6, align 8
  %16 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %17 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %20 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %18, %21
  br i1 %22, label %23, label %29

23:                                               ; preds = %1
  %24 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %25 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %26 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @usbd_xfer_set_frame_len(%struct.usb_xfer* %24, i64 %27, i32 0)
  br label %29

29:                                               ; preds = %23, %1
  br label %30

30:                                               ; preds = %29, %159
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 6
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @usb_pc_cpu_invalidate(i64 %33)
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 5
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @le32toh(i32 %37)
  store i32 %38, i32* %7, align 4
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @le32toh(i32 %41)
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %7, align 4
  %44 = call i64 @UHCI_TD_GET_ACTLEN(i32 %43)
  store i64 %44, i64* %9, align 8
  %45 = load i64, i64* %9, align 8
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp sgt i64 %45, %48
  br i1 %49, label %50, label %59

50:                                               ; preds = %30
  %51 = load i64, i64* %9, align 8
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = call i32 @DPRINTF(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i64 %51, i64 %54)
  %56 = load i32, i32* @UHCI_TD_STALLED, align 4
  %57 = load i32, i32* %7, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %7, align 4
  br label %117

59:                                               ; preds = %30
  %60 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %61 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %64 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %62, %65
  br i1 %66, label %67, label %116

67:                                               ; preds = %59
  %68 = load i64, i64* %9, align 8
  %69 = icmp sgt i64 %68, 0
  br i1 %69, label %70, label %116

70:                                               ; preds = %67
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 3
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %103

75:                                               ; preds = %70
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 3
  %78 = load i64, i64* %77, align 8
  %79 = call i32 @usbd_get_page(i64 %78, i32 0, %struct.usb_page_search* %4)
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 3
  %82 = load i64, i64* %81, align 8
  %83 = call i32 @usb_pc_cpu_invalidate(i64 %82)
  %84 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %85 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %84, i32 0, i32 9
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %88 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = add i64 %86, %89
  %91 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %92 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %91, i32 0, i32 8
  %93 = load i32*, i32** %92, align 8
  %94 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %95 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = getelementptr inbounds i32, i32* %93, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %4, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load i64, i64* %9, align 8
  %102 = call i32 @usbd_copy_in(i64 %90, i32 %98, i32 %100, i64 %101)
  br label %103

103:                                              ; preds = %75, %70
  %104 = load i64, i64* %9, align 8
  %105 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %106 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %105, i32 0, i32 8
  %107 = load i32*, i32** %106, align 8
  %108 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %109 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = getelementptr inbounds i32, i32* %107, i64 %110
  %112 = load i32, i32* %111, align 4
  %113 = sext i32 %112 to i64
  %114 = add nsw i64 %113, %104
  %115 = trunc i64 %114 to i32
  store i32 %115, i32* %111, align 4
  br label %116

116:                                              ; preds = %103, %67, %59
  br label %117

117:                                              ; preds = %116, %50
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %119 = bitcast %struct.TYPE_6__* %118 to i8*
  %120 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %121 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %120, i32 0, i32 2
  %122 = load i8*, i8** %121, align 8
  %123 = icmp eq i8* %119, %122
  br i1 %123, label %124, label %125

124:                                              ; preds = %117
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %5, align 8
  br label %160

125:                                              ; preds = %117
  %126 = load i32, i32* %7, align 4
  %127 = load i32, i32* @UHCI_TD_STALLED, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %125
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %5, align 8
  br label %160

131:                                              ; preds = %125
  %132 = load i64, i64* %9, align 8
  %133 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = icmp ne i64 %132, %135
  br i1 %136, label %137, label %149

137:                                              ; preds = %131
  %138 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %139 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %138, i32 0, i32 7
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %147

143:                                              ; preds = %137
  %144 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 1
  %146 = load %struct.TYPE_6__*, %struct.TYPE_6__** %145, align 8
  store %struct.TYPE_6__* %146, %struct.TYPE_6__** %5, align 8
  br label %148

147:                                              ; preds = %137
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %5, align 8
  br label %148

148:                                              ; preds = %147, %143
  br label %160

149:                                              ; preds = %131
  %150 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i32 0, i32 2
  %152 = load %struct.TYPE_6__*, %struct.TYPE_6__** %151, align 8
  store %struct.TYPE_6__* %152, %struct.TYPE_6__** %5, align 8
  %153 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i32 0, i32 1
  %155 = load %struct.TYPE_6__*, %struct.TYPE_6__** %154, align 8
  %156 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %157 = icmp ne %struct.TYPE_6__* %155, %156
  br i1 %157, label %158, label %159

158:                                              ; preds = %149
  br label %160

159:                                              ; preds = %149
  br label %30

160:                                              ; preds = %158, %148, %130, %124
  %161 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %162 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %163 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %162, i32 0, i32 6
  store %struct.TYPE_6__* %161, %struct.TYPE_6__** %163, align 8
  %164 = load i32, i32* %8, align 4
  %165 = call i32 @UHCI_TD_SET_DT(i32 1)
  %166 = and i32 %164, %165
  %167 = icmp ne i32 %166, 0
  %168 = zext i1 %167 to i64
  %169 = select i1 %167, i32 0, i32 1
  %170 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %171 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %170, i32 0, i32 5
  %172 = load %struct.TYPE_5__*, %struct.TYPE_5__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %172, i32 0, i32 0
  store i32 %169, i32* %173, align 4
  %174 = load i32, i32* %7, align 4
  %175 = load i32, i32* @UHCI_TD_STALLED, align 4
  %176 = and i32 %174, %175
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %186

178:                                              ; preds = %160
  %179 = load i32, i32* %7, align 4
  %180 = call i64 @UHCI_TD_GET_ERRCNT(i32 %179)
  %181 = icmp eq i64 %180, 0
  br i1 %181, label %182, label %184

182:                                              ; preds = %178
  %183 = load i32, i32* @USB_ERR_IOERROR, align 4
  store i32 %183, i32* %2, align 4
  br label %188

184:                                              ; preds = %178
  %185 = load i32, i32* @USB_ERR_STALLED, align 4
  store i32 %185, i32* %2, align 4
  br label %188

186:                                              ; preds = %160
  %187 = load i32, i32* @USB_ERR_NORMAL_COMPLETION, align 4
  store i32 %187, i32* %2, align 4
  br label %188

188:                                              ; preds = %186, %184, %182
  %189 = load i32, i32* %2, align 4
  ret i32 %189
}

declare dso_local i32 @usbd_xfer_set_frame_len(%struct.usb_xfer*, i64, i32) #1

declare dso_local i32 @usb_pc_cpu_invalidate(i64) #1

declare dso_local i32 @le32toh(i32) #1

declare dso_local i64 @UHCI_TD_GET_ACTLEN(i32) #1

declare dso_local i32 @DPRINTF(i8*, i64, i64) #1

declare dso_local i32 @usbd_get_page(i64, i32, %struct.usb_page_search*) #1

declare dso_local i32 @usbd_copy_in(i64, i32, i32, i64) #1

declare dso_local i32 @UHCI_TD_SET_DT(i32) #1

declare dso_local i64 @UHCI_TD_GET_ERRCNT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
