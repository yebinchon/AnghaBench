; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/fdt/extr_simple_mfd.c_simple_mfd_syscon_write_4.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/fdt/extr_simple_mfd.c_simple_mfd_syscon_write_4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.syscon = type { i32 }
%struct.simple_mfd_softc = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.syscon*, i32, i32)* @simple_mfd_syscon_write_4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @simple_mfd_syscon_write_4(%struct.syscon* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.syscon*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.simple_mfd_softc*, align 8
  store %struct.syscon* %0, %struct.syscon** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.syscon*, %struct.syscon** %4, align 8
  %9 = getelementptr inbounds %struct.syscon, %struct.syscon* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.simple_mfd_softc* @device_get_softc(i32 %10)
  store %struct.simple_mfd_softc* %11, %struct.simple_mfd_softc** %7, align 8
  %12 = load %struct.simple_mfd_softc*, %struct.simple_mfd_softc** %7, align 8
  %13 = call i32 @SYSCON_LOCK(%struct.simple_mfd_softc* %12)
  %14 = load %struct.simple_mfd_softc*, %struct.simple_mfd_softc** %7, align 8
  %15 = getelementptr inbounds %struct.simple_mfd_softc, %struct.simple_mfd_softc* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @bus_write_4(i32 %16, i32 %17, i32 %18)
  %20 = load %struct.simple_mfd_softc*, %struct.simple_mfd_softc** %7, align 8
  %21 = call i32 @SYSCON_UNLOCK(%struct.simple_mfd_softc* %20)
  ret i32 0
}

declare dso_local %struct.simple_mfd_softc* @device_get_softc(i32) #1

declare dso_local i32 @SYSCON_LOCK(%struct.simple_mfd_softc*) #1

declare dso_local i32 @bus_write_4(i32, i32, i32) #1

declare dso_local i32 @SYSCON_UNLOCK(%struct.simple_mfd_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
