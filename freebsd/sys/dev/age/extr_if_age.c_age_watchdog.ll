; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/age/extr_if_age.c_age_watchdog.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/age/extr_if_age.c_age_watchdog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.age_softc = type { i64, i32, %struct.ifnet*, %struct.TYPE_2__ }
%struct.ifnet = type { i32, i32 }
%struct.TYPE_2__ = type { i64 }

@AGE_FLAG_LINK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"watchdog timeout (missed link)\0A\00", align 1
@IFCOUNTER_OERRORS = common dso_local global i32 0, align 4
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [55 x i8] c"watchdog timeout (missed Tx interrupts) -- recovering\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"watchdog timeout\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.age_softc*)* @age_watchdog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @age_watchdog(%struct.age_softc* %0) #0 {
  %2 = alloca %struct.age_softc*, align 8
  %3 = alloca %struct.ifnet*, align 8
  store %struct.age_softc* %0, %struct.age_softc** %2, align 8
  %4 = load %struct.age_softc*, %struct.age_softc** %2, align 8
  %5 = call i32 @AGE_LOCK_ASSERT(%struct.age_softc* %4)
  %6 = load %struct.age_softc*, %struct.age_softc** %2, align 8
  %7 = getelementptr inbounds %struct.age_softc, %struct.age_softc* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %16, label %10

10:                                               ; preds = %1
  %11 = load %struct.age_softc*, %struct.age_softc** %2, align 8
  %12 = getelementptr inbounds %struct.age_softc, %struct.age_softc* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = add nsw i64 %13, -1
  store i64 %14, i64* %12, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %10, %1
  br label %85

17:                                               ; preds = %10
  %18 = load %struct.age_softc*, %struct.age_softc** %2, align 8
  %19 = getelementptr inbounds %struct.age_softc, %struct.age_softc* %18, i32 0, i32 2
  %20 = load %struct.ifnet*, %struct.ifnet** %19, align 8
  store %struct.ifnet* %20, %struct.ifnet** %3, align 8
  %21 = load %struct.age_softc*, %struct.age_softc** %2, align 8
  %22 = getelementptr inbounds %struct.age_softc, %struct.age_softc* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @AGE_FLAG_LINK, align 4
  %25 = and i32 %23, %24
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %43

27:                                               ; preds = %17
  %28 = load %struct.age_softc*, %struct.age_softc** %2, align 8
  %29 = getelementptr inbounds %struct.age_softc, %struct.age_softc* %28, i32 0, i32 2
  %30 = load %struct.ifnet*, %struct.ifnet** %29, align 8
  %31 = call i32 @if_printf(%struct.ifnet* %30, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %32 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %33 = load i32, i32* @IFCOUNTER_OERRORS, align 4
  %34 = call i32 @if_inc_counter(%struct.ifnet* %32, i32 %33, i32 1)
  %35 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %36 = xor i32 %35, -1
  %37 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %38 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = and i32 %39, %36
  store i32 %40, i32* %38, align 4
  %41 = load %struct.age_softc*, %struct.age_softc** %2, align 8
  %42 = call i32 @age_init_locked(%struct.age_softc* %41)
  br label %85

43:                                               ; preds = %17
  %44 = load %struct.age_softc*, %struct.age_softc** %2, align 8
  %45 = getelementptr inbounds %struct.age_softc, %struct.age_softc* %44, i32 0, i32 3
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %62

49:                                               ; preds = %43
  %50 = load %struct.age_softc*, %struct.age_softc** %2, align 8
  %51 = getelementptr inbounds %struct.age_softc, %struct.age_softc* %50, i32 0, i32 2
  %52 = load %struct.ifnet*, %struct.ifnet** %51, align 8
  %53 = call i32 @if_printf(%struct.ifnet* %52, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0))
  %54 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %55 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %54, i32 0, i32 0
  %56 = call i32 @IFQ_DRV_IS_EMPTY(i32* %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %49
  %59 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %60 = call i32 @age_start_locked(%struct.ifnet* %59)
  br label %61

61:                                               ; preds = %58, %49
  br label %85

62:                                               ; preds = %43
  %63 = load %struct.age_softc*, %struct.age_softc** %2, align 8
  %64 = getelementptr inbounds %struct.age_softc, %struct.age_softc* %63, i32 0, i32 2
  %65 = load %struct.ifnet*, %struct.ifnet** %64, align 8
  %66 = call i32 @if_printf(%struct.ifnet* %65, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %67 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %68 = load i32, i32* @IFCOUNTER_OERRORS, align 4
  %69 = call i32 @if_inc_counter(%struct.ifnet* %67, i32 %68, i32 1)
  %70 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %71 = xor i32 %70, -1
  %72 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %73 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = and i32 %74, %71
  store i32 %75, i32* %73, align 4
  %76 = load %struct.age_softc*, %struct.age_softc** %2, align 8
  %77 = call i32 @age_init_locked(%struct.age_softc* %76)
  %78 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %79 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %78, i32 0, i32 0
  %80 = call i32 @IFQ_DRV_IS_EMPTY(i32* %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %85, label %82

82:                                               ; preds = %62
  %83 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %84 = call i32 @age_start_locked(%struct.ifnet* %83)
  br label %85

85:                                               ; preds = %16, %27, %61, %82, %62
  ret void
}

declare dso_local i32 @AGE_LOCK_ASSERT(%struct.age_softc*) #1

declare dso_local i32 @if_printf(%struct.ifnet*, i8*) #1

declare dso_local i32 @if_inc_counter(%struct.ifnet*, i32, i32) #1

declare dso_local i32 @age_init_locked(%struct.age_softc*) #1

declare dso_local i32 @IFQ_DRV_IS_EMPTY(i32*) #1

declare dso_local i32 @age_start_locked(%struct.ifnet*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
