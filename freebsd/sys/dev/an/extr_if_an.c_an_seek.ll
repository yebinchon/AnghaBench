; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/an/extr_if_an.c_an_seek.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/an/extr_if_an.c_an_seek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.an_softc = type { i32 }

@AN_SEL0 = common dso_local global i32 0, align 4
@AN_OFF0 = common dso_local global i32 0, align 4
@AN_SEL1 = common dso_local global i32 0, align 4
@AN_OFF1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"invalid data path: %x\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@AN_TIMEOUT = common dso_local global i32 0, align 4
@AN_OFF_BUSY = common dso_local global i32 0, align 4
@AN_OFF_ERR = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.an_softc*, i32, i32, i32)* @an_seek to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @an_seek(%struct.an_softc* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.an_softc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.an_softc* %0, %struct.an_softc** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load i32, i32* %9, align 4
  switch i32 %13, label %20 [
    i32 129, label %14
    i32 128, label %17
  ]

14:                                               ; preds = %4
  %15 = load i32, i32* @AN_SEL0, align 4
  store i32 %15, i32* %11, align 4
  %16 = load i32, i32* @AN_OFF0, align 4
  store i32 %16, i32* %12, align 4
  br label %27

17:                                               ; preds = %4
  %18 = load i32, i32* @AN_SEL1, align 4
  store i32 %18, i32* %11, align 4
  %19 = load i32, i32* @AN_OFF1, align 4
  store i32 %19, i32* %12, align 4
  br label %27

20:                                               ; preds = %4
  %21 = load %struct.an_softc*, %struct.an_softc** %6, align 8
  %22 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %9, align 4
  %25 = call i32 @if_printf(i32 %23, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load i32, i32* @EIO, align 4
  store i32 %26, i32* %5, align 4
  br label %61

27:                                               ; preds = %17, %14
  %28 = load %struct.an_softc*, %struct.an_softc** %6, align 8
  %29 = load i32, i32* %11, align 4
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @CSR_WRITE_2(%struct.an_softc* %28, i32 %29, i32 %30)
  %32 = load %struct.an_softc*, %struct.an_softc** %6, align 8
  %33 = load i32, i32* %12, align 4
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @CSR_WRITE_2(%struct.an_softc* %32, i32 %33, i32 %34)
  store i32 0, i32* %10, align 4
  br label %36

36:                                               ; preds = %51, %27
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* @AN_TIMEOUT, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %54

40:                                               ; preds = %36
  %41 = load %struct.an_softc*, %struct.an_softc** %6, align 8
  %42 = load i32, i32* %12, align 4
  %43 = call i32 @CSR_READ_2(%struct.an_softc* %41, i32 %42)
  %44 = load i32, i32* @AN_OFF_BUSY, align 4
  %45 = load i32, i32* @AN_OFF_ERR, align 4
  %46 = or i32 %44, %45
  %47 = and i32 %43, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %40
  br label %54

50:                                               ; preds = %40
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %10, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %10, align 4
  br label %36

54:                                               ; preds = %49, %36
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* @AN_TIMEOUT, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %54
  %59 = load i32, i32* @ETIMEDOUT, align 4
  store i32 %59, i32* %5, align 4
  br label %61

60:                                               ; preds = %54
  store i32 0, i32* %5, align 4
  br label %61

61:                                               ; preds = %60, %58, %20
  %62 = load i32, i32* %5, align 4
  ret i32 %62
}

declare dso_local i32 @if_printf(i32, i8*, i32) #1

declare dso_local i32 @CSR_WRITE_2(%struct.an_softc*, i32, i32) #1

declare dso_local i32 @CSR_READ_2(%struct.an_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
