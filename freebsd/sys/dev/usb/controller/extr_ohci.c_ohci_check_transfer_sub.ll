; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_ohci.c_ohci_check_transfer_sub.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_ohci.c_ohci_check_transfer_sub.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_xfer = type { i8*, %struct.TYPE_12__*, %struct.TYPE_11__*, %struct.TYPE_8__, %struct.TYPE_14__**, %struct.TYPE_13__* }
%struct.TYPE_12__ = type { i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_11__ = type { i32* }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32, %struct.TYPE_13__*, %struct.TYPE_13__*, i32, i32, i32, i32 }

@OHCI_TD_NEXT_END = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"xfer=%p following alt next\0A\00", align 1
@ohci_device_bulk_methods = common dso_local global i32 0, align 4
@OHCI_COMMAND_STATUS = common dso_local global i32 0, align 4
@OHCI_BLF = common dso_local global i32 0, align 4
@ohci_device_ctrl_methods = common dso_local global i32 0, align 4
@OHCI_CLF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_xfer*)* @ohci_check_transfer_sub to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ohci_check_transfer_sub(%struct.usb_xfer* %0) #0 {
  %2 = alloca %struct.usb_xfer*, align 8
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  store %struct.usb_xfer* %0, %struct.usb_xfer** %2, align 8
  %11 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %12 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %11, i32 0, i32 5
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  store %struct.TYPE_13__* %13, %struct.TYPE_13__** %3, align 8
  br label %14

14:                                               ; preds = %1, %56
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 6
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @usb_pc_cpu_invalidate(i32 %17)
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 5
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @le32toh(i32 %21)
  store i32 %22, i32* %5, align 4
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @le32toh(i32 %25)
  store i32 %26, i32* %6, align 4
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @le32toh(i32 %29)
  store i32 %30, i32* %7, align 4
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %32 = bitcast %struct.TYPE_13__* %31 to i8*
  %33 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %34 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = icmp eq i8* %32, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %14
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %3, align 8
  br label %60

38:                                               ; preds = %14
  %39 = load i32, i32* %6, align 4
  %40 = call i64 @OHCI_TD_GET_CC(i32 %39)
  store i64 %40, i64* %8, align 8
  %41 = load i64, i64* %8, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %3, align 8
  br label %60

44:                                               ; preds = %38
  %45 = load i32, i32* %7, align 4
  %46 = and i32 %45, -16
  %47 = load i32, i32* @OHCI_TD_NEXT_END, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %52, label %49

49:                                               ; preds = %44
  %50 = load i32, i32* %5, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %49, %44
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 2
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %54, align 8
  store %struct.TYPE_13__* %55, %struct.TYPE_13__** %3, align 8
  br label %60

56:                                               ; preds = %49
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i32 0, i32 1
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %58, align 8
  store %struct.TYPE_13__* %59, %struct.TYPE_13__** %3, align 8
  br label %14

60:                                               ; preds = %52, %43, %37
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %62 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %63 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %62, i32 0, i32 5
  store %struct.TYPE_13__* %61, %struct.TYPE_13__** %63, align 8
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %65 = icmp ne %struct.TYPE_13__* %64, null
  br i1 %65, label %66, label %136

66:                                               ; preds = %60
  %67 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %68 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %67, i32 0, i32 4
  %69 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %68, align 8
  %70 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %71 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %70, i32 0, i32 3
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %69, i64 %73
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %74, align 8
  store %struct.TYPE_14__* %75, %struct.TYPE_14__** %4, align 8
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %79, i32 0, i32 1
  store i32 %78, i32* %80, align 4
  %81 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @usb_pc_cpu_flush(i32 %83)
  %85 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %86 = call i32 @DPRINTFN(i32 13, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), %struct.usb_xfer* %85)
  %87 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %88 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %87, i32 0, i32 1
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 1
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %66
  br label %135

97:                                               ; preds = %66
  %98 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %99 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %98, i32 0, i32 2
  %100 = load %struct.TYPE_11__*, %struct.TYPE_11__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %100, i32 0, i32 0
  %102 = load i32*, i32** %101, align 8
  %103 = icmp eq i32* %102, @ohci_device_bulk_methods
  br i1 %103, label %104, label %115

104:                                              ; preds = %97
  %105 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %106 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %105, i32 0, i32 1
  %107 = load %struct.TYPE_12__*, %struct.TYPE_12__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = call i32* @OHCI_BUS2SC(i32 %109)
  store i32* %110, i32** %9, align 8
  %111 = load i32*, i32** %9, align 8
  %112 = load i32, i32* @OHCI_COMMAND_STATUS, align 4
  %113 = load i32, i32* @OHCI_BLF, align 4
  %114 = call i32 @OWRITE4(i32* %111, i32 %112, i32 %113)
  br label %134

115:                                              ; preds = %97
  %116 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %117 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %116, i32 0, i32 2
  %118 = load %struct.TYPE_11__*, %struct.TYPE_11__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %118, i32 0, i32 0
  %120 = load i32*, i32** %119, align 8
  %121 = icmp eq i32* %120, @ohci_device_ctrl_methods
  br i1 %121, label %122, label %133

122:                                              ; preds = %115
  %123 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %124 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %123, i32 0, i32 1
  %125 = load %struct.TYPE_12__*, %struct.TYPE_12__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = call i32* @OHCI_BUS2SC(i32 %127)
  store i32* %128, i32** %10, align 8
  %129 = load i32*, i32** %10, align 8
  %130 = load i32, i32* @OHCI_COMMAND_STATUS, align 4
  %131 = load i32, i32* @OHCI_CLF, align 4
  %132 = call i32 @OWRITE4(i32* %129, i32 %130, i32 %131)
  br label %133

133:                                              ; preds = %122, %115
  br label %134

134:                                              ; preds = %133, %104
  br label %135

135:                                              ; preds = %134, %96
  br label %136

136:                                              ; preds = %135, %60
  ret void
}

declare dso_local i32 @usb_pc_cpu_invalidate(i32) #1

declare dso_local i32 @le32toh(i32) #1

declare dso_local i64 @OHCI_TD_GET_CC(i32) #1

declare dso_local i32 @usb_pc_cpu_flush(i32) #1

declare dso_local i32 @DPRINTFN(i32, i8*, %struct.usb_xfer*) #1

declare dso_local i32* @OHCI_BUS2SC(i32) #1

declare dso_local i32 @OWRITE4(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
