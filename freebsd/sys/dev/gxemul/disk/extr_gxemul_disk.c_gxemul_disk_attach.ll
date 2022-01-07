; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/gxemul/disk/extr_gxemul_disk.c_gxemul_disk_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/gxemul/disk/extr_gxemul_disk.c_gxemul_disk_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gxemul_disk_softc = type { i32, i32*, i32*, i32 }

@gxemul_disk_controller_mutex = common dso_local global i32 0, align 4
@gxemul_disk_attach_geom = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @gxemul_disk_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gxemul_disk_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.gxemul_disk_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call i32 @device_get_unit(i32 %7)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call %struct.gxemul_disk_softc* @device_get_softc(i32 %9)
  store %struct.gxemul_disk_softc* %10, %struct.gxemul_disk_softc** %4, align 8
  %11 = load i32, i32* %3, align 4
  %12 = load %struct.gxemul_disk_softc*, %struct.gxemul_disk_softc** %4, align 8
  %13 = getelementptr inbounds %struct.gxemul_disk_softc, %struct.gxemul_disk_softc* %12, i32 0, i32 3
  store i32 %11, i32* %13, align 8
  %14 = load %struct.gxemul_disk_softc*, %struct.gxemul_disk_softc** %4, align 8
  %15 = getelementptr inbounds %struct.gxemul_disk_softc, %struct.gxemul_disk_softc* %14, i32 0, i32 2
  store i32* null, i32** %15, align 8
  %16 = load %struct.gxemul_disk_softc*, %struct.gxemul_disk_softc** %4, align 8
  %17 = getelementptr inbounds %struct.gxemul_disk_softc, %struct.gxemul_disk_softc* %16, i32 0, i32 1
  store i32* null, i32** %17, align 8
  %18 = call i32 @mtx_lock(i32* @gxemul_disk_controller_mutex)
  %19 = load i32, i32* %5, align 4
  %20 = load %struct.gxemul_disk_softc*, %struct.gxemul_disk_softc** %4, align 8
  %21 = getelementptr inbounds %struct.gxemul_disk_softc, %struct.gxemul_disk_softc* %20, i32 0, i32 0
  %22 = call i32 @gxemul_disk_size(i32 %19, i32* %21)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %1
  %26 = call i32 @mtx_unlock(i32* @gxemul_disk_controller_mutex)
  %27 = load i32, i32* %6, align 4
  store i32 %27, i32* %2, align 4
  br label %34

28:                                               ; preds = %1
  %29 = call i32 @mtx_unlock(i32* @gxemul_disk_controller_mutex)
  %30 = load i32, i32* @gxemul_disk_attach_geom, align 4
  %31 = load %struct.gxemul_disk_softc*, %struct.gxemul_disk_softc** %4, align 8
  %32 = load i32, i32* @M_WAITOK, align 4
  %33 = call i32 @g_post_event(i32 %30, %struct.gxemul_disk_softc* %31, i32 %32, i32* null)
  store i32 0, i32* %2, align 4
  br label %34

34:                                               ; preds = %28, %25
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local %struct.gxemul_disk_softc* @device_get_softc(i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @gxemul_disk_size(i32, i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @g_post_event(i32, %struct.gxemul_disk_softc*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
