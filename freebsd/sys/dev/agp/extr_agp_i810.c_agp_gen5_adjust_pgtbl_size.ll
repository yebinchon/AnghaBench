; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/agp/extr_agp_i810.c_agp_gen5_adjust_pgtbl_size.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/agp/extr_agp_i810.c_agp_gen5_adjust_pgtbl_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.agp_i810_softc = type { i32* }

@AGP_I965_PGTBL_CTL2 = common dso_local global i32 0, align 4
@AGP_I810_PGTBL_ENABLED = common dso_local global i32 0, align 4
@AGP_I810_PGTBL_CTL = common dso_local global i32 0, align 4
@AGP_I810_PGTBL_SIZE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @agp_gen5_adjust_pgtbl_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @agp_gen5_adjust_pgtbl_size(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.agp_i810_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call %struct.agp_i810_softc* @device_get_softc(i32 %8)
  store %struct.agp_i810_softc* %9, %struct.agp_i810_softc** %5, align 8
  %10 = load %struct.agp_i810_softc*, %struct.agp_i810_softc** %5, align 8
  %11 = getelementptr inbounds %struct.agp_i810_softc, %struct.agp_i810_softc* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @AGP_I965_PGTBL_CTL2, align 4
  %16 = call i32 @bus_read_4(i32 %14, i32 %15)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* @AGP_I810_PGTBL_ENABLED, align 4
  %18 = xor i32 %17, -1
  %19 = load i32, i32* %7, align 4
  %20 = and i32 %19, %18
  store i32 %20, i32* %7, align 4
  %21 = load %struct.agp_i810_softc*, %struct.agp_i810_softc** %5, align 8
  %22 = getelementptr inbounds %struct.agp_i810_softc, %struct.agp_i810_softc* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @AGP_I965_PGTBL_CTL2, align 4
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @bus_write_4(i32 %25, i32 %26, i32 %27)
  %29 = load %struct.agp_i810_softc*, %struct.agp_i810_softc** %5, align 8
  %30 = getelementptr inbounds %struct.agp_i810_softc, %struct.agp_i810_softc* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @AGP_I810_PGTBL_CTL, align 4
  %35 = call i32 @bus_read_4(i32 %33, i32 %34)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* @AGP_I810_PGTBL_SIZE_MASK, align 4
  %37 = xor i32 %36, -1
  %38 = load i32, i32* %6, align 4
  %39 = and i32 %38, %37
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* %6, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %6, align 4
  %43 = load %struct.agp_i810_softc*, %struct.agp_i810_softc** %5, align 8
  %44 = getelementptr inbounds %struct.agp_i810_softc, %struct.agp_i810_softc* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @AGP_I810_PGTBL_CTL, align 4
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @bus_write_4(i32 %47, i32 %48, i32 %49)
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
