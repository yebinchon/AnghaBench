; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/gxemul/ether/extr_if_gx.c_gx_ioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/gxemul/ether/extr_if_gx.c_gx_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32, i32, i64, %struct.gx_softc* }
%struct.gx_softc = type { i32, i32 }
%struct.ifreq = type { i64 }

@IFF_UP = common dso_local global i32 0, align 4
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@GXEMUL_ETHER_DEV_MTU = common dso_local global i64 0, align 8
@ENOTSUP = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifnet*, i32, i64)* @gx_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gx_ioctl(%struct.ifnet* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ifnet*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.gx_softc*, align 8
  %9 = alloca %struct.ifreq*, align 8
  %10 = alloca i32, align 4
  store %struct.ifnet* %0, %struct.ifnet** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %11 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %12 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %11, i32 0, i32 3
  %13 = load %struct.gx_softc*, %struct.gx_softc** %12, align 8
  store %struct.gx_softc* %13, %struct.gx_softc** %8, align 8
  %14 = load i64, i64* %7, align 8
  %15 = inttoptr i64 %14 to %struct.ifreq*
  store %struct.ifreq* %15, %struct.ifreq** %9, align 8
  %16 = load i32, i32* %6, align 4
  switch i32 %16, label %92 [
    i32 131, label %17
    i32 130, label %27
    i32 128, label %67
    i32 129, label %80
    i32 132, label %80
  ]

17:                                               ; preds = %3
  %18 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %19 = load i32, i32* %6, align 4
  %20 = load i64, i64* %7, align 8
  %21 = call i32 @ether_ioctl(%struct.ifnet* %18, i32 %19, i64 %20)
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %10, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %17
  %25 = load i32, i32* %10, align 4
  store i32 %25, i32* %4, align 4
  br label %102

26:                                               ; preds = %17
  store i32 0, i32* %4, align 4
  br label %102

27:                                               ; preds = %3
  %28 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %29 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.gx_softc*, %struct.gx_softc** %8, align 8
  %32 = getelementptr inbounds %struct.gx_softc, %struct.gx_softc* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp eq i32 %30, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %27
  store i32 0, i32* %4, align 4
  br label %102

36:                                               ; preds = %27
  %37 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %38 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @IFF_UP, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %36
  %44 = load %struct.gx_softc*, %struct.gx_softc** %8, align 8
  %45 = call i32 @gx_init(%struct.gx_softc* %44)
  br label %61

46:                                               ; preds = %36
  %47 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %48 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %46
  %54 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %55 = xor i32 %54, -1
  %56 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %57 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = and i32 %58, %55
  store i32 %59, i32* %57, align 4
  br label %60

60:                                               ; preds = %53, %46
  br label %61

61:                                               ; preds = %60, %43
  %62 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %63 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.gx_softc*, %struct.gx_softc** %8, align 8
  %66 = getelementptr inbounds %struct.gx_softc, %struct.gx_softc* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 4
  store i32 0, i32* %4, align 4
  br label %102

67:                                               ; preds = %3
  %68 = load %struct.ifreq*, %struct.ifreq** %9, align 8
  %69 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %72 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = add nsw i64 %70, %73
  %75 = load i64, i64* @GXEMUL_ETHER_DEV_MTU, align 8
  %76 = icmp sgt i64 %74, %75
  br i1 %76, label %77, label %79

77:                                               ; preds = %67
  %78 = load i32, i32* @ENOTSUP, align 4
  store i32 %78, i32* %4, align 4
  br label %102

79:                                               ; preds = %67
  store i32 0, i32* %4, align 4
  br label %102

80:                                               ; preds = %3, %3
  %81 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %82 = load %struct.ifreq*, %struct.ifreq** %9, align 8
  %83 = load %struct.gx_softc*, %struct.gx_softc** %8, align 8
  %84 = getelementptr inbounds %struct.gx_softc, %struct.gx_softc* %83, i32 0, i32 1
  %85 = load i32, i32* %6, align 4
  %86 = call i32 @ifmedia_ioctl(%struct.ifnet* %81, %struct.ifreq* %82, i32* %84, i32 %85)
  store i32 %86, i32* %10, align 4
  %87 = load i32, i32* %10, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %80
  %90 = load i32, i32* %10, align 4
  store i32 %90, i32* %4, align 4
  br label %102

91:                                               ; preds = %80
  store i32 0, i32* %4, align 4
  br label %102

92:                                               ; preds = %3
  %93 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %94 = load i32, i32* %6, align 4
  %95 = load i64, i64* %7, align 8
  %96 = call i32 @ether_ioctl(%struct.ifnet* %93, i32 %94, i64 %95)
  store i32 %96, i32* %10, align 4
  %97 = load i32, i32* %10, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %92
  %100 = load i32, i32* %10, align 4
  store i32 %100, i32* %4, align 4
  br label %102

101:                                              ; preds = %92
  store i32 0, i32* %4, align 4
  br label %102

102:                                              ; preds = %101, %99, %91, %89, %79, %77, %61, %35, %26, %24
  %103 = load i32, i32* %4, align 4
  ret i32 %103
}

declare dso_local i32 @ether_ioctl(%struct.ifnet*, i32, i64) #1

declare dso_local i32 @gx_init(%struct.gx_softc*) #1

declare dso_local i32 @ifmedia_ioctl(%struct.ifnet*, %struct.ifreq*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
