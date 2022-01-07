; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_if_vxlan.c_vxlan_set_default_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_if_vxlan.c_vxlan_set_default_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vxlan_softc = type { i32, i32, i32, i32, %struct.TYPE_8__, %struct.TYPE_6__, i32, i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i8* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i8* }

@VXLAN_FLAG_LEARN = common dso_local global i32 0, align 4
@VXLAN_VNI_MAX = common dso_local global i32 0, align 4
@IPDEFTTL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"legacy_port\00", align 1
@vxlan_legacy_port = common dso_local global i32 0, align 4
@VXLAN_PORT = common dso_local global i32 0, align 4
@VXLAN_LEGACY_PORT = common dso_local global i32 0, align 4
@V_ipport_firstauto = common dso_local global i32 0, align 4
@V_ipport_lastauto = common dso_local global i32 0, align 4
@VXLAN_FTABLE_MAX = common dso_local global i32 0, align 4
@VXLAN_FTABLE_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vxlan_softc*)* @vxlan_set_default_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vxlan_set_default_config(%struct.vxlan_softc* %0) #0 {
  %2 = alloca %struct.vxlan_softc*, align 8
  store %struct.vxlan_softc* %0, %struct.vxlan_softc** %2, align 8
  %3 = load i32, i32* @VXLAN_FLAG_LEARN, align 4
  %4 = load %struct.vxlan_softc*, %struct.vxlan_softc** %2, align 8
  %5 = getelementptr inbounds %struct.vxlan_softc, %struct.vxlan_softc* %4, i32 0, i32 8
  %6 = load i32, i32* %5, align 8
  %7 = or i32 %6, %3
  store i32 %7, i32* %5, align 8
  %8 = load i32, i32* @VXLAN_VNI_MAX, align 4
  %9 = load %struct.vxlan_softc*, %struct.vxlan_softc** %2, align 8
  %10 = getelementptr inbounds %struct.vxlan_softc, %struct.vxlan_softc* %9, i32 0, i32 7
  store i32 %8, i32* %10, align 4
  %11 = load i32, i32* @IPDEFTTL, align 4
  %12 = load %struct.vxlan_softc*, %struct.vxlan_softc** %2, align 8
  %13 = getelementptr inbounds %struct.vxlan_softc, %struct.vxlan_softc* %12, i32 0, i32 6
  store i32 %11, i32* %13, align 8
  %14 = load %struct.vxlan_softc*, %struct.vxlan_softc** %2, align 8
  %15 = load i32, i32* @vxlan_legacy_port, align 4
  %16 = call i32 @vxlan_tunable_int(%struct.vxlan_softc* %14, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %31, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* @VXLAN_PORT, align 4
  %20 = call i8* @htons(i32 %19)
  %21 = load %struct.vxlan_softc*, %struct.vxlan_softc** %2, align 8
  %22 = getelementptr inbounds %struct.vxlan_softc, %struct.vxlan_softc* %21, i32 0, i32 5
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  store i8* %20, i8** %24, align 8
  %25 = load i32, i32* @VXLAN_PORT, align 4
  %26 = call i8* @htons(i32 %25)
  %27 = load %struct.vxlan_softc*, %struct.vxlan_softc** %2, align 8
  %28 = getelementptr inbounds %struct.vxlan_softc, %struct.vxlan_softc* %27, i32 0, i32 4
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  store i8* %26, i8** %30, align 8
  br label %44

31:                                               ; preds = %1
  %32 = load i32, i32* @VXLAN_LEGACY_PORT, align 4
  %33 = call i8* @htons(i32 %32)
  %34 = load %struct.vxlan_softc*, %struct.vxlan_softc** %2, align 8
  %35 = getelementptr inbounds %struct.vxlan_softc, %struct.vxlan_softc* %34, i32 0, i32 5
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  store i8* %33, i8** %37, align 8
  %38 = load i32, i32* @VXLAN_LEGACY_PORT, align 4
  %39 = call i8* @htons(i32 %38)
  %40 = load %struct.vxlan_softc*, %struct.vxlan_softc** %2, align 8
  %41 = getelementptr inbounds %struct.vxlan_softc, %struct.vxlan_softc* %40, i32 0, i32 4
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  store i8* %39, i8** %43, align 8
  br label %44

44:                                               ; preds = %31, %18
  %45 = load i32, i32* @V_ipport_firstauto, align 4
  %46 = load %struct.vxlan_softc*, %struct.vxlan_softc** %2, align 8
  %47 = getelementptr inbounds %struct.vxlan_softc, %struct.vxlan_softc* %46, i32 0, i32 3
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* @V_ipport_lastauto, align 4
  %49 = load %struct.vxlan_softc*, %struct.vxlan_softc** %2, align 8
  %50 = getelementptr inbounds %struct.vxlan_softc, %struct.vxlan_softc* %49, i32 0, i32 2
  store i32 %48, i32* %50, align 8
  %51 = load i32, i32* @VXLAN_FTABLE_MAX, align 4
  %52 = load %struct.vxlan_softc*, %struct.vxlan_softc** %2, align 8
  %53 = getelementptr inbounds %struct.vxlan_softc, %struct.vxlan_softc* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  %54 = load i32, i32* @VXLAN_FTABLE_TIMEOUT, align 4
  %55 = load %struct.vxlan_softc*, %struct.vxlan_softc** %2, align 8
  %56 = getelementptr inbounds %struct.vxlan_softc, %struct.vxlan_softc* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 8
  ret void
}

declare dso_local i32 @vxlan_tunable_int(%struct.vxlan_softc*, i8*, i32) #1

declare dso_local i8* @htons(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
