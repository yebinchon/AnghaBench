; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_aic7xxx_inline.h_ahc_get_scb.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_aic7xxx_inline.h_ahc_get_scb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.scb = type { i32 }
%struct.ahc_softc = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@links = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.scb* (%struct.ahc_softc*)* @ahc_get_scb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.scb* @ahc_get_scb(%struct.ahc_softc* %0) #0 {
  %2 = alloca %struct.scb*, align 8
  %3 = alloca %struct.ahc_softc*, align 8
  %4 = alloca %struct.scb*, align 8
  store %struct.ahc_softc* %0, %struct.ahc_softc** %3, align 8
  %5 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %6 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %5, i32 0, i32 0
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = call %struct.scb* @SLIST_FIRST(i32* %8)
  store %struct.scb* %9, %struct.scb** %4, align 8
  %10 = icmp eq %struct.scb* %9, null
  br i1 %10, label %11, label %26

11:                                               ; preds = %1
  %12 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %13 = call i64 @ahc_alloc_scbs(%struct.ahc_softc* %12)
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  store %struct.scb* null, %struct.scb** %2, align 8
  br label %34

16:                                               ; preds = %11
  %17 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %18 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %17, i32 0, i32 0
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = call %struct.scb* @SLIST_FIRST(i32* %20)
  store %struct.scb* %21, %struct.scb** %4, align 8
  %22 = load %struct.scb*, %struct.scb** %4, align 8
  %23 = icmp eq %struct.scb* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %16
  store %struct.scb* null, %struct.scb** %2, align 8
  br label %34

25:                                               ; preds = %16
  br label %26

26:                                               ; preds = %25, %1
  %27 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %28 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %27, i32 0, i32 0
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @links, i32 0, i32 0), align 4
  %32 = call i32 @SLIST_REMOVE_HEAD(i32* %30, i32 %31)
  %33 = load %struct.scb*, %struct.scb** %4, align 8
  store %struct.scb* %33, %struct.scb** %2, align 8
  br label %34

34:                                               ; preds = %26, %24, %15
  %35 = load %struct.scb*, %struct.scb** %2, align 8
  ret %struct.scb* %35
}

declare dso_local %struct.scb* @SLIST_FIRST(i32*) #1

declare dso_local i64 @ahc_alloc_scbs(%struct.ahc_softc*) #1

declare dso_local i32 @SLIST_REMOVE_HEAD(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
