; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/re/extr_if_re.c_re_start_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/re/extr_if_re.c_re_start_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32, i32, i32, %struct.rl_softc* }
%struct.rl_softc = type { i32, i32, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i64, i32, i32 }
%struct.mbuf = type { i32 }

@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@IFF_DRV_OACTIVE = common dso_local global i32 0, align 4
@RL_FLAG_LINK = common dso_local global i32 0, align 4
@IFCAP_NETMAP = common dso_local global i32 0, align 4
@RL_TIMERCNT = common dso_local global i32 0, align 4
@RL_TXSTART_START = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ifnet*)* @re_start_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @re_start_locked(%struct.ifnet* %0) #0 {
  %2 = alloca %struct.ifnet*, align 8
  %3 = alloca %struct.rl_softc*, align 8
  %4 = alloca %struct.mbuf*, align 8
  %5 = alloca i32, align 4
  store %struct.ifnet* %0, %struct.ifnet** %2, align 8
  %6 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %7 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %6, i32 0, i32 3
  %8 = load %struct.rl_softc*, %struct.rl_softc** %7, align 8
  store %struct.rl_softc* %8, %struct.rl_softc** %3, align 8
  %9 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %10 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %13 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %14 = or i32 %12, %13
  %15 = and i32 %11, %14
  %16 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %17 = icmp ne i32 %15, %16
  br i1 %17, label %25, label %18

18:                                               ; preds = %1
  %19 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %20 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @RL_FLAG_LINK, align 4
  %23 = and i32 %21, %22
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %18, %1
  br label %79

26:                                               ; preds = %18
  store i32 0, i32* %5, align 4
  br label %27

27:                                               ; preds = %66, %26
  %28 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %29 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %28, i32 0, i32 2
  %30 = call i32 @IFQ_DRV_IS_EMPTY(i32* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %38, label %32

32:                                               ; preds = %27
  %33 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %34 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = icmp sgt i32 %36, 1
  br label %38

38:                                               ; preds = %32, %27
  %39 = phi i1 [ false, %27 ], [ %37, %32 ]
  br i1 %39, label %40, label %72

40:                                               ; preds = %38
  %41 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %42 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %41, i32 0, i32 2
  %43 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %44 = call i32 @IFQ_DRV_DEQUEUE(i32* %42, %struct.mbuf* %43)
  %45 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %46 = icmp eq %struct.mbuf* %45, null
  br i1 %46, label %47, label %48

47:                                               ; preds = %40
  br label %72

48:                                               ; preds = %40
  %49 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %50 = call i64 @re_encap(%struct.rl_softc* %49, %struct.mbuf** %4)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %66

52:                                               ; preds = %48
  %53 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %54 = icmp eq %struct.mbuf* %53, null
  br i1 %54, label %55, label %56

55:                                               ; preds = %52
  br label %72

56:                                               ; preds = %52
  %57 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %58 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %57, i32 0, i32 2
  %59 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %60 = call i32 @IFQ_DRV_PREPEND(i32* %58, %struct.mbuf* %59)
  %61 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %62 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %63 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = or i32 %64, %61
  store i32 %65, i32* %63, align 4
  br label %72

66:                                               ; preds = %48
  %67 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %68 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %69 = call i32 @ETHER_BPF_MTAP(%struct.ifnet* %67, %struct.mbuf* %68)
  %70 = load i32, i32* %5, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %5, align 4
  br label %27

72:                                               ; preds = %56, %55, %47, %38
  %73 = load i32, i32* %5, align 4
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %72
  br label %79

76:                                               ; preds = %72
  %77 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %78 = call i32 @re_start_tx(%struct.rl_softc* %77)
  br label %79

79:                                               ; preds = %76, %75, %25
  ret void
}

declare dso_local i32 @IFQ_DRV_IS_EMPTY(i32*) #1

declare dso_local i32 @IFQ_DRV_DEQUEUE(i32*, %struct.mbuf*) #1

declare dso_local i64 @re_encap(%struct.rl_softc*, %struct.mbuf**) #1

declare dso_local i32 @IFQ_DRV_PREPEND(i32*, %struct.mbuf*) #1

declare dso_local i32 @ETHER_BPF_MTAP(%struct.ifnet*, %struct.mbuf*) #1

declare dso_local i32 @re_start_tx(%struct.rl_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
