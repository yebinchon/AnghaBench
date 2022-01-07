; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_musb_otg.c_musbotg_xfer_setup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_musb_otg.c_musbotg_xfer_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_setup_params = type { i32, i32, i32, i32*, i64, i64, %struct.TYPE_4__*, i32*, %struct.usb_xfer* }
%struct.TYPE_4__ = type { i32 }
%struct.usb_xfer = type { i64, i32, i32, i32, i8**, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.musbotg_softc = type { i32 }
%struct.usb_hw_ep_profile = type { i32 }
%struct.musbotg_td = type { i32, i32, i8*, i32 }

@musbotg_device_isoc_methods = common dso_local global i32 0, align 4
@musbotg_device_intr_methods = common dso_local global i32 0, align 4
@musbotg_device_ctrl_methods = common dso_local global i32 0, align 4
@musbotg_device_bulk_methods = common dso_local global i32 0, align 4
@UE_ADDR = common dso_local global i32 0, align 4
@USB_MODE_DEVICE = common dso_local global i64 0, align 8
@USB_ERR_INVAL = common dso_local global i64 0, align 8
@USB_HOST_ALIGN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_setup_params*)* @musbotg_xfer_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @musbotg_xfer_setup(%struct.usb_setup_params* %0) #0 {
  %2 = alloca %struct.usb_setup_params*, align 8
  %3 = alloca %struct.musbotg_softc*, align 8
  %4 = alloca %struct.usb_xfer*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.usb_hw_ep_profile*, align 8
  %10 = alloca %struct.musbotg_td*, align 8
  store %struct.usb_setup_params* %0, %struct.usb_setup_params** %2, align 8
  %11 = load %struct.usb_setup_params*, %struct.usb_setup_params** %2, align 8
  %12 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %11, i32 0, i32 6
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.musbotg_softc* @MUSBOTG_BUS2SC(i32 %15)
  store %struct.musbotg_softc* %16, %struct.musbotg_softc** %3, align 8
  %17 = load %struct.usb_setup_params*, %struct.usb_setup_params** %2, align 8
  %18 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %17, i32 0, i32 8
  %19 = load %struct.usb_xfer*, %struct.usb_xfer** %18, align 8
  store %struct.usb_xfer* %19, %struct.usb_xfer** %4, align 8
  %20 = load %struct.usb_setup_params*, %struct.usb_setup_params** %2, align 8
  %21 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %20, i32 0, i32 0
  store i32 1024, i32* %21, align 8
  %22 = load %struct.usb_setup_params*, %struct.usb_setup_params** %2, align 8
  %23 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %22, i32 0, i32 1
  store i32 3072, i32* %23, align 4
  %24 = load %struct.usb_setup_params*, %struct.usb_setup_params** %2, align 8
  %25 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %24, i32 0, i32 7
  %26 = load i32*, i32** %25, align 8
  %27 = icmp eq i32* %26, @musbotg_device_isoc_methods
  br i1 %27, label %33, label %28

28:                                               ; preds = %1
  %29 = load %struct.usb_setup_params*, %struct.usb_setup_params** %2, align 8
  %30 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %29, i32 0, i32 7
  %31 = load i32*, i32** %30, align 8
  %32 = icmp eq i32* %31, @musbotg_device_intr_methods
  br i1 %32, label %33, label %36

33:                                               ; preds = %28, %1
  %34 = load %struct.usb_setup_params*, %struct.usb_setup_params** %2, align 8
  %35 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %34, i32 0, i32 2
  store i32 3, i32* %35, align 8
  br label %39

36:                                               ; preds = %28
  %37 = load %struct.usb_setup_params*, %struct.usb_setup_params** %2, align 8
  %38 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %37, i32 0, i32 2
  store i32 1, i32* %38, align 8
  br label %39

39:                                               ; preds = %36, %33
  %40 = load %struct.usb_setup_params*, %struct.usb_setup_params** %2, align 8
  %41 = call i32 @usbd_transfer_setup_sub(%struct.usb_setup_params* %40)
  %42 = load %struct.usb_setup_params*, %struct.usb_setup_params** %2, align 8
  %43 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %42, i32 0, i32 7
  %44 = load i32*, i32** %43, align 8
  %45 = icmp eq i32* %44, @musbotg_device_ctrl_methods
  br i1 %45, label %46, label %52

46:                                               ; preds = %39
  %47 = load %struct.usb_xfer*, %struct.usb_xfer** %4, align 8
  %48 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = add nsw i64 %49, 1
  %51 = add nsw i64 %50, 1
  store i64 %51, i64* %6, align 8
  br label %86

