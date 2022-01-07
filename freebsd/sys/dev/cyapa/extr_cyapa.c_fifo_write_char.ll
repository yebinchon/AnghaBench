; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cyapa/extr_cyapa.c_fifo_write_char.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cyapa/extr_cyapa.c_fifo_write_char.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cyapa_softc = type { i32 }
%struct.cyapa_fifo = type { i64, i64, i32* }

@CYAPA_BUFSIZE = common dso_local global i64 0, align 8
@CYAPA_BUFMASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cyapa_softc*, %struct.cyapa_fifo*, i32)* @fifo_write_char to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fifo_write_char(%struct.cyapa_softc* %0, %struct.cyapa_fifo* %1, i32 %2) #0 {
  %4 = alloca %struct.cyapa_softc*, align 8
  %5 = alloca %struct.cyapa_fifo*, align 8
  %6 = alloca i32, align 4
  store %struct.cyapa_softc* %0, %struct.cyapa_softc** %4, align 8
  store %struct.cyapa_fifo* %1, %struct.cyapa_fifo** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.cyapa_softc*, %struct.cyapa_softc** %4, align 8
  %8 = call i32 @CYAPA_LOCK_ASSERT(%struct.cyapa_softc* %7)
  %9 = load %struct.cyapa_fifo*, %struct.cyapa_fifo** %5, align 8
  %10 = getelementptr inbounds %struct.cyapa_fifo, %struct.cyapa_fifo* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.cyapa_fifo*, %struct.cyapa_fifo** %5, align 8
  %13 = getelementptr inbounds %struct.cyapa_fifo, %struct.cyapa_fifo* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = sub i64 %11, %14
  %16 = load i64, i64* @CYAPA_BUFSIZE, align 8
  %17 = icmp ult i64 %15, %16
  br i1 %17, label %18, label %33

18:                                               ; preds = %3
  %19 = load i32, i32* %6, align 4
  %20 = load %struct.cyapa_fifo*, %struct.cyapa_fifo** %5, align 8
  %21 = getelementptr inbounds %struct.cyapa_fifo, %struct.cyapa_fifo* %20, i32 0, i32 2
  %22 = load i32*, i32** %21, align 8
  %23 = load %struct.cyapa_fifo*, %struct.cyapa_fifo** %5, align 8
  %24 = getelementptr inbounds %struct.cyapa_fifo, %struct.cyapa_fifo* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @CYAPA_BUFMASK, align 8
  %27 = and i64 %25, %26
  %28 = getelementptr inbounds i32, i32* %22, i64 %27
  store i32 %19, i32* %28, align 4
  %29 = load %struct.cyapa_fifo*, %struct.cyapa_fifo** %5, align 8
  %30 = getelementptr inbounds %struct.cyapa_fifo, %struct.cyapa_fifo* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = add i64 %31, 1
  store i64 %32, i64* %30, align 8
  br label %33

33:                                               ; preds = %18, %3
  ret void
}

declare dso_local i32 @CYAPA_LOCK_ASSERT(%struct.cyapa_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
