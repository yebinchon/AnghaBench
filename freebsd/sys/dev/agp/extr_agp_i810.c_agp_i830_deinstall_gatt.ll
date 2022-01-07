; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/agp/extr_agp_i810.c_agp_i830_deinstall_gatt.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/agp/extr_agp_i810.c_agp_i830_deinstall_gatt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.agp_i810_softc = type { i32* }

@AGP_I810_PGTBL_CTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @agp_i830_deinstall_gatt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @agp_i830_deinstall_gatt(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.agp_i810_softc*, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call %struct.agp_i810_softc* @device_get_softc(i32 %5)
  store %struct.agp_i810_softc* %6, %struct.agp_i810_softc** %3, align 8
  %7 = load %struct.agp_i810_softc*, %struct.agp_i810_softc** %3, align 8
  %8 = getelementptr inbounds %struct.agp_i810_softc, %struct.agp_i810_softc* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @AGP_I810_PGTBL_CTL, align 4
  %13 = call i32 @bus_read_4(i32 %11, i32 %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = and i32 %14, -2
  store i32 %15, i32* %4, align 4
  %16 = load %struct.agp_i810_softc*, %struct.agp_i810_softc** %3, align 8
  %17 = getelementptr inbounds %struct.agp_i810_softc, %struct.agp_i810_softc* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @AGP_I810_PGTBL_CTL, align 4
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @bus_write_4(i32 %20, i32 %21, i32 %22)
  ret void
}

declare dso_local %struct.agp_i810_softc* @device_get_softc(i32) #1

declare dso_local i32 @bus_read_4(i32, i32) #1

declare dso_local i32 @bus_write_4(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