52:                                               ; preds = %39
  %53 = load %struct.usb_setup_params*, %struct.usb_setup_params** %2, align 8
  %54 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %53, i32 0, i32 7
  %55 = load i32*, i32** %54, align 8
  %56 = icmp eq i32* %55, @musbotg_device_bulk_methods
  br i1 %56, label %57, label %62

57:                                               ; preds = %52
  %58 = load %struct.usb_xfer*, %struct.usb_xfer** %4, align 8
  %59 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = add nsw i64 %60, 1
  store i64 %61, i64* %6, align 8
  br label %85

62:                                               ; preds = %52
  %63 = load %struct.usb_setup_params*, %struct.usb_setup_params** %2, align 8
  %64 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %63, i32 0, i32 7
  %65 = load i32*, i32** %64, align 8
  %66 = icmp eq i32* %65, @musbotg_device_intr_methods
  br i1 %66, label %67, label %72

67:                                               ; preds = %62
  %68 = load %struct.usb_xfer*, %struct.usb_xfer** %4, align 8
  %69 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = add nsw i64 %70, 1
  store i64 %71, i64* %6, align 8
  br label %84

72:                                               ; preds = %62
  %73 = load %struct.usb_setup_params*, %struct.usb_setup_params** %2, align 8
  %74 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %73, i32 0, i32 7
  %75 = load i32*, i32** %74, align 8
  %76 = icmp eq i32* %75, @musbotg_device_isoc_methods
  br i1 %76, label %77, label %82

77:                                               ; preds = %72
  %78 = load %struct.usb_xfer*, %struct.usb_xfer** %4, align 8
  %79 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = add nsw i64 %80, 1
  store i64 %81, i64* %6, align 8
  br label %83

82:                                               ; preds = %72
  store i64 0, i64* %6, align 8
  br label %83

83:                                               ; preds = %82, %77
  br label %84

84:                                               ; preds = %83, %67
  br label %85

85:                                               ; preds = %84, %57
  br label %86

86:                                               ; preds = %85, %46
  %87 = load %struct.usb_setup_params*, %struct.usb_setup_params** %2, align 8
  %88 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %87, i32 0, i32 5
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %86
  br label %194

92:                                               ; preds = %86
  store i8* null, i8** %5, align 8
  %93 = load %struct.usb_xfer*, %struct.usb_xfer** %4, align 8
  %94 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @UE_ADDR, align 4
  %97 = and i32 %95, %96
  store i32 %97, i32* %8, align 4
  %98 = load %struct.usb_xfer*, %struct.usb_xfer** %4, align 8
  %99 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %98, i32 0, i32 6
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @USB_MODE_DEVICE, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %117

104:                                              ; preds = %92
  %105 = load %struct.usb_setup_params*, %struct.usb_setup_params** %2, align 8
  %106 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %105, i32 0, i32 6
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** %106, align 8
  %108 = load i32, i32* %8, align 4
  %109 = call i32 @musbotg_get_hw_ep_profile(%struct.TYPE_4__* %107, %struct.usb_hw_ep_profile** %9, i32 %108)
  %110 = load %struct.usb_hw_ep_profile*, %struct.usb_hw_ep_profile** %9, align 8
  %111 = icmp eq %struct.usb_hw_ep_profile* %110, null
  br i1 %111, label %112, label %116

112:                                              ; preds = %104
  %113 = load i64, i64* @USB_ERR_INVAL, align 8
  %114 = load %struct.usb_setup_params*, %struct.usb_setup_params** %2, align 8
  %115 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %114, i32 0, i32 5
  store i64 %113, i64* %115, align 8
  br label %194

116:                                              ; preds = %104
  br label %117

117:                                              ; preds = %116, %92
  %118 = load %struct.usb_setup_params*, %struct.usb_setup_params** %2, align 8
  %119 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %118, i32 0, i32 3
  %120 = load i32*, i32** %119, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 0
  %122 = load i32, i32* %121, align 4
  %123 = sub nsw i32 0, %122
  %124 = load i32, i32* @USB_HOST_ALIGN, align 4
  %125 = sub nsw i32 %124, 1
  %126 = and i32 %123, %125
  %127 = load %struct.usb_setup_params*, %struct.usb_setup_params** %2, align 8
  %128 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %127, i32 0, i32 3
  %129 = load i32*, i32** %128, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 0
  %131 = load i32, i32* %130, align 4
  %132 = add nsw i32 %131, %126
  store i32 %132, i32* %130, align 4
  store i64 0, i64* %7, align 8
  br label %133

