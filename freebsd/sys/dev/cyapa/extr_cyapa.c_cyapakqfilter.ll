; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cyapa/extr_cyapa.c_cyapakqfilter.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cyapa/extr_cyapa.c_cyapakqfilter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { %struct.cyapa_softc* }
%struct.cyapa_softc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.knlist }
%struct.knlist = type { i32 }
%struct.knote = type { i32, i8*, i32* }

@cyapa_filtops = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, %struct.knote*)* @cyapakqfilter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cyapakqfilter(%struct.cdev* %0, %struct.knote* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cdev*, align 8
  %5 = alloca %struct.knote*, align 8
  %6 = alloca %struct.cyapa_softc*, align 8
  %7 = alloca %struct.knlist*, align 8
  store %struct.cdev* %0, %struct.cdev** %4, align 8
  store %struct.knote* %1, %struct.knote** %5, align 8
  %8 = load %struct.cdev*, %struct.cdev** %4, align 8
  %9 = getelementptr inbounds %struct.cdev, %struct.cdev* %8, i32 0, i32 0
  %10 = load %struct.cyapa_softc*, %struct.cyapa_softc** %9, align 8
  store %struct.cyapa_softc* %10, %struct.cyapa_softc** %6, align 8
  %11 = load %struct.knote*, %struct.knote** %5, align 8
  %12 = getelementptr inbounds %struct.knote, %struct.knote* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  switch i32 %13, label %21 [
    i32 128, label %14
  ]

14:                                               ; preds = %2
  %15 = load %struct.knote*, %struct.knote** %5, align 8
  %16 = getelementptr inbounds %struct.knote, %struct.knote* %15, i32 0, i32 2
  store i32* @cyapa_filtops, i32** %16, align 8
  %17 = load %struct.cyapa_softc*, %struct.cyapa_softc** %6, align 8
  %18 = bitcast %struct.cyapa_softc* %17 to i8*
  %19 = load %struct.knote*, %struct.knote** %5, align 8
  %20 = getelementptr inbounds %struct.knote, %struct.knote* %19, i32 0, i32 1
  store i8* %18, i8** %20, align 8
  br label %23

21:                                               ; preds = %2
  %22 = load i32, i32* @EOPNOTSUPP, align 4
  store i32 %22, i32* %3, align 4
  br label %30

23:                                               ; preds = %14
  %24 = load %struct.cyapa_softc*, %struct.cyapa_softc** %6, align 8
  %25 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  store %struct.knlist* %26, %struct.knlist** %7, align 8
  %27 = load %struct.knlist*, %struct.knlist** %7, align 8
  %28 = load %struct.knote*, %struct.knote** %5, align 8
  %29 = call i32 @knlist_add(%struct.knlist* %27, %struct.knote* %28, i32 0)
  store i32 0, i32* %3, align 4
  br label %30

30:                                               ; preds = %23, %21
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local i32 @knlist_add(%struct.knlist*, %struct.knote*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
