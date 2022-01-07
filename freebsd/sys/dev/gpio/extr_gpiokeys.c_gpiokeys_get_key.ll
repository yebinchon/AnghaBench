; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/gpio/extr_gpiokeys.c_gpiokeys_get_key.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/gpio/extr_gpiokeys.c_gpiokeys_get_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpiokeys_softc = type { i32, i64, i32*, i64 }

@kdb_active = common dso_local global i32 0, align 4
@GPIOKEYS_GLOBAL_FLAG_POLLING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"not polling in kdb or panic\0A\00", align 1
@GPIOKEYS_GLOBAL_IN_BUF_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpiokeys_softc*, i32)* @gpiokeys_get_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gpiokeys_get_key(%struct.gpiokeys_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.gpiokeys_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.gpiokeys_softc* %0, %struct.gpiokeys_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* @kdb_active, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = call i32 (...) @SCHEDULER_STOPPED()
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %18

11:                                               ; preds = %8, %2
  %12 = load %struct.gpiokeys_softc*, %struct.gpiokeys_softc** %3, align 8
  %13 = getelementptr inbounds %struct.gpiokeys_softc, %struct.gpiokeys_softc* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @GPIOKEYS_GLOBAL_FLAG_POLLING, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br label %18

18:                                               ; preds = %11, %8
  %19 = phi i1 [ true, %8 ], [ %17, %11 ]
  %20 = zext i1 %19 to i32
  %21 = call i32 @KASSERT(i32 %20, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %22 = load %struct.gpiokeys_softc*, %struct.gpiokeys_softc** %3, align 8
  %23 = call i32 @GPIOKEYS_ASSERT_LOCKED(%struct.gpiokeys_softc* %22)
  %24 = load %struct.gpiokeys_softc*, %struct.gpiokeys_softc** %3, align 8
  %25 = getelementptr inbounds %struct.gpiokeys_softc, %struct.gpiokeys_softc* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @GPIOKEYS_GLOBAL_FLAG_POLLING, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %18
  %31 = load %struct.gpiokeys_softc*, %struct.gpiokeys_softc** %3, align 8
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @gpiokeys_do_poll(%struct.gpiokeys_softc* %31, i32 %32)
  br label %34

34:                                               ; preds = %30, %18
  %35 = load %struct.gpiokeys_softc*, %struct.gpiokeys_softc** %3, align 8
  %36 = getelementptr inbounds %struct.gpiokeys_softc, %struct.gpiokeys_softc* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  store i32 -1, i32* %5, align 4
  br label %66

40:                                               ; preds = %34
  %41 = load %struct.gpiokeys_softc*, %struct.gpiokeys_softc** %3, align 8
  %42 = getelementptr inbounds %struct.gpiokeys_softc, %struct.gpiokeys_softc* %41, i32 0, i32 2
  %43 = load i32*, i32** %42, align 8
  %44 = load %struct.gpiokeys_softc*, %struct.gpiokeys_softc** %3, align 8
  %45 = getelementptr inbounds %struct.gpiokeys_softc, %struct.gpiokeys_softc* %44, i32 0, i32 3
  %46 = load i64, i64* %45, align 8
  %47 = getelementptr inbounds i32, i32* %43, i64 %46
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %5, align 4
  %49 = load %struct.gpiokeys_softc*, %struct.gpiokeys_softc** %3, align 8
  %50 = getelementptr inbounds %struct.gpiokeys_softc, %struct.gpiokeys_softc* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = add nsw i64 %51, -1
  store i64 %52, i64* %50, align 8
  %53 = load %struct.gpiokeys_softc*, %struct.gpiokeys_softc** %3, align 8
  %54 = getelementptr inbounds %struct.gpiokeys_softc, %struct.gpiokeys_softc* %53, i32 0, i32 3
  %55 = load i64, i64* %54, align 8
  %56 = add i64 %55, 1
  store i64 %56, i64* %54, align 8
  %57 = load %struct.gpiokeys_softc*, %struct.gpiokeys_softc** %3, align 8
  %58 = getelementptr inbounds %struct.gpiokeys_softc, %struct.gpiokeys_softc* %57, i32 0, i32 3
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @GPIOKEYS_GLOBAL_IN_BUF_SIZE, align 8
  %61 = icmp uge i64 %59, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %40
  %63 = load %struct.gpiokeys_softc*, %struct.gpiokeys_softc** %3, align 8
  %64 = getelementptr inbounds %struct.gpiokeys_softc, %struct.gpiokeys_softc* %63, i32 0, i32 3
  store i64 0, i64* %64, align 8
  br label %65

65:                                               ; preds = %62, %40
  br label %66

66:                                               ; preds = %65, %39
  %67 = load i32, i32* %5, align 4
  ret i32 %67
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @SCHEDULER_STOPPED(...) #1

declare dso_local i32 @GPIOKEYS_ASSERT_LOCKED(%struct.gpiokeys_softc*) #1

declare dso_local i32 @gpiokeys_do_poll(%struct.gpiokeys_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
