; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/storage/extr_cfumass.c_cfumass_t_data_callback.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/storage/extr_cfumass.c_cfumass_t_data_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_xfer = type { i32 }
%struct.cfumass_softc = type { i32, i32, %union.ctl_io* }
%union.ctl_io = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i64, i32 (%union.ctl_io.0*)* }
%union.ctl_io.0 = type opaque
%struct.ctl_sg_entry = type { i32, i64 }

@.str = private unnamed_addr constant [19 x i8] c"USB_ST_TRANSFERRED\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"USB_ST_SETUP\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"Run out of S/G list entries\00", align 1
@.str.3 = private unnamed_addr constant [63 x i8] c"requested %d, done %d, max_bulk %d, segment %zd => transfer %d\00", align 1
@USB_ERR_CANCELLED = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [18 x i8] c"USB_ERR_CANCELLED\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"USB_ST_ERROR: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_xfer*, i32)* @cfumass_t_data_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cfumass_t_data_callback(%struct.usb_xfer* %0, i32 %1) #0 {
  %3 = alloca %struct.usb_xfer*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cfumass_softc*, align 8
  %6 = alloca %union.ctl_io*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ctl_sg_entry, align 8
  %9 = alloca %struct.ctl_sg_entry*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.usb_xfer* %0, %struct.usb_xfer** %3, align 8
  store i32 %1, i32* %4, align 4
  %13 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %14 = call %struct.cfumass_softc* @usbd_xfer_softc(%struct.usb_xfer* %13)
  store %struct.cfumass_softc* %14, %struct.cfumass_softc** %5, align 8
  %15 = load %struct.cfumass_softc*, %struct.cfumass_softc** %5, align 8
  %16 = getelementptr inbounds %struct.cfumass_softc, %struct.cfumass_softc* %15, i32 0, i32 2
  %17 = load %union.ctl_io*, %union.ctl_io** %16, align 8
  store %union.ctl_io* %17, %union.ctl_io** %6, align 8
  %18 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %19 = call i32 @USB_GET_STATE(%struct.usb_xfer* %18)
  switch i32 %19, label %182 [
    i32 128, label %20
    i32 129, label %67
  ]

