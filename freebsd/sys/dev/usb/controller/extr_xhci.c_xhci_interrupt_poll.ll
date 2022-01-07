; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_xhci.c_xhci_interrupt_poll.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_xhci.c_xhci_interrupt_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xhci_softc = type { i64, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.usb_page_search = type { i64, %struct.xhci_hw_root* }
%struct.xhci_hw_root = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32, i32 }

@XHCI_TRB_3_CYCLE_BIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"event[%u] = %u (0x%016llx 0x%08lx 0x%08lx)\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"Unhandled event = %u\0A\00", align 1
@XHCI_MAX_EVENTS = common dso_local global i64 0, align 8
@XHCI_ERDP_LO_BUSY = common dso_local global i64 0, align 8
@runt = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xhci_softc*)* @xhci_interrupt_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xhci_interrupt_poll(%struct.xhci_softc* %0) #0 {
  %2 = alloca %struct.xhci_softc*, align 8
  %3 = alloca %struct.usb_page_search, align 8
  %4 = alloca %struct.xhci_hw_root*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.xhci_softc* %0, %struct.xhci_softc** %2, align 8
  store i32 0, i32* %7, align 4
  %13 = load %struct.xhci_softc*, %struct.xhci_softc** %2, align 8
  %14 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = call i32 @usbd_get_page(i32* %15, i32 0, %struct.usb_page_search* %3)
  %17 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %3, i32 0, i32 1
  %18 = load %struct.xhci_hw_root*, %struct.xhci_hw_root** %17, align 8
  store %struct.xhci_hw_root* %18, %struct.xhci_hw_root** %4, align 8
  %19 = load %struct.xhci_softc*, %struct.xhci_softc** %2, align 8
  %20 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = call i32 @usb_pc_cpu_invalidate(i32* %21)
  %23 = load %struct.xhci_softc*, %struct.xhci_softc** %2, align 8
  %24 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %8, align 8
  %26 = load %struct.xhci_softc*, %struct.xhci_softc** %2, align 8
  %27 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %10, align 4
  store i32 2, i32* %12, align 4
  br label %29

29:                                               ; preds = %1, %116
  %30 = load %struct.xhci_hw_root*, %struct.xhci_hw_root** %4, align 8
  %31 = getelementptr inbounds %struct.xhci_hw_root, %struct.xhci_hw_root* %30, i32 0, i32 0
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  %33 = load i64, i64* %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @le32toh(i32 %36)
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @XHCI_TRB_3_CYCLE_BIT, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  %42 = zext i1 %41 to i64
  %43 = select i1 %41, i32 1, i32 0
  store i32 %43, i32* %11, align 4
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* %11, align 4
  %46 = icmp ne i32 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %29
  br label %117

48:                                               ; preds = %29
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @XHCI_TRB_3_TYPE_GET(i32 %49)
  store i32 %50, i32* %9, align 4
  %51 = load i64, i64* %8, align 8
  %52 = load i32, i32* %9, align 4
  %53 = load %struct.xhci_hw_root*, %struct.xhci_hw_root** %4, align 8
  %54 = getelementptr inbounds %struct.xhci_hw_root, %struct.xhci_hw_root* %53, i32 0, i32 0
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %54, align 8
  %56 = load i64, i64* %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = call i64 @le64toh(i32 %59)
  %61 = load %struct.xhci_hw_root*, %struct.xhci_hw_root** %4, align 8
  %62 = getelementptr inbounds %struct.xhci_hw_root, %struct.xhci_hw_root* %61, i32 0, i32 0
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %62, align 8
  %64 = load i64, i64* %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @le32toh(i32 %67)
  %69 = sext i32 %68 to i64
  %70 = load %struct.xhci_hw_root*, %struct.xhci_hw_root** %4, align 8
  %71 = getelementptr inbounds %struct.xhci_hw_root, %struct.xhci_hw_root* %70, i32 0, i32 0
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %71, align 8
  %73 = load i64, i64* %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @le32toh(i32 %76)
  %78 = sext i32 %77 to i64
  %79 = call i32 @DPRINTFN(i32 10, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i64 %51, i32 %52, i64 %60, i64 %69, i64 %78)
  %80 = load i32, i32* %9, align 4
  switch i32 %80, label %99 [
    i32 128, label %81
    i32 129, label %89
  ]

81:                                               ; preds = %48
  %82 = load %struct.xhci_softc*, %struct.xhci_softc** %2, align 8
  %83 = load %struct.xhci_hw_root*, %struct.xhci_hw_root** %4, align 8
  %84 = getelementptr inbounds %struct.xhci_hw_root, %struct.xhci_hw_root* %83, i32 0, i32 0
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %84, align 8
  %86 = load i64, i64* %8, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i64 %86
  %88 = call i32 @xhci_check_transfer(%struct.xhci_softc* %82, %struct.TYPE_5__* %87)
  br label %102

