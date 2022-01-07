; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_if_vxlan.c_vxlan_ctrl_set_local_port.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_if_vxlan.c_vxlan_ctrl_set_local_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vxlan_softc = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.ifvxlancmd = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vxlan_softc*, i8*)* @vxlan_ctrl_set_local_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vxlan_ctrl_set_local_port(%struct.vxlan_softc* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vxlan_softc*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ifvxlancmd*, align 8
  %7 = alloca i32, align 4
  store %struct.vxlan_softc* %0, %struct.vxlan_softc** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.ifvxlancmd*
  store %struct.ifvxlancmd* %9, %struct.ifvxlancmd** %6, align 8
  %10 = load %struct.ifvxlancmd*, %struct.ifvxlancmd** %6, align 8
  %11 = getelementptr inbounds %struct.ifvxlancmd, %struct.ifvxlancmd* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* @EINVAL, align 4
  store i32 %15, i32* %3, align 4
  br label %37

16:                                               ; preds = %2
  %17 = load %struct.vxlan_softc*, %struct.vxlan_softc** %4, align 8
  %18 = call i32 @VXLAN_WLOCK(%struct.vxlan_softc* %17)
  %19 = load %struct.vxlan_softc*, %struct.vxlan_softc** %4, align 8
  %20 = call i64 @vxlan_can_change_config(%struct.vxlan_softc* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %16
  %23 = load %struct.ifvxlancmd*, %struct.ifvxlancmd** %6, align 8
  %24 = getelementptr inbounds %struct.ifvxlancmd, %struct.ifvxlancmd* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @htons(i64 %25)
  %27 = load %struct.vxlan_softc*, %struct.vxlan_softc** %4, align 8
  %28 = getelementptr inbounds %struct.vxlan_softc, %struct.vxlan_softc* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  store i32 %26, i32* %30, align 4
  store i32 0, i32* %7, align 4
  br label %33

31:                                               ; preds = %16
  %32 = load i32, i32* @EBUSY, align 4
  store i32 %32, i32* %7, align 4
  br label %33

33:                                               ; preds = %31, %22
  %34 = load %struct.vxlan_softc*, %struct.vxlan_softc** %4, align 8
  %35 = call i32 @VXLAN_WUNLOCK(%struct.vxlan_softc* %34)
  %36 = load i32, i32* %7, align 4
  store i32 %36, i32* %3, align 4
  br label %37

37:                                               ; preds = %33, %14
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i32 @VXLAN_WLOCK(%struct.vxlan_softc*) #1

declare dso_local i64 @vxlan_can_change_config(%struct.vxlan_softc*) #1

declare dso_local i32 @htons(i64) #1

declare dso_local i32 @VXLAN_WUNLOCK(%struct.vxlan_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