20:                                               ; preds = %2
  %21 = load %struct.cfumass_softc*, %struct.cfumass_softc** %5, align 8
  %22 = call i32 (%struct.cfumass_softc*, i8*, ...) @CFUMASS_DEBUG(%struct.cfumass_softc* %21, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %23 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %24 = call i32 @usbd_xfer_status(%struct.usb_xfer* %23, i32* %10, i32* %11, i32* null, i32* null)
  %25 = load i32, i32* %10, align 4
  %26 = load %struct.cfumass_softc*, %struct.cfumass_softc** %5, align 8
  %27 = getelementptr inbounds %struct.cfumass_softc, %struct.cfumass_softc* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = sub nsw i32 %28, %25
  store i32 %29, i32* %27, align 8
  %30 = load i32, i32* %10, align 4
  %31 = load %union.ctl_io*, %union.ctl_io** %6, align 8
  %32 = bitcast %union.ctl_io* %31 to %struct.TYPE_2__*
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = add nsw i32 %34, %30
  store i32 %35, i32* %33, align 8
  %36 = load i32, i32* %10, align 4
  %37 = load %union.ctl_io*, %union.ctl_io** %6, align 8
  %38 = bitcast %union.ctl_io* %37 to %struct.TYPE_2__*
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = sub nsw i32 %40, %36
  store i32 %41, i32* %39, align 4
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* %11, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %56, label %45

45:                                               ; preds = %20
  %46 = load %struct.cfumass_softc*, %struct.cfumass_softc** %5, align 8
  %47 = getelementptr inbounds %struct.cfumass_softc, %struct.cfumass_softc* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %56, label %50

50:                                               ; preds = %45
  %51 = load %union.ctl_io*, %union.ctl_io** %6, align 8
  %52 = bitcast %union.ctl_io* %51 to %struct.TYPE_2__*
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %66

56:                                               ; preds = %50, %45, %20
  %57 = load %struct.cfumass_softc*, %struct.cfumass_softc** %5, align 8
  %58 = getelementptr inbounds %struct.cfumass_softc, %struct.cfumass_softc* %57, i32 0, i32 2
  store %union.ctl_io* null, %union.ctl_io** %58, align 8
  %59 = load %union.ctl_io*, %union.ctl_io** %6, align 8
  %60 = bitcast %union.ctl_io* %59 to %struct.TYPE_2__*
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 6
  %62 = load i32 (%union.ctl_io.0*)*, i32 (%union.ctl_io.0*)** %61, align 8
  %63 = load %union.ctl_io*, %union.ctl_io** %6, align 8
  %64 = bitcast %union.ctl_io* %63 to %union.ctl_io.0*
  %65 = call i32 %62(%union.ctl_io.0* %64)
  br label %194

66:                                               ; preds = %50
  br label %67

67:                                               ; preds = %2, %66
  br label %68

68:                                               ; preds = %189, %67
  %69 = load %struct.cfumass_softc*, %struct.cfumass_softc** %5, align 8
  %70 = call i32 (%struct.cfumass_softc*, i8*, ...) @CFUMASS_DEBUG(%struct.cfumass_softc* %69, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %71 = load %union.ctl_io*, %union.ctl_io** %6, align 8
  %72 = bitcast %union.ctl_io* %71 to %struct.TYPE_2__*
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = icmp sgt i32 %74, 0
  br i1 %75, label %76, label %86

76:                                               ; preds = %68
  %77 = load %union.ctl_io*, %union.ctl_io** %6, align 8
  %78 = bitcast %union.ctl_io* %77 to %struct.TYPE_2__*
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 5
  %80 = load i64, i64* %79, align 8
  %81 = inttoptr i64 %80 to %struct.ctl_sg_entry*
  store %struct.ctl_sg_entry* %81, %struct.ctl_sg_entry** %9, align 8
  %82 = load %union.ctl_io*, %union.ctl_io** %6, align 8
  %83 = bitcast %union.ctl_io* %82 to %struct.TYPE_2__*
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  store i32 %85, i32* %12, align 4
  br label %99

86:                                               ; preds = %68
  store %struct.ctl_sg_entry* %8, %struct.ctl_sg_entry** %9, align 8
  %87 = load %union.ctl_io*, %union.ctl_io** %6, align 8
  %88 = bitcast %union.ctl_io* %87 to %struct.TYPE_2__*
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 5
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.ctl_sg_entry*, %struct.ctl_sg_entry** %9, align 8
  %92 = getelementptr inbounds %struct.ctl_sg_entry, %struct.ctl_sg_entry* %91, i32 0, i32 1
  store i64 %90, i64* %92, align 8
  %93 = load %union.ctl_io*, %union.ctl_io** %6, align 8
  %94 = bitcast %union.ctl_io* %93 to %struct.TYPE_2__*
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.ctl_sg_entry*, %struct.ctl_sg_entry** %9, align 8
  %98 = getelementptr inbounds %struct.ctl_sg_entry, %struct.ctl_sg_entry* %97, i32 0, i32 0
  store i32 %96, i32* %98, align 8
  store i32 1, i32* %12, align 4
  br label %99

99:                                               ; preds = %86, %76
  %100 = load %union.ctl_io*, %union.ctl_io** %6, align 8
  %101 = bitcast %union.ctl_io* %100 to %struct.TYPE_2__*
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load %union.ctl_io*, %union.ctl_io** %6, align 8
  %105 = bitcast %union.ctl_io* %104 to %struct.TYPE_2__*
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 4
  %107 = load i32, i32* %106, align 8
  %108 = sub nsw i32 %103, %107
  store i32 %108, i32* %11, align 4
  br label %109

109:                                              ; preds = %120, %99
  %110 = load i32, i32* %11, align 4
  %111 = load %struct.ctl_sg_entry*, %struct.ctl_sg_entry** %9, align 8
  %112 = getelementptr inbounds %struct.ctl_sg_entry, %struct.ctl_sg_entry* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = icmp sge i32 %110, %113
  br i1 %114, label %115, label %118

115:                                              ; preds = %109
  %116 = load i32, i32* %12, align 4
  %117 = icmp sgt i32 %116, 0
  br label %118

118:                                              ; preds = %115, %109
  %119 = phi i1 [ false, %109 ], [ %117, %115 ]
  br i1 %119, label %120, label %130

120:                                              ; preds = %118
  %121 = load %struct.ctl_sg_entry*, %struct.ctl_sg_entry** %9, align 8
  %122 = getelementptr inbounds %struct.ctl_sg_entry, %struct.ctl_sg_entry* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* %11, align 4
  %125 = sub nsw i32 %124, %123
  store i32 %125, i32* %11, align 4
  %126 = load %struct.ctl_sg_entry*, %struct.ctl_sg_entry** %9, align 8
  %127 = getelementptr inbounds %struct.ctl_sg_entry, %struct.ctl_sg_entry* %126, i32 1
  store %struct.ctl_sg_entry* %127, %struct.ctl_sg_entry** %9, align 8
  %128 = load i32, i32* %12, align 4
  %129 = add nsw i32 %128, -1
  store i32 %129, i32* %12, align 4
  br label %109

130:                                              ; preds = %118
  %131 = load i32, i32* %12, align 4
  %132 = icmp sgt i32 %131, 0
  %133 = zext i1 %132 to i32
  %134 = call i32 @KASSERT(i32 %133, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %135 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %136 = call i32 @usbd_xfer_max_len(%struct.usb_xfer* %135)
  store i32 %136, i32* %7, align 4
  %137 = load %struct.ctl_sg_entry*, %struct.ctl_sg_entry** %9, align 8
  %138 = getelementptr inbounds %struct.ctl_sg_entry, %struct.ctl_sg_entry* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = load i32, i32* %11, align 4
  %141 = sub nsw i32 %139, %140
  %142 = load i32, i32* %7, align 4
  %143 = call i32 @min(i32 %141, i32 %142)
  store i32 %143, i32* %10, align 4
  %144 = load i32, i32* %10, align 4
  %145 = load %struct.cfumass_softc*, %struct.cfumass_softc** %5, align 8
  %146 = getelementptr inbounds %struct.cfumass_softc, %struct.cfumass_softc* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = load %union.ctl_io*, %union.ctl_io** %6, align 8
  %149 = bitcast %union.ctl_io* %148 to %struct.TYPE_2__*
  %150 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = sub nsw i32 %147, %151
  %153 = call i32 @min(i32 %144, i32 %152)
  store i32 %153, i32* %10, align 4
  %154 = load %struct.cfumass_softc*, %struct.cfumass_softc** %5, align 8
  %155 = load %struct.cfumass_softc*, %struct.cfumass_softc** %5, align 8
  %156 = getelementptr inbounds %struct.cfumass_softc, %struct.cfumass_softc* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = load %union.ctl_io*, %union.ctl_io** %6, align 8
  %159 = bitcast %union.ctl_io* %158 to %struct.TYPE_2__*
  %160 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = load i32, i32* %7, align 4
  %163 = load %struct.ctl_sg_entry*, %struct.ctl_sg_entry** %9, align 8
  %164 = getelementptr inbounds %struct.ctl_sg_entry, %struct.ctl_sg_entry* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = load i32, i32* %11, align 4
  %167 = sub nsw i32 %165, %166
  %168 = load i32, i32* %10, align 4
  %169 = call i32 (%struct.cfumass_softc*, i8*, ...) @CFUMASS_DEBUG(%struct.cfumass_softc* %154, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.3, i64 0, i64 0), i32 %157, i32 %161, i32 %162, i32 %167, i32 %168)
  %170 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %171 = load %struct.ctl_sg_entry*, %struct.ctl_sg_entry** %9, align 8
  %172 = getelementptr inbounds %struct.ctl_sg_entry, %struct.ctl_sg_entry* %171, i32 0, i32 1
  %173 = load i64, i64* %172, align 8
  %174 = inttoptr i64 %173 to i32*
  %175 = load i32, i32* %11, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i32, i32* %174, i64 %176
  %178 = load i32, i32* %10, align 4
  %179 = call i32 @usbd_xfer_set_frame_data(%struct.usb_xfer* %170, i32 0, i32* %177, i32 %178)
  %180 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %181 = call i32 @usbd_transfer_submit(%struct.usb_xfer* %180)
  br label %194

182:                                              ; preds = %2
  %183 = load i32, i32* %4, align 4
  %184 = load i32, i32* @USB_ERR_CANCELLED, align 4
  %185 = icmp eq i32 %183, %184
  br i1 %185, label %186, label %189

186:                                              ; preds = %182
  %187 = load %struct.cfumass_softc*, %struct.cfumass_softc** %5, align 8
  %188 = call i32 (%struct.cfumass_softc*, i8*, ...) @CFUMASS_DEBUG(%struct.cfumass_softc* %187, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  br label %194

189:                                              ; preds = %182
  %190 = load %struct.cfumass_softc*, %struct.cfumass_softc** %5, align 8
  %191 = load i32, i32* %4, align 4
  %192 = call i32 @usbd_errstr(i32 %191)
  %193 = call i32 (%struct.cfumass_softc*, i8*, ...) @CFUMASS_DEBUG(%struct.cfumass_softc* %190, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i32 %192)
  br label %68

194:                                              ; preds = %186, %130, %56
  ret void
}

declare dso_local %struct.cfumass_softc* @usbd_xfer_softc(%struct.usb_xfer*) #1

declare dso_local i32 @USB_GET_STATE(%struct.usb_xfer*) #1

declare dso_local i32 @CFUMASS_DEBUG(%struct.cfumass_softc*, i8*, ...) #1

declare dso_local i32 @usbd_xfer_status(%struct.usb_xfer*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @usbd_xfer_max_len(%struct.usb_xfer*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @usbd_xfer_set_frame_data(%struct.usb_xfer*, i32, i32*, i32) #1

declare dso_local i32 @usbd_transfer_submit(%struct.usb_xfer*) #1

declare dso_local i32 @usbd_errstr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
