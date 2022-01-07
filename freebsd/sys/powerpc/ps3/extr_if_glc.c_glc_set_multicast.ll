; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/ps3/extr_if_glc.c_glc_set_multicast.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/ps3/extr_if_glc.c_glc_set_multicast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.glc_softc = type { i32, i32, %struct.ifnet* }
%struct.ifnet = type { i32 }

@IFF_ALLMULTI = common dso_local global i32 0, align 4
@glc_add_maddr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.glc_softc*)* @glc_set_multicast to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @glc_set_multicast(%struct.glc_softc* %0) #0 {
  %2 = alloca %struct.glc_softc*, align 8
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca i32, align 4
  store %struct.glc_softc* %0, %struct.glc_softc** %2, align 8
  %5 = load %struct.glc_softc*, %struct.glc_softc** %2, align 8
  %6 = getelementptr inbounds %struct.glc_softc, %struct.glc_softc* %5, i32 0, i32 2
  %7 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  store %struct.ifnet* %7, %struct.ifnet** %3, align 8
  %8 = load %struct.glc_softc*, %struct.glc_softc** %2, align 8
  %9 = getelementptr inbounds %struct.glc_softc, %struct.glc_softc* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.glc_softc*, %struct.glc_softc** %2, align 8
  %12 = getelementptr inbounds %struct.glc_softc, %struct.glc_softc* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @lv1_net_remove_multicast_address(i32 %10, i32 %13, i32 0, i32 1)
  %15 = load %struct.glc_softc*, %struct.glc_softc** %2, align 8
  %16 = getelementptr inbounds %struct.glc_softc, %struct.glc_softc* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.glc_softc*, %struct.glc_softc** %2, align 8
  %19 = getelementptr inbounds %struct.glc_softc, %struct.glc_softc* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @lv1_net_add_multicast_address(i32 %17, i32 %20, i32 -1, i32 0)
  %22 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %23 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @IFF_ALLMULTI, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %1
  %29 = load %struct.glc_softc*, %struct.glc_softc** %2, align 8
  %30 = getelementptr inbounds %struct.glc_softc, %struct.glc_softc* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.glc_softc*, %struct.glc_softc** %2, align 8
  %33 = getelementptr inbounds %struct.glc_softc, %struct.glc_softc* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @lv1_net_add_multicast_address(i32 %31, i32 %34, i32 0, i32 1)
  br label %53

36:                                               ; preds = %1
  %37 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %38 = load i32, i32* @glc_add_maddr, align 4
  %39 = load %struct.glc_softc*, %struct.glc_softc** %2, align 8
  %40 = call i32 @if_foreach_llmaddr(%struct.ifnet* %37, i32 %38, %struct.glc_softc* %39)
  store i32 %40, i32* %4, align 4
  %41 = load i32, i32* %4, align 4
  %42 = add nsw i32 %41, 1
  %43 = icmp eq i32 %42, 32
  br i1 %43, label %44, label %52

44:                                               ; preds = %36
  %45 = load %struct.glc_softc*, %struct.glc_softc** %2, align 8
  %46 = getelementptr inbounds %struct.glc_softc, %struct.glc_softc* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.glc_softc*, %struct.glc_softc** %2, align 8
  %49 = getelementptr inbounds %struct.glc_softc, %struct.glc_softc* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @lv1_net_add_multicast_address(i32 %47, i32 %50, i32 0, i32 1)
  br label %52

52:                                               ; preds = %44, %36
  br label %53

53:                                               ; preds = %52, %28
  ret void
}

declare dso_local i32 @lv1_net_remove_multicast_address(i32, i32, i32, i32) #1

declare dso_local i32 @lv1_net_add_multicast_address(i32, i32, i32, i32) #1

declare dso_local i32 @if_foreach_llmaddr(%struct.ifnet*, i32, %struct.glc_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
