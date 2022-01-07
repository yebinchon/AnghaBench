; ModuleID = '/home/carl/AnghaBench/freebsd/sys/sparc64/pci/extr_fire.c_fire_intr_disable.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/sparc64/pci/extr_fire.c_fire_intr_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intr_vector = type { %struct.fire_icarg* }
%struct.fire_icarg = type { i32, %struct.fire_softc* }
%struct.fire_softc = type { i32 }

@FO_PCI_IMAP_V = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @fire_intr_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fire_intr_disable(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.intr_vector*, align 8
  %4 = alloca %struct.fire_icarg*, align 8
  %5 = alloca %struct.fire_softc*, align 8
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.intr_vector*
  store %struct.intr_vector* %7, %struct.intr_vector** %3, align 8
  %8 = load %struct.intr_vector*, %struct.intr_vector** %3, align 8
  %9 = getelementptr inbounds %struct.intr_vector, %struct.intr_vector* %8, i32 0, i32 0
  %10 = load %struct.fire_icarg*, %struct.fire_icarg** %9, align 8
  store %struct.fire_icarg* %10, %struct.fire_icarg** %4, align 8
  %11 = load %struct.fire_icarg*, %struct.fire_icarg** %4, align 8
  %12 = getelementptr inbounds %struct.fire_icarg, %struct.fire_icarg* %11, i32 0, i32 1
  %13 = load %struct.fire_softc*, %struct.fire_softc** %12, align 8
  store %struct.fire_softc* %13, %struct.fire_softc** %5, align 8
  %14 = load %struct.fire_softc*, %struct.fire_softc** %5, align 8
  %15 = load %struct.fire_icarg*, %struct.fire_icarg** %4, align 8
  %16 = getelementptr inbounds %struct.fire_icarg, %struct.fire_icarg* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.fire_softc*, %struct.fire_softc** %5, align 8
  %19 = load %struct.fire_icarg*, %struct.fire_icarg** %4, align 8
  %20 = getelementptr inbounds %struct.fire_icarg, %struct.fire_icarg* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @FIRE_PCI_READ_8(%struct.fire_softc* %18, i32 %21)
  %23 = load i32, i32* @FO_PCI_IMAP_V, align 4
  %24 = xor i32 %23, -1
  %25 = and i32 %22, %24
  %26 = call i32 @FIRE_PCI_WRITE_8(%struct.fire_softc* %14, i32 %17, i32 %25)
  ret void
}

declare dso_local i32 @FIRE_PCI_WRITE_8(%struct.fire_softc*, i32, i32) #1

declare dso_local i32 @FIRE_PCI_READ_8(%struct.fire_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
