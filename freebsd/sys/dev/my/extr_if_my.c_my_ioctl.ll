; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/my/extr_if_my.c_my_ioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/my/extr_if_my.c_my_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32, i32, %struct.my_softc* }
%struct.my_softc = type { i32 }
%struct.ifreq = type { i32 }

@IFF_UP = common dso_local global i32 0, align 4
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifnet*, i32, i64)* @my_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @my_ioctl(%struct.ifnet* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.my_softc*, align 8
  %8 = alloca %struct.ifreq*, align 8
  %9 = alloca i32, align 4
  store %struct.ifnet* %0, %struct.ifnet** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %10 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %11 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %10, i32 0, i32 2
  %12 = load %struct.my_softc*, %struct.my_softc** %11, align 8
  store %struct.my_softc* %12, %struct.my_softc** %7, align 8
  %13 = load i64, i64* %6, align 8
  %14 = inttoptr i64 %13 to %struct.ifreq*
  store %struct.ifreq* %14, %struct.ifreq** %8, align 8
  %15 = load i32, i32* %5, align 4
  switch i32 %15, label %56 [
    i32 129, label %16
    i32 132, label %42
    i32 131, label %42
    i32 130, label %49
    i32 128, label %49
  ]

16:                                               ; preds = %3
  %17 = load %struct.my_softc*, %struct.my_softc** %7, align 8
  %18 = call i32 @MY_LOCK(%struct.my_softc* %17)
  %19 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %20 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @IFF_UP, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %16
  %26 = load %struct.my_softc*, %struct.my_softc** %7, align 8
  %27 = call i32 @my_init_locked(%struct.my_softc* %26)
  br label %39

28:                                               ; preds = %16
  %29 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %30 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %28
  %36 = load %struct.my_softc*, %struct.my_softc** %7, align 8
  %37 = call i32 @my_stop(%struct.my_softc* %36)
  br label %38

38:                                               ; preds = %35, %28
  br label %39

39:                                               ; preds = %38, %25
  %40 = load %struct.my_softc*, %struct.my_softc** %7, align 8
  %41 = call i32 @MY_UNLOCK(%struct.my_softc* %40)
  store i32 0, i32* %9, align 4
  br label %61

42:                                               ; preds = %3, %3
  %43 = load %struct.my_softc*, %struct.my_softc** %7, align 8
  %44 = call i32 @MY_LOCK(%struct.my_softc* %43)
  %45 = load %struct.my_softc*, %struct.my_softc** %7, align 8
  %46 = call i32 @my_setmulti(%struct.my_softc* %45)
  %47 = load %struct.my_softc*, %struct.my_softc** %7, align 8
  %48 = call i32 @MY_UNLOCK(%struct.my_softc* %47)
  store i32 0, i32* %9, align 4
  br label %61

49:                                               ; preds = %3, %3
  %50 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %51 = load %struct.ifreq*, %struct.ifreq** %8, align 8
  %52 = load %struct.my_softc*, %struct.my_softc** %7, align 8
  %53 = getelementptr inbounds %struct.my_softc, %struct.my_softc* %52, i32 0, i32 0
  %54 = load i32, i32* %5, align 4
  %55 = call i32 @ifmedia_ioctl(%struct.ifnet* %50, %struct.ifreq* %51, i32* %53, i32 %54)
  store i32 %55, i32* %9, align 4
  br label %61

56:                                               ; preds = %3
  %57 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %58 = load i32, i32* %5, align 4
  %59 = load i64, i64* %6, align 8
  %60 = call i32 @ether_ioctl(%struct.ifnet* %57, i32 %58, i64 %59)
  store i32 %60, i32* %9, align 4
  br label %61

61:                                               ; preds = %56, %49, %42, %39
  %62 = load i32, i32* %9, align 4
  ret i32 %62
}

declare dso_local i32 @MY_LOCK(%struct.my_softc*) #1

declare dso_local i32 @my_init_locked(%struct.my_softc*) #1

declare dso_local i32 @my_stop(%struct.my_softc*) #1

declare dso_local i32 @MY_UNLOCK(%struct.my_softc*) #1

declare dso_local i32 @my_setmulti(%struct.my_softc*) #1

declare dso_local i32 @ifmedia_ioctl(%struct.ifnet*, %struct.ifreq*, i32*, i32) #1

declare dso_local i32 @ether_ioctl(%struct.ifnet*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
