; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_ip_carp.c_carp_sc_state.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_ip_carp.c_carp_sc_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.carp_softc = type { i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32 }

@LINK_STATE_UP = common dso_local global i64 0, align 8
@IFF_UP = common dso_local global i32 0, align 4
@V_carp_allow = common dso_local global i32 0, align 4
@INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"hardware interface down\00", align 1
@V_carp_ifdown_adj = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"interface down\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"hardware interface up\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"interface up\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.carp_softc*)* @carp_sc_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @carp_sc_state(%struct.carp_softc* %0) #0 {
  %2 = alloca %struct.carp_softc*, align 8
  store %struct.carp_softc* %0, %struct.carp_softc** %2, align 8
  %3 = load %struct.carp_softc*, %struct.carp_softc** %2, align 8
  %4 = call i32 @CARP_LOCK_ASSERT(%struct.carp_softc* %3)
  %5 = load %struct.carp_softc*, %struct.carp_softc** %2, align 8
  %6 = getelementptr inbounds %struct.carp_softc, %struct.carp_softc* %5, i32 0, i32 4
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @LINK_STATE_UP, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %24, label %12

12:                                               ; preds = %1
  %13 = load %struct.carp_softc*, %struct.carp_softc** %2, align 8
  %14 = getelementptr inbounds %struct.carp_softc, %struct.carp_softc* %13, i32 0, i32 4
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @IFF_UP, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %12
  %22 = load i32, i32* @V_carp_allow, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %43, label %24

24:                                               ; preds = %21, %12, %1
  %25 = load %struct.carp_softc*, %struct.carp_softc** %2, align 8
  %26 = getelementptr inbounds %struct.carp_softc, %struct.carp_softc* %25, i32 0, i32 3
  %27 = call i32 @callout_stop(i32* %26)
  %28 = load %struct.carp_softc*, %struct.carp_softc** %2, align 8
  %29 = load i32, i32* @INIT, align 4
  %30 = call i32 @carp_set_state(%struct.carp_softc* %28, i32 %29, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %31 = load %struct.carp_softc*, %struct.carp_softc** %2, align 8
  %32 = call i32 @carp_setrun(%struct.carp_softc* %31, i32 0)
  %33 = load %struct.carp_softc*, %struct.carp_softc** %2, align 8
  %34 = getelementptr inbounds %struct.carp_softc, %struct.carp_softc* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %24
  %38 = load i32, i32* @V_carp_ifdown_adj, align 4
  %39 = call i32 @carp_demote_adj(i32 %38, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  br label %40

40:                                               ; preds = %37, %24
  %41 = load %struct.carp_softc*, %struct.carp_softc** %2, align 8
  %42 = getelementptr inbounds %struct.carp_softc, %struct.carp_softc* %41, i32 0, i32 0
  store i32 1, i32* %42, align 8
  br label %60

43:                                               ; preds = %21
  %44 = load %struct.carp_softc*, %struct.carp_softc** %2, align 8
  %45 = load i32, i32* @INIT, align 4
  %46 = call i32 @carp_set_state(%struct.carp_softc* %44, i32 %45, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %47 = load %struct.carp_softc*, %struct.carp_softc** %2, align 8
  %48 = call i32 @carp_setrun(%struct.carp_softc* %47, i32 0)
  %49 = load %struct.carp_softc*, %struct.carp_softc** %2, align 8
  %50 = getelementptr inbounds %struct.carp_softc, %struct.carp_softc* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %43
  %54 = load i32, i32* @V_carp_ifdown_adj, align 4
  %55 = sub nsw i32 0, %54
  %56 = call i32 @carp_demote_adj(i32 %55, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  br label %57

57:                                               ; preds = %53, %43
  %58 = load %struct.carp_softc*, %struct.carp_softc** %2, align 8
  %59 = getelementptr inbounds %struct.carp_softc, %struct.carp_softc* %58, i32 0, i32 0
  store i32 0, i32* %59, align 8
  br label %60

60:                                               ; preds = %57, %40
  ret void
}

declare dso_local i32 @CARP_LOCK_ASSERT(%struct.carp_softc*) #1

declare dso_local i32 @callout_stop(i32*) #1

declare dso_local i32 @carp_set_state(%struct.carp_softc*, i32, i8*) #1

declare dso_local i32 @carp_setrun(%struct.carp_softc*, i32) #1

declare dso_local i32 @carp_demote_adj(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
