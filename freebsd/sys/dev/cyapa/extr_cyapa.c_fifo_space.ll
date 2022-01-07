; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cyapa/extr_cyapa.c_fifo_space.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cyapa/extr_cyapa.c_fifo_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cyapa_softc = type { i32 }
%struct.cyapa_fifo = type { i64, i64 }

@CYAPA_BUFSIZE = common dso_local global i64 0, align 8
@CYAPA_BUFMASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.cyapa_softc*, %struct.cyapa_fifo*)* @fifo_space to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fifo_space(%struct.cyapa_softc* %0, %struct.cyapa_fifo* %1) #0 {
  %3 = alloca %struct.cyapa_softc*, align 8
  %4 = alloca %struct.cyapa_fifo*, align 8
  %5 = alloca i64, align 8
  store %struct.cyapa_softc* %0, %struct.cyapa_softc** %3, align 8
  store %struct.cyapa_fifo* %1, %struct.cyapa_fifo** %4, align 8
  %6 = load %struct.cyapa_softc*, %struct.cyapa_softc** %3, align 8
  %7 = call i32 @CYAPA_LOCK_ASSERT(%struct.cyapa_softc* %6)
  %8 = load i64, i64* @CYAPA_BUFSIZE, align 8
  %9 = load %struct.cyapa_fifo*, %struct.cyapa_fifo** %4, align 8
  %10 = getelementptr inbounds %struct.cyapa_fifo, %struct.cyapa_fifo* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @CYAPA_BUFMASK, align 8
  %13 = and i64 %11, %12
  %14 = sub i64 %8, %13
  store i64 %14, i64* %5, align 8
  %15 = load i64, i64* %5, align 8
  %16 = load i64, i64* @CYAPA_BUFSIZE, align 8
  %17 = load %struct.cyapa_fifo*, %struct.cyapa_fifo** %4, align 8
  %18 = getelementptr inbounds %struct.cyapa_fifo, %struct.cyapa_fifo* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.cyapa_fifo*, %struct.cyapa_fifo** %4, align 8
  %21 = getelementptr inbounds %struct.cyapa_fifo, %struct.cyapa_fifo* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = sub i64 %19, %22
  %24 = sub i64 %16, %23
  %25 = icmp ugt i64 %15, %24
  br i1 %25, label %26, label %36

26:                                               ; preds = %2
  %27 = load i64, i64* @CYAPA_BUFSIZE, align 8
  %28 = load %struct.cyapa_fifo*, %struct.cyapa_fifo** %4, align 8
  %29 = getelementptr inbounds %struct.cyapa_fifo, %struct.cyapa_fifo* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.cyapa_fifo*, %struct.cyapa_fifo** %4, align 8
  %32 = getelementptr inbounds %struct.cyapa_fifo, %struct.cyapa_fifo* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = sub i64 %30, %33
  %35 = sub i64 %27, %34
  store i64 %35, i64* %5, align 8
  br label %36

36:                                               ; preds = %26, %2
  %37 = load i64, i64* %5, align 8
  ret i64 %37
}

declare dso_local i32 @CYAPA_LOCK_ASSERT(%struct.cyapa_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
