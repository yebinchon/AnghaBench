; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/twe/extr_twe.c_twe_host_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/twe/extr_twe.c_twe_host_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.twe_softc = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"host interrupt\0A\00", align 1
@TWE_CONTROL_CLEAR_HOST_INTERRUPT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.twe_softc*)* @twe_host_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @twe_host_intr(%struct.twe_softc* %0) #0 {
  %2 = alloca %struct.twe_softc*, align 8
  store %struct.twe_softc* %0, %struct.twe_softc** %2, align 8
  %3 = call i32 @debug_called(i32 4)
  %4 = load %struct.twe_softc*, %struct.twe_softc** %2, align 8
  %5 = call i32 @twe_printf(%struct.twe_softc* %4, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %6 = load %struct.twe_softc*, %struct.twe_softc** %2, align 8
  %7 = load i32, i32* @TWE_CONTROL_CLEAR_HOST_INTERRUPT, align 4
  %8 = call i32 @TWE_CONTROL(%struct.twe_softc* %6, i32 %7)
  ret void
}

declare dso_local i32 @debug_called(i32) #1

declare dso_local i32 @twe_printf(%struct.twe_softc*, i8*) #1

declare dso_local i32 @TWE_CONTROL(%struct.twe_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
