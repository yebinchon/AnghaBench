; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_xhci.c_xhci_device_state_change.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_xhci.c_xhci_device_state_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { i64, i32*, i32 }
%struct.xhci_softc = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32, i32, i64, i32 }
%struct.usb_page_search = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@XHCI_ST_DEFAULT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Device reset failed for slot %u.\0A\00", align 1
@XHCI_ST_ADDRESSED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"Failed to deconfigure slot %u.\0A\00", align 1
@XHCI_ST_CONFIGURED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [40 x i8] c"Could not configure device at slot %u.\0A\00", align 1
@.str.4 = private unnamed_addr constant [47 x i8] c"Could not evaluate device context at slot %u.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_device*)* @xhci_device_state_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xhci_device_state_change(%struct.usb_device* %0) #0 {
  %2 = alloca %struct.usb_device*, align 8
  %3 = alloca %struct.xhci_softc*, align 8
  %4 = alloca %struct.usb_page_search, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.usb_device* %0, %struct.usb_device** %2, align 8
  %7 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %8 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 8
  %10 = call %struct.xhci_softc* @XHCI_BUS2SC(i32 %9)
  store %struct.xhci_softc* %10, %struct.xhci_softc** %3, align 8
  %11 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %12 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %11, i32 0, i32 1
  %13 = load i32*, i32** %12, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  br label %187

16:                                               ; preds = %1
  %17 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %18 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %6, align 8
  %20 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %21 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %22 = call i32 @usb_get_device_state(%struct.usb_device* %21)
  %23 = icmp eq i32 %22, 129
  br i1 %23, label %24, label %52

24:                                               ; preds = %16
  %25 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %26 = load %struct.xhci_softc*, %struct.xhci_softc** %3, align 8
  %27 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = load i64, i64* %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 3
  %33 = load %struct.xhci_softc*, %struct.xhci_softc** %3, align 8
  %34 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = load i64, i64* %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 4
  %40 = call i64 @uhub_query_info(%struct.usb_device* %25, i64* %32, i32* %39)
  store i64 %40, i64* %5, align 8
  %41 = load i64, i64* %5, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %24
  %44 = load %struct.xhci_softc*, %struct.xhci_softc** %3, align 8
  %45 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = load i64, i64* %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 3
  store i64 0, i64* %50, align 8
  br label %51

51:                                               ; preds = %43, %24
  br label %52

52:                                               ; preds = %51, %16
  %53 = load %struct.xhci_softc*, %struct.xhci_softc** %3, align 8
  %54 = call i32 @XHCI_CMD_LOCK(%struct.xhci_softc* %53)
  %55 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %56 = call i32 @usb_get_device_state(%struct.usb_device* %55)
  switch i32 %56, label %183 [
    i32 128, label %57
    i32 130, label %94
    i32 129, label %126
  ]

57:                                               ; preds = %52
  %58 = load %struct.xhci_softc*, %struct.xhci_softc** %3, align 8
  %59 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %60, align 8
  %62 = load i64, i64* %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @XHCI_ST_DEFAULT, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %57
  br label %184

69:                                               ; preds = %57
  %70 = load i32, i32* @XHCI_ST_DEFAULT, align 4
  %71 = load %struct.xhci_softc*, %struct.xhci_softc** %3, align 8
  %72 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %73, align 8
  %75 = load i64, i64* %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 2
  store i32 %70, i32* %77, align 8
  %78 = load %struct.xhci_softc*, %struct.xhci_softc** %3, align 8
  %79 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %80, align 8
  %82 = load i64, i64* %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 1
  store i32 0, i32* %84, align 4
  %85 = load %struct.xhci_softc*, %struct.xhci_softc** %3, align 8
  %86 = load i64, i64* %6, align 8
  %87 = call i64 @xhci_cmd_reset_dev(%struct.xhci_softc* %85, i64 %86)
  store i64 %87, i64* %5, align 8
  %88 = load i64, i64* %5, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %69
  %91 = load i64, i64* %6, align 8
  %92 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i64 %91)
  br label %93

93:                                               ; preds = %90, %69
  br label %184

94:                                               ; preds = %52
  %95 = load %struct.xhci_softc*, %struct.xhci_softc** %3, align 8
  %96 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %97, align 8
  %99 = load i64, i64* %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* @XHCI_ST_ADDRESSED, align 4
  %104 = icmp eq i32 %102, %103
  br i1 %104, label %105, label %106

105:                                              ; preds = %94
  br label %184

106:                                              ; preds = %94
  %107 = load i32, i32* @XHCI_ST_ADDRESSED, align 4
  %108 = load %struct.xhci_softc*, %struct.xhci_softc** %3, align 8
  %109 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 0
  %111 = load %struct.TYPE_3__*, %struct.TYPE_3__** %110, align 8
  %112 = load i64, i64* %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 2
  store i32 %107, i32* %114, align 8
  %115 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %116 = call i32 @xhci_configure_mask(%struct.usb_device* %115, i32 1, i32 0)
  %117 = load %struct.xhci_softc*, %struct.xhci_softc** %3, align 8
  %118 = load i64, i64* %6, align 8
  %119 = call i64 @xhci_cmd_configure_ep(%struct.xhci_softc* %117, i32 0, i32 1, i64 %118)
  store i64 %119, i64* %5, align 8
  %120 = load i64, i64* %5, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %106
  %123 = load i64, i64* %6, align 8
  %124 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i64 %123)
  br label %125

