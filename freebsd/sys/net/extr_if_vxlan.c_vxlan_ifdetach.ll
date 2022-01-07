; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_if_vxlan.c_vxlan_ifdetach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_if_vxlan.c_vxlan_ifdetach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vxlan_softc = type { i32, %struct.ifnet* }
%struct.ifnet = type { i32 }
%struct.vxlan_softc_head = type { i32 }

@VXLAN_FLAG_TEARDOWN = common dso_local global i32 0, align 4
@vxl_ifdetach_list = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vxlan_softc*, %struct.ifnet*, %struct.vxlan_softc_head*)* @vxlan_ifdetach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vxlan_ifdetach(%struct.vxlan_softc* %0, %struct.ifnet* %1, %struct.vxlan_softc_head* %2) #0 {
  %4 = alloca %struct.vxlan_softc*, align 8
  %5 = alloca %struct.ifnet*, align 8
  %6 = alloca %struct.vxlan_softc_head*, align 8
  store %struct.vxlan_softc* %0, %struct.vxlan_softc** %4, align 8
  store %struct.ifnet* %1, %struct.ifnet** %5, align 8
  store %struct.vxlan_softc_head* %2, %struct.vxlan_softc_head** %6, align 8
  %7 = load %struct.vxlan_softc*, %struct.vxlan_softc** %4, align 8
  %8 = call i32 @VXLAN_WLOCK(%struct.vxlan_softc* %7)
  %9 = load %struct.vxlan_softc*, %struct.vxlan_softc** %4, align 8
  %10 = getelementptr inbounds %struct.vxlan_softc, %struct.vxlan_softc* %9, i32 0, i32 1
  %11 = load %struct.ifnet*, %struct.ifnet** %10, align 8
  %12 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %13 = icmp ne %struct.ifnet* %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  br label %33

15:                                               ; preds = %3
  %16 = load %struct.vxlan_softc*, %struct.vxlan_softc** %4, align 8
  %17 = getelementptr inbounds %struct.vxlan_softc, %struct.vxlan_softc* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @VXLAN_FLAG_TEARDOWN, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %15
  br label %33

23:                                               ; preds = %15
  %24 = load i32, i32* @VXLAN_FLAG_TEARDOWN, align 4
  %25 = load %struct.vxlan_softc*, %struct.vxlan_softc** %4, align 8
  %26 = getelementptr inbounds %struct.vxlan_softc, %struct.vxlan_softc* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = or i32 %27, %24
  store i32 %28, i32* %26, align 8
  %29 = load %struct.vxlan_softc_head*, %struct.vxlan_softc_head** %6, align 8
  %30 = load %struct.vxlan_softc*, %struct.vxlan_softc** %4, align 8
  %31 = load i32, i32* @vxl_ifdetach_list, align 4
  %32 = call i32 @LIST_INSERT_HEAD(%struct.vxlan_softc_head* %29, %struct.vxlan_softc* %30, i32 %31)
  br label %33

33:                                               ; preds = %23, %22, %14
  %34 = load %struct.vxlan_softc*, %struct.vxlan_softc** %4, align 8
  %35 = call i32 @VXLAN_WUNLOCK(%struct.vxlan_softc* %34)
  ret void
}

declare dso_local i32 @VXLAN_WLOCK(%struct.vxlan_softc*) #1

declare dso_local i32 @LIST_INSERT_HEAD(%struct.vxlan_softc_head*, %struct.vxlan_softc*, i32) #1

declare dso_local i32 @VXLAN_WUNLOCK(%struct.vxlan_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
