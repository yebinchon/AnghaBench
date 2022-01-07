; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_if_vxlan.c_vxlan_teardown_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_if_vxlan.c_vxlan_teardown_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vxlan_softc = type { i32, i32, i64, i32, i32, %struct.vxlan_socket*, %struct.ifnet* }
%struct.vxlan_socket = type { i32 }
%struct.ifnet = type { i32, i32 }

@VXLAN_FLAG_TEARDOWN = common dso_local global i32 0, align 4
@IFF_UP = common dso_local global i32 0, align 4
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@LINK_STATE_DOWN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"vxldrn\00", align 1
@hz = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vxlan_softc*)* @vxlan_teardown_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vxlan_teardown_locked(%struct.vxlan_softc* %0) #0 {
  %2 = alloca %struct.vxlan_softc*, align 8
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca %struct.vxlan_socket*, align 8
  store %struct.vxlan_softc* %0, %struct.vxlan_softc** %2, align 8
  %5 = load %struct.vxlan_softc*, %struct.vxlan_softc** %2, align 8
  %6 = getelementptr inbounds %struct.vxlan_softc, %struct.vxlan_softc* %5, i32 0, i32 6
  %7 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  store %struct.ifnet* %7, %struct.ifnet** %3, align 8
  %8 = load %struct.vxlan_softc*, %struct.vxlan_softc** %2, align 8
  %9 = call i32 @VXLAN_LOCK_WASSERT(%struct.vxlan_softc* %8)
  %10 = load %struct.vxlan_softc*, %struct.vxlan_softc** %2, align 8
  %11 = getelementptr inbounds %struct.vxlan_softc, %struct.vxlan_softc* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @VXLAN_FLAG_TEARDOWN, align 4
  %14 = and i32 %12, %13
  %15 = call i32 @MPASS(i32 %14)
  %16 = load i32, i32* @IFF_UP, align 4
  %17 = xor i32 %16, -1
  %18 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %19 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = and i32 %20, %17
  store i32 %21, i32* %19, align 4
  %22 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %23 = xor i32 %22, -1
  %24 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %25 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = and i32 %26, %23
  store i32 %27, i32* %25, align 4
  %28 = load %struct.vxlan_softc*, %struct.vxlan_softc** %2, align 8
  %29 = getelementptr inbounds %struct.vxlan_softc, %struct.vxlan_softc* %28, i32 0, i32 3
  %30 = call i32 @callout_stop(i32* %29)
  %31 = load %struct.vxlan_softc*, %struct.vxlan_softc** %2, align 8
  %32 = getelementptr inbounds %struct.vxlan_softc, %struct.vxlan_softc* %31, i32 0, i32 5
  %33 = load %struct.vxlan_socket*, %struct.vxlan_socket** %32, align 8
  store %struct.vxlan_socket* %33, %struct.vxlan_socket** %4, align 8
  %34 = load %struct.vxlan_softc*, %struct.vxlan_softc** %2, align 8
  %35 = getelementptr inbounds %struct.vxlan_softc, %struct.vxlan_softc* %34, i32 0, i32 5
  store %struct.vxlan_socket* null, %struct.vxlan_socket** %35, align 8
  %36 = load %struct.vxlan_softc*, %struct.vxlan_softc** %2, align 8
  %37 = call i32 @VXLAN_WUNLOCK(%struct.vxlan_softc* %36)
  %38 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %39 = load i32, i32* @LINK_STATE_DOWN, align 4
  %40 = call i32 @if_link_state_change(%struct.ifnet* %38, i32 %39)
  %41 = load %struct.vxlan_socket*, %struct.vxlan_socket** %4, align 8
  %42 = icmp ne %struct.vxlan_socket* %41, null
  br i1 %42, label %43, label %60

43:                                               ; preds = %1
  %44 = load %struct.vxlan_socket*, %struct.vxlan_socket** %4, align 8
  %45 = load %struct.vxlan_softc*, %struct.vxlan_softc** %2, align 8
  %46 = call i32 @vxlan_socket_remove_softc(%struct.vxlan_socket* %44, %struct.vxlan_softc* %45)
  %47 = load %struct.vxlan_softc*, %struct.vxlan_softc** %2, align 8
  %48 = getelementptr inbounds %struct.vxlan_softc, %struct.vxlan_softc* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, -1
  br i1 %50, label %51, label %59

