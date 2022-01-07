; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iwn/extr_if_iwn.c_iwn_cdev_ioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iwn/extr_if_iwn.c_iwn_cdev_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { %struct.iwn_softc* }
%struct.iwn_softc = type { i32 }
%struct.thread = type { i32 }
%struct.iwn_ioctl_data = type { i32 }

@PRIV_DRIVER = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, i64, i64, i32, %struct.thread*)* @iwn_cdev_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwn_cdev_ioctl(%struct.cdev* %0, i64 %1, i64 %2, i32 %3, %struct.thread* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.cdev*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.thread*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.iwn_softc*, align 8
  %14 = alloca %struct.iwn_ioctl_data*, align 8
  store %struct.cdev* %0, %struct.cdev** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.thread* %4, %struct.thread** %11, align 8
  %15 = load %struct.cdev*, %struct.cdev** %7, align 8
  %16 = getelementptr inbounds %struct.cdev, %struct.cdev* %15, i32 0, i32 0
  %17 = load %struct.iwn_softc*, %struct.iwn_softc** %16, align 8
  store %struct.iwn_softc* %17, %struct.iwn_softc** %13, align 8
  %18 = load %struct.thread*, %struct.thread** %11, align 8
  %19 = load i32, i32* @PRIV_DRIVER, align 4
  %20 = call i32 @priv_check(%struct.thread* %18, i32 %19)
  store i32 %20, i32* %12, align 4
  %21 = load i32, i32* %12, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %51

24:                                               ; preds = %5
  %25 = load i64, i64* %8, align 8
  switch i64 %25, label %47 [
    i64 129, label %26
    i64 128, label %39
  ]

26:                                               ; preds = %24
  %27 = load i64, i64* %9, align 8
  %28 = inttoptr i64 %27 to %struct.iwn_ioctl_data*
  store %struct.iwn_ioctl_data* %28, %struct.iwn_ioctl_data** %14, align 8
  %29 = load %struct.iwn_softc*, %struct.iwn_softc** %13, align 8
  %30 = call i32 @IWN_LOCK(%struct.iwn_softc* %29)
  %31 = load %struct.iwn_softc*, %struct.iwn_softc** %13, align 8
  %32 = getelementptr inbounds %struct.iwn_softc, %struct.iwn_softc* %31, i32 0, i32 0
  %33 = load %struct.iwn_ioctl_data*, %struct.iwn_ioctl_data** %14, align 8
  %34 = getelementptr inbounds %struct.iwn_ioctl_data, %struct.iwn_ioctl_data* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @copyout(i32* %32, i32 %35, i32 4)
  store i32 %36, i32* %12, align 4
  %37 = load %struct.iwn_softc*, %struct.iwn_softc** %13, align 8
  %38 = call i32 @IWN_UNLOCK(%struct.iwn_softc* %37)
  br label %49

39:                                               ; preds = %24
  %40 = load %struct.iwn_softc*, %struct.iwn_softc** %13, align 8
  %41 = call i32 @IWN_LOCK(%struct.iwn_softc* %40)
  %42 = load %struct.iwn_softc*, %struct.iwn_softc** %13, align 8
  %43 = getelementptr inbounds %struct.iwn_softc, %struct.iwn_softc* %42, i32 0, i32 0
  %44 = call i32 @memset(i32* %43, i32 0, i32 4)
  %45 = load %struct.iwn_softc*, %struct.iwn_softc** %13, align 8
  %46 = call i32 @IWN_UNLOCK(%struct.iwn_softc* %45)
  br label %49

47:                                               ; preds = %24
  %48 = load i32, i32* @EINVAL, align 4
  store i32 %48, i32* %12, align 4
  br label %49

49:                                               ; preds = %47, %39, %26
  %50 = load i32, i32* %12, align 4
  store i32 %50, i32* %6, align 4
  br label %51

51:                                               ; preds = %49, %23
  %52 = load i32, i32* %6, align 4
  ret i32 %52
}

declare dso_local i32 @priv_check(%struct.thread*, i32) #1

declare dso_local i32 @IWN_LOCK(%struct.iwn_softc*) #1

declare dso_local i32 @copyout(i32*, i32, i32) #1

declare dso_local i32 @IWN_UNLOCK(%struct.iwn_softc*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
