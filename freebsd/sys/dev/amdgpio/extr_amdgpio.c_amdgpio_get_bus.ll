; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/amdgpio/extr_amdgpio.c_amdgpio_get_bus.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/amdgpio/extr_amdgpio.c_amdgpio_get_bus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpio_softc = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"busdev %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @amdgpio_get_bus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amdgpio_get_bus(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.amdgpio_softc*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call %struct.amdgpio_softc* @device_get_softc(i32 %4)
  store %struct.amdgpio_softc* %5, %struct.amdgpio_softc** %3, align 8
  %6 = load %struct.amdgpio_softc*, %struct.amdgpio_softc** %3, align 8
  %7 = getelementptr inbounds %struct.amdgpio_softc, %struct.amdgpio_softc* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @dprintf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %8)
  %10 = load %struct.amdgpio_softc*, %struct.amdgpio_softc** %3, align 8
  %11 = getelementptr inbounds %struct.amdgpio_softc, %struct.amdgpio_softc* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  ret i32 %12
}

declare dso_local %struct.amdgpio_softc* @device_get_softc(i32) #1

declare dso_local i32 @dprintf(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
