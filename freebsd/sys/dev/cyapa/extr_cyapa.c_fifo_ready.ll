; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cyapa/extr_cyapa.c_fifo_ready.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cyapa/extr_cyapa.c_fifo_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cyapa_softc = type { i32 }
%struct.cyapa_fifo = type { i64, i64 }

@CYAPA_BUFSIZE = common dso_local global i64 0, align 8
@CYAPA_BUFMASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.cyapa_softc*, %struct.cyapa_fifo*)* @fifo_ready to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fifo_ready(%struct.cyapa_softc* %0, %struct.cyapa_fifo* %1) #0 {
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
  %16 = load %struct.cyapa_fifo*, %struct.cyapa_fifo** %4, align 8
  %17 = getelementptr inbounds %struct.cyapa_fifo, %struct.cyapa_fifo* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.cyapa_fifo*, %struct.cyapa_fifo** %4, align 8
  %20 = getelementptr inbounds %struct.cyapa_fifo, %struct.cyapa_fifo* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = sub i64 %18, %21
  %23 = icmp ugt i64 %15, %22
  br i1 %23, label %24, label %32

24:                                               ; preds = %2
  %25 = load %struct.cyapa_fifo*, %struct.cyapa_fifo** %4, align 8
  %26 = getelementptr inbounds %struct.cyapa_fifo, %struct.cyapa_fifo* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.cyapa_fifo*, %struct.cyapa_fifo** %4, align 8
  %29 = getelementptr inbounds %struct.cyapa_fifo, %struct.cyapa_fifo* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = sub i64 %27, %30
  store i64 %31, i64* %5, align 8
  br label %32

32:                                               ; preds = %24, %2
  %33 = load i64, i64* %5, align 8
  ret i64 %33
}

declare dso_local i32 @CYAPA_LOCK_ASSERT(%struct.cyapa_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
