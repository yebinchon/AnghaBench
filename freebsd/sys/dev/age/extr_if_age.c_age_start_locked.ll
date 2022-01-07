; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/age/extr_if_age.c_age_start_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/age/extr_if_age.c_age_start_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32, i32, %struct.age_softc* }
%struct.age_softc = type { i32, i32 }
%struct.mbuf = type { i32 }

@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@IFF_DRV_OACTIVE = common dso_local global i32 0, align 4
@AGE_FLAG_LINK = common dso_local global i32 0, align 4
@AGE_TX_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ifnet*)* @age_start_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @age_start_locked(%struct.ifnet* %0) #0 {
  %2 = alloca %struct.ifnet*, align 8
  %3 = alloca %struct.age_softc*, align 8
  %4 = alloca %struct.mbuf*, align 8
  %5 = alloca i32, align 4
  store %struct.ifnet* %0, %struct.ifnet** %2, align 8
  %6 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %7 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %6, i32 0, i32 2
  %8 = load %struct.age_softc*, %struct.age_softc** %7, align 8
  store %struct.age_softc* %8, %struct.age_softc** %3, align 8
  %9 = load %struct.age_softc*, %struct.age_softc** %3, align 8
  %10 = call i32 @AGE_LOCK_ASSERT(%struct.age_softc* %9)
  %11 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %12 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %15 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %16 = or i32 %14, %15
  %17 = and i32 %13, %16
  %18 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %27, label %20

20:                                               ; preds = %1
  %21 = load %struct.age_softc*, %struct.age_softc** %3, align 8
  %22 = getelementptr inbounds %struct.age_softc, %struct.age_softc* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @AGE_FLAG_LINK, align 4
  %25 = and i32 %23, %24
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %20, %1
  br label %76

28:                                               ; preds = %20
  store i32 0, i32* %5, align 4
  br label %29

29:                                               ; preds = %61, %28
  %30 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %31 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %30, i32 0, i32 1
  %32 = call i32 @IFQ_DRV_IS_EMPTY(i32* %31)
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  br i1 %34, label %35, label %67

35:                                               ; preds = %29
  %36 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %37 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %36, i32 0, i32 1
  %38 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %39 = call i32 @IFQ_DRV_DEQUEUE(i32* %37, %struct.mbuf* %38)
  %40 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %41 = icmp eq %struct.mbuf* %40, null
  br i1 %41, label %42, label %43

42:                                               ; preds = %35
  br label %67

43:                                               ; preds = %35
  %44 = load %struct.age_softc*, %struct.age_softc** %3, align 8
  %45 = call i64 @age_encap(%struct.age_softc* %44, %struct.mbuf** %4)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %61

47:                                               ; preds = %43
  %48 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %49 = icmp eq %struct.mbuf* %48, null
  br i1 %49, label %50, label %51

50:                                               ; preds = %47
  br label %67

51:                                               ; preds = %47
  %52 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %53 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %52, i32 0, i32 1
  %54 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %55 = call i32 @IFQ_DRV_PREPEND(i32* %53, %struct.mbuf* %54)
  %56 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %57 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %58 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = or i32 %59, %56
  store i32 %60, i32* %58, align 8
  br label %67

61:                                               ; preds = %43
  %62 = load i32, i32* %5, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %5, align 4
  %64 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %65 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %66 = call i32 @ETHER_BPF_MTAP(%struct.ifnet* %64, %struct.mbuf* %65)
  br label %29

67:                                               ; preds = %51, %50, %42, %29
  %68 = load i32, i32* %5, align 4
  %69 = icmp sgt i32 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %67
  %71 = load %struct.age_softc*, %struct.age_softc** %3, align 8
  %72 = call i32 @AGE_COMMIT_MBOX(%struct.age_softc* %71)
  %73 = load i32, i32* @AGE_TX_TIMEOUT, align 4
  %74 = load %struct.age_softc*, %struct.age_softc** %3, align 8
  %75 = getelementptr inbounds %struct.age_softc, %struct.age_softc* %74, i32 0, i32 1
  store i32 %73, i32* %75, align 4
  br label %76

76:                                               ; preds = %27, %70, %67
  ret void
}

declare dso_local i32 @AGE_LOCK_ASSERT(%struct.age_softc*) #1

declare dso_local i32 @IFQ_DRV_IS_EMPTY(i32*) #1

declare dso_local i32 @IFQ_DRV_DEQUEUE(i32*, %struct.mbuf*) #1

declare dso_local i64 @age_encap(%struct.age_softc*, %struct.mbuf**) #1

declare dso_local i32 @IFQ_DRV_PREPEND(i32*, %struct.mbuf*) #1

declare dso_local i32 @ETHER_BPF_MTAP(%struct.ifnet*, %struct.mbuf*) #1

declare dso_local i32 @AGE_COMMIT_MBOX(%struct.age_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
