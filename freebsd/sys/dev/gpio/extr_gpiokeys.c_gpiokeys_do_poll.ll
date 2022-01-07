; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/gpio/extr_gpiokeys.c_gpiokeys_do_poll.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/gpio/extr_gpiokeys.c_gpiokeys_do_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpiokeys_softc = type { i32, i64 }

@GPIOKEYS_GLOBAL_FLAG_POLLING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"gpiokeys_do_poll called when not polling\0A\00", align 1
@kdb_active = common dso_local global i32 0, align 4
@PRI_UNCHANGED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"POLL!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gpiokeys_softc*, i64)* @gpiokeys_do_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gpiokeys_do_poll(%struct.gpiokeys_softc* %0, i64 %1) #0 {
  %3 = alloca %struct.gpiokeys_softc*, align 8
  %4 = alloca i64, align 8
  store %struct.gpiokeys_softc* %0, %struct.gpiokeys_softc** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %struct.gpiokeys_softc*, %struct.gpiokeys_softc** %3, align 8
  %6 = getelementptr inbounds %struct.gpiokeys_softc, %struct.gpiokeys_softc* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @GPIOKEYS_GLOBAL_FLAG_POLLING, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  %11 = zext i1 %10 to i32
  %12 = call i32 @KASSERT(i32 %11, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.gpiokeys_softc*, %struct.gpiokeys_softc** %3, align 8
  %14 = call i32 @GPIOKEYS_ASSERT_LOCKED(%struct.gpiokeys_softc* %13)
  %15 = load i32, i32* @kdb_active, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %34, label %17

17:                                               ; preds = %2
  %18 = call i32 (...) @SCHEDULER_STOPPED()
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %34, label %20

20:                                               ; preds = %17
  br label %21

21:                                               ; preds = %32, %20
  %22 = load %struct.gpiokeys_softc*, %struct.gpiokeys_softc** %3, align 8
  %23 = getelementptr inbounds %struct.gpiokeys_softc, %struct.gpiokeys_softc* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %21
  %27 = load i32, i32* @PRI_UNCHANGED, align 4
  %28 = call i32 @kern_yield(i32 %27)
  %29 = load i64, i64* %4, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %26
  br label %33

32:                                               ; preds = %26
  br label %21

33:                                               ; preds = %31, %21
  br label %47

34:                                               ; preds = %17, %2
  br label %35

35:                                               ; preds = %45, %34
  %36 = load %struct.gpiokeys_softc*, %struct.gpiokeys_softc** %3, align 8
  %37 = getelementptr inbounds %struct.gpiokeys_softc, %struct.gpiokeys_softc* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = load i64, i64* %4, align 8
  %42 = icmp ne i64 %41, 0
  br label %43

43:                                               ; preds = %40, %35
  %44 = phi i1 [ false, %35 ], [ %42, %40 ]
  br i1 %44, label %45, label %47

45:                                               ; preds = %43
  %46 = call i32 @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  br label %35

47:                                               ; preds = %33, %43
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @GPIOKEYS_ASSERT_LOCKED(%struct.gpiokeys_softc*) #1

declare dso_local i32 @SCHEDULER_STOPPED(...) #1

declare dso_local i32 @kern_yield(i32) #1

declare dso_local i32 @printf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
