; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/mirror/extr_g_mirror.c_g_mirror_reinit_from_metadata.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/mirror/extr_g_mirror.c_g_mirror_reinit_from_metadata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_mirror_softc = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.g_mirror_metadata = type { i32, i32, i32, i32, i32, i32, i32 }

@G_MIRROR_DEVICE_FLAG_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.g_mirror_softc*, %struct.g_mirror_metadata*)* @g_mirror_reinit_from_metadata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_mirror_reinit_from_metadata(%struct.g_mirror_softc* %0, %struct.g_mirror_metadata* %1) #0 {
  %3 = alloca %struct.g_mirror_softc*, align 8
  %4 = alloca %struct.g_mirror_metadata*, align 8
  store %struct.g_mirror_softc* %0, %struct.g_mirror_softc** %3, align 8
  store %struct.g_mirror_metadata* %1, %struct.g_mirror_metadata** %4, align 8
  %5 = load %struct.g_mirror_metadata*, %struct.g_mirror_metadata** %4, align 8
  %6 = getelementptr inbounds %struct.g_mirror_metadata, %struct.g_mirror_metadata* %5, i32 0, i32 6
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.g_mirror_softc*, %struct.g_mirror_softc** %3, align 8
  %9 = getelementptr inbounds %struct.g_mirror_softc, %struct.g_mirror_softc* %8, i32 0, i32 6
  store i32 %7, i32* %9, align 4
  %10 = load %struct.g_mirror_metadata*, %struct.g_mirror_metadata** %4, align 8
  %11 = getelementptr inbounds %struct.g_mirror_metadata, %struct.g_mirror_metadata* %10, i32 0, i32 5
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.g_mirror_softc*, %struct.g_mirror_softc** %3, align 8
  %14 = getelementptr inbounds %struct.g_mirror_softc, %struct.g_mirror_softc* %13, i32 0, i32 5
  store i32 %12, i32* %14, align 4
  %15 = load %struct.g_mirror_metadata*, %struct.g_mirror_metadata** %4, align 8
  %16 = getelementptr inbounds %struct.g_mirror_metadata, %struct.g_mirror_metadata* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.g_mirror_softc*, %struct.g_mirror_softc** %3, align 8
  %19 = getelementptr inbounds %struct.g_mirror_softc, %struct.g_mirror_softc* %18, i32 0, i32 4
  store i32 %17, i32* %19, align 4
  %20 = load %struct.g_mirror_metadata*, %struct.g_mirror_metadata** %4, align 8
  %21 = getelementptr inbounds %struct.g_mirror_metadata, %struct.g_mirror_metadata* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.g_mirror_softc*, %struct.g_mirror_softc** %3, align 8
  %24 = getelementptr inbounds %struct.g_mirror_softc, %struct.g_mirror_softc* %23, i32 0, i32 3
  store i32 %22, i32* %24, align 4
  %25 = load %struct.g_mirror_metadata*, %struct.g_mirror_metadata** %4, align 8
  %26 = getelementptr inbounds %struct.g_mirror_metadata, %struct.g_mirror_metadata* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.g_mirror_softc*, %struct.g_mirror_softc** %3, align 8
  %29 = getelementptr inbounds %struct.g_mirror_softc, %struct.g_mirror_softc* %28, i32 0, i32 2
  store i32 %27, i32* %29, align 4
  %30 = load %struct.g_mirror_metadata*, %struct.g_mirror_metadata** %4, align 8
  %31 = getelementptr inbounds %struct.g_mirror_metadata, %struct.g_mirror_metadata* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.g_mirror_softc*, %struct.g_mirror_softc** %3, align 8
  %34 = getelementptr inbounds %struct.g_mirror_softc, %struct.g_mirror_softc* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* @G_MIRROR_DEVICE_FLAG_MASK, align 4
  %36 = xor i32 %35, -1
  %37 = load %struct.g_mirror_softc*, %struct.g_mirror_softc** %3, align 8
  %38 = getelementptr inbounds %struct.g_mirror_softc, %struct.g_mirror_softc* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = and i32 %39, %36
  store i32 %40, i32* %38, align 4
  %41 = load %struct.g_mirror_metadata*, %struct.g_mirror_metadata** %4, align 8
  %42 = getelementptr inbounds %struct.g_mirror_metadata, %struct.g_mirror_metadata* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @G_MIRROR_DEVICE_FLAG_MASK, align 4
  %45 = and i32 %43, %44
  %46 = load %struct.g_mirror_softc*, %struct.g_mirror_softc** %3, align 8
  %47 = getelementptr inbounds %struct.g_mirror_softc, %struct.g_mirror_softc* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = or i32 %48, %45
  store i32 %49, i32* %47, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
