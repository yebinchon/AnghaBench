; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_uss820dci.c_uss820dci_pull_down.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_uss820dci.c_uss820dci_pull_down.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uss820dci_softc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@USS820_MCSR = common dso_local global i32 0, align 4
@USS820_MCSR_DPEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uss820dci_softc*)* @uss820dci_pull_down to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uss820dci_pull_down(%struct.uss820dci_softc* %0) #0 {
  %2 = alloca %struct.uss820dci_softc*, align 8
  %3 = alloca i32, align 4
  store %struct.uss820dci_softc* %0, %struct.uss820dci_softc** %2, align 8
  %4 = load %struct.uss820dci_softc*, %struct.uss820dci_softc** %2, align 8
  %5 = getelementptr inbounds %struct.uss820dci_softc, %struct.uss820dci_softc* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %25

9:                                                ; preds = %1
  %10 = load %struct.uss820dci_softc*, %struct.uss820dci_softc** %2, align 8
  %11 = getelementptr inbounds %struct.uss820dci_softc, %struct.uss820dci_softc* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store i64 0, i64* %12, align 8
  %13 = call i32 @DPRINTF(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.uss820dci_softc*, %struct.uss820dci_softc** %2, align 8
  %15 = load i32, i32* @USS820_MCSR, align 4
  %16 = call i32 @USS820_READ_1(%struct.uss820dci_softc* %14, i32 %15)
  store i32 %16, i32* %3, align 4
  %17 = load i32, i32* @USS820_MCSR_DPEN, align 4
  %18 = xor i32 %17, -1
  %19 = load i32, i32* %3, align 4
  %20 = and i32 %19, %18
  store i32 %20, i32* %3, align 4
  %21 = load %struct.uss820dci_softc*, %struct.uss820dci_softc** %2, align 8
  %22 = load i32, i32* @USS820_MCSR, align 4
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @USS820_WRITE_1(%struct.uss820dci_softc* %21, i32 %22, i32 %23)
  br label %25

25:                                               ; preds = %9, %1
  ret void
}

declare dso_local i32 @DPRINTF(i8*) #1

declare dso_local i32 @USS820_READ_1(%struct.uss820dci_softc*, i32) #1

declare dso_local i32 @USS820_WRITE_1(%struct.uss820dci_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