89:                                               ; preds = %48
  %90 = load %struct.xhci_softc*, %struct.xhci_softc** %2, align 8
  %91 = load %struct.xhci_hw_root*, %struct.xhci_hw_root** %4, align 8
  %92 = getelementptr inbounds %struct.xhci_hw_root, %struct.xhci_hw_root* %91, i32 0, i32 0
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %92, align 8
  %94 = load i64, i64* %8, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i64 %94
  %96 = call i32 @xhci_check_command(%struct.xhci_softc* %90, %struct.TYPE_5__* %95)
  %97 = load i32, i32* %7, align 4
  %98 = or i32 %97, %96
  store i32 %98, i32* %7, align 4
  br label %102

99:                                               ; preds = %48
  %100 = load i32, i32* %9, align 4
  %101 = call i32 @DPRINTF(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %100)
  br label %102

102:                                              ; preds = %99, %89, %81
  %103 = load i64, i64* %8, align 8
  %104 = add i64 %103, 1
  store i64 %104, i64* %8, align 8
  %105 = load i64, i64* %8, align 8
  %106 = load i64, i64* @XHCI_MAX_EVENTS, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %108, label %116

108:                                              ; preds = %102
  store i64 0, i64* %8, align 8
  %109 = load i32, i32* %10, align 4
  %110 = xor i32 %109, 1
  store i32 %110, i32* %10, align 4
  %111 = load i32, i32* %12, align 4
  %112 = add nsw i32 %111, -1
  store i32 %112, i32* %12, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %115, label %114

114:                                              ; preds = %108
  br label %117

115:                                              ; preds = %108
  br label %116

116:                                              ; preds = %115, %102
  br label %29

117:                                              ; preds = %114, %47
  %118 = load i64, i64* %8, align 8
  %119 = load %struct.xhci_softc*, %struct.xhci_softc** %2, align 8
  %120 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %119, i32 0, i32 0
  store i64 %118, i64* %120, align 8
  %121 = load i32, i32* %10, align 4
  %122 = load %struct.xhci_softc*, %struct.xhci_softc** %2, align 8
  %123 = getelementptr inbounds %struct.xhci_softc, %struct.xhci_softc* %122, i32 0, i32 1
  store i32 %121, i32* %123, align 8
  %124 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %3, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  store i64 %125, i64* %5, align 8
  %126 = load %struct.TYPE_5__*, %struct.TYPE_5__** null, align 8
  %127 = load i64, i64* %8, align 8
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i64 %127
  %129 = ptrtoint %struct.TYPE_5__* %128 to i64
  %130 = load i64, i64* %5, align 8
  %131 = add i64 %130, %129
  store i64 %131, i64* %5, align 8
  %132 = load i64, i64* @XHCI_ERDP_LO_BUSY, align 8
  %133 = load i64, i64* %5, align 8
  %134 = or i64 %133, %132
  store i64 %134, i64* %5, align 8
  %135 = load %struct.xhci_softc*, %struct.xhci_softc** %2, align 8
  %136 = load i32, i32* @runt, align 4
  %137 = call i32 @XHCI_ERDP_LO(i32 0)
  %138 = load i64, i64* %5, align 8
  %139 = trunc i64 %138 to i32
  %140 = call i32 @XWRITE4(%struct.xhci_softc* %135, i32 %136, i32 %137, i32 %139)
  %141 = load %struct.xhci_softc*, %struct.xhci_softc** %2, align 8
  %142 = load i32, i32* @runt, align 4
  %143 = call i32 @XHCI_ERDP_HI(i32 0)
  %144 = load i64, i64* %5, align 8
  %145 = lshr i64 %144, 32
  %146 = trunc i64 %145 to i32
  %147 = call i32 @XWRITE4(%struct.xhci_softc* %141, i32 %142, i32 %143, i32 %146)
  %148 = load i32, i32* %7, align 4
  ret i32 %148
}

declare dso_local i32 @usbd_get_page(i32*, i32, %struct.usb_page_search*) #1

declare dso_local i32 @usb_pc_cpu_invalidate(i32*) #1

declare dso_local i32 @le32toh(i32) #1

declare dso_local i32 @XHCI_TRB_3_TYPE_GET(i32) #1

declare dso_local i32 @DPRINTFN(i32, i8*, i64, i32, i64, i64, i64) #1

declare dso_local i64 @le64toh(i32) #1

declare dso_local i32 @xhci_check_transfer(%struct.xhci_softc*, %struct.TYPE_5__*) #1

declare dso_local i32 @xhci_check_command(%struct.xhci_softc*, %struct.TYPE_5__*) #1

declare dso_local i32 @DPRINTF(i8*, i32) #1

declare dso_local i32 @XWRITE4(%struct.xhci_softc*, i32, i32, i32) #1

declare dso_local i32 @XHCI_ERDP_LO(i32) #1

declare dso_local i32 @XHCI_ERDP_HI(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
