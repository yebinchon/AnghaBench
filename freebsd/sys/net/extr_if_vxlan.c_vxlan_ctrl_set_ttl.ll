; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_if_vxlan.c_vxlan_ctrl_set_ttl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_if_vxlan.c_vxlan_ctrl_set_ttl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vxlan_softc = type { i32, %struct.TYPE_3__*, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.ifvxlancmd = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vxlan_softc*, i8*)* @vxlan_ctrl_set_ttl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vxlan_ctrl_set_ttl(%struct.vxlan_softc* %0, i8* %1) #0 {
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
  %14 = call i64 @vxlan_check_ttl(i32 %13)
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %48

16:                                               ; preds = %2
  %17 = load %struct.ifvxlancmd*, %struct.ifvxlancmd** %5, align 8
  %18 = getelementptr inbounds %struct.ifvxlancmd, %struct.ifvxlancmd* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.vxlan_softc*, %struct.vxlan_softc** %3, align 8
  %21 = getelementptr inbounds %struct.vxlan_softc, %struct.vxlan_softc* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 8
  %22 = load %struct.vxlan_softc*, %struct.vxlan_softc** %3, align 8
  %23 = getelementptr inbounds %struct.vxlan_softc, %struct.vxlan_softc* %22, i32 0, i32 2
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = icmp ne %struct.TYPE_4__* %24, null
  br i1 %25, label %26, label %34

26:                                               ; preds = %16
  %27 = load %struct.vxlan_softc*, %struct.vxlan_softc** %3, align 8
  %28 = getelementptr inbounds %struct.vxlan_softc, %struct.vxlan_softc* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.vxlan_softc*, %struct.vxlan_softc** %3, align 8
  %31 = getelementptr inbounds %struct.vxlan_softc, %struct.vxlan_softc* %30, i32 0, i32 2
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  store i32 %29, i32* %33, align 4
  br label %34

34:                                               ; preds = %26, %16
  %35 = load %struct.vxlan_softc*, %struct.vxlan_softc** %3, align 8
  %36 = getelementptr inbounds %struct.vxlan_softc, %struct.vxlan_softc* %35, i32 0, i32 1
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = icmp ne %struct.TYPE_3__* %37, null
  br i1 %38, label %39, label %47

39:                                               ; preds = %34
  %40 = load %struct.vxlan_softc*, %struct.vxlan_softc** %3, align 8
  %41 = getelementptr inbounds %struct.vxlan_softc, %struct.vxlan_softc* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.vxlan_softc*, %struct.vxlan_softc** %3, align 8
  %44 = getelementptr inbounds %struct.vxlan_softc, %struct.vxlan_softc* %43, i32 0, i32 1
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  store i32 %42, i32* %46, align 4
  br label %47

47:                                               ; preds = %39, %34
  store i32 0, i32* %6, align 4
  br label %50

48:                                               ; preds = %2
  %49 = load i32, i32* @EINVAL, align 4
  store i32 %49, i32* %6, align 4
  br label %50

50:                                               ; preds = %48, %47
  %51 = load %struct.vxlan_softc*, %struct.vxlan_softc** %3, align 8
  %52 = call i32 @VXLAN_WUNLOCK(%struct.vxlan_softc* %51)
  %53 = load i32, i32* %6, align 4
  ret i32 %53
}

declare dso_local i32 @VXLAN_WLOCK(%struct.vxlan_softc*) #1

declare dso_local i64 @vxlan_check_ttl(i32) #1

declare dso_local i32 @VXLAN_WUNLOCK(%struct.vxlan_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
