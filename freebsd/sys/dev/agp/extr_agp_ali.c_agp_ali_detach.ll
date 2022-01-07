; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/agp/extr_agp_ali.c_agp_ali_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/agp/extr_agp_ali.c_agp_ali_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.agp_ali_softc = type { i32, i32 }

@AGP_ALI_TLBCTRL = common dso_local global i32 0, align 4
@AGP_ALI_ATTBASE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @agp_ali_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @agp_ali_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.agp_ali_softc*, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call %struct.agp_ali_softc* @device_get_softc(i32 %5)
  store %struct.agp_ali_softc* %6, %struct.agp_ali_softc** %3, align 8
  %7 = load i32, i32* %2, align 4
  %8 = call i32 @agp_free_cdev(i32 %7)
  %9 = load i32, i32* %2, align 4
  %10 = load i32, i32* @AGP_ALI_TLBCTRL, align 4
  %11 = call i32 @pci_write_config(i32 %9, i32 %10, i32 144, i32 1)
  %12 = load i32, i32* %2, align 4
  %13 = load %struct.agp_ali_softc*, %struct.agp_ali_softc** %3, align 8
  %14 = getelementptr inbounds %struct.agp_ali_softc, %struct.agp_ali_softc* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @AGP_SET_APERTURE(i32 %12, i32 %15)
  %17 = load i32, i32* %2, align 4
  %18 = load i32, i32* @AGP_ALI_ATTBASE, align 4
  %19 = call i32 @pci_read_config(i32 %17, i32 %18, i32 4)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %2, align 4
  %21 = load i32, i32* @AGP_ALI_ATTBASE, align 4
  %22 = load i32, i32* %4, align 4
  %23 = and i32 %22, 4095
  %24 = call i32 @pci_write_config(i32 %20, i32 %21, i32 %23, i32 4)
  %25 = load %struct.agp_ali_softc*, %struct.agp_ali_softc** %3, align 8
  %26 = getelementptr inbounds %struct.agp_ali_softc, %struct.agp_ali_softc* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @agp_free_gatt(i32 %27)
  %29 = load i32, i32* %2, align 4
  %30 = call i32 @agp_free_res(i32 %29)
  ret i32 0
}

declare dso_local %struct.agp_ali_softc* @device_get_softc(i32) #1

declare dso_local i32 @agp_free_cdev(i32) #1

declare dso_local i32 @pci_write_config(i32, i32, i32, i32) #1

declare dso_local i32 @AGP_SET_APERTURE(i32, i32) #1

declare dso_local i32 @pci_read_config(i32, i32, i32) #1

declare dso_local i32 @agp_free_gatt(i32) #1

declare dso_local i32 @agp_free_res(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
