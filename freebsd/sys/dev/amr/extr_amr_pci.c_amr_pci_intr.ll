; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/amr/extr_amr_pci.c_amr_pci_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/amr/extr_amr_pci.c_amr_pci_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amr_softc = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @amr_pci_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @amr_pci_intr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.amr_softc*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.amr_softc*
  store %struct.amr_softc* %5, %struct.amr_softc** %3, align 8
  %6 = call i32 @debug_called(i32 3)
  %7 = load %struct.amr_softc*, %struct.amr_softc** %3, align 8
  %8 = call i32 @amr_done(%struct.amr_softc* %7)
  ret void
}

declare dso_local i32 @debug_called(i32) #1

declare dso_local i32 @amr_done(%struct.amr_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
