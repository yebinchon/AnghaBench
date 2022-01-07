; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/fb/extr_creator.c_creator_ras_setfg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/fb/extr_creator.c_creator_ras_setfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.creator_softc = type { i32 }

@FFB_FBC = common dso_local global i32 0, align 4
@FFB_FBC_FG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.creator_softc*, i32)* @creator_ras_setfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @creator_ras_setfg(%struct.creator_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.creator_softc*, align 8
  %4 = alloca i32, align 4
  store %struct.creator_softc* %0, %struct.creator_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.creator_softc*, %struct.creator_softc** %3, align 8
  %7 = getelementptr inbounds %struct.creator_softc, %struct.creator_softc* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp eq i32 %5, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  br label %24

11:                                               ; preds = %2
  %12 = load i32, i32* %4, align 4
  %13 = load %struct.creator_softc*, %struct.creator_softc** %3, align 8
  %14 = getelementptr inbounds %struct.creator_softc, %struct.creator_softc* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 4
  %15 = load %struct.creator_softc*, %struct.creator_softc** %3, align 8
  %16 = call i32 @creator_ras_fifo_wait(%struct.creator_softc* %15, i32 1)
  %17 = load %struct.creator_softc*, %struct.creator_softc** %3, align 8
  %18 = load i32, i32* @FFB_FBC, align 4
  %19 = load i32, i32* @FFB_FBC_FG, align 4
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @FFB_WRITE(%struct.creator_softc* %17, i32 %18, i32 %19, i32 %20)
  %22 = load %struct.creator_softc*, %struct.creator_softc** %3, align 8
  %23 = call i32 @creator_ras_wait(%struct.creator_softc* %22)
  br label %24

24:                                               ; preds = %11, %10
  ret void
}

declare dso_local i32 @creator_ras_fifo_wait(%struct.creator_softc*, i32) #1

declare dso_local i32 @FFB_WRITE(%struct.creator_softc*, i32, i32, i32) #1

declare dso_local i32 @creator_ras_wait(%struct.creator_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
