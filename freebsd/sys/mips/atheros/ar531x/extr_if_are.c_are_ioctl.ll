; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/atheros/ar531x/extr_if_are.c_are_ioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/atheros/ar531x/extr_if_are.c_are_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32, i32, %struct.are_softc* }
%struct.are_softc = type { i32, i32, i32, i32 }
%struct.ifreq = type { i32 }

@IFF_UP = common dso_local global i32 0, align 4
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@IFF_PROMISC = common dso_local global i32 0, align 4
@IFF_ALLMULTI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifnet*, i32, i64)* @are_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @are_ioctl(%struct.ifnet* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.are_softc*, align 8
  %8 = alloca %struct.ifreq*, align 8
  %9 = alloca i32, align 4
  store %struct.ifnet* %0, %struct.ifnet** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %10 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %11 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %10, i32 0, i32 2
  %12 = load %struct.are_softc*, %struct.are_softc** %11, align 8
  store %struct.are_softc* %12, %struct.are_softc** %7, align 8
  %13 = load i64, i64* %6, align 8
  %14 = inttoptr i64 %13 to %struct.ifreq*
  store %struct.ifreq* %14, %struct.ifreq** %8, align 8
  %15 = load i32, i32* %5, align 4
  switch i32 %15, label %93 [
    i32 129, label %16
    i32 133, label %78
    i32 132, label %78
    i32 131, label %85
    i32 128, label %85
    i32 130, label %92
  ]

16:                                               ; preds = %3
  %17 = load %struct.are_softc*, %struct.are_softc** %7, align 8
  %18 = call i32 @ARE_LOCK(%struct.are_softc* %17)
  %19 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %20 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @IFF_UP, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %59

25:                                               ; preds = %16
  %26 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %27 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %49

32:                                               ; preds = %25
  %33 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %34 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.are_softc*, %struct.are_softc** %7, align 8
  %37 = getelementptr inbounds %struct.are_softc, %struct.are_softc* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = xor i32 %35, %38
  %40 = load i32, i32* @IFF_PROMISC, align 4
  %41 = load i32, i32* @IFF_ALLMULTI, align 4
  %42 = or i32 %40, %41
  %43 = and i32 %39, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %32
  %46 = load %struct.are_softc*, %struct.are_softc** %7, align 8
  %47 = call i32 @are_set_filter(%struct.are_softc* %46)
  br label %48

48:                                               ; preds = %45, %32
  br label %58

49:                                               ; preds = %25
  %50 = load %struct.are_softc*, %struct.are_softc** %7, align 8
  %51 = getelementptr inbounds %struct.are_softc, %struct.are_softc* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %49
  %55 = load %struct.are_softc*, %struct.are_softc** %7, align 8
  %56 = call i32 @are_init_locked(%struct.are_softc* %55)
  br label %57

57:                                               ; preds = %54, %49
  br label %58

58:                                               ; preds = %57, %48
  br label %70

59:                                               ; preds = %16
  %60 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %61 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %59
  %67 = load %struct.are_softc*, %struct.are_softc** %7, align 8
  %68 = call i32 @are_stop(%struct.are_softc* %67)
  br label %69

69:                                               ; preds = %66, %59
  br label %70

70:                                               ; preds = %69, %58
  %71 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %72 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.are_softc*, %struct.are_softc** %7, align 8
  %75 = getelementptr inbounds %struct.are_softc, %struct.are_softc* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 4
  %76 = load %struct.are_softc*, %struct.are_softc** %7, align 8
  %77 = call i32 @ARE_UNLOCK(%struct.are_softc* %76)
  store i32 0, i32* %9, align 4
  br label %98

78:                                               ; preds = %3, %3
  %79 = load %struct.are_softc*, %struct.are_softc** %7, align 8
  %80 = call i32 @ARE_LOCK(%struct.are_softc* %79)
  %81 = load %struct.are_softc*, %struct.are_softc** %7, align 8
  %82 = call i32 @are_set_filter(%struct.are_softc* %81)
  %83 = load %struct.are_softc*, %struct.are_softc** %7, align 8
  %84 = call i32 @ARE_UNLOCK(%struct.are_softc* %83)
  store i32 0, i32* %9, align 4
  br label %98

85:                                               ; preds = %3, %3
  %86 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %87 = load %struct.ifreq*, %struct.ifreq** %8, align 8
  %88 = load %struct.are_softc*, %struct.are_softc** %7, align 8
  %89 = getelementptr inbounds %struct.are_softc, %struct.are_softc* %88, i32 0, i32 1
  %90 = load i32, i32* %5, align 4
  %91 = call i32 @ifmedia_ioctl(%struct.ifnet* %86, %struct.ifreq* %87, i32* %89, i32 %90)
  store i32 %91, i32* %9, align 4
  br label %98

92:                                               ; preds = %3
  store i32 0, i32* %9, align 4
  br label %98

93:                                               ; preds = %3
  %94 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %95 = load i32, i32* %5, align 4
  %96 = load i64, i64* %6, align 8
  %97 = call i32 @ether_ioctl(%struct.ifnet* %94, i32 %95, i64 %96)
  store i32 %97, i32* %9, align 4
  br label %98

98:                                               ; preds = %93, %92, %85, %78, %70
  %99 = load i32, i32* %9, align 4
  ret i32 %99
}

declare dso_local i32 @ARE_LOCK(%struct.are_softc*) #1

declare dso_local i32 @are_set_filter(%struct.are_softc*) #1

declare dso_local i32 @are_init_locked(%struct.are_softc*) #1

declare dso_local i32 @are_stop(%struct.are_softc*) #1

declare dso_local i32 @ARE_UNLOCK(%struct.are_softc*) #1

declare dso_local i32 @ifmedia_ioctl(%struct.ifnet*, %struct.ifreq*, i32*, i32) #1

declare dso_local i32 @ether_ioctl(%struct.ifnet*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
