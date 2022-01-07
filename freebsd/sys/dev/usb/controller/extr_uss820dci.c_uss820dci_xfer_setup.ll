; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_uss820dci.c_uss820dci_xfer_setup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_uss820dci.c_uss820dci_xfer_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_setup_params = type { i32, i32, i32, i32*, i32*, i64, i64, %struct.TYPE_2__*, %struct.usb_xfer* }
%struct.TYPE_2__ = type { i32 }
%struct.usb_xfer = type { i64, i32, i8**, i32 }
%struct.usb_hw_ep_profile = type { i64 }
%struct.uss820dci_softc = type { i32 }
%struct.uss820dci_td = type { i32, i32, i8*, i32 }

@uss820dci_device_ctrl_methods = common dso_local global i32 0, align 4
@uss820dci_device_bulk_methods = common dso_local global i32 0, align 4
@uss820dci_device_intr_methods = common dso_local global i32 0, align 4
@uss820dci_device_isoc_fs_methods = common dso_local global i32 0, align 4
@UE_ADDR = common dso_local global i32 0, align 4
@USB_ERR_INVAL = common dso_local global i64 0, align 8
@USB_HOST_ALIGN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_setup_params*)* @uss820dci_xfer_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uss820dci_xfer_setup(%struct.usb_setup_params* %0) #0 {
  %2 = alloca %struct.usb_setup_params*, align 8
  %3 = alloca %struct.usb_hw_ep_profile*, align 8
  %4 = alloca %struct.uss820dci_softc*, align 8
  %5 = alloca %struct.usb_xfer*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.uss820dci_td*, align 8
  store %struct.usb_setup_params* %0, %struct.usb_setup_params** %2, align 8
  %11 = load %struct.usb_setup_params*, %struct.usb_setup_params** %2, align 8
  %12 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %11, i32 0, i32 7
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.uss820dci_softc* @USS820_DCI_BUS2SC(i32 %15)
  store %struct.uss820dci_softc* %16, %struct.uss820dci_softc** %4, align 8
  %17 = load %struct.usb_setup_params*, %struct.usb_setup_params** %2, align 8
  %18 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %17, i32 0, i32 8
  %19 = load %struct.usb_xfer*, %struct.usb_xfer** %18, align 8
  store %struct.usb_xfer* %19, %struct.usb_xfer** %5, align 8
  %20 = load %struct.usb_setup_params*, %struct.usb_setup_params** %2, align 8
  %21 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %20, i32 0, i32 0
  store i32 1280, i32* %21, align 8
  %22 = load %struct.usb_setup_params*, %struct.usb_setup_params** %2, align 8
  %23 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %22, i32 0, i32 1
  store i32 1, i32* %23, align 4
  %24 = load %struct.usb_setup_params*, %struct.usb_setup_params** %2, align 8
  %25 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %24, i32 0, i32 2
  store i32 1280, i32* %25, align 8
  %26 = load %struct.usb_setup_params*, %struct.usb_setup_params** %2, align 8
  %27 = call i32 @usbd_transfer_setup_sub(%struct.usb_setup_params* %26)
  %28 = load %struct.usb_setup_params*, %struct.usb_setup_params** %2, align 8
  %29 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %28, i32 0, i32 4
  %30 = load i32*, i32** %29, align 8
  %31 = icmp eq i32* %30, @uss820dci_device_ctrl_methods
  br i1 %31, label %32, label %38

32:                                               ; preds = %1
  %33 = load %struct.usb_xfer*, %struct.usb_xfer** %5, align 8
  %34 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = add nsw i64 %35, 1
  %37 = add nsw i64 %36, 1
  store i64 %37, i64* %7, align 8
  br label %72

38:                                               ; preds = %1
  %39 = load %struct.usb_setup_params*, %struct.usb_setup_params** %2, align 8
  %40 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %39, i32 0, i32 4
  %41 = load i32*, i32** %40, align 8
  %42 = icmp eq i32* %41, @uss820dci_device_bulk_methods
  br i1 %42, label %43, label %48

43:                                               ; preds = %38
  %44 = load %struct.usb_xfer*, %struct.usb_xfer** %5, align 8
  %45 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = add nsw i64 %46, 1
  store i64 %47, i64* %7, align 8
  br label %71

48:                                               ; preds = %38
  %49 = load %struct.usb_setup_params*, %struct.usb_setup_params** %2, align 8
  %50 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %49, i32 0, i32 4
  %51 = load i32*, i32** %50, align 8
  %52 = icmp eq i32* %51, @uss820dci_device_intr_methods
  br i1 %52, label %53, label %58

