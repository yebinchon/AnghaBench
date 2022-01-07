; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bge/extr_if_bge.c_bge_resume.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bge/extr_if_bge.c_bge_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bge_softc = type { i32 }

@IFF_UP = common dso_local global i32 0, align 4
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @bge_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bge_resume(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bge_softc*, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call %struct.bge_softc* @device_get_softc(i32 %5)
  store %struct.bge_softc* %6, %struct.bge_softc** %3, align 8
  %7 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %8 = call i32 @BGE_LOCK(%struct.bge_softc* %7)
  %9 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %10 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @if_getflags(i32 %12)
  %14 = load i32, i32* @IFF_UP, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %29

17:                                               ; preds = %1
  %18 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %19 = call i32 @bge_init_locked(%struct.bge_softc* %18)
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @if_getdrvflags(i32 %20)
  %22 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %17
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @bge_start_locked(i32 %26)
  br label %28

28:                                               ; preds = %25, %17
  br label %29

29:                                               ; preds = %28, %1
  %30 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %31 = call i32 @BGE_UNLOCK(%struct.bge_softc* %30)
  ret i32 0
}

declare dso_local %struct.bge_softc* @device_get_softc(i32) #1

declare dso_local i32 @BGE_LOCK(%struct.bge_softc*) #1

declare dso_local i32 @if_getflags(i32) #1

declare dso_local i32 @bge_init_locked(%struct.bge_softc*) #1

declare dso_local i32 @if_getdrvflags(i32) #1

declare dso_local i32 @bge_start_locked(i32) #1

declare dso_local i32 @BGE_UNLOCK(%struct.bge_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
