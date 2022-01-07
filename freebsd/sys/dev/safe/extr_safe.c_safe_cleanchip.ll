; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/safe/extr_safe.c_safe_cleanchip.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/safe/extr_safe.c_safe_cleanchip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.safe_softc = type { i64, %struct.safe_ringentry*, %struct.safe_ringentry*, %struct.safe_ringentry*, %struct.safe_ringentry* }
%struct.safe_ringentry = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.safe_softc*)* @safe_cleanchip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @safe_cleanchip(%struct.safe_softc* %0) #0 {
  %2 = alloca %struct.safe_softc*, align 8
  %3 = alloca %struct.safe_ringentry*, align 8
  store %struct.safe_softc* %0, %struct.safe_softc** %2, align 8
  %4 = load %struct.safe_softc*, %struct.safe_softc** %2, align 8
  %5 = getelementptr inbounds %struct.safe_softc, %struct.safe_softc* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %46

8:                                                ; preds = %1
  %9 = load %struct.safe_softc*, %struct.safe_softc** %2, align 8
  %10 = getelementptr inbounds %struct.safe_softc, %struct.safe_softc* %9, i32 0, i32 1
  %11 = load %struct.safe_ringentry*, %struct.safe_ringentry** %10, align 8
  store %struct.safe_ringentry* %11, %struct.safe_ringentry** %3, align 8
  br label %12

12:                                               ; preds = %39, %8
  %13 = load %struct.safe_ringentry*, %struct.safe_ringentry** %3, align 8
  %14 = load %struct.safe_softc*, %struct.safe_softc** %2, align 8
  %15 = getelementptr inbounds %struct.safe_softc, %struct.safe_softc* %14, i32 0, i32 4
  %16 = load %struct.safe_ringentry*, %struct.safe_ringentry** %15, align 8
  %17 = icmp ne %struct.safe_ringentry* %13, %16
  br i1 %17, label %18, label %40

18:                                               ; preds = %12
  %19 = load %struct.safe_ringentry*, %struct.safe_ringentry** %3, align 8
  %20 = getelementptr inbounds %struct.safe_ringentry, %struct.safe_ringentry* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %18
  %25 = load %struct.safe_softc*, %struct.safe_softc** %2, align 8
  %26 = load %struct.safe_ringentry*, %struct.safe_ringentry** %3, align 8
  %27 = call i32 @safe_free_entry(%struct.safe_softc* %25, %struct.safe_ringentry* %26)
  br label %28

28:                                               ; preds = %24, %18
  %29 = load %struct.safe_ringentry*, %struct.safe_ringentry** %3, align 8
  %30 = getelementptr inbounds %struct.safe_ringentry, %struct.safe_ringentry* %29, i32 1
  store %struct.safe_ringentry* %30, %struct.safe_ringentry** %3, align 8
  %31 = load %struct.safe_softc*, %struct.safe_softc** %2, align 8
  %32 = getelementptr inbounds %struct.safe_softc, %struct.safe_softc* %31, i32 0, i32 3
  %33 = load %struct.safe_ringentry*, %struct.safe_ringentry** %32, align 8
  %34 = icmp eq %struct.safe_ringentry* %30, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %28
  %36 = load %struct.safe_softc*, %struct.safe_softc** %2, align 8
  %37 = getelementptr inbounds %struct.safe_softc, %struct.safe_softc* %36, i32 0, i32 2
  %38 = load %struct.safe_ringentry*, %struct.safe_ringentry** %37, align 8
  store %struct.safe_ringentry* %38, %struct.safe_ringentry** %3, align 8
  br label %39

39:                                               ; preds = %35, %28
  br label %12

40:                                               ; preds = %12
  %41 = load %struct.safe_ringentry*, %struct.safe_ringentry** %3, align 8
  %42 = load %struct.safe_softc*, %struct.safe_softc** %2, align 8
  %43 = getelementptr inbounds %struct.safe_softc, %struct.safe_softc* %42, i32 0, i32 1
  store %struct.safe_ringentry* %41, %struct.safe_ringentry** %43, align 8
  %44 = load %struct.safe_softc*, %struct.safe_softc** %2, align 8
  %45 = getelementptr inbounds %struct.safe_softc, %struct.safe_softc* %44, i32 0, i32 0
  store i64 0, i64* %45, align 8
  br label %46

46:                                               ; preds = %40, %1
  ret void
}

declare dso_local i32 @safe_free_entry(%struct.safe_softc*, %struct.safe_ringentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
