; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cas/extr_if_cas.c_cas_disable_rx.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cas/extr_if_cas.c_cas_disable_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cas_softc = type { i32 }

@CAS_MAC_RX_CONF = common dso_local global i32 0, align 4
@CAS_MAC_RX_CONF_EN = common dso_local global i32 0, align 4
@BUS_SPACE_BARRIER_READ = common dso_local global i32 0, align 4
@BUS_SPACE_BARRIER_WRITE = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"cannot disable RX MAC\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cas_softc*)* @cas_disable_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cas_disable_rx(%struct.cas_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cas_softc*, align 8
  store %struct.cas_softc* %0, %struct.cas_softc** %3, align 8
  %4 = load %struct.cas_softc*, %struct.cas_softc** %3, align 8
  %5 = load i32, i32* @CAS_MAC_RX_CONF, align 4
  %6 = load %struct.cas_softc*, %struct.cas_softc** %3, align 8
  %7 = load i32, i32* @CAS_MAC_RX_CONF, align 4
  %8 = call i32 @CAS_READ_4(%struct.cas_softc* %6, i32 %7)
  %9 = load i32, i32* @CAS_MAC_RX_CONF_EN, align 4
  %10 = xor i32 %9, -1
  %11 = and i32 %8, %10
  %12 = call i32 @CAS_WRITE_4(%struct.cas_softc* %4, i32 %5, i32 %11)
  %13 = load %struct.cas_softc*, %struct.cas_softc** %3, align 8
  %14 = load i32, i32* @CAS_MAC_RX_CONF, align 4
  %15 = load i32, i32* @BUS_SPACE_BARRIER_READ, align 4
  %16 = load i32, i32* @BUS_SPACE_BARRIER_WRITE, align 4
  %17 = or i32 %15, %16
  %18 = call i32 @CAS_BARRIER(%struct.cas_softc* %13, i32 %14, i32 4, i32 %17)
  %19 = load %struct.cas_softc*, %struct.cas_softc** %3, align 8
  %20 = load i32, i32* @CAS_MAC_RX_CONF, align 4
  %21 = load i32, i32* @CAS_MAC_RX_CONF_EN, align 4
  %22 = call i64 @cas_bitwait(%struct.cas_softc* %19, i32 %20, i32 %21, i32 0)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %34

25:                                               ; preds = %1
  %26 = load i64, i64* @bootverbose, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %25
  %29 = load %struct.cas_softc*, %struct.cas_softc** %3, align 8
  %30 = getelementptr inbounds %struct.cas_softc, %struct.cas_softc* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @device_printf(i32 %31, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %33

33:                                               ; preds = %28, %25
  store i32 0, i32* %2, align 4
  br label %34

34:                                               ; preds = %33, %24
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local i32 @CAS_WRITE_4(%struct.cas_softc*, i32, i32) #1

declare dso_local i32 @CAS_READ_4(%struct.cas_softc*, i32) #1

declare dso_local i32 @CAS_BARRIER(%struct.cas_softc*, i32, i32, i32) #1

declare dso_local i64 @cas_bitwait(%struct.cas_softc*, i32, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
