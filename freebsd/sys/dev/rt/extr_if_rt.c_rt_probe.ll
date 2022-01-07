; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/rt/extr_if_rt.c_rt_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/rt/extr_if_rt.c_rt_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt_softc = type { i32 }

@RT_CHIPID_RT3050 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Ralink %cT%x onChip Ethernet driver\00", align 1
@BUS_PROBE_GENERIC = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@RT_CHIPID_MT7620 = common dso_local global i32 0, align 4
@RT_CHIPID_MT7621 = common dso_local global i32 0, align 4
@RT_CHIPID_RT5350 = common dso_local global i32 0, align 4
@rt_compat_data = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @rt_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt_probe(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rt_softc*, align 8
  %4 = alloca [80 x i8], align 16
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call %struct.rt_softc* @device_get_softc(i32 %5)
  store %struct.rt_softc* %6, %struct.rt_softc** %3, align 8
  %7 = load i32, i32* @RT_CHIPID_RT3050, align 4
  %8 = load %struct.rt_softc*, %struct.rt_softc** %3, align 8
  %9 = getelementptr inbounds %struct.rt_softc, %struct.rt_softc* %8, i32 0, i32 0
  store i32 %7, i32* %9, align 4
  %10 = getelementptr inbounds [80 x i8], [80 x i8]* %4, i64 0, i64 0
  %11 = load %struct.rt_softc*, %struct.rt_softc** %3, align 8
  %12 = getelementptr inbounds %struct.rt_softc, %struct.rt_softc* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp uge i32 %13, 30208
  %15 = zext i1 %14 to i64
  %16 = select i1 %14, i32 77, i32 82
  %17 = trunc i32 %16 to i8
  %18 = load %struct.rt_softc*, %struct.rt_softc** %3, align 8
  %19 = getelementptr inbounds %struct.rt_softc, %struct.rt_softc* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @snprintf(i8* %10, i32 80, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i8 signext %17, i32 %20)
  %22 = load i32, i32* %2, align 4
  %23 = getelementptr inbounds [80 x i8], [80 x i8]* %4, i64 0, i64 0
  %24 = call i32 @device_set_desc_copy(i32 %22, i8* %23)
  %25 = load i32, i32* @BUS_PROBE_GENERIC, align 4
  ret i32 %25
}

declare dso_local %struct.rt_softc* @device_get_softc(i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8 signext, i32) #1

declare dso_local i32 @device_set_desc_copy(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
