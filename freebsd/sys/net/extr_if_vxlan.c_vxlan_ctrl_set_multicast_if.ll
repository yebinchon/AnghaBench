; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_if_vxlan.c_vxlan_ctrl_set_multicast_if.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_if_vxlan.c_vxlan_ctrl_set_multicast_if.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vxlan_softc = type { i32 }
%struct.ifvxlancmd = type { i32 }

@IFNAMSIZ = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vxlan_softc*, i8*)* @vxlan_ctrl_set_multicast_if to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vxlan_ctrl_set_multicast_if(%struct.vxlan_softc* %0, i8* %1) #0 {
  %3 = alloca %struct.vxlan_softc*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ifvxlancmd*, align 8
  %6 = alloca i32, align 4
  store %struct.vxlan_softc* %0, %struct.vxlan_softc** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.ifvxlancmd*
  store %struct.ifvxlancmd* %8, %struct.ifvxlancmd** %5, align 8
  %9 = load %struct.vxlan_softc*, %struct.vxlan_softc** %3, align 8
  %10 = call i32 @VXLAN_WLOCK(%struct.vxlan_softc* %9)
  %11 = load %struct.vxlan_softc*, %struct.vxlan_softc** %3, align 8
  %12 = call i64 @vxlan_can_change_config(%struct.vxlan_softc* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %23

14:                                               ; preds = %2
  %15 = load %struct.vxlan_softc*, %struct.vxlan_softc** %3, align 8
  %16 = getelementptr inbounds %struct.vxlan_softc, %struct.vxlan_softc* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.ifvxlancmd*, %struct.ifvxlancmd** %5, align 8
  %19 = getelementptr inbounds %struct.ifvxlancmd, %struct.ifvxlancmd* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @IFNAMSIZ, align 4
  %22 = call i32 @strlcpy(i32 %17, i32 %20, i32 %21)
  store i32 0, i32* %6, align 4
  br label %25

23:                                               ; preds = %2
  %24 = load i32, i32* @EBUSY, align 4
  store i32 %24, i32* %6, align 4
  br label %25

25:                                               ; preds = %23, %14
  %26 = load %struct.vxlan_softc*, %struct.vxlan_softc** %3, align 8
  %27 = call i32 @VXLAN_WUNLOCK(%struct.vxlan_softc* %26)
  %28 = load i32, i32* %6, align 4
  ret i32 %28
}

declare dso_local i32 @VXLAN_WLOCK(%struct.vxlan_softc*) #1

declare dso_local i64 @vxlan_can_change_config(%struct.vxlan_softc*) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #1

declare dso_local i32 @VXLAN_WUNLOCK(%struct.vxlan_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
