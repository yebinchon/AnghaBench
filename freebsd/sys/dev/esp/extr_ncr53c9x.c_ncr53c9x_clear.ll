; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/esp/extr_ncr53c9x.c_ncr53c9x_clear.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/esp/extr_ncr53c9x.c_ncr53c9x_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ncr53c9x_softc = type { i32, %struct.ncr53c9x_ecb*, i64, i32 }
%struct.ncr53c9x_ecb = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@NCR_CLEANING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ncr53c9x_softc*, i32)* @ncr53c9x_clear to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ncr53c9x_clear(%struct.ncr53c9x_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.ncr53c9x_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ncr53c9x_ecb*, align 8
  %6 = alloca i32, align 4
  store %struct.ncr53c9x_softc* %0, %struct.ncr53c9x_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.ncr53c9x_softc*, %struct.ncr53c9x_softc** %3, align 8
  %8 = load i32, i32* @MA_OWNED, align 4
  %9 = call i32 @NCR_LOCK_ASSERT(%struct.ncr53c9x_softc* %7, i32 %8)
  %10 = load i32, i32* @NCR_CLEANING, align 4
  %11 = load %struct.ncr53c9x_softc*, %struct.ncr53c9x_softc** %3, align 8
  %12 = getelementptr inbounds %struct.ncr53c9x_softc, %struct.ncr53c9x_softc* %11, i32 0, i32 3
  store i32 %10, i32* %12, align 8
  %13 = load %struct.ncr53c9x_softc*, %struct.ncr53c9x_softc** %3, align 8
  %14 = getelementptr inbounds %struct.ncr53c9x_softc, %struct.ncr53c9x_softc* %13, i32 0, i32 2
  store i64 0, i64* %14, align 8
  %15 = load %struct.ncr53c9x_softc*, %struct.ncr53c9x_softc** %3, align 8
  %16 = getelementptr inbounds %struct.ncr53c9x_softc, %struct.ncr53c9x_softc* %15, i32 0, i32 1
  %17 = load %struct.ncr53c9x_ecb*, %struct.ncr53c9x_ecb** %16, align 8
  store %struct.ncr53c9x_ecb* %17, %struct.ncr53c9x_ecb** %5, align 8
  %18 = load %struct.ncr53c9x_ecb*, %struct.ncr53c9x_ecb** %5, align 8
  %19 = icmp ne %struct.ncr53c9x_ecb* %18, null
  br i1 %19, label %20, label %30

20:                                               ; preds = %2
  %21 = load i32, i32* %4, align 4
  %22 = load %struct.ncr53c9x_ecb*, %struct.ncr53c9x_ecb** %5, align 8
  %23 = getelementptr inbounds %struct.ncr53c9x_ecb, %struct.ncr53c9x_ecb* %22, i32 0, i32 0
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  store i32 %21, i32* %26, align 4
  %27 = load %struct.ncr53c9x_softc*, %struct.ncr53c9x_softc** %3, align 8
  %28 = load %struct.ncr53c9x_ecb*, %struct.ncr53c9x_ecb** %5, align 8
  %29 = call i32 @ncr53c9x_done(%struct.ncr53c9x_softc* %27, %struct.ncr53c9x_ecb* %28)
  br label %30

30:                                               ; preds = %20, %2
  store i32 0, i32* %6, align 4
  br label %31

31:                                               ; preds = %42, %30
  %32 = load i32, i32* %6, align 4
  %33 = load %struct.ncr53c9x_softc*, %struct.ncr53c9x_softc** %3, align 8
  %34 = getelementptr inbounds %struct.ncr53c9x_softc, %struct.ncr53c9x_softc* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp slt i32 %32, %35
  br i1 %36, label %37, label %45

37:                                               ; preds = %31
  %38 = load %struct.ncr53c9x_softc*, %struct.ncr53c9x_softc** %3, align 8
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* %4, align 4
  %41 = call i32 @ncr53c9x_clear_target(%struct.ncr53c9x_softc* %38, i32 %39, i32 %40)
  br label %42

42:                                               ; preds = %37
  %43 = load i32, i32* %6, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %6, align 4
  br label %31

45:                                               ; preds = %31
  ret void
}

declare dso_local i32 @NCR_LOCK_ASSERT(%struct.ncr53c9x_softc*, i32) #1

declare dso_local i32 @ncr53c9x_done(%struct.ncr53c9x_softc*, %struct.ncr53c9x_ecb*) #1

declare dso_local i32 @ncr53c9x_clear_target(%struct.ncr53c9x_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
