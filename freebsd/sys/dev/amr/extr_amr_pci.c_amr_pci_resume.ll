; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/amr/extr_amr_pci.c_amr_pci_resume.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/amr/extr_amr_pci.c_amr_pci_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amr_softc = type { i32 }

@AMR_STATE_SUSPEND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @amr_pci_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amr_pci_resume(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.amr_softc*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call %struct.amr_softc* @device_get_softc(i32 %4)
  store %struct.amr_softc* %5, %struct.amr_softc** %3, align 8
  %6 = call i32 @debug_called(i32 1)
  %7 = load i32, i32* @AMR_STATE_SUSPEND, align 4
  %8 = xor i32 %7, -1
  %9 = load %struct.amr_softc*, %struct.amr_softc** %3, align 8
  %10 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = and i32 %11, %8
  store i32 %12, i32* %10, align 4
  ret i32 0
}

declare dso_local %struct.amr_softc* @device_get_softc(i32) #1

declare dso_local i32 @debug_called(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
