; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_if_vxlan.c_vxlan_teardown.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_if_vxlan.c_vxlan_teardown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vxlan_softc = type { i32 }

@VXLAN_FLAG_TEARDOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vxlan_softc*)* @vxlan_teardown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vxlan_teardown(%struct.vxlan_softc* %0) #0 {
  %2 = alloca %struct.vxlan_softc*, align 8
  store %struct.vxlan_softc* %0, %struct.vxlan_softc** %2, align 8
  %3 = load %struct.vxlan_softc*, %struct.vxlan_softc** %2, align 8
  %4 = call i32 @VXLAN_WLOCK(%struct.vxlan_softc* %3)
  %5 = load %struct.vxlan_softc*, %struct.vxlan_softc** %2, align 8
  %6 = getelementptr inbounds %struct.vxlan_softc, %struct.vxlan_softc* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @VXLAN_FLAG_TEARDOWN, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  %12 = load %struct.vxlan_softc*, %struct.vxlan_softc** %2, align 8
  %13 = call i32 @vxlan_teardown_wait(%struct.vxlan_softc* %12)
  %14 = load %struct.vxlan_softc*, %struct.vxlan_softc** %2, align 8
  %15 = call i32 @VXLAN_WUNLOCK(%struct.vxlan_softc* %14)
  br label %24

16:                                               ; preds = %1
  %17 = load i32, i32* @VXLAN_FLAG_TEARDOWN, align 4
  %18 = load %struct.vxlan_softc*, %struct.vxlan_softc** %2, align 8
  %19 = getelementptr inbounds %struct.vxlan_softc, %struct.vxlan_softc* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = or i32 %20, %17
  store i32 %21, i32* %19, align 4
  %22 = load %struct.vxlan_softc*, %struct.vxlan_softc** %2, align 8
  %23 = call i32 @vxlan_teardown_locked(%struct.vxlan_softc* %22)
  br label %24

24:                                               ; preds = %16, %11
  ret void
}

declare dso_local i32 @VXLAN_WLOCK(%struct.vxlan_softc*) #1

declare dso_local i32 @vxlan_teardown_wait(%struct.vxlan_softc*) #1

declare dso_local i32 @VXLAN_WUNLOCK(%struct.vxlan_softc*) #1

declare dso_local i32 @vxlan_teardown_locked(%struct.vxlan_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
