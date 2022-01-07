; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_xhci.c_xhci_reset_command_queue_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_xhci.c_xhci_reset_command_queue_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xhci_softc = type { i32, %struct.TYPE_5__, i64, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.usb_page_search = type { i64, %struct.xhci_hw_root* }
%struct.xhci_hw_root = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@oper = common dso_local global i32 0, align 4
@XHCI_CRCR_LO = common dso_local global i32 0, align 4
@XHCI_CRCR_LO_CRR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"Command ring running\0A\00", align 1
@XHCI_CRCR_LO_CS = common dso_local global i32 0, align 4
@XHCI_CRCR_LO_CA = common dso_local global i32 0, align 4
@XHCI_CRCR_HI = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"Comand ring still running\0A\00", align 1
@USB_ERR_IOERROR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"CRCR=0x%016llx\0A\00", align 1
@XHCI_MAX_COMMANDS = common dso_local global i32 0, align 4
@XHCI_CRCR_LO_RCS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xhci_softc*)* @xhci_reset_command_queue_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xhci_reset_command_queue_locked(%struct.xhci_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xhci_softc*, align 8
  %4 = alloca %struct.usb_page_search, align 8
  %5 = alloca %struct.xhci_hw_root*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.xhci_softc* %0, %struct.xhci_softc** %3, align 8
  %8 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.xhci_softc*, %struct.xhci_softc** %3, align 8
  %10 = load i32, i32* @oper, align 4
  %11 = load i32, i32* @XHCI_CRCR_LO, align 4
  %12 = call i32 @XREAD4(%struct.xhci_softc* %9, i32 %10, i32 %11)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* @XHCI_CRCR_LO_CRR, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %65

17:                                               ; preds = %1
  %18 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %19 = load i32, i32* @XHCI_CRCR_LO_CS, align 4
  %20 = load i32, i32* @XHCI_CRCR_LO_CA, align 4
  %21 = or i32 %19, %20
  %22 = xor i32 %21, -1
  %23 = load i32, i32* %7, align 4
  %24 = and i32 %23, %22
  store i32 %24, i32* %7, align 4
  %25 = load %struct.xhci_softc*, %struct.xhci_softc** %3, align 8
  %26 = load i32, i32* @oper, align 4
  %27 = load i32, i32* @XHCI_CRCR_LO, align 4
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @XHCI_CRCR_LO_CS, align 4
  %30 = or i32 %28, %29
  %31 = call i32 @XWRITE4(%struct.xhci_softc* %25, i32 %26, i32 %27, i32 %30)
  %32 = load %struct.xhci_softc*, %struct.xhci_softc** %3, align 8
  %33 = load i32, i32* @oper, align 4
  %34 = load i32, i32* @XHCI_CRCR_HI, align 4
  %35 = call i32 @XWRITE4(%struct.xhci_softc* %32, i32 %33, i32 %34, i32 0)
  %36 = load %struct.xhci_softc*, %struct.xhci_softc** %3, align 8
  %37 = load i32, i32* @oper, align 4
  %38 = load i32, i32* @XHCI_CRCR_LO, align 4
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* @XHCI_CRCR_LO_CA, align 4
  %41 = or i32 %39, %40
  %42 = call i32 @XWRITE4(%struct.xhci_softc* %36, i32 %37, i32 %38, i32 %41)
  %43 = load %struct.xhci_softc*, %struct.xhci_softc** %3, align 8
  %44 = load i32, i32* @oper, align 4
  %45 = load i32, i32* @XHCI_CRCR_HI, align 4
  %46 = call i32 @XWRITE4(%struct.xhci_softc* %43, i32 %44, i32 %45, i32 0)
  %47 = load %struct.xhci_softc*, %struct.xhci_softc** %3, align 8
  %48 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %47, i32 0, i32 3
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32, i32* @hz, align 4
  %51 = sdiv i32 %50, 4
  %52 = call i32 @usb_pause_mtx(i32* %49, i32 %51)
  %53 = load %struct.xhci_softc*, %struct.xhci_softc** %3, align 8
  %54 = load i32, i32* @oper, align 4
  %55 = load i32, i32* @XHCI_CRCR_LO, align 4
  %56 = call i32 @XREAD4(%struct.xhci_softc* %53, i32 %54, i32 %55)
  store i32 %56, i32* %7, align 4
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* @XHCI_CRCR_LO_CRR, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %17
  %62 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %63 = load i32, i32* @USB_ERR_IOERROR, align 4
  store i32 %63, i32* %2, align 4
  br label %118

64:                                               ; preds = %17
  br label %65

65:                                               ; preds = %64, %1
  %66 = load %struct.xhci_softc*, %struct.xhci_softc** %3, align 8
  %67 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %66, i32 0, i32 0
  store i32 1, i32* %67, align 8
  %68 = load %struct.xhci_softc*, %struct.xhci_softc** %3, align 8
  %69 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %68, i32 0, i32 2
  store i64 0, i64* %69, align 8
  %70 = load %struct.xhci_softc*, %struct.xhci_softc** %3, align 8
  %71 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = call i32 @usbd_get_page(i32* %72, i32 0, %struct.usb_page_search* %4)
  %74 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %4, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  store i64 %75, i64* %6, align 8
  %76 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %4, i32 0, i32 1
  %77 = load %struct.xhci_hw_root*, %struct.xhci_hw_root** %76, align 8
  store %struct.xhci_hw_root* %77, %struct.xhci_hw_root** %5, align 8
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** null, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i64 0
  %80 = ptrtoint %struct.TYPE_6__* %79 to i64
  %81 = load i64, i64* %6, align 8
  %82 = add i64 %81, %80
  store i64 %82, i64* %6, align 8
  %83 = load i64, i64* %6, align 8
  %84 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i64 %83)
  %85 = load %struct.xhci_hw_root*, %struct.xhci_hw_root** %5, align 8
  %86 = getelementptr inbounds %struct.xhci_hw_root, %struct.xhci_hw_root* %85, i32 0, i32 0
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %86, align 8
  %88 = call i32 @memset(%struct.TYPE_6__* %87, i32 0, i32 8)
  %89 = load i64, i64* %6, align 8
  %90 = call i32 @htole64(i64 %89)
  %91 = load %struct.xhci_hw_root*, %struct.xhci_hw_root** %5, align 8
  %92 = getelementptr inbounds %struct.xhci_hw_root, %struct.xhci_hw_root* %91, i32 0, i32 0
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %92, align 8
  %94 = load i32, i32* @XHCI_MAX_COMMANDS, align 4
  %95 = sub nsw i32 %94, 1
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 0
  store i32 %90, i32* %98, align 4
  %99 = load %struct.xhci_softc*, %struct.xhci_softc** %3, align 8
  %100 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 0
  %102 = call i32 @usb_pc_cpu_flush(i32* %101)
  %103 = load %struct.xhci_softc*, %struct.xhci_softc** %3, align 8
  %104 = load i32, i32* @oper, align 4
  %105 = load i32, i32* @XHCI_CRCR_LO, align 4
  %106 = load i64, i64* %6, align 8
  %107 = trunc i64 %106 to i32
  %108 = load i32, i32* @XHCI_CRCR_LO_RCS, align 4
  %109 = or i32 %107, %108
  %110 = call i32 @XWRITE4(%struct.xhci_softc* %103, i32 %104, i32 %105, i32 %109)
  %111 = load %struct.xhci_softc*, %struct.xhci_softc** %3, align 8
  %112 = load i32, i32* @oper, align 4
  %113 = load i32, i32* @XHCI_CRCR_HI, align 4
  %114 = load i64, i64* %6, align 8
  %115 = lshr i64 %114, 32
  %116 = trunc i64 %115 to i32
  %117 = call i32 @XWRITE4(%struct.xhci_softc* %111, i32 %112, i32 %113, i32 %116)
  store i32 0, i32* %2, align 4
  br label %118

118:                                              ; preds = %65, %61
  %119 = load i32, i32* %2, align 4
  ret i32 %119
}

declare dso_local i32 @DPRINTF(i8*, ...) #1

declare dso_local i32 @XREAD4(%struct.xhci_softc*, i32, i32) #1

declare dso_local i32 @XWRITE4(%struct.xhci_softc*, i32, i32, i32) #1

declare dso_local i32 @usb_pause_mtx(i32*, i32) #1

declare dso_local i32 @usbd_get_page(i32*, i32, %struct.usb_page_search*) #1

declare dso_local i32 @memset(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @htole64(i64) #1

declare dso_local i32 @usb_pc_cpu_flush(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
