; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/rt/extr_if_rt.c_rt_resume.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/rt/extr_if_rt.c_rt_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt_softc = type { %struct.ifnet* }
%struct.ifnet = type { i32 }

@RT_DEBUG_ANY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"resuming\0A\00", align 1
@IFF_UP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @rt_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt_resume(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rt_softc*, align 8
  %4 = alloca %struct.ifnet*, align 8
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call %struct.rt_softc* @device_get_softc(i32 %5)
  store %struct.rt_softc* %6, %struct.rt_softc** %3, align 8
  %7 = load %struct.rt_softc*, %struct.rt_softc** %3, align 8
  %8 = getelementptr inbounds %struct.rt_softc, %struct.rt_softc* %7, i32 0, i32 0
  %9 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  store %struct.ifnet* %9, %struct.ifnet** %4, align 8
  %10 = load %struct.rt_softc*, %struct.rt_softc** %3, align 8
  %11 = load i32, i32* @RT_DEBUG_ANY, align 4
  %12 = call i32 @RT_DPRINTF(%struct.rt_softc* %10, i32 %11, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %14 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @IFF_UP, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %1
  %20 = load %struct.rt_softc*, %struct.rt_softc** %3, align 8
  %21 = call i32 @rt_init(%struct.rt_softc* %20)
  br label %22

22:                                               ; preds = %19, %1
  ret i32 0
}

declare dso_local %struct.rt_softc* @device_get_softc(i32) #1

declare dso_local i32 @RT_DPRINTF(%struct.rt_softc*, i32, i8*) #1

declare dso_local i32 @rt_init(%struct.rt_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
