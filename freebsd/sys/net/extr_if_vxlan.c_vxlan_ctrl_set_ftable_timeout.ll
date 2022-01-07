; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_if_vxlan.c_vxlan_ctrl_set_ftable_timeout.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_if_vxlan.c_vxlan_ctrl_set_ftable_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vxlan_softc = type { i32 }
%struct.ifvxlancmd = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vxlan_softc*, i8*)* @vxlan_ctrl_set_ftable_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vxlan_ctrl_set_ftable_timeout(%struct.vxlan_softc* %0, i8* %1) #0 {
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
  %11 = load %struct.ifvxlancmd*, %struct.ifvxlancmd** %5, align 8
  %12 = getelementptr inbounds %struct.ifvxlancmd, %struct.ifvxlancmd* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @vxlan_check_ftable_timeout(i32 %13)
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %2
  %17 = load %struct.ifvxlancmd*, %struct.ifvxlancmd** %5, align 8
  %18 = getelementptr inbounds %struct.ifvxlancmd, %struct.ifvxlancmd* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.vxlan_softc*, %struct.vxlan_softc** %3, align 8
  %21 = getelementptr inbounds %struct.vxlan_softc, %struct.vxlan_softc* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  store i32 0, i32* %6, align 4
  br label %24

22:                                               ; preds = %2
  %23 = load i32, i32* @EINVAL, align 4
  store i32 %23, i32* %6, align 4
  br label %24

24:                                               ; preds = %22, %16
  %25 = load %struct.vxlan_softc*, %struct.vxlan_softc** %3, align 8
  %26 = call i32 @VXLAN_WUNLOCK(%struct.vxlan_softc* %25)
  %27 = load i32, i32* %6, align 4
  ret i32 %27
}

declare dso_local i32 @VXLAN_WLOCK(%struct.vxlan_softc*) #1

declare dso_local i64 @vxlan_check_ftable_timeout(i32) #1

declare dso_local i32 @VXLAN_WUNLOCK(%struct.vxlan_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