125:                                              ; preds = %122, %106
  br label %184

126:                                              ; preds = %52
  %127 = load %struct.xhci_softc*, %struct.xhci_softc** %3, align 8
  %128 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 0
  %130 = load %struct.TYPE_3__*, %struct.TYPE_3__** %129, align 8
  %131 = load i64, i64* %6, align 8
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i64 %131
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 8
  %135 = load i32, i32* @XHCI_ST_CONFIGURED, align 4
  %136 = icmp eq i32 %134, %135
  br i1 %136, label %137, label %138

137:                                              ; preds = %126
  br label %184

138:                                              ; preds = %126
  %139 = load i32, i32* @XHCI_ST_CONFIGURED, align 4
  %140 = load %struct.xhci_softc*, %struct.xhci_softc** %3, align 8
  %141 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 0
  %143 = load %struct.TYPE_3__*, %struct.TYPE_3__** %142, align 8
  %144 = load i64, i64* %6, align 8
  %145 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %143, i64 %144
  %146 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %145, i32 0, i32 2
  store i32 %139, i32* %146, align 8
  %147 = load %struct.xhci_softc*, %struct.xhci_softc** %3, align 8
  %148 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i32 0, i32 0
  %150 = load %struct.TYPE_3__*, %struct.TYPE_3__** %149, align 8
  %151 = load i64, i64* %6, align 8
  %152 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %150, i64 %151
  %153 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %152, i32 0, i32 1
  store i32 0, i32* %153, align 4
  %154 = load %struct.xhci_softc*, %struct.xhci_softc** %3, align 8
  %155 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i32 0, i32 0
  %157 = load %struct.TYPE_3__*, %struct.TYPE_3__** %156, align 8
  %158 = load i64, i64* %6, align 8
  %159 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %157, i64 %158
  %160 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %159, i32 0, i32 0
  %161 = call i32 @usbd_get_page(i32* %160, i32 0, %struct.usb_page_search* %4)
  %162 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %163 = call i32 @xhci_configure_mask(%struct.usb_device* %162, i32 3, i32 0)
  %164 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %165 = call i64 @xhci_configure_device(%struct.usb_device* %164)
  store i64 %165, i64* %5, align 8
  %166 = load i64, i64* %5, align 8
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %171

168:                                              ; preds = %138
  %169 = load i64, i64* %6, align 8
  %170 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i64 %169)
  br label %171

171:                                              ; preds = %168, %138
  %172 = load %struct.xhci_softc*, %struct.xhci_softc** %3, align 8
  %173 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %4, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = load i64, i64* %6, align 8
  %176 = call i64 @xhci_cmd_evaluate_ctx(%struct.xhci_softc* %172, i32 %174, i64 %175)
  store i64 %176, i64* %5, align 8
  %177 = load i64, i64* %5, align 8
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %182

179:                                              ; preds = %171
  %180 = load i64, i64* %6, align 8
  %181 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0), i64 %180)
  br label %182

182:                                              ; preds = %179, %171
  br label %184

183:                                              ; preds = %52
  br label %184

184:                                              ; preds = %183, %182, %137, %125, %105, %93, %68
  %185 = load %struct.xhci_softc*, %struct.xhci_softc** %3, align 8
  %186 = call i32 @XHCI_CMD_UNLOCK(%struct.xhci_softc* %185)
  br label %187

187:                                              ; preds = %184, %15
  ret void
}

declare dso_local %struct.xhci_softc* @XHCI_BUS2SC(i32) #1

declare dso_local i32 @DPRINTF(i8*, ...) #1

declare dso_local i32 @usb_get_device_state(%struct.usb_device*) #1

declare dso_local i64 @uhub_query_info(%struct.usb_device*, i64*, i32*) #1

declare dso_local i32 @XHCI_CMD_LOCK(%struct.xhci_softc*) #1

declare dso_local i64 @xhci_cmd_reset_dev(%struct.xhci_softc*, i64) #1

declare dso_local i32 @xhci_configure_mask(%struct.usb_device*, i32, i32) #1

declare dso_local i64 @xhci_cmd_configure_ep(%struct.xhci_softc*, i32, i32, i64) #1

declare dso_local i32 @usbd_get_page(i32*, i32, %struct.usb_page_search*) #1

declare dso_local i64 @xhci_configure_device(%struct.usb_device*) #1

declare dso_local i64 @xhci_cmd_evaluate_ctx(%struct.xhci_softc*, i32, i64) #1

declare dso_local i32 @XHCI_CMD_UNLOCK(%struct.xhci_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
