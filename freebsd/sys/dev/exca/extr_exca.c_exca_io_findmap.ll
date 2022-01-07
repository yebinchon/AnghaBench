; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/exca/extr_exca.c_exca_io_findmap.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/exca/extr_exca.c_exca_io_findmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.exca_softc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64, i64 }
%struct.resource = type { i32 }

@EXCA_IO_WINS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.exca_softc*, %struct.resource*)* @exca_io_findmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exca_io_findmap(%struct.exca_softc* %0, %struct.resource* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.exca_softc*, align 8
  %5 = alloca %struct.resource*, align 8
  %6 = alloca i32, align 4
  store %struct.exca_softc* %0, %struct.exca_softc** %4, align 8
  store %struct.resource* %1, %struct.resource** %5, align 8
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %50, %2
  %8 = load i32, i32* %6, align 4
  %9 = load i32, i32* @EXCA_IO_WINS, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %53

11:                                               ; preds = %7
  %12 = load %struct.exca_softc*, %struct.exca_softc** %4, align 8
  %13 = getelementptr inbounds %struct.exca_softc, %struct.exca_softc* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = load i32, i32* %6, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.resource*, %struct.resource** %5, align 8
  %21 = call i64 @rman_get_bustag(%struct.resource* %20)
  %22 = icmp eq i64 %19, %21
  br i1 %22, label %23, label %49

23:                                               ; preds = %11
  %24 = load %struct.exca_softc*, %struct.exca_softc** %4, align 8
  %25 = getelementptr inbounds %struct.exca_softc, %struct.exca_softc* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = load i32, i32* %6, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.resource*, %struct.resource** %5, align 8
  %33 = call i64 @rman_get_start(%struct.resource* %32)
  %34 = icmp eq i64 %31, %33
  br i1 %34, label %35, label %49

35:                                               ; preds = %23
  %36 = load %struct.exca_softc*, %struct.exca_softc** %4, align 8
  %37 = getelementptr inbounds %struct.exca_softc, %struct.exca_softc* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = load i32, i32* %6, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.resource*, %struct.resource** %5, align 8
  %45 = call i64 @rman_get_size(%struct.resource* %44)
  %46 = icmp eq i64 %43, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %35
  %48 = load i32, i32* %6, align 4
  store i32 %48, i32* %3, align 4
  br label %54

49:                                               ; preds = %35, %23, %11
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %6, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %6, align 4
  br label %7

53:                                               ; preds = %7
  store i32 -1, i32* %3, align 4
  br label %54

54:                                               ; preds = %53, %47
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i64 @rman_get_bustag(%struct.resource*) #1

declare dso_local i64 @rman_get_start(%struct.resource*) #1

declare dso_local i64 @rman_get_size(%struct.resource*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
