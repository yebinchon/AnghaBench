; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_if_vxlan.c_vxlan_ctrl_flush.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_if_vxlan.c_vxlan_ctrl_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vxlan_softc = type { i32 }
%struct.ifvxlancmd = type { i32 }

@VXLAN_CMD_FLAG_FLUSH_ALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vxlan_softc*, i8*)* @vxlan_ctrl_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vxlan_ctrl_flush(%struct.vxlan_softc* %0, i8* %1) #0 {
  %3 = alloca %struct.vxlan_softc*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ifvxlancmd*, align 8
  %6 = alloca i32, align 4
  store %struct.vxlan_softc* %0, %struct.vxlan_softc** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.ifvxlancmd*
  store %struct.ifvxlancmd* %8, %struct.ifvxlancmd** %5, align 8
  %9 = load %struct.ifvxlancmd*, %struct.ifvxlancmd** %5, align 8
  %10 = getelementptr inbounds %struct.ifvxlancmd, %struct.ifvxlancmd* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @VXLAN_CMD_FLAG_FLUSH_ALL, align 4
  %13 = and i32 %11, %12
  store i32 %13, i32* %6, align 4
  %14 = load %struct.vxlan_softc*, %struct.vxlan_softc** %3, align 8
  %15 = call i32 @VXLAN_WLOCK(%struct.vxlan_softc* %14)
  %16 = load %struct.vxlan_softc*, %struct.vxlan_softc** %3, align 8
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @vxlan_ftable_flush(%struct.vxlan_softc* %16, i32 %17)
  %19 = load %struct.vxlan_softc*, %struct.vxlan_softc** %3, align 8
  %20 = call i32 @VXLAN_WUNLOCK(%struct.vxlan_softc* %19)
  ret i32 0
}

declare dso_local i32 @VXLAN_WLOCK(%struct.vxlan_softc*) #1

declare dso_local i32 @vxlan_ftable_flush(%struct.vxlan_softc*, i32) #1

declare dso_local i32 @VXLAN_WUNLOCK(%struct.vxlan_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
