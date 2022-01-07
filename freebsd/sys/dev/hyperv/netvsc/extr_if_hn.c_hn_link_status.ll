; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hyperv/netvsc/extr_if_hn.c_hn_link_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hyperv/netvsc/extr_if_hn.c_hn_link_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hn_softc = type { i32, i32 }

@NDIS_MEDIA_STATE_CONNECTED = common dso_local global i64 0, align 8
@HN_LINK_FLAG_LINKUP = common dso_local global i32 0, align 4
@LINK_STATE_UP = common dso_local global i32 0, align 4
@LINK_STATE_DOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hn_softc*)* @hn_link_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hn_link_status(%struct.hn_softc* %0) #0 {
  %2 = alloca %struct.hn_softc*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store %struct.hn_softc* %0, %struct.hn_softc** %2, align 8
  %5 = load %struct.hn_softc*, %struct.hn_softc** %2, align 8
  %6 = call i32 @hn_rndis_get_linkstatus(%struct.hn_softc* %5, i64* %3)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %44

10:                                               ; preds = %1
  %11 = load i64, i64* %3, align 8
  %12 = load i64, i64* @NDIS_MEDIA_STATE_CONNECTED, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %20

14:                                               ; preds = %10
  %15 = load i32, i32* @HN_LINK_FLAG_LINKUP, align 4
  %16 = load %struct.hn_softc*, %struct.hn_softc** %2, align 8
  %17 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = or i32 %18, %15
  store i32 %19, i32* %17, align 4
  br label %27

20:                                               ; preds = %10
  %21 = load i32, i32* @HN_LINK_FLAG_LINKUP, align 4
  %22 = xor i32 %21, -1
  %23 = load %struct.hn_softc*, %struct.hn_softc** %2, align 8
  %24 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = and i32 %25, %22
  store i32 %26, i32* %24, align 4
  br label %27

27:                                               ; preds = %20, %14
  %28 = load %struct.hn_softc*, %struct.hn_softc** %2, align 8
  %29 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.hn_softc*, %struct.hn_softc** %2, align 8
  %32 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @HN_LINK_FLAG_LINKUP, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %27
  %38 = load i32, i32* @LINK_STATE_UP, align 4
  br label %41

39:                                               ; preds = %27
  %40 = load i32, i32* @LINK_STATE_DOWN, align 4
  br label %41

41:                                               ; preds = %39, %37
  %42 = phi i32 [ %38, %37 ], [ %40, %39 ]
  %43 = call i32 @if_link_state_change(i32 %30, i32 %42)
  br label %44

44:                                               ; preds = %41, %9
  ret void
}

declare dso_local i32 @hn_rndis_get_linkstatus(%struct.hn_softc*, i64*) #1

declare dso_local i32 @if_link_state_change(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
