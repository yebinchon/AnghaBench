; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_if_epair.c_epair_ioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_if_epair.c_epair_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32, %struct.epair_softc* }
%struct.epair_softc = type { i32 }
%struct.ifreq = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifnet*, i32, i64)* @epair_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @epair_ioctl(%struct.ifnet* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.epair_softc*, align 8
  %8 = alloca %struct.ifreq*, align 8
  %9 = alloca i32, align 4
  store %struct.ifnet* %0, %struct.ifnet** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %10 = load i64, i64* %6, align 8
  %11 = inttoptr i64 %10 to %struct.ifreq*
  store %struct.ifreq* %11, %struct.ifreq** %8, align 8
  %12 = load i32, i32* %5, align 4
  switch i32 %12, label %30 [
    i32 130, label %13
    i32 133, label %13
    i32 132, label %13
    i32 129, label %14
    i32 131, label %14
    i32 128, label %24
  ]

13:                                               ; preds = %3, %3, %3
  store i32 0, i32* %9, align 4
  br label %35

14:                                               ; preds = %3, %3
  %15 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %16 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %15, i32 0, i32 1
  %17 = load %struct.epair_softc*, %struct.epair_softc** %16, align 8
  store %struct.epair_softc* %17, %struct.epair_softc** %7, align 8
  %18 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %19 = load %struct.ifreq*, %struct.ifreq** %8, align 8
  %20 = load %struct.epair_softc*, %struct.epair_softc** %7, align 8
  %21 = getelementptr inbounds %struct.epair_softc, %struct.epair_softc* %20, i32 0, i32 0
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @ifmedia_ioctl(%struct.ifnet* %18, %struct.ifreq* %19, i32* %21, i32 %22)
  store i32 %23, i32* %9, align 4
  br label %35

24:                                               ; preds = %3
  %25 = load %struct.ifreq*, %struct.ifreq** %8, align 8
  %26 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %29 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  store i32 0, i32* %9, align 4
  br label %35

30:                                               ; preds = %3
  %31 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %32 = load i32, i32* %5, align 4
  %33 = load i64, i64* %6, align 8
  %34 = call i32 @ether_ioctl(%struct.ifnet* %31, i32 %32, i64 %33)
  store i32 %34, i32* %9, align 4
  br label %35

35:                                               ; preds = %30, %24, %14, %13
  %36 = load i32, i32* %9, align 4
  ret i32 %36
}

declare dso_local i32 @ifmedia_ioctl(%struct.ifnet*, %struct.ifreq*, i32*, i32) #1

declare dso_local i32 @ether_ioctl(%struct.ifnet*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
