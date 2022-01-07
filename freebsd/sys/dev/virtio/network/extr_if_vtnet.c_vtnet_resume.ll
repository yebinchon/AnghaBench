; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/virtio/network/extr_if_vtnet.c_vtnet_resume.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/virtio/network/extr_if_vtnet.c_vtnet_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vtnet_softc = type { i32, %struct.ifnet* }
%struct.ifnet = type { i32 }

@IFF_UP = common dso_local global i32 0, align 4
@VTNET_FLAG_SUSPENDED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @vtnet_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vtnet_resume(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vtnet_softc*, align 8
  %4 = alloca %struct.ifnet*, align 8
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call %struct.vtnet_softc* @device_get_softc(i32 %5)
  store %struct.vtnet_softc* %6, %struct.vtnet_softc** %3, align 8
  %7 = load %struct.vtnet_softc*, %struct.vtnet_softc** %3, align 8
  %8 = getelementptr inbounds %struct.vtnet_softc, %struct.vtnet_softc* %7, i32 0, i32 1
  %9 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  store %struct.ifnet* %9, %struct.ifnet** %4, align 8
  %10 = load %struct.vtnet_softc*, %struct.vtnet_softc** %3, align 8
  %11 = call i32 @VTNET_CORE_LOCK(%struct.vtnet_softc* %10)
  %12 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %13 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @IFF_UP, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = load %struct.vtnet_softc*, %struct.vtnet_softc** %3, align 8
  %20 = call i32 @vtnet_init_locked(%struct.vtnet_softc* %19)
  br label %21

21:                                               ; preds = %18, %1
  %22 = load i32, i32* @VTNET_FLAG_SUSPENDED, align 4
  %23 = xor i32 %22, -1
  %24 = load %struct.vtnet_softc*, %struct.vtnet_softc** %3, align 8
  %25 = getelementptr inbounds %struct.vtnet_softc, %struct.vtnet_softc* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = and i32 %26, %23
  store i32 %27, i32* %25, align 8
  %28 = load %struct.vtnet_softc*, %struct.vtnet_softc** %3, align 8
  %29 = call i32 @VTNET_CORE_UNLOCK(%struct.vtnet_softc* %28)
  ret i32 0
}

declare dso_local %struct.vtnet_softc* @device_get_softc(i32) #1

declare dso_local i32 @VTNET_CORE_LOCK(%struct.vtnet_softc*) #1

declare dso_local i32 @vtnet_init_locked(%struct.vtnet_softc*) #1

declare dso_local i32 @VTNET_CORE_UNLOCK(%struct.vtnet_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
