; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/gadget/extr_g_modem.c_g_modem_bulk_write_callback.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/gadget/extr_g_modem.c_g_modem_bulk_write_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_xfer = type { i32 }
%struct.g_modem_softc = type { i32, i32, i32, i32*, i32*, i32, i32, i32, i32* }

@.str = private unnamed_addr constant [34 x i8] c"st=%d aframes=%d actlen=%d bytes\0A\00", align 1
@G_MODEM_MODE_LOOP = common dso_local global i32 0, align 4
@G_MODEM_BULK_RD = common dso_local global i64 0, align 8
@G_MODEM_MODE_PATTERN = common dso_local global i32 0, align 4
@G_MODEM_BUFSIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"error=%s\0A\00", align 1
@USB_ERR_CANCELLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_xfer*, i32)* @g_modem_bulk_write_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_modem_bulk_write_callback(%struct.usb_xfer* %0, i32 %1) #0 {
  %3 = alloca %struct.usb_xfer*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.g_modem_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.usb_xfer* %0, %struct.usb_xfer** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %12 = call %struct.g_modem_softc* @usbd_xfer_softc(%struct.usb_xfer* %11)
  store %struct.g_modem_softc* %12, %struct.g_modem_softc** %5, align 8
  %13 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %14 = call i32 @usbd_xfer_status(%struct.usb_xfer* %13, i32* %6, i32* null, i32* %7, i32* null)
  %15 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %16 = call i32 @USB_GET_STATE(%struct.usb_xfer* %15)
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* %6, align 4
  %19 = call i32 (i8*, i32, ...) @DPRINTF(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %17, i32 %18)
  %20 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %21 = call i32 @USB_GET_STATE(%struct.usb_xfer* %20)
  switch i32 %21, label %181 [
    i32 128, label %22
    i32 129, label %57
  ]

22:                                               ; preds = %2
  %23 = load %struct.g_modem_softc*, %struct.g_modem_softc** %5, align 8
  %24 = getelementptr inbounds %struct.g_modem_softc, %struct.g_modem_softc* %23, i32 0, i32 6
  store i32 0, i32* %24, align 4
  %25 = load i32, i32* %6, align 4
  %26 = load %struct.g_modem_softc*, %struct.g_modem_softc** %5, align 8
  %27 = getelementptr inbounds %struct.g_modem_softc, %struct.g_modem_softc* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = add nsw i32 %28, %25
  store i32 %29, i32* %27, align 8
  %30 = load %struct.g_modem_softc*, %struct.g_modem_softc** %5, align 8
  %31 = getelementptr inbounds %struct.g_modem_softc, %struct.g_modem_softc* %30, i32 0, i32 7
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @G_MODEM_MODE_LOOP, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %43

35:                                               ; preds = %22
  %36 = load %struct.g_modem_softc*, %struct.g_modem_softc** %5, align 8
  %37 = getelementptr inbounds %struct.g_modem_softc, %struct.g_modem_softc* %36, i32 0, i32 8
  %38 = load i32*, i32** %37, align 8
  %39 = load i64, i64* @G_MODEM_BULK_RD, align 8
  %40 = getelementptr inbounds i32, i32* %38, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @usbd_transfer_start(i32 %41)
  br label %192

43:                                               ; preds = %22
  %44 = load %struct.g_modem_softc*, %struct.g_modem_softc** %5, align 8
  %45 = getelementptr inbounds %struct.g_modem_softc, %struct.g_modem_softc* %44, i32 0, i32 7
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @G_MODEM_MODE_PATTERN, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %55

49:                                               ; preds = %43
  %50 = load %struct.g_modem_softc*, %struct.g_modem_softc** %5, align 8
  %51 = getelementptr inbounds %struct.g_modem_softc, %struct.g_modem_softc* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %49
  br label %192

55:                                               ; preds = %49, %43
  br label %56

56:                                               ; preds = %55
  br label %57

57:                                               ; preds = %2, %56
  br label %58

58:                                               ; preds = %188, %57
  %59 = load %struct.g_modem_softc*, %struct.g_modem_softc** %5, align 8
  %60 = getelementptr inbounds %struct.g_modem_softc, %struct.g_modem_softc* %59, i32 0, i32 7
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @G_MODEM_MODE_PATTERN, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %136

