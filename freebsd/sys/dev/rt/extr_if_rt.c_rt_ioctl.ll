; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/rt/extr_if_rt.c_rt_ioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/rt/extr_if_rt.c_rt_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32, i32, %struct.rt_softc* }
%struct.rt_softc = type { i32, i32, i32 }
%struct.ifreq = type { i32 }

@IFF_UP = common dso_local global i32 0, align 4
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@IFF_PROMISC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifnet*, i32, i64)* @rt_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt_ioctl(%struct.ifnet* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.rt_softc*, align 8
  %8 = alloca %struct.ifreq*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ifnet* %0, %struct.ifnet** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %11 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %12 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %11, i32 0, i32 2
  %13 = load %struct.rt_softc*, %struct.rt_softc** %12, align 8
  store %struct.rt_softc* %13, %struct.rt_softc** %7, align 8
  %14 = load i64, i64* %6, align 8
  %15 = inttoptr i64 %14 to %struct.ifreq*
  store %struct.ifreq* %15, %struct.ifreq** %8, align 8
  store i32 0, i32* %9, align 4
  %16 = load i32, i32* %5, align 4
  switch i32 %16, label %78 [
    i32 129, label %17
    i32 130, label %71
    i32 128, label %71
  ]

17:                                               ; preds = %3
  store i32 0, i32* %10, align 4
  %18 = load %struct.rt_softc*, %struct.rt_softc** %7, align 8
  %19 = call i32 @RT_SOFTC_LOCK(%struct.rt_softc* %18)
  %20 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %21 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @IFF_UP, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %52

26:                                               ; preds = %17
  %27 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %28 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %48

33:                                               ; preds = %26
  %34 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %35 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.rt_softc*, %struct.rt_softc** %7, align 8
  %38 = getelementptr inbounds %struct.rt_softc, %struct.rt_softc* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = xor i32 %36, %39
  %41 = load i32, i32* @IFF_PROMISC, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %33
  %45 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %46 = call i32 @rt_update_promisc(%struct.ifnet* %45)
  br label %47

47:                                               ; preds = %44, %33
  br label %51

48:                                               ; preds = %26
  %49 = load %struct.rt_softc*, %struct.rt_softc** %7, align 8
  %50 = call i32 @rt_init_locked(%struct.rt_softc* %49)
  store i32 1, i32* %10, align 4
  br label %51

51:                                               ; preds = %48, %47
  br label %63

52:                                               ; preds = %17
  %53 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %54 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %52
  %60 = load %struct.rt_softc*, %struct.rt_softc** %7, align 8
  %61 = call i32 @rt_stop_locked(%struct.rt_softc* %60)
  br label %62

62:                                               ; preds = %59, %52
  br label %63

63:                                               ; preds = %62, %51
  %64 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %65 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.rt_softc*, %struct.rt_softc** %7, align 8
  %68 = getelementptr inbounds %struct.rt_softc, %struct.rt_softc* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 4
  %69 = load %struct.rt_softc*, %struct.rt_softc** %7, align 8
  %70 = call i32 @RT_SOFTC_UNLOCK(%struct.rt_softc* %69)
  br label %83

71:                                               ; preds = %3, %3
  %72 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %73 = load %struct.ifreq*, %struct.ifreq** %8, align 8
  %74 = load %struct.rt_softc*, %struct.rt_softc** %7, align 8
  %75 = getelementptr inbounds %struct.rt_softc, %struct.rt_softc* %74, i32 0, i32 1
  %76 = load i32, i32* %5, align 4
  %77 = call i32 @ifmedia_ioctl(%struct.ifnet* %72, %struct.ifreq* %73, i32* %75, i32 %76)
  store i32 %77, i32* %9, align 4
  br label %83

78:                                               ; preds = %3
  %79 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %80 = load i32, i32* %5, align 4
  %81 = load i64, i64* %6, align 8
  %82 = call i32 @ether_ioctl(%struct.ifnet* %79, i32 %80, i64 %81)
  store i32 %82, i32* %9, align 4
  br label %83

83:                                               ; preds = %78, %71, %63
  %84 = load i32, i32* %9, align 4
  ret i32 %84
}

declare dso_local i32 @RT_SOFTC_LOCK(%struct.rt_softc*) #1

declare dso_local i32 @rt_update_promisc(%struct.ifnet*) #1

declare dso_local i32 @rt_init_locked(%struct.rt_softc*) #1

declare dso_local i32 @rt_stop_locked(%struct.rt_softc*) #1

declare dso_local i32 @RT_SOFTC_UNLOCK(%struct.rt_softc*) #1

declare dso_local i32 @ifmedia_ioctl(%struct.ifnet*, %struct.ifreq*, i32*, i32) #1

declare dso_local i32 @ether_ioctl(%struct.ifnet*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
