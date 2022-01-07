; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/flash/extr_at45d.c_at45d_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/flash/extr_at45d.c_at45d_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.at45d_softc = type { i32 }

@at45d_delayed_attach = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @at45d_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @at45d_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.at45d_softc*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call %struct.at45d_softc* @device_get_softc(i32 %4)
  store %struct.at45d_softc* %5, %struct.at45d_softc** %3, align 8
  %6 = load i32, i32* %2, align 4
  %7 = load %struct.at45d_softc*, %struct.at45d_softc** %3, align 8
  %8 = getelementptr inbounds %struct.at45d_softc, %struct.at45d_softc* %7, i32 0, i32 0
  store i32 %6, i32* %8, align 4
  %9 = load %struct.at45d_softc*, %struct.at45d_softc** %3, align 8
  %10 = call i32 @AT45D_LOCK_INIT(%struct.at45d_softc* %9)
  %11 = load i32, i32* @at45d_delayed_attach, align 4
  %12 = load %struct.at45d_softc*, %struct.at45d_softc** %3, align 8
  %13 = call i32 @config_intrhook_oneshot(i32 %11, %struct.at45d_softc* %12)
  ret i32 0
}

declare dso_local %struct.at45d_softc* @device_get_softc(i32) #1

declare dso_local i32 @AT45D_LOCK_INIT(%struct.at45d_softc*) #1

declare dso_local i32 @config_intrhook_oneshot(i32, %struct.at45d_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
