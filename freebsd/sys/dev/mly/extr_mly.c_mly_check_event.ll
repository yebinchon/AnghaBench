; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mly/extr_mly.c_mly_check_event.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mly/extr_mly.c_mly_check_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mly_softc = type { i64, i64, i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i64 }

@.str = private unnamed_addr constant [47 x i8] c"event change %d, event status update, %d -> %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mly_softc*)* @mly_check_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mly_check_event(%struct.mly_softc* %0) #0 {
  %2 = alloca %struct.mly_softc*, align 8
  store %struct.mly_softc* %0, %struct.mly_softc** %2, align 8
  %3 = load %struct.mly_softc*, %struct.mly_softc** %2, align 8
  %4 = getelementptr inbounds %struct.mly_softc, %struct.mly_softc* %3, i32 0, i32 3
  %5 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.mly_softc*, %struct.mly_softc** %2, align 8
  %11 = getelementptr inbounds %struct.mly_softc, %struct.mly_softc* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %9, %12
  br i1 %13, label %14, label %50

14:                                               ; preds = %1
  %15 = load %struct.mly_softc*, %struct.mly_softc** %2, align 8
  %16 = getelementptr inbounds %struct.mly_softc, %struct.mly_softc* %15, i32 0, i32 3
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.mly_softc*, %struct.mly_softc** %2, align 8
  %23 = getelementptr inbounds %struct.mly_softc, %struct.mly_softc* %22, i32 0, i32 0
  store i64 %21, i64* %23, align 8
  %24 = load %struct.mly_softc*, %struct.mly_softc** %2, align 8
  %25 = getelementptr inbounds %struct.mly_softc, %struct.mly_softc* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.mly_softc*, %struct.mly_softc** %2, align 8
  %28 = getelementptr inbounds %struct.mly_softc, %struct.mly_softc* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.mly_softc*, %struct.mly_softc** %2, align 8
  %31 = getelementptr inbounds %struct.mly_softc, %struct.mly_softc* %30, i32 0, i32 3
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @debug(i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i64 %26, i64 %29, i64 %36)
  %38 = load %struct.mly_softc*, %struct.mly_softc** %2, align 8
  %39 = getelementptr inbounds %struct.mly_softc, %struct.mly_softc* %38, i32 0, i32 3
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.mly_softc*, %struct.mly_softc** %2, align 8
  %46 = getelementptr inbounds %struct.mly_softc, %struct.mly_softc* %45, i32 0, i32 1
  store i64 %44, i64* %46, align 8
  %47 = load %struct.mly_softc*, %struct.mly_softc** %2, align 8
  %48 = getelementptr inbounds %struct.mly_softc, %struct.mly_softc* %47, i32 0, i32 0
  %49 = call i32 @wakeup(i64* %48)
  br label %50

50:                                               ; preds = %14, %1
  %51 = load %struct.mly_softc*, %struct.mly_softc** %2, align 8
  %52 = getelementptr inbounds %struct.mly_softc, %struct.mly_softc* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.mly_softc*, %struct.mly_softc** %2, align 8
  %55 = getelementptr inbounds %struct.mly_softc, %struct.mly_softc* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %53, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %50
  %59 = load %struct.mly_softc*, %struct.mly_softc** %2, align 8
  %60 = call i32 @mly_fetch_event(%struct.mly_softc* %59)
  br label %61

61:                                               ; preds = %58, %50
  ret void
}

declare dso_local i32 @debug(i32, i8*, i64, i64, i64) #1

declare dso_local i32 @wakeup(i64*) #1

declare dso_local i32 @mly_fetch_event(%struct.mly_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
