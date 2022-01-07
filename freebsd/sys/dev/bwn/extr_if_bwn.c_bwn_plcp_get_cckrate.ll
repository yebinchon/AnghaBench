; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bwn/extr_if_bwn.c_bwn_plcp_get_cckrate.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bwn/extr_if_bwn.c_bwn_plcp_get_cckrate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwn_mac = type { %struct.bwn_softc* }
%struct.bwn_softc = type { i32 }
%struct.bwn_plcp6 = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@BWN_CCK_RATE_1MB = common dso_local global i32 0, align 4
@BWN_CCK_RATE_2MB = common dso_local global i32 0, align 4
@BWN_CCK_RATE_5MB = common dso_local global i32 0, align 4
@BWN_CCK_RATE_11MB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"incorrect CCK rate %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bwn_mac*, %struct.bwn_plcp6*)* @bwn_plcp_get_cckrate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bwn_plcp_get_cckrate(%struct.bwn_mac* %0, %struct.bwn_plcp6* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bwn_mac*, align 8
  %5 = alloca %struct.bwn_plcp6*, align 8
  %6 = alloca %struct.bwn_softc*, align 8
  store %struct.bwn_mac* %0, %struct.bwn_mac** %4, align 8
  store %struct.bwn_plcp6* %1, %struct.bwn_plcp6** %5, align 8
  %7 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %8 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %7, i32 0, i32 0
  %9 = load %struct.bwn_softc*, %struct.bwn_softc** %8, align 8
  store %struct.bwn_softc* %9, %struct.bwn_softc** %6, align 8
  %10 = load %struct.bwn_plcp6*, %struct.bwn_plcp6** %5, align 8
  %11 = getelementptr inbounds %struct.bwn_plcp6, %struct.bwn_plcp6* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 0
  %15 = load i32, i32* %14, align 4
  switch i32 %15, label %24 [
    i32 10, label %16
    i32 20, label %18
    i32 55, label %20
    i32 110, label %22
  ]

16:                                               ; preds = %2
  %17 = load i32, i32* @BWN_CCK_RATE_1MB, align 4
  store i32 %17, i32* %3, align 4
  br label %35

18:                                               ; preds = %2
  %19 = load i32, i32* @BWN_CCK_RATE_2MB, align 4
  store i32 %19, i32* %3, align 4
  br label %35

20:                                               ; preds = %2
  %21 = load i32, i32* @BWN_CCK_RATE_5MB, align 4
  store i32 %21, i32* %3, align 4
  br label %35

22:                                               ; preds = %2
  %23 = load i32, i32* @BWN_CCK_RATE_11MB, align 4
  store i32 %23, i32* %3, align 4
  br label %35

24:                                               ; preds = %2
  %25 = load %struct.bwn_softc*, %struct.bwn_softc** %6, align 8
  %26 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.bwn_plcp6*, %struct.bwn_plcp6** %5, align 8
  %29 = getelementptr inbounds %struct.bwn_plcp6, %struct.bwn_plcp6* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @device_printf(i32 %27, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %33)
  store i32 -1, i32* %3, align 4
  br label %35

35:                                               ; preds = %24, %22, %20, %18, %16
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i32 @device_printf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
