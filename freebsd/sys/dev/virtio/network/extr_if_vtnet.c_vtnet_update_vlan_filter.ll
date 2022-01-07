; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/virtio/network/extr_if_vtnet.c_vtnet_update_vlan_filter.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/virtio/network/extr_if_vtnet.c_vtnet_update_vlan_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vtnet_softc = type { i32*, i32, %struct.ifnet* }
%struct.ifnet = type { i32, i32 }

@IFCAP_VLAN_HWFILTER = common dso_local global i32 0, align 4
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"cannot %s VLAN %d %s the host filter table\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"add\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"remove\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"to\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"from\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vtnet_softc*, i32, i32)* @vtnet_update_vlan_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vtnet_update_vlan_filter(%struct.vtnet_softc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.vtnet_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ifnet*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.vtnet_softc* %0, %struct.vtnet_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.vtnet_softc*, %struct.vtnet_softc** %4, align 8
  %11 = getelementptr inbounds %struct.vtnet_softc, %struct.vtnet_softc* %10, i32 0, i32 2
  %12 = load %struct.ifnet*, %struct.ifnet** %11, align 8
  store %struct.ifnet* %12, %struct.ifnet** %7, align 8
  %13 = load i32, i32* %6, align 4
  %14 = ashr i32 %13, 5
  %15 = and i32 %14, 127
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %6, align 4
  %17 = and i32 %16, 31
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %3
  %21 = load i32, i32* %6, align 4
  %22 = icmp sgt i32 %21, 4095
  br i1 %22, label %23, label %24

23:                                               ; preds = %20, %3
  br label %89

24:                                               ; preds = %20
  %25 = load %struct.vtnet_softc*, %struct.vtnet_softc** %4, align 8
  %26 = call i32 @VTNET_CORE_LOCK(%struct.vtnet_softc* %25)
  %27 = load i32, i32* %5, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %40

29:                                               ; preds = %24
  %30 = load i32, i32* %9, align 4
  %31 = shl i32 1, %30
  %32 = load %struct.vtnet_softc*, %struct.vtnet_softc** %4, align 8
  %33 = getelementptr inbounds %struct.vtnet_softc, %struct.vtnet_softc* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %8, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = or i32 %38, %31
  store i32 %39, i32* %37, align 4
  br label %52

40:                                               ; preds = %24
  %41 = load i32, i32* %9, align 4
  %42 = shl i32 1, %41
  %43 = xor i32 %42, -1
  %44 = load %struct.vtnet_softc*, %struct.vtnet_softc** %4, align 8
  %45 = getelementptr inbounds %struct.vtnet_softc, %struct.vtnet_softc* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %8, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = and i32 %50, %43
  store i32 %51, i32* %49, align 4
  br label %52

52:                                               ; preds = %40, %29
  %53 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %54 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @IFCAP_VLAN_HWFILTER, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %86

59:                                               ; preds = %52
  %60 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %61 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %86

66:                                               ; preds = %59
  %67 = load %struct.vtnet_softc*, %struct.vtnet_softc** %4, align 8
  %68 = load i32, i32* %5, align 4
  %69 = load i32, i32* %6, align 4
  %70 = call i64 @vtnet_exec_vlan_filter(%struct.vtnet_softc* %67, i32 %68, i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %86

72:                                               ; preds = %66
  %73 = load %struct.vtnet_softc*, %struct.vtnet_softc** %4, align 8
  %74 = getelementptr inbounds %struct.vtnet_softc, %struct.vtnet_softc* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* %5, align 4
  %77 = icmp ne i32 %76, 0
  %78 = zext i1 %77 to i64
  %79 = select i1 %77, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0)
  %80 = load i32, i32* %6, align 4
  %81 = load i32, i32* %5, align 4
  %82 = icmp ne i32 %81, 0
  %83 = zext i1 %82 to i64
  %84 = select i1 %82, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0)
  %85 = call i32 @device_printf(i32 %75, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i8* %79, i32 %80, i8* %84)
  br label %86

86:                                               ; preds = %72, %66, %59, %52
  %87 = load %struct.vtnet_softc*, %struct.vtnet_softc** %4, align 8
  %88 = call i32 @VTNET_CORE_UNLOCK(%struct.vtnet_softc* %87)
  br label %89

89:                                               ; preds = %86, %23
  ret void
}

declare dso_local i32 @VTNET_CORE_LOCK(%struct.vtnet_softc*) #1

declare dso_local i64 @vtnet_exec_vlan_filter(%struct.vtnet_softc*, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i8*, i32, i8*) #1

declare dso_local i32 @VTNET_CORE_UNLOCK(%struct.vtnet_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
