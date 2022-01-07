; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ciss/extr_ciss.c_ciss_wait_adapter.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ciss/extr_ciss.c_ciss_wait_adapter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ciss_softc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@CISS_TRANSPORT_METHOD_READY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"waiting for adapter to come ready...\0A\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"timed out waiting for adapter to come ready\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ciss_softc*)* @ciss_wait_adapter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ciss_wait_adapter(%struct.ciss_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ciss_softc*, align 8
  %4 = alloca i32, align 4
  store %struct.ciss_softc* %0, %struct.ciss_softc** %3, align 8
  %5 = call i32 @debug_called(i32 1)
  %6 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %7 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @CISS_TRANSPORT_METHOD_READY, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %40, label %14

14:                                               ; preds = %1
  %15 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %16 = call i32 @ciss_printf(%struct.ciss_softc* %15, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %17

17:                                               ; preds = %36, %14
  %18 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %19 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @CISS_TRANSPORT_METHOD_READY, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  br i1 %26, label %27, label %39

27:                                               ; preds = %17
  %28 = call i32 @DELAY(i32 1000000)
  %29 = load i32, i32* %4, align 4
  %30 = icmp sgt i32 %29, 30
  br i1 %30, label %31, label %35

31:                                               ; preds = %27
  %32 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %33 = call i32 @ciss_printf(%struct.ciss_softc* %32, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  %34 = load i32, i32* @EIO, align 4
  store i32 %34, i32* %2, align 4
  br label %41

35:                                               ; preds = %27
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* %4, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %4, align 4
  br label %17

39:                                               ; preds = %17
  br label %40

40:                                               ; preds = %39, %1
  store i32 0, i32* %2, align 4
  br label %41

41:                                               ; preds = %40, %31
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local i32 @debug_called(i32) #1

declare dso_local i32 @ciss_printf(%struct.ciss_softc*, i8*) #1

declare dso_local i32 @DELAY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
