; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iwm/extr_if_iwm.c_iwm_init_task.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iwm/extr_if_iwm.c_iwm_init_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwm_softc = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64 }

@IWM_FLAG_BUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"iwmpwr\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iwm_init_task(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.iwm_softc*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.iwm_softc*
  store %struct.iwm_softc* %5, %struct.iwm_softc** %3, align 8
  %6 = load %struct.iwm_softc*, %struct.iwm_softc** %3, align 8
  %7 = call i32 @IWM_LOCK(%struct.iwm_softc* %6)
  br label %8

8:                                                ; preds = %15, %1
  %9 = load %struct.iwm_softc*, %struct.iwm_softc** %3, align 8
  %10 = getelementptr inbounds %struct.iwm_softc, %struct.iwm_softc* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @IWM_FLAG_BUSY, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %8
  %16 = load %struct.iwm_softc*, %struct.iwm_softc** %3, align 8
  %17 = getelementptr inbounds %struct.iwm_softc, %struct.iwm_softc* %16, i32 0, i32 0
  %18 = load %struct.iwm_softc*, %struct.iwm_softc** %3, align 8
  %19 = getelementptr inbounds %struct.iwm_softc, %struct.iwm_softc* %18, i32 0, i32 2
  %20 = call i32 @msleep(i32* %17, i32* %19, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 0)
  br label %8

21:                                               ; preds = %8
  %22 = load i32, i32* @IWM_FLAG_BUSY, align 4
  %23 = load %struct.iwm_softc*, %struct.iwm_softc** %3, align 8
  %24 = getelementptr inbounds %struct.iwm_softc, %struct.iwm_softc* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = or i32 %25, %22
  store i32 %26, i32* %24, align 8
  %27 = load %struct.iwm_softc*, %struct.iwm_softc** %3, align 8
  %28 = call i32 @iwm_stop(%struct.iwm_softc* %27)
  %29 = load %struct.iwm_softc*, %struct.iwm_softc** %3, align 8
  %30 = getelementptr inbounds %struct.iwm_softc, %struct.iwm_softc* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp sgt i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %21
  %35 = load %struct.iwm_softc*, %struct.iwm_softc** %3, align 8
  %36 = call i32 @iwm_init(%struct.iwm_softc* %35)
  br label %37

37:                                               ; preds = %34, %21
  %38 = load i32, i32* @IWM_FLAG_BUSY, align 4
  %39 = xor i32 %38, -1
  %40 = load %struct.iwm_softc*, %struct.iwm_softc** %3, align 8
  %41 = getelementptr inbounds %struct.iwm_softc, %struct.iwm_softc* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = and i32 %42, %39
  store i32 %43, i32* %41, align 8
  %44 = load %struct.iwm_softc*, %struct.iwm_softc** %3, align 8
  %45 = getelementptr inbounds %struct.iwm_softc, %struct.iwm_softc* %44, i32 0, i32 0
  %46 = call i32 @wakeup(i32* %45)
  %47 = load %struct.iwm_softc*, %struct.iwm_softc** %3, align 8
  %48 = call i32 @IWM_UNLOCK(%struct.iwm_softc* %47)
  ret void
}

declare dso_local i32 @IWM_LOCK(%struct.iwm_softc*) #1

declare dso_local i32 @msleep(i32*, i32*, i32, i8*, i32) #1

declare dso_local i32 @iwm_stop(%struct.iwm_softc*) #1

declare dso_local i32 @iwm_init(%struct.iwm_softc*) #1

declare dso_local i32 @wakeup(i32*) #1

declare dso_local i32 @IWM_UNLOCK(%struct.iwm_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
