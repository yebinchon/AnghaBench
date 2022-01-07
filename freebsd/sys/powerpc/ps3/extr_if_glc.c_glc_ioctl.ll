; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/ps3/extr_if_glc.c_glc_ioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/ps3/extr_if_glc.c_glc_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32, i32, %struct.glc_softc* }
%struct.glc_softc = type { i32, i32, i32 }
%struct.ifreq = type { i32 }

@IFF_UP = common dso_local global i32 0, align 4
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@IFF_ALLMULTI = common dso_local global i32 0, align 4
@IFF_PROMISC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifnet*, i32, i64)* @glc_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @glc_ioctl(%struct.ifnet* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.glc_softc*, align 8
  %8 = alloca %struct.ifreq*, align 8
  %9 = alloca i32, align 4
  store %struct.ifnet* %0, %struct.ifnet** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %10 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %11 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %10, i32 0, i32 2
  %12 = load %struct.glc_softc*, %struct.glc_softc** %11, align 8
  store %struct.glc_softc* %12, %struct.glc_softc** %7, align 8
  %13 = load i64, i64* %6, align 8
  %14 = inttoptr i64 %13 to %struct.ifreq*
  store %struct.ifreq* %14, %struct.ifreq** %8, align 8
  store i32 0, i32* %9, align 4
  %15 = load i32, i32* %5, align 4
  switch i32 %15, label %89 [
    i32 129, label %16
    i32 132, label %73
    i32 131, label %73
    i32 130, label %82
    i32 128, label %82
  ]

16:                                               ; preds = %3
  %17 = load %struct.glc_softc*, %struct.glc_softc** %7, align 8
  %18 = getelementptr inbounds %struct.glc_softc, %struct.glc_softc* %17, i32 0, i32 2
  %19 = call i32 @mtx_lock(i32* %18)
  %20 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %21 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @IFF_UP, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %53

26:                                               ; preds = %16
  %27 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %28 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %49

33:                                               ; preds = %26
  %34 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %35 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.glc_softc*, %struct.glc_softc** %7, align 8
  %38 = getelementptr inbounds %struct.glc_softc, %struct.glc_softc* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = xor i32 %36, %39
  %41 = load i32, i32* @IFF_ALLMULTI, align 4
  %42 = load i32, i32* @IFF_PROMISC, align 4
  %43 = or i32 %41, %42
  %44 = and i32 %40, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %33
  %47 = load %struct.glc_softc*, %struct.glc_softc** %7, align 8
  %48 = call i32 @glc_set_multicast(%struct.glc_softc* %47)
  br label %52

49:                                               ; preds = %33, %26
  %50 = load %struct.glc_softc*, %struct.glc_softc** %7, align 8
  %51 = call i32 @glc_init_locked(%struct.glc_softc* %50)
  br label %52

52:                                               ; preds = %49, %46
  br label %64

53:                                               ; preds = %16
  %54 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %55 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %53
  %61 = load %struct.glc_softc*, %struct.glc_softc** %7, align 8
  %62 = call i32 @glc_stop(%struct.glc_softc* %61)
  br label %63

63:                                               ; preds = %60, %53
  br label %64

64:                                               ; preds = %63, %52
  %65 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %66 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.glc_softc*, %struct.glc_softc** %7, align 8
  %69 = getelementptr inbounds %struct.glc_softc, %struct.glc_softc* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 4
  %70 = load %struct.glc_softc*, %struct.glc_softc** %7, align 8
  %71 = getelementptr inbounds %struct.glc_softc, %struct.glc_softc* %70, i32 0, i32 2
  %72 = call i32 @mtx_unlock(i32* %71)
  br label %94

73:                                               ; preds = %3, %3
  %74 = load %struct.glc_softc*, %struct.glc_softc** %7, align 8
  %75 = getelementptr inbounds %struct.glc_softc, %struct.glc_softc* %74, i32 0, i32 2
  %76 = call i32 @mtx_lock(i32* %75)
  %77 = load %struct.glc_softc*, %struct.glc_softc** %7, align 8
  %78 = call i32 @glc_set_multicast(%struct.glc_softc* %77)
  %79 = load %struct.glc_softc*, %struct.glc_softc** %7, align 8
  %80 = getelementptr inbounds %struct.glc_softc, %struct.glc_softc* %79, i32 0, i32 2
  %81 = call i32 @mtx_unlock(i32* %80)
  br label %94

82:                                               ; preds = %3, %3
  %83 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %84 = load %struct.ifreq*, %struct.ifreq** %8, align 8
  %85 = load %struct.glc_softc*, %struct.glc_softc** %7, align 8
  %86 = getelementptr inbounds %struct.glc_softc, %struct.glc_softc* %85, i32 0, i32 1
  %87 = load i32, i32* %5, align 4
  %88 = call i32 @ifmedia_ioctl(%struct.ifnet* %83, %struct.ifreq* %84, i32* %86, i32 %87)
  store i32 %88, i32* %9, align 4
  br label %94

89:                                               ; preds = %3
  %90 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %91 = load i32, i32* %5, align 4
  %92 = load i64, i64* %6, align 8
  %93 = call i32 @ether_ioctl(%struct.ifnet* %90, i32 %91, i64 %92)
  store i32 %93, i32* %9, align 4
  br label %94

94:                                               ; preds = %89, %82, %73, %64
  %95 = load i32, i32* %9, align 4
  ret i32 %95
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @glc_set_multicast(%struct.glc_softc*) #1

declare dso_local i32 @glc_init_locked(%struct.glc_softc*) #1

declare dso_local i32 @glc_stop(%struct.glc_softc*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @ifmedia_ioctl(%struct.ifnet*, %struct.ifreq*, i32*, i32) #1

declare dso_local i32 @ether_ioctl(%struct.ifnet*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
