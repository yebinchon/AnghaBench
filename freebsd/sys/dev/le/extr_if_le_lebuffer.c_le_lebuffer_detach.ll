; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/le/extr_if_le_lebuffer.c_le_lebuffer_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/le/extr_if_le_lebuffer.c_le_lebuffer_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.le_lebuffer_softc = type { i32, i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { %struct.lance_softc }
%struct.lance_softc = type { i32 }

@SYS_RES_IRQ = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @le_lebuffer_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @le_lebuffer_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.le_lebuffer_softc*, align 8
  %4 = alloca %struct.lance_softc*, align 8
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call %struct.le_lebuffer_softc* @device_get_softc(i32 %5)
  store %struct.le_lebuffer_softc* %6, %struct.le_lebuffer_softc** %3, align 8
  %7 = load %struct.le_lebuffer_softc*, %struct.le_lebuffer_softc** %3, align 8
  %8 = getelementptr inbounds %struct.le_lebuffer_softc, %struct.le_lebuffer_softc* %7, i32 0, i32 3
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  store %struct.lance_softc* %9, %struct.lance_softc** %4, align 8
  %10 = load i32, i32* %2, align 4
  %11 = load %struct.le_lebuffer_softc*, %struct.le_lebuffer_softc** %3, align 8
  %12 = getelementptr inbounds %struct.le_lebuffer_softc, %struct.le_lebuffer_softc* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.le_lebuffer_softc*, %struct.le_lebuffer_softc** %3, align 8
  %15 = getelementptr inbounds %struct.le_lebuffer_softc, %struct.le_lebuffer_softc* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @bus_teardown_intr(i32 %10, i32 %13, i32 %16)
  %18 = load %struct.le_lebuffer_softc*, %struct.le_lebuffer_softc** %3, align 8
  %19 = getelementptr inbounds %struct.le_lebuffer_softc, %struct.le_lebuffer_softc* %18, i32 0, i32 3
  %20 = call i32 @am7990_detach(%struct.TYPE_2__* %19)
  %21 = load i32, i32* %2, align 4
  %22 = load i32, i32* @SYS_RES_IRQ, align 4
  %23 = load %struct.le_lebuffer_softc*, %struct.le_lebuffer_softc** %3, align 8
  %24 = getelementptr inbounds %struct.le_lebuffer_softc, %struct.le_lebuffer_softc* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @rman_get_rid(i32 %25)
  %27 = load %struct.le_lebuffer_softc*, %struct.le_lebuffer_softc** %3, align 8
  %28 = getelementptr inbounds %struct.le_lebuffer_softc, %struct.le_lebuffer_softc* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @bus_release_resource(i32 %21, i32 %22, i32 %26, i32 %29)
  %31 = load i32, i32* %2, align 4
  %32 = load i32, i32* @SYS_RES_MEMORY, align 4
  %33 = load %struct.le_lebuffer_softc*, %struct.le_lebuffer_softc** %3, align 8
  %34 = getelementptr inbounds %struct.le_lebuffer_softc, %struct.le_lebuffer_softc* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @rman_get_rid(i32 %35)
  %37 = load %struct.le_lebuffer_softc*, %struct.le_lebuffer_softc** %3, align 8
  %38 = getelementptr inbounds %struct.le_lebuffer_softc, %struct.le_lebuffer_softc* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @bus_release_resource(i32 %31, i32 %32, i32 %36, i32 %39)
  %41 = load i32, i32* %2, align 4
  %42 = call i32 @device_get_parent(i32 %41)
  %43 = load i32, i32* @SYS_RES_MEMORY, align 4
  %44 = load %struct.le_lebuffer_softc*, %struct.le_lebuffer_softc** %3, align 8
  %45 = getelementptr inbounds %struct.le_lebuffer_softc, %struct.le_lebuffer_softc* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @rman_get_rid(i32 %46)
  %48 = load %struct.le_lebuffer_softc*, %struct.le_lebuffer_softc** %3, align 8
  %49 = getelementptr inbounds %struct.le_lebuffer_softc, %struct.le_lebuffer_softc* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @bus_release_resource(i32 %42, i32 %43, i32 %47, i32 %50)
  %52 = load %struct.lance_softc*, %struct.lance_softc** %4, align 8
  %53 = call i32 @LE_LOCK_DESTROY(%struct.lance_softc* %52)
  ret i32 0
}

declare dso_local %struct.le_lebuffer_softc* @device_get_softc(i32) #1

declare dso_local i32 @bus_teardown_intr(i32, i32, i32) #1

declare dso_local i32 @am7990_detach(%struct.TYPE_2__*) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32) #1

declare dso_local i32 @rman_get_rid(i32) #1

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i32 @LE_LOCK_DESTROY(%struct.lance_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
