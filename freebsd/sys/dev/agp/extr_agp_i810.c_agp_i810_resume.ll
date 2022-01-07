; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/agp/extr_agp_i810.c_agp_i810_resume.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/agp/extr_agp_i810.c_agp_i810_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.agp_i810_softc = type { %struct.TYPE_2__*, i32*, i32 }
%struct.TYPE_2__ = type { i32 }

@AGP_I810_PGTBL_CTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @agp_i810_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @agp_i810_resume(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.agp_i810_softc*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call %struct.agp_i810_softc* @device_get_softc(i32 %4)
  store %struct.agp_i810_softc* %5, %struct.agp_i810_softc** %3, align 8
  %6 = load i32, i32* %2, align 4
  %7 = load %struct.agp_i810_softc*, %struct.agp_i810_softc** %3, align 8
  %8 = getelementptr inbounds %struct.agp_i810_softc, %struct.agp_i810_softc* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @AGP_SET_APERTURE(i32 %6, i32 %9)
  %11 = load %struct.agp_i810_softc*, %struct.agp_i810_softc** %3, align 8
  %12 = getelementptr inbounds %struct.agp_i810_softc, %struct.agp_i810_softc* %11, i32 0, i32 1
  %13 = load i32*, i32** %12, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @AGP_I810_PGTBL_CTL, align 4
  %17 = load %struct.agp_i810_softc*, %struct.agp_i810_softc** %3, align 8
  %18 = getelementptr inbounds %struct.agp_i810_softc, %struct.agp_i810_softc* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = or i32 %21, 1
  %23 = call i32 @bus_write_4(i32 %15, i32 %16, i32 %22)
  %24 = load i32, i32* %2, align 4
  %25 = call i32 @bus_generic_resume(i32 %24)
  ret i32 %25
}

declare dso_local %struct.agp_i810_softc* @device_get_softc(i32) #1

declare dso_local i32 @AGP_SET_APERTURE(i32, i32) #1

declare dso_local i32 @bus_write_4(i32, i32, i32) #1

declare dso_local i32 @bus_generic_resume(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
