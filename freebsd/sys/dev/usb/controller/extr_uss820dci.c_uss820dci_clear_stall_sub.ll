; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_uss820dci.c_uss820dci_clear_stall_sub.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_uss820dci.c_uss820dci_clear_stall_sub.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uss820dci_softc = type { i32 }

@UE_CONTROL = common dso_local global i64 0, align 8
@USS820_EPINDEX = common dso_local global i32 0, align 4
@UE_DIR_IN = common dso_local global i64 0, align 8
@USS820_EPCON_TXOE = common dso_local global i32 0, align 4
@USS820_EPCON_TXSTL = common dso_local global i32 0, align 4
@USS820_EPCON_RXIE = common dso_local global i32 0, align 4
@USS820_EPCON_RXSTL = common dso_local global i32 0, align 4
@USS820_EPCON = common dso_local global i32 0, align 4
@USS820_TXSTAT = common dso_local global i32 0, align 4
@USS820_TXSTAT_TXSOVW = common dso_local global i64 0, align 8
@USS820_TXCON = common dso_local global i32 0, align 4
@USS820_TXCON_TXCLR = common dso_local global i64 0, align 8
@USS820_RXSTAT = common dso_local global i32 0, align 4
@USS820_RXSTAT_RXSOVW = common dso_local global i32 0, align 4
@USS820_RXCON = common dso_local global i32 0, align 4
@USS820_RXCON_RXCLR = common dso_local global i64 0, align 8
@USS820_RXCON_RXFFRC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uss820dci_softc*, i64, i64, i64)* @uss820dci_clear_stall_sub to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uss820dci_clear_stall_sub(%struct.uss820dci_softc* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.uss820dci_softc*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.uss820dci_softc* %0, %struct.uss820dci_softc** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %10 = load i64, i64* %7, align 8
  %11 = load i64, i64* @UE_CONTROL, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %4
  br label %99

14:                                               ; preds = %4
  %15 = load %struct.uss820dci_softc*, %struct.uss820dci_softc** %5, align 8
  %16 = getelementptr inbounds %struct.uss820dci_softc, %struct.uss820dci_softc* %15, i32 0, i32 0
  %17 = call i32 @USB_BUS_SPIN_LOCK(i32* %16)
  %18 = load %struct.uss820dci_softc*, %struct.uss820dci_softc** %5, align 8
  %19 = load i32, i32* @USS820_EPINDEX, align 4
  %20 = load i64, i64* %6, align 8
  %21 = call i32 @USS820_WRITE_1(%struct.uss820dci_softc* %18, i32 %19, i64 %20)
  %22 = load i64, i64* %8, align 8
  %23 = load i64, i64* @UE_DIR_IN, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %31

25:                                               ; preds = %14
  %26 = load i32, i32* @USS820_EPCON_TXOE, align 4
  %27 = load i32, i32* @USS820_EPCON_TXSTL, align 4
  %28 = or i32 %26, %27
  %29 = xor i32 255, %28
  %30 = sext i32 %29 to i64
  store i64 %30, i64* %9, align 8
  br label %37

31:                                               ; preds = %14
  %32 = load i32, i32* @USS820_EPCON_RXIE, align 4
  %33 = load i32, i32* @USS820_EPCON_RXSTL, align 4
  %34 = or i32 %32, %33
  %35 = xor i32 255, %34
  %36 = sext i32 %35 to i64
  store i64 %36, i64* %9, align 8
  br label %37

37:                                               ; preds = %31, %25
  %38 = load %struct.uss820dci_softc*, %struct.uss820dci_softc** %5, align 8
  %39 = load i32, i32* @USS820_EPCON, align 4
  %40 = load i64, i64* %9, align 8
  %41 = call i32 @uss820dci_update_shared_1(%struct.uss820dci_softc* %38, i32 %39, i64 %40, i32 0)
  %42 = load i64, i64* %8, align 8
  %43 = load i64, i64* @UE_DIR_IN, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %68

45:                                               ; preds = %37
  %46 = load %struct.uss820dci_softc*, %struct.uss820dci_softc** %5, align 8
  %47 = load i32, i32* @USS820_TXSTAT, align 4
  %48 = load i64, i64* @USS820_TXSTAT_TXSOVW, align 8
  %49 = call i32 @USS820_WRITE_1(%struct.uss820dci_softc* %46, i32 %47, i64 %48)
  %50 = load %struct.uss820dci_softc*, %struct.uss820dci_softc** %5, align 8
  %51 = load i32, i32* @USS820_TXCON, align 4
  %52 = call i64 @USS820_READ_1(%struct.uss820dci_softc* %50, i32 %51)
  store i64 %52, i64* %9, align 8
  %53 = load i64, i64* @USS820_TXCON_TXCLR, align 8
  %54 = load i64, i64* %9, align 8
  %55 = or i64 %54, %53
  store i64 %55, i64* %9, align 8
  %56 = load %struct.uss820dci_softc*, %struct.uss820dci_softc** %5, align 8
  %57 = load i32, i32* @USS820_TXCON, align 4
  %58 = load i64, i64* %9, align 8
  %59 = call i32 @USS820_WRITE_1(%struct.uss820dci_softc* %56, i32 %57, i64 %58)
  %60 = load i64, i64* @USS820_TXCON_TXCLR, align 8
  %61 = xor i64 %60, -1
  %62 = load i64, i64* %9, align 8
  %63 = and i64 %62, %61
  store i64 %63, i64* %9, align 8
  %64 = load %struct.uss820dci_softc*, %struct.uss820dci_softc** %5, align 8
  %65 = load i32, i32* @USS820_TXCON, align 4
  %66 = load i64, i64* %9, align 8
  %67 = call i32 @USS820_WRITE_1(%struct.uss820dci_softc* %64, i32 %65, i64 %66)
  br label %95

68:                                               ; preds = %37
  %69 = load %struct.uss820dci_softc*, %struct.uss820dci_softc** %5, align 8
  %70 = load i32, i32* @USS820_RXSTAT, align 4
  %71 = load i32, i32* @USS820_RXSTAT_RXSOVW, align 4
  %72 = call i32 @uss820dci_update_shared_1(%struct.uss820dci_softc* %69, i32 %70, i64 0, i32 %71)
  %73 = load %struct.uss820dci_softc*, %struct.uss820dci_softc** %5, align 8
  %74 = load i32, i32* @USS820_RXCON, align 4
  %75 = call i64 @USS820_READ_1(%struct.uss820dci_softc* %73, i32 %74)
  store i64 %75, i64* %9, align 8
  %76 = load i64, i64* @USS820_RXCON_RXCLR, align 8
  %77 = load i64, i64* %9, align 8
  %78 = or i64 %77, %76
  store i64 %78, i64* %9, align 8
  %79 = load i64, i64* @USS820_RXCON_RXFFRC, align 8
  %80 = xor i64 %79, -1
  %81 = load i64, i64* %9, align 8
  %82 = and i64 %81, %80
  store i64 %82, i64* %9, align 8
  %83 = load %struct.uss820dci_softc*, %struct.uss820dci_softc** %5, align 8
  %84 = load i32, i32* @USS820_RXCON, align 4
  %85 = load i64, i64* %9, align 8
  %86 = call i32 @USS820_WRITE_1(%struct.uss820dci_softc* %83, i32 %84, i64 %85)
  %87 = load i64, i64* @USS820_RXCON_RXCLR, align 8
  %88 = xor i64 %87, -1
  %89 = load i64, i64* %9, align 8
  %90 = and i64 %89, %88
  store i64 %90, i64* %9, align 8
  %91 = load %struct.uss820dci_softc*, %struct.uss820dci_softc** %5, align 8
  %92 = load i32, i32* @USS820_RXCON, align 4
  %93 = load i64, i64* %9, align 8
  %94 = call i32 @USS820_WRITE_1(%struct.uss820dci_softc* %91, i32 %92, i64 %93)
  br label %95

95:                                               ; preds = %68, %45
  %96 = load %struct.uss820dci_softc*, %struct.uss820dci_softc** %5, align 8
  %97 = getelementptr inbounds %struct.uss820dci_softc, %struct.uss820dci_softc* %96, i32 0, i32 0
  %98 = call i32 @USB_BUS_SPIN_UNLOCK(i32* %97)
  br label %99

99:                                               ; preds = %95, %13
  ret void
}

declare dso_local i32 @USB_BUS_SPIN_LOCK(i32*) #1

declare dso_local i32 @USS820_WRITE_1(%struct.uss820dci_softc*, i32, i64) #1

declare dso_local i32 @uss820dci_update_shared_1(%struct.uss820dci_softc*, i32, i64, i32) #1

declare dso_local i64 @USS820_READ_1(%struct.uss820dci_softc*, i32) #1

declare dso_local i32 @USB_BUS_SPIN_UNLOCK(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
