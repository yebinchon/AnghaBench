; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/rl/extr_if_rl.c_rl_start_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/rl/extr_if_rl.c_rl_start_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32, i32, %struct.rl_softc* }
%struct.rl_softc = type { i32, i32, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.mbuf = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@IFF_DRV_OACTIVE = common dso_local global i32 0, align 4
@RL_FLAG_LINK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ifnet*)* @rl_start_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rl_start_locked(%struct.ifnet* %0) #0 {
  %2 = alloca %struct.ifnet*, align 8
  %3 = alloca %struct.rl_softc*, align 8
  %4 = alloca %struct.mbuf*, align 8
  store %struct.ifnet* %0, %struct.ifnet** %2, align 8
  %5 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %6 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %5, i32 0, i32 2
  %7 = load %struct.rl_softc*, %struct.rl_softc** %6, align 8
  store %struct.rl_softc* %7, %struct.rl_softc** %3, align 8
  store %struct.mbuf* null, %struct.mbuf** %4, align 8
  %8 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %9 = call i32 @RL_LOCK_ASSERT(%struct.rl_softc* %8)
  %10 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %11 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %14 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %15 = or i32 %13, %14
  %16 = and i32 %12, %15
  %17 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %18 = icmp ne i32 %16, %17
  br i1 %18, label %26, label %19

19:                                               ; preds = %1
  %20 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %21 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @RL_FLAG_LINK, align 4
  %24 = and i32 %22, %23
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %19, %1
  br label %94

27:                                               ; preds = %19
  br label %28

28:                                               ; preds = %58, %27
  %29 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %30 = call %struct.TYPE_7__* @RL_CUR_TXMBUF(%struct.rl_softc* %29)
  %31 = icmp eq %struct.TYPE_7__* %30, null
  br i1 %31, label %32, label %84

32:                                               ; preds = %28
  %33 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %34 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %33, i32 0, i32 1
  %35 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %36 = call i32 @IFQ_DRV_DEQUEUE(i32* %34, %struct.mbuf* %35)
  %37 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %38 = icmp eq %struct.mbuf* %37, null
  br i1 %38, label %39, label %40

39:                                               ; preds = %32
  br label %84

40:                                               ; preds = %32
  %41 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %42 = call i64 @rl_encap(%struct.rl_softc* %41, %struct.mbuf** %4)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %58

44:                                               ; preds = %40
  %45 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %46 = icmp eq %struct.mbuf* %45, null
  br i1 %46, label %47, label %48

47:                                               ; preds = %44
  br label %84

48:                                               ; preds = %44
  %49 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %50 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %49, i32 0, i32 1
  %51 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %52 = call i32 @IFQ_DRV_PREPEND(i32* %50, %struct.mbuf* %51)
  %53 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %54 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %55 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = or i32 %56, %53
  store i32 %57, i32* %55, align 8
  br label %84

58:                                               ; preds = %40
  %59 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %60 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %61 = call %struct.TYPE_7__* @RL_CUR_TXMBUF(%struct.rl_softc* %60)
  %62 = call i32 @BPF_MTAP(%struct.ifnet* %59, %struct.TYPE_7__* %61)
  %63 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %64 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %65 = call i32 @RL_CUR_TXSTAT(%struct.rl_softc* %64)
  %66 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %67 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @RL_TXTHRESH(i32 %68)
  %70 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %71 = call %struct.TYPE_7__* @RL_CUR_TXMBUF(%struct.rl_softc* %70)
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = or i32 %69, %74
  %76 = call i32 @CSR_WRITE_4(%struct.rl_softc* %63, i32 %65, i32 %75)
  %77 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %78 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @RL_INC(i32 %80)
  %82 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %83 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %82, i32 0, i32 1
  store i32 5, i32* %83, align 4
  br label %28

84:                                               ; preds = %48, %47, %39, %28
  %85 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %86 = call %struct.TYPE_7__* @RL_CUR_TXMBUF(%struct.rl_softc* %85)
  %87 = icmp ne %struct.TYPE_7__* %86, null
  br i1 %87, label %88, label %94

88:                                               ; preds = %84
  %89 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %90 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %91 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = or i32 %92, %89
  store i32 %93, i32* %91, align 8
  br label %94

94:                                               ; preds = %26, %88, %84
  ret void
}

declare dso_local i32 @RL_LOCK_ASSERT(%struct.rl_softc*) #1

declare dso_local %struct.TYPE_7__* @RL_CUR_TXMBUF(%struct.rl_softc*) #1

declare dso_local i32 @IFQ_DRV_DEQUEUE(i32*, %struct.mbuf*) #1

declare dso_local i64 @rl_encap(%struct.rl_softc*, %struct.mbuf**) #1

declare dso_local i32 @IFQ_DRV_PREPEND(i32*, %struct.mbuf*) #1

declare dso_local i32 @BPF_MTAP(%struct.ifnet*, %struct.TYPE_7__*) #1

declare dso_local i32 @CSR_WRITE_4(%struct.rl_softc*, i32, i32) #1

declare dso_local i32 @RL_CUR_TXSTAT(%struct.rl_softc*) #1

declare dso_local i32 @RL_TXTHRESH(i32) #1

declare dso_local i32 @RL_INC(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
