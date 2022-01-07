; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/beri/extr_beri_ring.c_beri_kqfilter.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/beri/extr_beri_ring.c_beri_kqfilter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { %struct.beri_softc* }
%struct.beri_softc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.knote = type { i32, %struct.beri_softc*, i32* }

@beri_read_filterops = common dso_local global i32 0, align 4
@beri_write_filterops = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, %struct.knote*)* @beri_kqfilter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @beri_kqfilter(%struct.cdev* %0, %struct.knote* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cdev*, align 8
  %5 = alloca %struct.knote*, align 8
  %6 = alloca %struct.beri_softc*, align 8
  store %struct.cdev* %0, %struct.cdev** %4, align 8
  store %struct.knote* %1, %struct.knote** %5, align 8
  %7 = load %struct.cdev*, %struct.cdev** %4, align 8
  %8 = getelementptr inbounds %struct.cdev, %struct.cdev* %7, i32 0, i32 0
  %9 = load %struct.beri_softc*, %struct.beri_softc** %8, align 8
  store %struct.beri_softc* %9, %struct.beri_softc** %6, align 8
  %10 = load %struct.knote*, %struct.knote** %5, align 8
  %11 = getelementptr inbounds %struct.knote, %struct.knote* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  switch i32 %12, label %19 [
    i32 129, label %13
    i32 128, label %16
  ]

13:                                               ; preds = %2
  %14 = load %struct.knote*, %struct.knote** %5, align 8
  %15 = getelementptr inbounds %struct.knote, %struct.knote* %14, i32 0, i32 2
  store i32* @beri_read_filterops, i32** %15, align 8
  br label %21

16:                                               ; preds = %2
  %17 = load %struct.knote*, %struct.knote** %5, align 8
  %18 = getelementptr inbounds %struct.knote, %struct.knote* %17, i32 0, i32 2
  store i32* @beri_write_filterops, i32** %18, align 8
  br label %21

19:                                               ; preds = %2
  %20 = load i32, i32* @EINVAL, align 4
  store i32 %20, i32* %3, align 4
  br label %30

21:                                               ; preds = %16, %13
  %22 = load %struct.beri_softc*, %struct.beri_softc** %6, align 8
  %23 = load %struct.knote*, %struct.knote** %5, align 8
  %24 = getelementptr inbounds %struct.knote, %struct.knote* %23, i32 0, i32 1
  store %struct.beri_softc* %22, %struct.beri_softc** %24, align 8
  %25 = load %struct.beri_softc*, %struct.beri_softc** %6, align 8
  %26 = getelementptr inbounds %struct.beri_softc, %struct.beri_softc* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load %struct.knote*, %struct.knote** %5, align 8
  %29 = call i32 @knlist_add(i32* %27, %struct.knote* %28, i32 0)
  store i32 0, i32* %3, align 4
  br label %30

30:                                               ; preds = %21, %19
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local i32 @knlist_add(i32*, %struct.knote*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
