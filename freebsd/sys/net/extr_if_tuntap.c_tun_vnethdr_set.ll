; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_if_tuntap.c_tun_vnethdr_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_if_tuntap.c_tun_vnethdr_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32, i32, %struct.tuntap_softc* }
%struct.tuntap_softc = type { i32 }

@TAP_VNET_HDR_CAPS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"vnet_hdr_len=%d, if_capabilities=%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ifnet*, i32)* @tun_vnethdr_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tun_vnethdr_set(%struct.ifnet* %0, i32 %1) #0 {
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.tuntap_softc*, align 8
  store %struct.ifnet* %0, %struct.ifnet** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %7 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %6, i32 0, i32 2
  %8 = load %struct.tuntap_softc*, %struct.tuntap_softc** %7, align 8
  store %struct.tuntap_softc* %8, %struct.tuntap_softc** %5, align 8
  %9 = load %struct.tuntap_softc*, %struct.tuntap_softc** %5, align 8
  %10 = call i32 @TUN_LOCK_ASSERT(%struct.tuntap_softc* %9)
  %11 = load %struct.tuntap_softc*, %struct.tuntap_softc** %5, align 8
  %12 = getelementptr inbounds %struct.tuntap_softc, %struct.tuntap_softc* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  br label %52

17:                                               ; preds = %2
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %17
  %21 = load i32, i32* @TAP_VNET_HDR_CAPS, align 4
  %22 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %23 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = or i32 %24, %21
  store i32 %25, i32* %23, align 8
  br label %33

26:                                               ; preds = %17
  %27 = load i32, i32* @TAP_VNET_HDR_CAPS, align 4
  %28 = xor i32 %27, -1
  %29 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %30 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = and i32 %31, %28
  store i32 %32, i32* %30, align 8
  br label %33

33:                                               ; preds = %26, %20
  %34 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %35 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %38 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = and i32 %39, %36
  store i32 %40, i32* %38, align 4
  %41 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %42 = call i32 @tun_caps_changed(%struct.ifnet* %41)
  %43 = load i32, i32* %4, align 4
  %44 = load %struct.tuntap_softc*, %struct.tuntap_softc** %5, align 8
  %45 = getelementptr inbounds %struct.tuntap_softc, %struct.tuntap_softc* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 4
  %46 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %47 = load i32, i32* %4, align 4
  %48 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %49 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @TUNDEBUG(%struct.ifnet* %46, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %47, i32 %50)
  br label %52

52:                                               ; preds = %33, %16
  ret void
}

declare dso_local i32 @TUN_LOCK_ASSERT(%struct.tuntap_softc*) #1

declare dso_local i32 @tun_caps_changed(%struct.ifnet*) #1

declare dso_local i32 @TUNDEBUG(%struct.ifnet*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
