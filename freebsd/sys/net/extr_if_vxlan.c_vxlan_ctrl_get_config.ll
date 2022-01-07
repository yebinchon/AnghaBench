; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_if_vxlan.c_vxlan_ctrl_get_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_if_vxlan.c_vxlan_ctrl_get_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vxlan_softc = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.rm_priotracker = type { i32 }
%struct.ifvxlancfg = type { i32, %struct.TYPE_3__, %struct.TYPE_3__, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@VXLAN_FLAG_LEARN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vxlan_softc*, i8*)* @vxlan_ctrl_get_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vxlan_ctrl_get_config(%struct.vxlan_softc* %0, i8* %1) #0 {
  %3 = alloca %struct.vxlan_softc*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.rm_priotracker, align 4
  %6 = alloca %struct.ifvxlancfg*, align 8
  store %struct.vxlan_softc* %0, %struct.vxlan_softc** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.ifvxlancfg*
  store %struct.ifvxlancfg* %8, %struct.ifvxlancfg** %6, align 8
  %9 = load %struct.ifvxlancfg*, %struct.ifvxlancfg** %6, align 8
  %10 = call i32 @bzero(%struct.ifvxlancfg* %9, i32 44)
  %11 = load %struct.vxlan_softc*, %struct.vxlan_softc** %3, align 8
  %12 = call i32 @VXLAN_RLOCK(%struct.vxlan_softc* %11, %struct.rm_priotracker* %5)
  %13 = load %struct.vxlan_softc*, %struct.vxlan_softc** %3, align 8
  %14 = getelementptr inbounds %struct.vxlan_softc, %struct.vxlan_softc* %13, i32 0, i32 10
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.ifvxlancfg*, %struct.ifvxlancfg** %6, align 8
  %17 = getelementptr inbounds %struct.ifvxlancfg, %struct.ifvxlancfg* %16, i32 0, i32 10
  store i32 %15, i32* %17, align 4
  %18 = load %struct.ifvxlancfg*, %struct.ifvxlancfg** %6, align 8
  %19 = getelementptr inbounds %struct.ifvxlancfg, %struct.ifvxlancfg* %18, i32 0, i32 2
  %20 = load %struct.vxlan_softc*, %struct.vxlan_softc** %3, align 8
  %21 = getelementptr inbounds %struct.vxlan_softc, %struct.vxlan_softc* %20, i32 0, i32 9
  %22 = call i32 @memcpy(%struct.TYPE_3__* %19, i32* %21, i32 4)
  %23 = load %struct.ifvxlancfg*, %struct.ifvxlancfg** %6, align 8
  %24 = getelementptr inbounds %struct.ifvxlancfg, %struct.ifvxlancfg* %23, i32 0, i32 1
  %25 = load %struct.vxlan_softc*, %struct.vxlan_softc** %3, align 8
  %26 = getelementptr inbounds %struct.vxlan_softc, %struct.vxlan_softc* %25, i32 0, i32 8
  %27 = call i32 @memcpy(%struct.TYPE_3__* %24, i32* %26, i32 4)
  %28 = load %struct.vxlan_softc*, %struct.vxlan_softc** %3, align 8
  %29 = getelementptr inbounds %struct.vxlan_softc, %struct.vxlan_softc* %28, i32 0, i32 7
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.ifvxlancfg*, %struct.ifvxlancfg** %6, align 8
  %32 = getelementptr inbounds %struct.ifvxlancfg, %struct.ifvxlancfg* %31, i32 0, i32 9
  store i32 %30, i32* %32, align 4
  %33 = load %struct.vxlan_softc*, %struct.vxlan_softc** %3, align 8
  %34 = getelementptr inbounds %struct.vxlan_softc, %struct.vxlan_softc* %33, i32 0, i32 6
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.ifvxlancfg*, %struct.ifvxlancfg** %6, align 8
  %37 = getelementptr inbounds %struct.ifvxlancfg, %struct.ifvxlancfg* %36, i32 0, i32 8
  store i32 %35, i32* %37, align 4
  %38 = load %struct.vxlan_softc*, %struct.vxlan_softc** %3, align 8
  %39 = getelementptr inbounds %struct.vxlan_softc, %struct.vxlan_softc* %38, i32 0, i32 5
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.ifvxlancfg*, %struct.ifvxlancfg** %6, align 8
  %42 = getelementptr inbounds %struct.ifvxlancfg, %struct.ifvxlancfg* %41, i32 0, i32 7
  store i32 %40, i32* %42, align 4
  %43 = load %struct.vxlan_softc*, %struct.vxlan_softc** %3, align 8
  %44 = getelementptr inbounds %struct.vxlan_softc, %struct.vxlan_softc* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.ifvxlancfg*, %struct.ifvxlancfg** %6, align 8
  %47 = getelementptr inbounds %struct.ifvxlancfg, %struct.ifvxlancfg* %46, i32 0, i32 6
  store i32 %45, i32* %47, align 4
  %48 = load %struct.vxlan_softc*, %struct.vxlan_softc** %3, align 8
  %49 = getelementptr inbounds %struct.vxlan_softc, %struct.vxlan_softc* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.ifvxlancfg*, %struct.ifvxlancfg** %6, align 8
  %52 = getelementptr inbounds %struct.ifvxlancfg, %struct.ifvxlancfg* %51, i32 0, i32 5
  store i32 %50, i32* %52, align 4
  %53 = load %struct.vxlan_softc*, %struct.vxlan_softc** %3, align 8
  %54 = getelementptr inbounds %struct.vxlan_softc, %struct.vxlan_softc* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.ifvxlancfg*, %struct.ifvxlancfg** %6, align 8
  %57 = getelementptr inbounds %struct.ifvxlancfg, %struct.ifvxlancfg* %56, i32 0, i32 4
  store i32 %55, i32* %57, align 4
  %58 = load %struct.vxlan_softc*, %struct.vxlan_softc** %3, align 8
  %59 = getelementptr inbounds %struct.vxlan_softc, %struct.vxlan_softc* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @VXLAN_FLAG_LEARN, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  %64 = zext i1 %63 to i32
  %65 = load %struct.ifvxlancfg*, %struct.ifvxlancfg** %6, align 8
  %66 = getelementptr inbounds %struct.ifvxlancfg, %struct.ifvxlancfg* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 4
  %67 = load %struct.vxlan_softc*, %struct.vxlan_softc** %3, align 8
  %68 = getelementptr inbounds %struct.vxlan_softc, %struct.vxlan_softc* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.ifvxlancfg*, %struct.ifvxlancfg** %6, align 8
  %71 = getelementptr inbounds %struct.ifvxlancfg, %struct.ifvxlancfg* %70, i32 0, i32 3
  store i32 %69, i32* %71, align 4
  %72 = load %struct.vxlan_softc*, %struct.vxlan_softc** %3, align 8
  %73 = call i32 @VXLAN_RUNLOCK(%struct.vxlan_softc* %72, %struct.rm_priotracker* %5)
  ret i32 0
}

declare dso_local i32 @bzero(%struct.ifvxlancfg*, i32) #1

declare dso_local i32 @VXLAN_RLOCK(%struct.vxlan_softc*, %struct.rm_priotracker*) #1

declare dso_local i32 @memcpy(%struct.TYPE_3__*, i32*, i32) #1

declare dso_local i32 @VXLAN_RUNLOCK(%struct.vxlan_softc*, %struct.rm_priotracker*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
