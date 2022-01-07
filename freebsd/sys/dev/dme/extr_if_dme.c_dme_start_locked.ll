; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/dme/extr_if_dme.c_dme_start_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/dme/extr_if_dme.c_dme_start_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32, %struct.dme_softc* }
%struct.dme_softc = type { i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@IFF_DRV_OACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"dme_start, flags %#x busy %d ready %d\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"dme: send without empty queue\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ifnet*)* @dme_start_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dme_start_locked(%struct.ifnet* %0) #0 {
  %2 = alloca %struct.ifnet*, align 8
  %3 = alloca %struct.dme_softc*, align 8
  store %struct.ifnet* %0, %struct.ifnet** %2, align 8
  %4 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %5 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %4, i32 0, i32 1
  %6 = load %struct.dme_softc*, %struct.dme_softc** %5, align 8
  store %struct.dme_softc* %6, %struct.dme_softc** %3, align 8
  %7 = load %struct.dme_softc*, %struct.dme_softc** %3, align 8
  %8 = call i32 @DME_ASSERT_LOCKED(%struct.dme_softc* %7)
  %9 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %10 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %13 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %14 = or i32 %12, %13
  %15 = and i32 %11, %14
  %16 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %17 = icmp ne i32 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  br label %67

19:                                               ; preds = %1
  %20 = load %struct.dme_softc*, %struct.dme_softc** %3, align 8
  %21 = getelementptr inbounds %struct.dme_softc, %struct.dme_softc* %20, i32 0, i32 2
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.dme_softc*, %struct.dme_softc** %3, align 8
  %26 = getelementptr inbounds %struct.dme_softc, %struct.dme_softc* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.dme_softc*, %struct.dme_softc** %3, align 8
  %29 = getelementptr inbounds %struct.dme_softc, %struct.dme_softc* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @DTR3(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %24, i64 %27, i64 %30)
  %32 = load %struct.dme_softc*, %struct.dme_softc** %3, align 8
  %33 = getelementptr inbounds %struct.dme_softc, %struct.dme_softc* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %19
  %37 = load %struct.dme_softc*, %struct.dme_softc** %3, align 8
  %38 = getelementptr inbounds %struct.dme_softc, %struct.dme_softc* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %39, 0
  br label %41

41:                                               ; preds = %36, %19
  %42 = phi i1 [ true, %19 ], [ %40, %36 ]
  %43 = zext i1 %42 to i32
  %44 = call i32 @KASSERT(i32 %43, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %45 = load %struct.dme_softc*, %struct.dme_softc** %3, align 8
  %46 = call i32 @dme_prepare(%struct.dme_softc* %45)
  %47 = load %struct.dme_softc*, %struct.dme_softc** %3, align 8
  %48 = getelementptr inbounds %struct.dme_softc, %struct.dme_softc* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %41
  %52 = load %struct.dme_softc*, %struct.dme_softc** %3, align 8
  %53 = call i32 @dme_transmit(%struct.dme_softc* %52)
  %54 = load %struct.dme_softc*, %struct.dme_softc** %3, align 8
  %55 = call i32 @dme_prepare(%struct.dme_softc* %54)
  br label %56

56:                                               ; preds = %51, %41
  %57 = load %struct.dme_softc*, %struct.dme_softc** %3, align 8
  %58 = getelementptr inbounds %struct.dme_softc, %struct.dme_softc* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %56
  %62 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %63 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %64 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = or i32 %65, %62
  store i32 %66, i32* %64, align 8
  br label %67

67:                                               ; preds = %18, %61, %56
  ret void
}

declare dso_local i32 @DME_ASSERT_LOCKED(%struct.dme_softc*) #1

declare dso_local i32 @DTR3(i8*, i32, i64, i64) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @dme_prepare(%struct.dme_softc*) #1

declare dso_local i32 @dme_transmit(%struct.dme_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
