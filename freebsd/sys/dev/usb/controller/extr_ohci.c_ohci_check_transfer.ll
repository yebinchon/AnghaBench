; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_ohci.c_ohci_check_transfer.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_ohci.c_ohci_check_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_xfer = type { %struct.TYPE_5__*, i64, %struct.TYPE_4__, %struct.TYPE_6__** }
%struct.TYPE_5__ = type { i32, i32* }
%struct.TYPE_4__ = type { i64, i64 }
%struct.TYPE_6__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [27 x i8] c"xfer=%p checking transfer\0A\00", align 1
@OHCI_HALTED = common dso_local global i32 0, align 4
@ohci_device_isoc_methods = common dso_local global i32 0, align 4
@OHCI_TOGGLECARRY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"xfer=%p is still active\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_xfer*)* @ohci_check_transfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ohci_check_transfer(%struct.usb_xfer* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_xfer*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.usb_xfer* %0, %struct.usb_xfer** %3, align 8
  %7 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %8 = call i32 @DPRINTFN(i32 13, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), %struct.usb_xfer* %7)
  %9 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %10 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %9, i32 0, i32 3
  %11 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %10, align 8
  %12 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %13 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %11, i64 %15
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  store %struct.TYPE_6__* %17, %struct.TYPE_6__** %4, align 8
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @usb_pc_cpu_invalidate(i32 %20)
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @le32toh(i32 %24)
  store i32 %25, i32* %5, align 4
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @le32toh(i32 %28)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @OHCI_HALTED, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %40, label %34

34:                                               ; preds = %1
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* %6, align 4
  %37 = xor i32 %35, %36
  %38 = and i32 %37, -16
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %84

40:                                               ; preds = %34, %1
  %41 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %42 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %41, i32 0, i32 0
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = icmp eq i32* %45, @ohci_device_isoc_methods
  br i1 %46, label %47, label %50

47:                                               ; preds = %40
  %48 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %49 = call i32 @ohci_isoc_done(%struct.usb_xfer* %48)
  br label %83

50:                                               ; preds = %40
  %51 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %52 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %65

56:                                               ; preds = %50
  %57 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %58 = call i32 @ohci_check_transfer_sub(%struct.usb_xfer* %57)
  %59 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %60 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %56
  store i32 0, i32* %2, align 4
  br label %87

64:                                               ; preds = %56
  br label %65

65:                                               ; preds = %64, %50
  %66 = load i32, i32* %5, align 4
  %67 = load i32, i32* @OHCI_TOGGLECARRY, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %65
  %71 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %72 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %71, i32 0, i32 0
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  store i32 1, i32* %74, align 8
  br label %80

75:                                               ; preds = %65
  %76 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %77 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %76, i32 0, i32 0
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  store i32 0, i32* %79, align 8
  br label %80

80:                                               ; preds = %75, %70
  %81 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %82 = call i32 @ohci_non_isoc_done(%struct.usb_xfer* %81)
  br label %83

83:                                               ; preds = %80, %47
  store i32 1, i32* %2, align 4
  br label %87

84:                                               ; preds = %34
  %85 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %86 = call i32 @DPRINTFN(i32 13, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), %struct.usb_xfer* %85)
  store i32 0, i32* %2, align 4
  br label %87

87:                                               ; preds = %84, %83, %63
  %88 = load i32, i32* %2, align 4
  ret i32 %88
}

declare dso_local i32 @DPRINTFN(i32, i8*, %struct.usb_xfer*) #1

declare dso_local i32 @usb_pc_cpu_invalidate(i32) #1

declare dso_local i32 @le32toh(i32) #1

declare dso_local i32 @ohci_isoc_done(%struct.usb_xfer*) #1

declare dso_local i32 @ohci_check_transfer_sub(%struct.usb_xfer*) #1

declare dso_local i32 @ohci_non_isoc_done(%struct.usb_xfer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
