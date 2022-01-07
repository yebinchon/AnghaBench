; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/fb/extr_creator.c_creator_ras_fifo_wait.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/fb/extr_creator.c_creator_ras_fifo_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.creator_softc = type { i32 }

@FFB_FBC = common dso_local global i32 0, align 4
@FFB_FBC_UCSR = common dso_local global i32 0, align 4
@FBC_UCSR_FIFO_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.creator_softc*, i32)* @creator_ras_fifo_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @creator_ras_fifo_wait(%struct.creator_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.creator_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.creator_softc* %0, %struct.creator_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.creator_softc*, %struct.creator_softc** %3, align 8
  %7 = getelementptr inbounds %struct.creator_softc, %struct.creator_softc* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* %5, align 4
  br label %9

9:                                                ; preds = %13, %2
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %21

13:                                               ; preds = %9
  %14 = load %struct.creator_softc*, %struct.creator_softc** %3, align 8
  %15 = load i32, i32* @FFB_FBC, align 4
  %16 = load i32, i32* @FFB_FBC_UCSR, align 4
  %17 = call i32 @FFB_READ(%struct.creator_softc* %14, i32 %15, i32 %16)
  %18 = load i32, i32* @FBC_UCSR_FIFO_MASK, align 4
  %19 = and i32 %17, %18
  %20 = sub nsw i32 %19, 8
  store i32 %20, i32* %5, align 4
  br label %9

21:                                               ; preds = %9
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* %4, align 4
  %24 = sub nsw i32 %22, %23
  %25 = load %struct.creator_softc*, %struct.creator_softc** %3, align 8
  %26 = getelementptr inbounds %struct.creator_softc, %struct.creator_softc* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  ret void
}

declare dso_local i32 @FFB_READ(%struct.creator_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
