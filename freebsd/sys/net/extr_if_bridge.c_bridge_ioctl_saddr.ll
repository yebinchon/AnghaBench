; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_if_bridge.c_bridge_ioctl_saddr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_if_bridge.c_bridge_ioctl_saddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bridge_softc = type { i32 }
%struct.ifbareq = type { i32, i32, i32, i32 }
%struct.bridge_iflist = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bridge_softc*, i8*)* @bridge_ioctl_saddr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bridge_ioctl_saddr(%struct.bridge_softc* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bridge_softc*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ifbareq*, align 8
  %7 = alloca %struct.bridge_iflist*, align 8
  %8 = alloca i32, align 4
  store %struct.bridge_softc* %0, %struct.bridge_softc** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.ifbareq*
  store %struct.ifbareq* %10, %struct.ifbareq** %6, align 8
  %11 = load %struct.bridge_softc*, %struct.bridge_softc** %4, align 8
  %12 = load %struct.ifbareq*, %struct.ifbareq** %6, align 8
  %13 = getelementptr inbounds %struct.ifbareq, %struct.ifbareq* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.bridge_iflist* @bridge_lookup_member(%struct.bridge_softc* %11, i32 %14)
  store %struct.bridge_iflist* %15, %struct.bridge_iflist** %7, align 8
  %16 = load %struct.bridge_iflist*, %struct.bridge_iflist** %7, align 8
  %17 = icmp eq %struct.bridge_iflist* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* @ENOENT, align 4
  store i32 %19, i32* %3, align 4
  br label %34

20:                                               ; preds = %2
  %21 = load %struct.bridge_softc*, %struct.bridge_softc** %4, align 8
  %22 = load %struct.ifbareq*, %struct.ifbareq** %6, align 8
  %23 = getelementptr inbounds %struct.ifbareq, %struct.ifbareq* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.ifbareq*, %struct.ifbareq** %6, align 8
  %26 = getelementptr inbounds %struct.ifbareq, %struct.ifbareq* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.bridge_iflist*, %struct.bridge_iflist** %7, align 8
  %29 = load %struct.ifbareq*, %struct.ifbareq** %6, align 8
  %30 = getelementptr inbounds %struct.ifbareq, %struct.ifbareq* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @bridge_rtupdate(%struct.bridge_softc* %21, i32 %24, i32 %27, %struct.bridge_iflist* %28, i32 1, i32 %31)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  store i32 %33, i32* %3, align 4
  br label %34

34:                                               ; preds = %20, %18
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local %struct.bridge_iflist* @bridge_lookup_member(%struct.bridge_softc*, i32) #1

declare dso_local i32 @bridge_rtupdate(%struct.bridge_softc*, i32, i32, %struct.bridge_iflist*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