133:                                              ; preds = %185, %117
  %134 = load i64, i64* %7, align 8
  %135 = load i64, i64* %6, align 8
  %136 = icmp ne i64 %134, %135
  br i1 %136, label %137, label %188

137:                                              ; preds = %133
  %138 = load %struct.usb_setup_params*, %struct.usb_setup_params** %2, align 8
  %139 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %138, i32 0, i32 4
  %140 = load i64, i64* %139, align 8
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %176

142:                                              ; preds = %137
  %143 = load %struct.usb_setup_params*, %struct.usb_setup_params** %2, align 8
  %144 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %143, i32 0, i32 4
  %145 = load i64, i64* %144, align 8
  %146 = load %struct.usb_setup_params*, %struct.usb_setup_params** %2, align 8
  %147 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %146, i32 0, i32 3
  %148 = load i32*, i32** %147, align 8
  %149 = getelementptr inbounds i32, i32* %148, i64 0
  %150 = load i32, i32* %149, align 4
  %151 = call %struct.musbotg_td* @USB_ADD_BYTES(i64 %145, i32 %150)
  store %struct.musbotg_td* %151, %struct.musbotg_td** %10, align 8
  %152 = load %struct.usb_xfer*, %struct.usb_xfer** %4, align 8
  %153 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %152, i32 0, i32 5
  %154 = load i32, i32* %153, align 8
  %155 = load %struct.musbotg_td*, %struct.musbotg_td** %10, align 8
  %156 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %155, i32 0, i32 3
  store i32 %154, i32* %156, align 8
  %157 = load %struct.usb_xfer*, %struct.usb_xfer** %4, align 8
  %158 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 4
  %160 = load %struct.usb_xfer*, %struct.usb_xfer** %4, align 8
  %161 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %160, i32 0, i32 3
  %162 = load i32, i32* %161, align 8
  %163 = sub nsw i32 %162, 1
  %164 = shl i32 %163, 11
  %165 = or i32 %159, %164
  %166 = load %struct.musbotg_td*, %struct.musbotg_td** %10, align 8
  %167 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %166, i32 0, i32 0
  store i32 %165, i32* %167, align 8
  %168 = load i32, i32* %8, align 4
  %169 = load %struct.musbotg_td*, %struct.musbotg_td** %10, align 8
  %170 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %169, i32 0, i32 1
  store i32 %168, i32* %170, align 4
  %171 = load i8*, i8** %5, align 8
  %172 = load %struct.musbotg_td*, %struct.musbotg_td** %10, align 8
  %173 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %172, i32 0, i32 2
  store i8* %171, i8** %173, align 8
  %174 = load %struct.musbotg_td*, %struct.musbotg_td** %10, align 8
  %175 = bitcast %struct.musbotg_td* %174 to i8*
  store i8* %175, i8** %5, align 8
  br label %176

176:                                              ; preds = %142, %137
  %177 = load %struct.usb_setup_params*, %struct.usb_setup_params** %2, align 8
  %178 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %177, i32 0, i32 3
  %179 = load i32*, i32** %178, align 8
  %180 = getelementptr inbounds i32, i32* %179, i64 0
  %181 = load i32, i32* %180, align 4
  %182 = sext i32 %181 to i64
  %183 = add i64 %182, 24
  %184 = trunc i64 %183 to i32
  store i32 %184, i32* %180, align 4
  br label %185

185:                                              ; preds = %176
  %186 = load i64, i64* %7, align 8
  %187 = add nsw i64 %186, 1
  store i64 %187, i64* %7, align 8
  br label %133

188:                                              ; preds = %133
  %189 = load i8*, i8** %5, align 8
  %190 = load %struct.usb_xfer*, %struct.usb_xfer** %4, align 8
  %191 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %190, i32 0, i32 4
  %192 = load i8**, i8*** %191, align 8
  %193 = getelementptr inbounds i8*, i8** %192, i64 0
  store i8* %189, i8** %193, align 8
  br label %194

194:                                              ; preds = %188, %112, %91
  ret void
}

declare dso_local %struct.musbotg_softc* @MUSBOTG_BUS2SC(i32) #1

declare dso_local i32 @usbd_transfer_setup_sub(%struct.usb_setup_params*) #1

declare dso_local i32 @musbotg_get_hw_ep_profile(%struct.TYPE_4__*, %struct.usb_hw_ep_profile**, i32) #1

declare dso_local %struct.musbotg_td* @USB_ADD_BYTES(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