64:                                               ; preds = %58
  %65 = load %struct.g_modem_softc*, %struct.g_modem_softc** %5, align 8
  %66 = getelementptr inbounds %struct.g_modem_softc, %struct.g_modem_softc* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  store i32 %67, i32* %8, align 4
  %68 = load %struct.g_modem_softc*, %struct.g_modem_softc** %5, align 8
  %69 = getelementptr inbounds %struct.g_modem_softc, %struct.g_modem_softc* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %64
  %73 = load i32, i32* %8, align 4
  br label %76

74:                                               ; preds = %64
  %75 = load i32, i32* @G_MODEM_BUFSIZE, align 4
  br label %76

76:                                               ; preds = %74, %72
  %77 = phi i32 [ %73, %72 ], [ %75, %74 ]
  store i32 %77, i32* %10, align 4
  %78 = load i32, i32* %8, align 4
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %98

80:                                               ; preds = %76
  store i32 0, i32* %9, align 4
  br label %81

81:                                               ; preds = %94, %80
  %82 = load i32, i32* %9, align 4
  %83 = load i32, i32* %10, align 4
  %84 = icmp ne i32 %82, %83
  br i1 %84, label %85, label %97

85:                                               ; preds = %81
  %86 = load i32, i32* %9, align 4
  %87 = srem i32 %86, 255
  %88 = load %struct.g_modem_softc*, %struct.g_modem_softc** %5, align 8
  %89 = getelementptr inbounds %struct.g_modem_softc, %struct.g_modem_softc* %88, i32 0, i32 3
  %90 = load i32*, i32** %89, align 8
  %91 = load i32, i32* %9, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  store i32 %87, i32* %93, align 4
  br label %94

94:                                               ; preds = %85
  %95 = load i32, i32* %9, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %9, align 4
  br label %81

97:                                               ; preds = %81
  br label %123

98:                                               ; preds = %76
  store i32 0, i32* %9, align 4
  br label %99

99:                                               ; preds = %119, %98
  %100 = load i32, i32* %9, align 4
  %101 = load i32, i32* %10, align 4
  %102 = icmp ne i32 %100, %101
  br i1 %102, label %103, label %122

103:                                              ; preds = %99
  %104 = load %struct.g_modem_softc*, %struct.g_modem_softc** %5, align 8
  %105 = getelementptr inbounds %struct.g_modem_softc, %struct.g_modem_softc* %104, i32 0, i32 4
  %106 = load i32*, i32** %105, align 8
  %107 = load i32, i32* %9, align 4
  %108 = load i32, i32* %8, align 4
  %109 = srem i32 %107, %108
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %106, i64 %110
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.g_modem_softc*, %struct.g_modem_softc** %5, align 8
  %114 = getelementptr inbounds %struct.g_modem_softc, %struct.g_modem_softc* %113, i32 0, i32 3
  %115 = load i32*, i32** %114, align 8
  %116 = load i32, i32* %9, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %115, i64 %117
  store i32 %112, i32* %118, align 4
  br label %119

119:                                              ; preds = %103
  %120 = load i32, i32* %9, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %9, align 4
  br label %99

122:                                              ; preds = %99
  br label %123

123:                                              ; preds = %122, %97
  %124 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %125 = load %struct.g_modem_softc*, %struct.g_modem_softc** %5, align 8
  %126 = getelementptr inbounds %struct.g_modem_softc, %struct.g_modem_softc* %125, i32 0, i32 3
  %127 = load i32*, i32** %126, align 8
  %128 = load i32, i32* %10, align 4
  %129 = call i32 @usbd_xfer_set_frame_data(%struct.usb_xfer* %124, i32 0, i32* %127, i32 %128)
  %130 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %131 = call i32 @usbd_xfer_set_interval(%struct.usb_xfer* %130, i32 0)
  %132 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %133 = call i32 @usbd_xfer_set_frames(%struct.usb_xfer* %132, i32 1)
  %134 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %135 = call i32 @usbd_transfer_submit(%struct.usb_xfer* %134)
  br label %180

136:                                              ; preds = %58
  %137 = load %struct.g_modem_softc*, %struct.g_modem_softc** %5, align 8
  %138 = getelementptr inbounds %struct.g_modem_softc, %struct.g_modem_softc* %137, i32 0, i32 7
  %139 = load i32, i32* %138, align 8
  %140 = load i32, i32* @G_MODEM_MODE_LOOP, align 4
  %141 = icmp eq i32 %139, %140
  br i1 %141, label %142, label %176

