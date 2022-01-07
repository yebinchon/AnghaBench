; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/smc/extr_if_smc.c_smc_ioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/smc/extr_if_smc.c_smc_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32, i32, %struct.smc_softc* }
%struct.smc_softc = type { i32 (%struct.smc_softc*, %struct.ifreq*, i32)*, i32 (%struct.smc_softc*)* }
%struct.ifreq = type opaque
%struct.ifreq.0 = type { i32 }

@IFF_UP = common dso_local global i32 0, align 4
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifnet*, i32, i64)* @smc_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smc_ioctl(%struct.ifnet* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.smc_softc*, align 8
  %8 = alloca i32, align 4
  store %struct.ifnet* %0, %struct.ifnet** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %9 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %10 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %9, i32 0, i32 2
  %11 = load %struct.smc_softc*, %struct.smc_softc** %10, align 8
  store %struct.smc_softc* %11, %struct.smc_softc** %7, align 8
  store i32 0, i32* %8, align 4
  %12 = load i32, i32* %5, align 4
  switch i32 %12, label %68 [
    i32 129, label %13
    i32 132, label %49
    i32 131, label %49
    i32 130, label %51
    i32 128, label %51
  ]

13:                                               ; preds = %3
  %14 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %15 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @IFF_UP, align 4
  %18 = and i32 %16, %17
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %34

20:                                               ; preds = %13
  %21 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %22 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %20
  %28 = load %struct.smc_softc*, %struct.smc_softc** %7, align 8
  %29 = call i32 @SMC_LOCK(%struct.smc_softc* %28)
  %30 = load %struct.smc_softc*, %struct.smc_softc** %7, align 8
  %31 = call i32 @smc_stop(%struct.smc_softc* %30)
  %32 = load %struct.smc_softc*, %struct.smc_softc** %7, align 8
  %33 = call i32 @SMC_UNLOCK(%struct.smc_softc* %32)
  br label %48

34:                                               ; preds = %20, %13
  %35 = load %struct.smc_softc*, %struct.smc_softc** %7, align 8
  %36 = call i32 @smc_init(%struct.smc_softc* %35)
  %37 = load %struct.smc_softc*, %struct.smc_softc** %7, align 8
  %38 = getelementptr inbounds %struct.smc_softc, %struct.smc_softc* %37, i32 0, i32 1
  %39 = load i32 (%struct.smc_softc*)*, i32 (%struct.smc_softc*)** %38, align 8
  %40 = icmp ne i32 (%struct.smc_softc*)* %39, null
  br i1 %40, label %41, label %47

41:                                               ; preds = %34
  %42 = load %struct.smc_softc*, %struct.smc_softc** %7, align 8
  %43 = getelementptr inbounds %struct.smc_softc, %struct.smc_softc* %42, i32 0, i32 1
  %44 = load i32 (%struct.smc_softc*)*, i32 (%struct.smc_softc*)** %43, align 8
  %45 = load %struct.smc_softc*, %struct.smc_softc** %7, align 8
  %46 = call i32 %44(%struct.smc_softc* %45)
  br label %47

47:                                               ; preds = %41, %34
  br label %48

48:                                               ; preds = %47, %27
  br label %73

49:                                               ; preds = %3, %3
  %50 = load i32, i32* @EINVAL, align 4
  store i32 %50, i32* %8, align 4
  br label %73

51:                                               ; preds = %3, %3
  %52 = load %struct.smc_softc*, %struct.smc_softc** %7, align 8
  %53 = getelementptr inbounds %struct.smc_softc, %struct.smc_softc* %52, i32 0, i32 0
  %54 = load i32 (%struct.smc_softc*, %struct.ifreq*, i32)*, i32 (%struct.smc_softc*, %struct.ifreq*, i32)** %53, align 8
  %55 = icmp eq i32 (%struct.smc_softc*, %struct.ifreq*, i32)* %54, null
  br i1 %55, label %56, label %58

56:                                               ; preds = %51
  %57 = load i32, i32* @EINVAL, align 4
  store i32 %57, i32* %8, align 4
  br label %73

58:                                               ; preds = %51
  %59 = load %struct.smc_softc*, %struct.smc_softc** %7, align 8
  %60 = getelementptr inbounds %struct.smc_softc, %struct.smc_softc* %59, i32 0, i32 0
  %61 = load i32 (%struct.smc_softc*, %struct.ifreq*, i32)*, i32 (%struct.smc_softc*, %struct.ifreq*, i32)** %60, align 8
  %62 = load %struct.smc_softc*, %struct.smc_softc** %7, align 8
  %63 = load i64, i64* %6, align 8
  %64 = inttoptr i64 %63 to %struct.ifreq.0*
  %65 = bitcast %struct.ifreq.0* %64 to %struct.ifreq*
  %66 = load i32, i32* %5, align 4
  %67 = call i32 %61(%struct.smc_softc* %62, %struct.ifreq* %65, i32 %66)
  br label %73

68:                                               ; preds = %3
  %69 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %70 = load i32, i32* %5, align 4
  %71 = load i64, i64* %6, align 8
  %72 = call i32 @ether_ioctl(%struct.ifnet* %69, i32 %70, i64 %71)
  store i32 %72, i32* %8, align 4
  br label %73

73:                                               ; preds = %68, %58, %56, %49, %48
  %74 = load i32, i32* %8, align 4
  ret i32 %74
}

declare dso_local i32 @SMC_LOCK(%struct.smc_softc*) #1

declare dso_local i32 @smc_stop(%struct.smc_softc*) #1

declare dso_local i32 @SMC_UNLOCK(%struct.smc_softc*) #1

declare dso_local i32 @smc_init(%struct.smc_softc*) #1

declare dso_local i32 @ether_ioctl(%struct.ifnet*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
