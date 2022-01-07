; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_uss820dci.c_uss820dci_intr_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_uss820dci.c_uss820dci_intr_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_xfer = type { i32, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64, i64 }
%struct.TYPE_3__ = type { i32 }
%struct.uss820dci_softc = type { i32 }

@UE_ADDR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"endpoint 0x%02x\0A\00", align 1
@USS820_SBIE1 = common dso_local global i32 0, align 4
@USS820_SBIE = common dso_local global i32 0, align 4
@UE_DIR_IN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_xfer*, i32)* @uss820dci_intr_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uss820dci_intr_set(%struct.usb_xfer* %0, i32 %1) #0 {
  %3 = alloca %struct.usb_xfer*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.uss820dci_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.usb_xfer* %0, %struct.usb_xfer** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %10 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %9, i32 0, i32 2
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.uss820dci_softc* @USS820_DCI_BUS2SC(i32 %13)
  store %struct.uss820dci_softc* %14, %struct.uss820dci_softc** %5, align 8
  %15 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %16 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @UE_ADDR, align 4
  %19 = and i32 %17, %18
  store i32 %19, i32* %6, align 4
  %20 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %21 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @DPRINTFN(i32 15, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load i32, i32* %6, align 4
  %25 = icmp sgt i32 %24, 3
  br i1 %25, label %26, label %28

26:                                               ; preds = %2
  %27 = load i32, i32* @USS820_SBIE1, align 4
  store i32 %27, i32* %7, align 4
  br label %30

28:                                               ; preds = %2
  %29 = load i32, i32* @USS820_SBIE, align 4
  store i32 %29, i32* %7, align 4
  br label %30

30:                                               ; preds = %28, %26
  %31 = load i32, i32* %6, align 4
  %32 = and i32 %31, 3
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = mul nsw i32 2, %33
  %35 = shl i32 1, %34
  store i32 %35, i32* %6, align 4
  %36 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %37 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %56

41:                                               ; preds = %30
  %42 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %43 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %41
  %48 = load i32, i32* %6, align 4
  %49 = shl i32 %48, 1
  store i32 %49, i32* %6, align 4
  br label %55

50:                                               ; preds = %41
  %51 = load i32, i32* %6, align 4
  %52 = shl i32 %51, 1
  %53 = load i32, i32* %6, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %6, align 4
  br label %55

55:                                               ; preds = %50, %47
  br label %67

56:                                               ; preds = %30
  %57 = load %struct.usb_xfer*, %struct.usb_xfer** %3, align 8
  %58 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @UE_DIR_IN, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %56
  %64 = load i32, i32* %6, align 4
  %65 = shl i32 %64, 1
  store i32 %65, i32* %6, align 4
  br label %66

66:                                               ; preds = %63, %56
  br label %67

67:                                               ; preds = %66, %55
  %68 = load %struct.uss820dci_softc*, %struct.uss820dci_softc** %5, align 8
  %69 = load i32, i32* %7, align 4
  %70 = call i32 @USS820_READ_1(%struct.uss820dci_softc* %68, i32 %69)
  store i32 %70, i32* %8, align 4
  %71 = load i32, i32* %4, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %67
  %74 = load i32, i32* %6, align 4
  %75 = load i32, i32* %8, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %8, align 4
  br label %82

77:                                               ; preds = %67
  %78 = load i32, i32* %6, align 4
  %79 = xor i32 %78, -1
  %80 = load i32, i32* %8, align 4
  %81 = and i32 %80, %79
  store i32 %81, i32* %8, align 4
  br label %82

82:                                               ; preds = %77, %73
  %83 = load %struct.uss820dci_softc*, %struct.uss820dci_softc** %5, align 8
  %84 = load i32, i32* %7, align 4
  %85 = load i32, i32* %8, align 4
  %86 = call i32 @USS820_WRITE_1(%struct.uss820dci_softc* %83, i32 %84, i32 %85)
  ret void
}

declare dso_local %struct.uss820dci_softc* @USS820_DCI_BUS2SC(i32) #1

declare dso_local i32 @DPRINTFN(i32, i8*, i32) #1

declare dso_local i32 @USS820_READ_1(%struct.uss820dci_softc*, i32) #1

declare dso_local i32 @USS820_WRITE_1(%struct.uss820dci_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