53:                                               ; preds = %48
  %54 = load %struct.usb_xfer*, %struct.usb_xfer** %5, align 8
  %55 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = add nsw i64 %56, 1
  store i64 %57, i64* %7, align 8
  br label %70

58:                                               ; preds = %48
  %59 = load %struct.usb_setup_params*, %struct.usb_setup_params** %2, align 8
  %60 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %59, i32 0, i32 4
  %61 = load i32*, i32** %60, align 8
  %62 = icmp eq i32* %61, @uss820dci_device_isoc_fs_methods
  br i1 %62, label %63, label %68

63:                                               ; preds = %58
  %64 = load %struct.usb_xfer*, %struct.usb_xfer** %5, align 8
  %65 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = add nsw i64 %66, 1
  store i64 %67, i64* %7, align 8
  br label %69

68:                                               ; preds = %58
  store i64 0, i64* %7, align 8
  br label %69

69:                                               ; preds = %68, %63
  br label %70

70:                                               ; preds = %69, %53
  br label %71

71:                                               ; preds = %70, %43
  br label %72

72:                                               ; preds = %71, %32
  %73 = load %struct.usb_setup_params*, %struct.usb_setup_params** %2, align 8
  %74 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %73, i32 0, i32 6
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %72
  br label %179

78:                                               ; preds = %72
  store i8* null, i8** %6, align 8
  %79 = load i64, i64* %7, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %99

81:                                               ; preds = %78
  %82 = load %struct.usb_xfer*, %struct.usb_xfer** %5, align 8
  %83 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @UE_ADDR, align 4
  %86 = and i32 %84, %85
  store i32 %86, i32* %9, align 4
  %87 = load %struct.usb_setup_params*, %struct.usb_setup_params** %2, align 8
  %88 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %87, i32 0, i32 7
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** %88, align 8
  %90 = load i32, i32* %9, align 4
  %91 = call i32 @uss820dci_get_hw_ep_profile(%struct.TYPE_2__* %89, %struct.usb_hw_ep_profile** %3, i32 %90)
  %92 = load %struct.usb_hw_ep_profile*, %struct.usb_hw_ep_profile** %3, align 8
  %93 = icmp eq %struct.usb_hw_ep_profile* %92, null
  br i1 %93, label %94, label %98

94:                                               ; preds = %81
  %95 = load i64, i64* @USB_ERR_INVAL, align 8
  %96 = load %struct.usb_setup_params*, %struct.usb_setup_params** %2, align 8
  %97 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %96, i32 0, i32 6
  store i64 %95, i64* %97, align 8
  br label %179

98:                                               ; preds = %81
  br label %100

99:                                               ; preds = %78
  store i32 0, i32* %9, align 4
  store %struct.usb_hw_ep_profile* null, %struct.usb_hw_ep_profile** %3, align 8
  br label %100

100:                                              ; preds = %99, %98
  %101 = load %struct.usb_setup_params*, %struct.usb_setup_params** %2, align 8
  %102 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %101, i32 0, i32 3
  %103 = load i32*, i32** %102, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 0
  %105 = load i32, i32* %104, align 4
  %106 = sub nsw i32 0, %105
  %107 = load i32, i32* @USB_HOST_ALIGN, align 4
  %108 = sub nsw i32 %107, 1
  %109 = and i32 %106, %108
  %110 = load %struct.usb_setup_params*, %struct.usb_setup_params** %2, align 8
  %111 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %110, i32 0, i32 3
  %112 = load i32*, i32** %111, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 0
  %114 = load i32, i32* %113, align 4
  %115 = add nsw i32 %114, %109
  store i32 %115, i32* %113, align 4
  store i64 0, i64* %8, align 8
  br label %116

116:                                              ; preds = %170, %100
  %117 = load i64, i64* %8, align 8
  %118 = load i64, i64* %7, align 8
  %119 = icmp ne i64 %117, %118
  br i1 %119, label %120, label %173

120:                                              ; preds = %116
  %121 = load %struct.usb_setup_params*, %struct.usb_setup_params** %2, align 8
  %122 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %121, i32 0, i32 5
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %161

