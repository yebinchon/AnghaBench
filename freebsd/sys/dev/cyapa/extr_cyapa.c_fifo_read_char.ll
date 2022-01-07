; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cyapa/extr_cyapa.c_fifo_read_char.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cyapa/extr_cyapa.c_fifo_read_char.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cyapa_softc = type { i32 }
%struct.cyapa_fifo = type { i64, i64, i64* }

@.str = private unnamed_addr constant [26 x i8] c"fifo_read_char: overflow\0A\00", align 1
@CYAPA_BUFMASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.cyapa_softc*, %struct.cyapa_fifo*)* @fifo_read_char to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fifo_read_char(%struct.cyapa_softc* %0, %struct.cyapa_fifo* %1) #0 {
  %3 = alloca %struct.cyapa_softc*, align 8
  %4 = alloca %struct.cyapa_fifo*, align 8
  %5 = alloca i64, align 8
  store %struct.cyapa_softc* %0, %struct.cyapa_softc** %3, align 8
  store %struct.cyapa_fifo* %1, %struct.cyapa_fifo** %4, align 8
  %6 = load %struct.cyapa_softc*, %struct.cyapa_softc** %3, align 8
  %7 = call i32 @CYAPA_LOCK_ASSERT(%struct.cyapa_softc* %6)
  %8 = load %struct.cyapa_fifo*, %struct.cyapa_fifo** %4, align 8
  %9 = getelementptr inbounds %struct.cyapa_fifo, %struct.cyapa_fifo* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.cyapa_fifo*, %struct.cyapa_fifo** %4, align 8
  %12 = getelementptr inbounds %struct.cyapa_fifo, %struct.cyapa_fifo* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp eq i64 %10, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = call i32 @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  store i64 0, i64* %5, align 8
  br label %32

17:                                               ; preds = %2
  %18 = load %struct.cyapa_fifo*, %struct.cyapa_fifo** %4, align 8
  %19 = getelementptr inbounds %struct.cyapa_fifo, %struct.cyapa_fifo* %18, i32 0, i32 2
  %20 = load i64*, i64** %19, align 8
  %21 = load %struct.cyapa_fifo*, %struct.cyapa_fifo** %4, align 8
  %22 = getelementptr inbounds %struct.cyapa_fifo, %struct.cyapa_fifo* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @CYAPA_BUFMASK, align 8
  %25 = and i64 %23, %24
  %26 = getelementptr inbounds i64, i64* %20, i64 %25
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %5, align 8
  %28 = load %struct.cyapa_fifo*, %struct.cyapa_fifo** %4, align 8
  %29 = getelementptr inbounds %struct.cyapa_fifo, %struct.cyapa_fifo* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = add i64 %30, 1
  store i64 %31, i64* %29, align 8
  br label %32

32:                                               ; preds = %17, %15
  %33 = load i64, i64* %5, align 8
  ret i64 %33
}

declare dso_local i32 @CYAPA_LOCK_ASSERT(%struct.cyapa_softc*) #1

declare dso_local i32 @printf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
