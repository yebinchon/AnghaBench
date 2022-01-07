; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_uhso.c_uhso_if_ioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_uhso.c_uhso_if_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32, i32, %struct.uhso_softc* }
%struct.uhso_softc = type { i32 }

@IFF_UP = common dso_local global i32 0, align 4
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifnet*, i32, i32)* @uhso_if_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uhso_if_ioctl(%struct.ifnet* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ifnet*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.uhso_softc*, align 8
  store %struct.ifnet* %0, %struct.ifnet** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %10 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %9, i32 0, i32 2
  %11 = load %struct.uhso_softc*, %struct.uhso_softc** %10, align 8
  store %struct.uhso_softc* %11, %struct.uhso_softc** %8, align 8
  %12 = load i32, i32* %6, align 4
  switch i32 %12, label %50 [
    i32 128, label %13
    i32 129, label %49
    i32 131, label %49
    i32 130, label %49
  ]

13:                                               ; preds = %3
  %14 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %15 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @IFF_UP, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %31

20:                                               ; preds = %13
  %21 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %22 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %20
  %28 = load %struct.uhso_softc*, %struct.uhso_softc** %8, align 8
  %29 = call i32 @uhso_if_init(%struct.uhso_softc* %28)
  br label %30

30:                                               ; preds = %27, %20
  br label %48

31:                                               ; preds = %13
  %32 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %33 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %47

38:                                               ; preds = %31
  %39 = load %struct.uhso_softc*, %struct.uhso_softc** %8, align 8
  %40 = getelementptr inbounds %struct.uhso_softc, %struct.uhso_softc* %39, i32 0, i32 0
  %41 = call i32 @mtx_lock(i32* %40)
  %42 = load %struct.uhso_softc*, %struct.uhso_softc** %8, align 8
  %43 = call i32 @uhso_if_stop(%struct.uhso_softc* %42)
  %44 = load %struct.uhso_softc*, %struct.uhso_softc** %8, align 8
  %45 = getelementptr inbounds %struct.uhso_softc, %struct.uhso_softc* %44, i32 0, i32 0
  %46 = call i32 @mtx_unlock(i32* %45)
  br label %47

47:                                               ; preds = %38, %31
  br label %48

48:                                               ; preds = %47, %30
  br label %52

49:                                               ; preds = %3, %3, %3
  br label %52

50:                                               ; preds = %3
  %51 = load i32, i32* @EINVAL, align 4
  store i32 %51, i32* %4, align 4
  br label %53

52:                                               ; preds = %49, %48
  store i32 0, i32* %4, align 4
  br label %53

53:                                               ; preds = %52, %50
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local i32 @uhso_if_init(%struct.uhso_softc*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @uhso_if_stop(%struct.uhso_softc*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
