; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/malo/extr_if_malo.c_malo_tx_proc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/malo/extr_if_malo.c_malo_tx_proc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.malo_softc = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@MALO_NUM_TX_QUEUES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @malo_tx_proc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @malo_tx_proc(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.malo_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i8*, i8** %3, align 8
  %9 = bitcast i8* %8 to %struct.malo_softc*
  store %struct.malo_softc* %9, %struct.malo_softc** %5, align 8
  store i32 0, i32* %7, align 4
  %10 = load %struct.malo_softc*, %struct.malo_softc** %5, align 8
  %11 = call i32 @MALO_LOCK(%struct.malo_softc* %10)
  store i32 0, i32* %6, align 4
  br label %12

12:                                               ; preds = %40, %2
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @MALO_NUM_TX_QUEUES, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %43

16:                                               ; preds = %12
  %17 = load %struct.malo_softc*, %struct.malo_softc** %5, align 8
  %18 = getelementptr inbounds %struct.malo_softc, %struct.malo_softc* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = call i32 @STAILQ_EMPTY(i32* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %39, label %26

26:                                               ; preds = %16
  %27 = load %struct.malo_softc*, %struct.malo_softc** %5, align 8
  %28 = load %struct.malo_softc*, %struct.malo_softc** %5, align 8
  %29 = getelementptr inbounds %struct.malo_softc, %struct.malo_softc* %28, i32 0, i32 1
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = load i32, i32* %6, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i64 %32
  %34 = call i64 @malo_tx_processq(%struct.malo_softc* %27, %struct.TYPE_2__* %33)
  %35 = load i32, i32* %7, align 4
  %36 = sext i32 %35 to i64
  %37 = add nsw i64 %36, %34
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %7, align 4
  br label %39

39:                                               ; preds = %26, %16
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %6, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %6, align 4
  br label %12

43:                                               ; preds = %12
  %44 = load i32, i32* %7, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %43
  %47 = load %struct.malo_softc*, %struct.malo_softc** %5, align 8
  %48 = getelementptr inbounds %struct.malo_softc, %struct.malo_softc* %47, i32 0, i32 0
  store i64 0, i64* %48, align 8
  %49 = load %struct.malo_softc*, %struct.malo_softc** %5, align 8
  %50 = call i32 @malo_start(%struct.malo_softc* %49)
  br label %51

51:                                               ; preds = %46, %43
  %52 = load %struct.malo_softc*, %struct.malo_softc** %5, align 8
  %53 = call i32 @MALO_UNLOCK(%struct.malo_softc* %52)
  ret void
}

declare dso_local i32 @MALO_LOCK(%struct.malo_softc*) #1

declare dso_local i32 @STAILQ_EMPTY(i32*) #1

declare dso_local i64 @malo_tx_processq(%struct.malo_softc*, %struct.TYPE_2__*) #1

declare dso_local i32 @malo_start(%struct.malo_softc*) #1

declare dso_local i32 @MALO_UNLOCK(%struct.malo_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
