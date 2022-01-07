; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vr/extr_if_vr.c_vr_resume.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vr/extr_if_vr.c_vr_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vr_softc = type { i32, %struct.ifnet* }
%struct.ifnet = type { i32 }

@IFF_UP = common dso_local global i32 0, align 4
@VR_F_SUSPENDED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @vr_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vr_resume(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vr_softc*, align 8
  %4 = alloca %struct.ifnet*, align 8
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call %struct.vr_softc* @device_get_softc(i32 %5)
  store %struct.vr_softc* %6, %struct.vr_softc** %3, align 8
  %7 = load %struct.vr_softc*, %struct.vr_softc** %3, align 8
  %8 = call i32 @VR_LOCK(%struct.vr_softc* %7)
  %9 = load %struct.vr_softc*, %struct.vr_softc** %3, align 8
  %10 = getelementptr inbounds %struct.vr_softc, %struct.vr_softc* %9, i32 0, i32 1
  %11 = load %struct.ifnet*, %struct.ifnet** %10, align 8
  store %struct.ifnet* %11, %struct.ifnet** %4, align 8
  %12 = load %struct.vr_softc*, %struct.vr_softc** %3, align 8
  %13 = call i32 @vr_clrwol(%struct.vr_softc* %12)
  %14 = load %struct.vr_softc*, %struct.vr_softc** %3, align 8
  %15 = call i32 @vr_reset(%struct.vr_softc* %14)
  %16 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %17 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @IFF_UP, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %1
  %23 = load %struct.vr_softc*, %struct.vr_softc** %3, align 8
  %24 = call i32 @vr_init_locked(%struct.vr_softc* %23)
  br label %25

25:                                               ; preds = %22, %1
  %26 = load i32, i32* @VR_F_SUSPENDED, align 4
  %27 = xor i32 %26, -1
  %28 = load %struct.vr_softc*, %struct.vr_softc** %3, align 8
  %29 = getelementptr inbounds %struct.vr_softc, %struct.vr_softc* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = and i32 %30, %27
  store i32 %31, i32* %29, align 8
  %32 = load %struct.vr_softc*, %struct.vr_softc** %3, align 8
  %33 = call i32 @VR_UNLOCK(%struct.vr_softc* %32)
  ret i32 0
}

declare dso_local %struct.vr_softc* @device_get_softc(i32) #1

declare dso_local i32 @VR_LOCK(%struct.vr_softc*) #1

declare dso_local i32 @vr_clrwol(%struct.vr_softc*) #1

declare dso_local i32 @vr_reset(%struct.vr_softc*) #1

declare dso_local i32 @vr_init_locked(%struct.vr_softc*) #1

declare dso_local i32 @VR_UNLOCK(%struct.vr_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