142:                                              ; preds = %136
  %143 = load %struct.g_modem_softc*, %struct.g_modem_softc** %5, align 8
  %144 = getelementptr inbounds %struct.g_modem_softc, %struct.g_modem_softc* %143, i32 0, i32 6
  %145 = load i32, i32* %144, align 4
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %142
  br label %192

148:                                              ; preds = %142
  %149 = load %struct.g_modem_softc*, %struct.g_modem_softc** %5, align 8
  %150 = getelementptr inbounds %struct.g_modem_softc, %struct.g_modem_softc* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  store i32 %151, i32* %9, align 4
  %152 = load i32, i32* %9, align 4
  %153 = icmp slt i32 %152, 0
  br i1 %153, label %154, label %155

154:                                              ; preds = %148
  store i32 0, i32* %9, align 4
  br label %160

155:                                              ; preds = %148
  %156 = load i32, i32* %9, align 4
  %157 = icmp sgt i32 %156, 256
  br i1 %157, label %158, label %159

158:                                              ; preds = %155
  store i32 256, i32* %9, align 4
  br label %159

159:                                              ; preds = %158, %155
  br label %160

160:                                              ; preds = %159, %154
  %161 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %162 = load %struct.g_modem_softc*, %struct.g_modem_softc** %5, align 8
  %163 = getelementptr inbounds %struct.g_modem_softc, %struct.g_modem_softc* %162, i32 0, i32 3
  %164 = load i32*, i32** %163, align 8
  %165 = load %struct.g_modem_softc*, %struct.g_modem_softc** %5, align 8
  %166 = getelementptr inbounds %struct.g_modem_softc, %struct.g_modem_softc* %165, i32 0, i32 5
  %167 = load i32, i32* %166, align 8
  %168 = call i32 @usbd_xfer_set_frame_data(%struct.usb_xfer* %161, i32 0, i32* %164, i32 %167)
  %169 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %170 = load i32, i32* %9, align 4
  %171 = call i32 @usbd_xfer_set_interval(%struct.usb_xfer* %169, i32 %170)
  %172 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %173 = call i32 @usbd_xfer_set_frames(%struct.usb_xfer* %172, i32 1)
  %174 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %175 = call i32 @usbd_transfer_submit(%struct.usb_xfer* %174)
  br label %179

176:                                              ; preds = %136
  %177 = load %struct.g_modem_softc*, %struct.g_modem_softc** %5, align 8
  %178 = getelementptr inbounds %struct.g_modem_softc, %struct.g_modem_softc* %177, i32 0, i32 6
  store i32 0, i32* %178, align 4
  br label %179

179:                                              ; preds = %176, %160
  br label %180

180:                                              ; preds = %179, %123
  br label %192

181:                                              ; preds = %2
  %182 = load i32, i32* %4, align 4
  %183 = call i32 @usbd_errstr(i32 %182)
  %184 = call i32 (i8*, i32, ...) @DPRINTF(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %183)
  %185 = load i32, i32* %4, align 4
  %186 = load i32, i32* @USB_ERR_CANCELLED, align 4
  %187 = icmp ne i32 %185, %186
  br i1 %187, label %188, label %191

188:                                              ; preds = %181
  %189 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %190 = call i32 @usbd_xfer_set_stall(%struct.usb_xfer* %189)
  br label %58

191:                                              ; preds = %181
  br label %192

192:                                              ; preds = %191, %180, %147, %54, %35
  ret void
}

declare dso_local %struct.g_modem_softc* @usbd_xfer_softc(%struct.usb_xfer*) #1

declare dso_local i32 @usbd_xfer_status(%struct.usb_xfer*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @DPRINTF(i8*, i32, ...) #1

declare dso_local i32 @USB_GET_STATE(%struct.usb_xfer*) #1

declare dso_local i32 @usbd_transfer_start(i32) #1

declare dso_local i32 @usbd_xfer_set_frame_data(%struct.usb_xfer*, i32, i32*, i32) #1

declare dso_local i32 @usbd_xfer_set_interval(%struct.usb_xfer*, i32) #1

declare dso_local i32 @usbd_xfer_set_frames(%struct.usb_xfer*, i32) #1

declare dso_local i32 @usbd_transfer_submit(%struct.usb_xfer*) #1

declare dso_local i32 @usbd_errstr(i32) #1

declare dso_local i32 @usbd_xfer_set_stall(%struct.usb_xfer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
