; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/fb/extr_creator.c_creator_ras_wait.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/fb/extr_creator.c_creator_ras_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.creator_softc = type { i32 }

@FFB_FBC = common dso_local global i32 0, align 4
@FFB_FBC_UCSR = common dso_local global i32 0, align 4
@FBC_UCSR_FB_BUSY = common dso_local global i32 0, align 4
@FBC_UCSR_RP_BUSY = common dso_local global i32 0, align 4
@FBC_UCSR_READ_ERR = common dso_local global i32 0, align 4
@FBC_UCSR_FIFO_OVFL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.creator_softc*)* @creator_ras_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @creator_ras_wait(%struct.creator_softc* %0) #0 {
  %2 = alloca %struct.creator_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.creator_softc* %0, %struct.creator_softc** %2, align 8
  br label %5

5:                                                ; preds = %31, %1
  %6 = load %struct.creator_softc*, %struct.creator_softc** %2, align 8
  %7 = load i32, i32* @FFB_FBC, align 4
  %8 = load i32, i32* @FFB_FBC_UCSR, align 4
  %9 = call i32 @FFB_READ(%struct.creator_softc* %6, i32 %7, i32 %8)
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @FBC_UCSR_FB_BUSY, align 4
  %12 = load i32, i32* @FBC_UCSR_RP_BUSY, align 4
  %13 = or i32 %11, %12
  %14 = and i32 %10, %13
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %5
  br label %32

17:                                               ; preds = %5
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* @FBC_UCSR_READ_ERR, align 4
  %20 = load i32, i32* @FBC_UCSR_FIFO_OVFL, align 4
  %21 = or i32 %19, %20
  %22 = and i32 %18, %21
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %17
  %26 = load %struct.creator_softc*, %struct.creator_softc** %2, align 8
  %27 = load i32, i32* @FFB_FBC, align 4
  %28 = load i32, i32* @FFB_FBC_UCSR, align 4
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @FFB_WRITE(%struct.creator_softc* %26, i32 %27, i32 %28, i32 %29)
  br label %31

31:                                               ; preds = %25, %17
  br label %5

32:                                               ; preds = %16
  ret void
}

declare dso_local i32 @FFB_READ(%struct.creator_softc*, i32, i32) #1

declare dso_local i32 @FFB_WRITE(%struct.creator_softc*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
