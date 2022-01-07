; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sfxge/extr_sfxge_port.c_sfxge_mac_multicast_list_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sfxge/extr_sfxge_port.c_sfxge_mac_multicast_list_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sfxge_softc = type { i32, i32, %struct.sfxge_port, %struct.ifnet* }
%struct.sfxge_port = type { i64, i32, i32 }
%struct.ifnet = type { i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@sfxge_copy_maddr = common dso_local global i32 0, align 4
@EFX_MAC_MULTICAST_LIST_MAX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"Too many multicast addresses\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Cannot set multicast address list\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sfxge_softc*)* @sfxge_mac_multicast_list_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sfxge_mac_multicast_list_set(%struct.sfxge_softc* %0) #0 {
  %2 = alloca %struct.sfxge_softc*, align 8
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca %struct.sfxge_port*, align 8
  %5 = alloca i32, align 4
  store %struct.sfxge_softc* %0, %struct.sfxge_softc** %2, align 8
  %6 = load %struct.sfxge_softc*, %struct.sfxge_softc** %2, align 8
  %7 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %6, i32 0, i32 3
  %8 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  store %struct.ifnet* %8, %struct.ifnet** %3, align 8
  %9 = load %struct.sfxge_softc*, %struct.sfxge_softc** %2, align 8
  %10 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %9, i32 0, i32 2
  store %struct.sfxge_port* %10, %struct.sfxge_port** %4, align 8
  store i32 0, i32* %5, align 4
  %11 = load %struct.sfxge_port*, %struct.sfxge_port** %4, align 8
  %12 = getelementptr inbounds %struct.sfxge_port, %struct.sfxge_port* %11, i32 0, i32 2
  %13 = load i32, i32* @MA_OWNED, align 4
  %14 = call i32 @mtx_assert(i32* %12, i32 %13)
  %15 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %16 = load i32, i32* @sfxge_copy_maddr, align 4
  %17 = load %struct.sfxge_port*, %struct.sfxge_port** %4, align 8
  %18 = getelementptr inbounds %struct.sfxge_port, %struct.sfxge_port* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call i64 @if_foreach_llmaddr(%struct.ifnet* %15, i32 %16, i32 %19)
  %21 = load %struct.sfxge_port*, %struct.sfxge_port** %4, align 8
  %22 = getelementptr inbounds %struct.sfxge_port, %struct.sfxge_port* %21, i32 0, i32 0
  store i64 %20, i64* %22, align 8
  %23 = load %struct.sfxge_port*, %struct.sfxge_port** %4, align 8
  %24 = getelementptr inbounds %struct.sfxge_port, %struct.sfxge_port* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @EFX_MAC_MULTICAST_LIST_MAX, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %34

28:                                               ; preds = %1
  %29 = load %struct.sfxge_softc*, %struct.sfxge_softc** %2, align 8
  %30 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @device_printf(i32 %31, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* @EINVAL, align 4
  store i32 %33, i32* %5, align 4
  br label %34

34:                                               ; preds = %28, %1
  %35 = load i32, i32* %5, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %56

37:                                               ; preds = %34
  %38 = load %struct.sfxge_softc*, %struct.sfxge_softc** %2, align 8
  %39 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.sfxge_port*, %struct.sfxge_port** %4, align 8
  %42 = getelementptr inbounds %struct.sfxge_port, %struct.sfxge_port* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.sfxge_port*, %struct.sfxge_port** %4, align 8
  %45 = getelementptr inbounds %struct.sfxge_port, %struct.sfxge_port* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = call i32 @efx_mac_multicast_list_set(i32 %40, i32 %43, i64 %46)
  store i32 %47, i32* %5, align 4
  %48 = load i32, i32* %5, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %37
  %51 = load %struct.sfxge_softc*, %struct.sfxge_softc** %2, align 8
  %52 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @device_printf(i32 %53, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %55

55:                                               ; preds = %50, %37
  br label %56

56:                                               ; preds = %55, %34
  %57 = load i32, i32* %5, align 4
  ret i32 %57
}

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local i64 @if_foreach_llmaddr(%struct.ifnet*, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @efx_mac_multicast_list_set(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