125:                                              ; preds = %120
  %126 = load %struct.usb_setup_params*, %struct.usb_setup_params** %2, align 8
  %127 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %126, i32 0, i32 5
  %128 = load i64, i64* %127, align 8
  %129 = load %struct.usb_setup_params*, %struct.usb_setup_params** %2, align 8
  %130 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %129, i32 0, i32 3
  %131 = load i32*, i32** %130, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 0
  %133 = load i32, i32* %132, align 4
  %134 = call %struct.uss820dci_td* @USB_ADD_BYTES(i64 %128, i32 %133)
  store %struct.uss820dci_td* %134, %struct.uss820dci_td** %10, align 8
  %135 = load %struct.usb_xfer*, %struct.usb_xfer** %5, align 8
  %136 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %135, i32 0, i32 3
  %137 = load i32, i32* %136, align 8
  %138 = load %struct.uss820dci_td*, %struct.uss820dci_td** %10, align 8
  %139 = getelementptr inbounds %struct.uss820dci_td, %struct.uss820dci_td* %138, i32 0, i32 3
  store i32 %137, i32* %139, align 8
  %140 = load i32, i32* %9, align 4
  %141 = load %struct.uss820dci_td*, %struct.uss820dci_td** %10, align 8
  %142 = getelementptr inbounds %struct.uss820dci_td, %struct.uss820dci_td* %141, i32 0, i32 0
  store i32 %140, i32* %142, align 8
  %143 = load %struct.usb_hw_ep_profile*, %struct.usb_hw_ep_profile** %3, align 8
  %144 = getelementptr inbounds %struct.usb_hw_ep_profile, %struct.usb_hw_ep_profile* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %155

147:                                              ; preds = %125
  %148 = load %struct.usb_setup_params*, %struct.usb_setup_params** %2, align 8
  %149 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %148, i32 0, i32 4
  %150 = load i32*, i32** %149, align 8
  %151 = icmp ne i32* %150, @uss820dci_device_ctrl_methods
  br i1 %151, label %152, label %155

152:                                              ; preds = %147
  %153 = load %struct.uss820dci_td*, %struct.uss820dci_td** %10, align 8
  %154 = getelementptr inbounds %struct.uss820dci_td, %struct.uss820dci_td* %153, i32 0, i32 1
  store i32 1, i32* %154, align 4
  br label %155

155:                                              ; preds = %152, %147, %125
  %156 = load i8*, i8** %6, align 8
  %157 = load %struct.uss820dci_td*, %struct.uss820dci_td** %10, align 8
  %158 = getelementptr inbounds %struct.uss820dci_td, %struct.uss820dci_td* %157, i32 0, i32 2
  store i8* %156, i8** %158, align 8
  %159 = load %struct.uss820dci_td*, %struct.uss820dci_td** %10, align 8
  %160 = bitcast %struct.uss820dci_td* %159 to i8*
  store i8* %160, i8** %6, align 8
  br label %161

161:                                              ; preds = %155, %120
  %162 = load %struct.usb_setup_params*, %struct.usb_setup_params** %2, align 8
  %163 = getelementptr inbounds %struct.usb_setup_params, %struct.usb_setup_params* %162, i32 0, i32 3
  %164 = load i32*, i32** %163, align 8
  %165 = getelementptr inbounds i32, i32* %164, i64 0
  %166 = load i32, i32* %165, align 4
  %167 = sext i32 %166 to i64
  %168 = add i64 %167, 24
  %169 = trunc i64 %168 to i32
  store i32 %169, i32* %165, align 4
  br label %170

170:                                              ; preds = %161
  %171 = load i64, i64* %8, align 8
  %172 = add nsw i64 %171, 1
  store i64 %172, i64* %8, align 8
  br label %116

173:                                              ; preds = %116
  %174 = load i8*, i8** %6, align 8
  %175 = load %struct.usb_xfer*, %struct.usb_xfer** %5, align 8
  %176 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %175, i32 0, i32 2
  %177 = load i8**, i8*** %176, align 8
  %178 = getelementptr inbounds i8*, i8** %177, i64 0
  store i8* %174, i8** %178, align 8
  br label %179

179:                                              ; preds = %173, %94, %77
  ret void
}

declare dso_local %struct.uss820dci_softc* @USS820_DCI_BUS2SC(i32) #1

declare dso_local i32 @usbd_transfer_setup_sub(%struct.usb_setup_params*) #1

declare dso_local i32 @uss820dci_get_hw_ep_profile(%struct.TYPE_2__*, %struct.usb_hw_ep_profile**, i32) #1

declare dso_local %struct.uss820dci_td* @USB_ADD_BYTES(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
