; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iicbus/twsi/extr_twsi.c_twsi_poll_ctrl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iicbus/twsi/extr_twsi.c_twsi_poll_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.twsi_softc = type { i32, i32 }

@.str = private unnamed_addr constant [39 x i8] c"Waiting for ctrl reg to match mask %x\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"done\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.twsi_softc*, i32, i32)* @twsi_poll_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @twsi_poll_ctrl(%struct.twsi_softc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.twsi_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.twsi_softc* %0, %struct.twsi_softc** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %6, align 4
  %9 = sdiv i32 %8, 10
  store i32 %9, i32* %6, align 4
  %10 = load %struct.twsi_softc*, %struct.twsi_softc** %5, align 8
  %11 = getelementptr inbounds %struct.twsi_softc, %struct.twsi_softc* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* %7, align 4
  %14 = call i32 (i32, i8*, ...) @debugf(i32 %12, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %13)
  br label %15

15:                                               ; preds = %32, %3
  %16 = load %struct.twsi_softc*, %struct.twsi_softc** %5, align 8
  %17 = load %struct.twsi_softc*, %struct.twsi_softc** %5, align 8
  %18 = getelementptr inbounds %struct.twsi_softc, %struct.twsi_softc* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @TWSI_READ(%struct.twsi_softc* %16, i32 %19)
  %21 = load i32, i32* %7, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  br i1 %24, label %25, label %33

25:                                               ; preds = %15
  %26 = call i32 @DELAY(i32 10)
  %27 = load i32, i32* %6, align 4
  %28 = add nsw i32 %27, -1
  store i32 %28, i32* %6, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = load i32, i32* %6, align 4
  store i32 %31, i32* %4, align 4
  br label %38

32:                                               ; preds = %25
  br label %15

33:                                               ; preds = %15
  %34 = load %struct.twsi_softc*, %struct.twsi_softc** %5, align 8
  %35 = getelementptr inbounds %struct.twsi_softc, %struct.twsi_softc* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 (i32, i8*, ...) @debugf(i32 %36, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %38

38:                                               ; preds = %33, %30
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

declare dso_local i32 @debugf(i32, i8*, ...) #1

declare dso_local i32 @TWSI_READ(%struct.twsi_softc*, i32) #1

declare dso_local i32 @DELAY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
