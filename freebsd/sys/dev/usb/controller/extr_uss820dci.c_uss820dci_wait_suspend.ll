; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_uss820dci.c_uss820dci_wait_suspend.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_uss820dci.c_uss820dci_wait_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uss820dci_softc = type { i32 }

@USS820_SCR = common dso_local global i32 0, align 4
@USS820_SCRATCH = common dso_local global i32 0, align 4
@USS820_SCR_IE_SUSP = common dso_local global i64 0, align 8
@USS820_SCRATCH_IE_RESUME = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uss820dci_softc*, i64)* @uss820dci_wait_suspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uss820dci_wait_suspend(%struct.uss820dci_softc* %0, i64 %1) #0 {
  %3 = alloca %struct.uss820dci_softc*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.uss820dci_softc* %0, %struct.uss820dci_softc** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.uss820dci_softc*, %struct.uss820dci_softc** %3, align 8
  %8 = load i32, i32* @USS820_SCR, align 4
  %9 = call i64 @USS820_READ_1(%struct.uss820dci_softc* %7, i32 %8)
  store i64 %9, i64* %5, align 8
  %10 = load %struct.uss820dci_softc*, %struct.uss820dci_softc** %3, align 8
  %11 = load i32, i32* @USS820_SCRATCH, align 4
  %12 = call i64 @USS820_READ_1(%struct.uss820dci_softc* %10, i32 %11)
  store i64 %12, i64* %6, align 8
  %13 = load i64, i64* %4, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %23

15:                                               ; preds = %2
  %16 = load i64, i64* @USS820_SCR_IE_SUSP, align 8
  %17 = load i64, i64* %5, align 8
  %18 = or i64 %17, %16
  store i64 %18, i64* %5, align 8
  %19 = load i64, i64* @USS820_SCRATCH_IE_RESUME, align 8
  %20 = xor i64 %19, -1
  %21 = load i64, i64* %6, align 8
  %22 = and i64 %21, %20
  store i64 %22, i64* %6, align 8
  br label %31

23:                                               ; preds = %2
  %24 = load i64, i64* @USS820_SCR_IE_SUSP, align 8
  %25 = xor i64 %24, -1
  %26 = load i64, i64* %5, align 8
  %27 = and i64 %26, %25
  store i64 %27, i64* %5, align 8
  %28 = load i64, i64* @USS820_SCRATCH_IE_RESUME, align 8
  %29 = load i64, i64* %6, align 8
  %30 = or i64 %29, %28
  store i64 %30, i64* %6, align 8
  br label %31

31:                                               ; preds = %23, %15
  %32 = load %struct.uss820dci_softc*, %struct.uss820dci_softc** %3, align 8
  %33 = load i32, i32* @USS820_SCR, align 4
  %34 = load i64, i64* %5, align 8
  %35 = call i32 @USS820_WRITE_1(%struct.uss820dci_softc* %32, i32 %33, i64 %34)
  %36 = load %struct.uss820dci_softc*, %struct.uss820dci_softc** %3, align 8
  %37 = load i32, i32* @USS820_SCRATCH, align 4
  %38 = load i64, i64* %6, align 8
  %39 = call i32 @USS820_WRITE_1(%struct.uss820dci_softc* %36, i32 %37, i64 %38)
  ret void
}

declare dso_local i64 @USS820_READ_1(%struct.uss820dci_softc*, i32) #1

declare dso_local i32 @USS820_WRITE_1(%struct.uss820dci_softc*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
