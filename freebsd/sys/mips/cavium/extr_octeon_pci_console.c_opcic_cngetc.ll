; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/cavium/extr_octeon_pci_console.c_opcic_cngetc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/cavium/extr_octeon_pci_console.c_opcic_cngetc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.consdev = type { %struct.opcic_softc* }
%struct.opcic_softc = type { i32, i32 }

@OCT_PCI_CON_FLAG_NONBLOCK = common dso_local global i32 0, align 4
@OPCIC_FLAG_RSYS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.consdev*)* @opcic_cngetc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @opcic_cngetc(%struct.consdev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.consdev*, align 8
  %4 = alloca %struct.opcic_softc*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  store %struct.consdev* %0, %struct.consdev** %3, align 8
  %7 = load %struct.consdev*, %struct.consdev** %3, align 8
  %8 = getelementptr inbounds %struct.consdev, %struct.consdev* %7, i32 0, i32 0
  %9 = load %struct.opcic_softc*, %struct.opcic_softc** %8, align 8
  store %struct.opcic_softc* %9, %struct.opcic_softc** %4, align 8
  %10 = load %struct.opcic_softc*, %struct.opcic_softc** %4, align 8
  %11 = getelementptr inbounds %struct.opcic_softc, %struct.opcic_softc* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @OCT_PCI_CON_FLAG_NONBLOCK, align 4
  %14 = call i32 @octeon_pci_console_read(i32 %12, i32 0, i8* %5, i32 1, i32 %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp ne i32 %15, 1
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %21

18:                                               ; preds = %1
  %19 = load i8, i8* %5, align 1
  %20 = sext i8 %19 to i32
  store i32 %20, i32* %2, align 4
  br label %21

21:                                               ; preds = %18, %17
  %22 = load i32, i32* %2, align 4
  ret i32 %22
}

declare dso_local i32 @octeon_pci_console_read(i32, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
