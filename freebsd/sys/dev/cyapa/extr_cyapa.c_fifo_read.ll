; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cyapa/extr_cyapa.c_fifo_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cyapa/extr_cyapa.c_fifo_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cyapa_softc = type { i32 }
%struct.cyapa_fifo = type { i64, i8* }

@CYAPA_BUFSIZE = common dso_local global i64 0, align 8
@CYAPA_BUFMASK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"fifo_read: overflow\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.cyapa_softc*, %struct.cyapa_fifo*, i64)* @fifo_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @fifo_read(%struct.cyapa_softc* %0, %struct.cyapa_fifo* %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.cyapa_softc*, align 8
  %6 = alloca %struct.cyapa_fifo*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  store %struct.cyapa_softc* %0, %struct.cyapa_softc** %5, align 8
  store %struct.cyapa_fifo* %1, %struct.cyapa_fifo** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load %struct.cyapa_softc*, %struct.cyapa_softc** %5, align 8
  %10 = call i32 @CYAPA_LOCK_ASSERT(%struct.cyapa_softc* %9)
  %11 = load i64, i64* %7, align 8
  %12 = load i64, i64* @CYAPA_BUFSIZE, align 8
  %13 = load %struct.cyapa_fifo*, %struct.cyapa_fifo** %6, align 8
  %14 = getelementptr inbounds %struct.cyapa_fifo, %struct.cyapa_fifo* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @CYAPA_BUFMASK, align 8
  %17 = and i64 %15, %16
  %18 = sub i64 %12, %17
  %19 = icmp ugt i64 %11, %18
  br i1 %19, label %20, label %25

20:                                               ; preds = %3
  %21 = call i32 @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %22 = load %struct.cyapa_fifo*, %struct.cyapa_fifo** %6, align 8
  %23 = getelementptr inbounds %struct.cyapa_fifo, %struct.cyapa_fifo* %22, i32 0, i32 1
  %24 = load i8*, i8** %23, align 8
  store i8* %24, i8** %4, align 8
  br label %41

25:                                               ; preds = %3
  %26 = load %struct.cyapa_fifo*, %struct.cyapa_fifo** %6, align 8
  %27 = getelementptr inbounds %struct.cyapa_fifo, %struct.cyapa_fifo* %26, i32 0, i32 1
  %28 = load i8*, i8** %27, align 8
  %29 = load %struct.cyapa_fifo*, %struct.cyapa_fifo** %6, align 8
  %30 = getelementptr inbounds %struct.cyapa_fifo, %struct.cyapa_fifo* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @CYAPA_BUFMASK, align 8
  %33 = and i64 %31, %32
  %34 = getelementptr inbounds i8, i8* %28, i64 %33
  store i8* %34, i8** %8, align 8
  %35 = load i64, i64* %7, align 8
  %36 = load %struct.cyapa_fifo*, %struct.cyapa_fifo** %6, align 8
  %37 = getelementptr inbounds %struct.cyapa_fifo, %struct.cyapa_fifo* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = add i64 %38, %35
  store i64 %39, i64* %37, align 8
  %40 = load i8*, i8** %8, align 8
  store i8* %40, i8** %4, align 8
  br label %41

41:                                               ; preds = %25, %20
  %42 = load i8*, i8** %4, align 8
  ret i8* %42
}

declare dso_local i32 @CYAPA_LOCK_ASSERT(%struct.cyapa_softc*) #1

declare dso_local i32 @printf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