51:                                               ; preds = %43
  %52 = load %struct.vxlan_socket*, %struct.vxlan_socket** %4, align 8
  %53 = load %struct.vxlan_softc*, %struct.vxlan_softc** %2, align 8
  %54 = getelementptr inbounds %struct.vxlan_softc, %struct.vxlan_softc* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @vxlan_socket_mc_release_group_by_idx(%struct.vxlan_socket* %52, i32 %55)
  %57 = load %struct.vxlan_softc*, %struct.vxlan_softc** %2, align 8
  %58 = getelementptr inbounds %struct.vxlan_softc, %struct.vxlan_softc* %57, i32 0, i32 1
  store i32 -1, i32* %58, align 4
  br label %59

59:                                               ; preds = %51, %43
  br label %60

60:                                               ; preds = %59, %1
  %61 = load %struct.vxlan_softc*, %struct.vxlan_softc** %2, align 8
  %62 = call i32 @VXLAN_WLOCK(%struct.vxlan_softc* %61)
  br label %63

63:                                               ; preds = %68, %60
  %64 = load %struct.vxlan_softc*, %struct.vxlan_softc** %2, align 8
  %65 = getelementptr inbounds %struct.vxlan_softc, %struct.vxlan_softc* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %63
  %69 = load %struct.vxlan_softc*, %struct.vxlan_softc** %2, align 8
  %70 = load %struct.vxlan_softc*, %struct.vxlan_softc** %2, align 8
  %71 = getelementptr inbounds %struct.vxlan_softc, %struct.vxlan_softc* %70, i32 0, i32 4
  %72 = load i32, i32* @hz, align 4
  %73 = call i32 @rm_sleep(%struct.vxlan_softc* %69, i32* %71, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %72)
  br label %63

74:                                               ; preds = %63
  %75 = load %struct.vxlan_softc*, %struct.vxlan_softc** %2, align 8
  %76 = call i32 @VXLAN_WUNLOCK(%struct.vxlan_softc* %75)
  %77 = load %struct.vxlan_softc*, %struct.vxlan_softc** %2, align 8
  %78 = getelementptr inbounds %struct.vxlan_softc, %struct.vxlan_softc* %77, i32 0, i32 3
  %79 = call i32 @callout_drain(i32* %78)
  %80 = load %struct.vxlan_softc*, %struct.vxlan_softc** %2, align 8
  %81 = call i32 @vxlan_free_multicast(%struct.vxlan_softc* %80)
  %82 = load %struct.vxlan_socket*, %struct.vxlan_socket** %4, align 8
  %83 = icmp ne %struct.vxlan_socket* %82, null
  br i1 %83, label %84, label %87

84:                                               ; preds = %74
  %85 = load %struct.vxlan_socket*, %struct.vxlan_socket** %4, align 8
  %86 = call i32 @vxlan_socket_release(%struct.vxlan_socket* %85)
  br label %87

87:                                               ; preds = %84, %74
  %88 = load %struct.vxlan_softc*, %struct.vxlan_softc** %2, align 8
  %89 = call i32 @vxlan_teardown_complete(%struct.vxlan_softc* %88)
  ret void
}

declare dso_local i32 @VXLAN_LOCK_WASSERT(%struct.vxlan_softc*) #1

declare dso_local i32 @MPASS(i32) #1

declare dso_local i32 @callout_stop(i32*) #1

declare dso_local i32 @VXLAN_WUNLOCK(%struct.vxlan_softc*) #1

declare dso_local i32 @if_link_state_change(%struct.ifnet*, i32) #1

declare dso_local i32 @vxlan_socket_remove_softc(%struct.vxlan_socket*, %struct.vxlan_softc*) #1

declare dso_local i32 @vxlan_socket_mc_release_group_by_idx(%struct.vxlan_socket*, i32) #1

declare dso_local i32 @VXLAN_WLOCK(%struct.vxlan_softc*) #1

declare dso_local i32 @rm_sleep(%struct.vxlan_softc*, i32*, i32, i8*, i32) #1

declare dso_local i32 @callout_drain(i32*) #1

declare dso_local i32 @vxlan_free_multicast(%struct.vxlan_softc*) #1

declare dso_local i32 @vxlan_socket_release(%struct.vxlan_socket*) #1

declare dso_local i32 @vxlan_teardown_complete(%struct.vxlan_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
