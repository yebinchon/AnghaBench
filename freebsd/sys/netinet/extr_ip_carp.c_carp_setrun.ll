; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_ip_carp.c_carp_setrun.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_ip_carp.c_carp_setrun.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.carp_softc = type { i64, i64, i32, i32, i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i64 }
%struct.timeval = type { i32, i32 }

@IFF_UP = common dso_local global i32 0, align 4
@LINK_STATE_UP = common dso_local global i64 0, align 8
@V_carp_allow = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"initialization complete\00", align 1
@carp_send_ad = common dso_local global i32 0, align 4
@carp_master_down = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.carp_softc*, i32)* @carp_setrun to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @carp_setrun(%struct.carp_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.carp_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.timeval, align 4
  store %struct.carp_softc* %0, %struct.carp_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.carp_softc*, %struct.carp_softc** %3, align 8
  %7 = call i32 @CARP_LOCK_ASSERT(%struct.carp_softc* %6)
  %8 = load %struct.carp_softc*, %struct.carp_softc** %3, align 8
  %9 = getelementptr inbounds %struct.carp_softc, %struct.carp_softc* %8, i32 0, i32 8
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @IFF_UP, align 4
  %14 = and i32 %12, %13
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %37, label %16

16:                                               ; preds = %2
  %17 = load %struct.carp_softc*, %struct.carp_softc** %3, align 8
  %18 = getelementptr inbounds %struct.carp_softc, %struct.carp_softc* %17, i32 0, i32 8
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @LINK_STATE_UP, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %37, label %24

24:                                               ; preds = %16
  %25 = load %struct.carp_softc*, %struct.carp_softc** %3, align 8
  %26 = getelementptr inbounds %struct.carp_softc, %struct.carp_softc* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %24
  %30 = load %struct.carp_softc*, %struct.carp_softc** %3, align 8
  %31 = getelementptr inbounds %struct.carp_softc, %struct.carp_softc* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %29, %24
  %35 = load i32, i32* @V_carp_allow, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %34, %29, %16, %2
  br label %81

38:                                               ; preds = %34
  %39 = load %struct.carp_softc*, %struct.carp_softc** %3, align 8
  %40 = getelementptr inbounds %struct.carp_softc, %struct.carp_softc* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  switch i32 %41, label %81 [
    i32 129, label %42
    i32 130, label %46
    i32 128, label %64
  ]

42:                                               ; preds = %38
  %43 = load %struct.carp_softc*, %struct.carp_softc** %3, align 8
  %44 = call i32 @carp_set_state(%struct.carp_softc* %43, i32 130, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %45 = load %struct.carp_softc*, %struct.carp_softc** %3, align 8
  call void @carp_setrun(%struct.carp_softc* %45, i32 0)
  br label %81

46:                                               ; preds = %38
  %47 = load %struct.carp_softc*, %struct.carp_softc** %3, align 8
  %48 = getelementptr inbounds %struct.carp_softc, %struct.carp_softc* %47, i32 0, i32 5
  %49 = call i32 @callout_stop(i32* %48)
  %50 = load %struct.carp_softc*, %struct.carp_softc** %3, align 8
  %51 = getelementptr inbounds %struct.carp_softc, %struct.carp_softc* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = mul nsw i32 3, %52
  %54 = getelementptr inbounds %struct.timeval, %struct.timeval* %5, i32 0, i32 0
  store i32 %53, i32* %54, align 4
  %55 = load %struct.carp_softc*, %struct.carp_softc** %3, align 8
  %56 = getelementptr inbounds %struct.carp_softc, %struct.carp_softc* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 8
  %58 = mul nsw i32 %57, 1000000
  %59 = sdiv i32 %58, 256
  %60 = getelementptr inbounds %struct.timeval, %struct.timeval* %5, i32 0, i32 1
  store i32 %59, i32* %60, align 4
  %61 = load i32, i32* %4, align 4
  switch i32 %61, label %62 [
  ]

62:                                               ; preds = %46
  br label %63

63:                                               ; preds = %62
  br label %81

64:                                               ; preds = %38
  %65 = load %struct.carp_softc*, %struct.carp_softc** %3, align 8
  %66 = getelementptr inbounds %struct.carp_softc, %struct.carp_softc* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = getelementptr inbounds %struct.timeval, %struct.timeval* %5, i32 0, i32 0
  store i32 %67, i32* %68, align 4
  %69 = load %struct.carp_softc*, %struct.carp_softc** %3, align 8
  %70 = getelementptr inbounds %struct.carp_softc, %struct.carp_softc* %69, i32 0, i32 4
  %71 = load i32, i32* %70, align 8
  %72 = mul nsw i32 %71, 1000000
  %73 = sdiv i32 %72, 256
  %74 = getelementptr inbounds %struct.timeval, %struct.timeval* %5, i32 0, i32 1
  store i32 %73, i32* %74, align 4
  %75 = load %struct.carp_softc*, %struct.carp_softc** %3, align 8
  %76 = getelementptr inbounds %struct.carp_softc, %struct.carp_softc* %75, i32 0, i32 5
  %77 = call i32 @tvtohz(%struct.timeval* %5)
  %78 = load i32, i32* @carp_send_ad, align 4
  %79 = load %struct.carp_softc*, %struct.carp_softc** %3, align 8
  %80 = call i32 @callout_reset(i32* %76, i32 %77, i32 %78, %struct.carp_softc* %79)
  br label %81

81:                                               ; preds = %37, %38, %64, %63, %42
  ret void
}

declare dso_local i32 @CARP_LOCK_ASSERT(%struct.carp_softc*) #1

declare dso_local i32 @carp_set_state(%struct.carp_softc*, i32, i8*) #1

declare dso_local i32 @callout_stop(i32*) #1

declare dso_local i32 @callout_reset(i32*, i32, i32, %struct.carp_softc*) #1

declare dso_local i32 @tvtohz(%struct.timeval*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
