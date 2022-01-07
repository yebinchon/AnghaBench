; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_if_tuntap.c_tunkqfilter.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_if_tuntap.c_tunkqfilter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { %struct.tuntap_softc* }
%struct.tuntap_softc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.knote = type { i32, %struct.tuntap_softc*, i32* }
%struct.ifnet = type { i32 }

@.str = private unnamed_addr constant [39 x i8] c"%s kqfilter: EVFILT_READ, minor = %#x\0A\00", align 1
@tun_read_filterops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"%s kqfilter: EVFILT_WRITE, minor = %#x\0A\00", align 1
@tun_write_filterops = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"%s kqfilter: invalid filter, minor = %#x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, %struct.knote*)* @tunkqfilter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tunkqfilter(%struct.cdev* %0, %struct.knote* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cdev*, align 8
  %5 = alloca %struct.knote*, align 8
  %6 = alloca %struct.tuntap_softc*, align 8
  %7 = alloca %struct.ifnet*, align 8
  store %struct.cdev* %0, %struct.cdev** %4, align 8
  store %struct.knote* %1, %struct.knote** %5, align 8
  %8 = load %struct.cdev*, %struct.cdev** %4, align 8
  %9 = getelementptr inbounds %struct.cdev, %struct.cdev* %8, i32 0, i32 0
  %10 = load %struct.tuntap_softc*, %struct.tuntap_softc** %9, align 8
  store %struct.tuntap_softc* %10, %struct.tuntap_softc** %6, align 8
  %11 = load %struct.tuntap_softc*, %struct.tuntap_softc** %6, align 8
  %12 = call %struct.ifnet* @TUN2IFP(%struct.tuntap_softc* %11)
  store %struct.ifnet* %12, %struct.ifnet** %7, align 8
  %13 = load %struct.knote*, %struct.knote** %5, align 8
  %14 = getelementptr inbounds %struct.knote, %struct.knote* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  switch i32 %15, label %36 [
    i32 129, label %16
    i32 128, label %26
  ]

16:                                               ; preds = %2
  %17 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %18 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %19 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.cdev*, %struct.cdev** %4, align 8
  %22 = call i32 @dev2unit(%struct.cdev* %21)
  %23 = call i32 @TUNDEBUG(%struct.ifnet* %17, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %22)
  %24 = load %struct.knote*, %struct.knote** %5, align 8
  %25 = getelementptr inbounds %struct.knote, %struct.knote* %24, i32 0, i32 2
  store i32* @tun_read_filterops, i32** %25, align 8
  br label %45

26:                                               ; preds = %2
  %27 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %28 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %29 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.cdev*, %struct.cdev** %4, align 8
  %32 = call i32 @dev2unit(%struct.cdev* %31)
  %33 = call i32 @TUNDEBUG(%struct.ifnet* %27, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %30, i32 %32)
  %34 = load %struct.knote*, %struct.knote** %5, align 8
  %35 = getelementptr inbounds %struct.knote, %struct.knote* %34, i32 0, i32 2
  store i32* @tun_write_filterops, i32** %35, align 8
  br label %45

36:                                               ; preds = %2
  %37 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %38 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %39 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.cdev*, %struct.cdev** %4, align 8
  %42 = call i32 @dev2unit(%struct.cdev* %41)
  %43 = call i32 @TUNDEBUG(%struct.ifnet* %37, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %40, i32 %42)
  %44 = load i32, i32* @EINVAL, align 4
  store i32 %44, i32* %3, align 4
  br label %54

45:                                               ; preds = %26, %16
  %46 = load %struct.tuntap_softc*, %struct.tuntap_softc** %6, align 8
  %47 = load %struct.knote*, %struct.knote** %5, align 8
  %48 = getelementptr inbounds %struct.knote, %struct.knote* %47, i32 0, i32 1
  store %struct.tuntap_softc* %46, %struct.tuntap_softc** %48, align 8
  %49 = load %struct.tuntap_softc*, %struct.tuntap_softc** %6, align 8
  %50 = getelementptr inbounds %struct.tuntap_softc, %struct.tuntap_softc* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load %struct.knote*, %struct.knote** %5, align 8
  %53 = call i32 @knlist_add(i32* %51, %struct.knote* %52, i32 0)
  store i32 0, i32* %3, align 4
  br label %54

54:                                               ; preds = %45, %36
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local %struct.ifnet* @TUN2IFP(%struct.tuntap_softc*) #1

declare dso_local i32 @TUNDEBUG(%struct.ifnet*, i8*, i32, i32) #1

declare dso_local i32 @dev2unit(%struct.cdev*) #1

declare dso_local i32 @knlist_add(i32*, %struct.knote*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
