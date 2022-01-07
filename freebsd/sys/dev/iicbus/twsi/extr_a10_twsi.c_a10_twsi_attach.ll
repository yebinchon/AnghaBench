; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iicbus/twsi/extr_a10_twsi.c_a10_twsi_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iicbus/twsi/extr_a10_twsi.c_a10_twsi_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.twsi_softc = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [27 x i8] c"could not de-assert reset\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"could not find clock\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"could not enable clock\0A\00", align 1
@TWI_DATA = common dso_local global i32 0, align 4
@TWI_ADDR = common dso_local global i32 0, align 4
@TWI_XADDR = common dso_local global i32 0, align 4
@TWI_CNTR = common dso_local global i32 0, align 4
@TWI_STAT = common dso_local global i32 0, align 4
@TWI_CCR = common dso_local global i32 0, align 4
@TWI_SRST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @a10_twsi_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @a10_twsi_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.twsi_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call %struct.twsi_softc* @device_get_softc(i32 %7)
  store %struct.twsi_softc* %8, %struct.twsi_softc** %4, align 8
  %9 = load i32, i32* %3, align 4
  %10 = call i64 @hwreset_get_by_ofw_idx(i32 %9, i32 0, i32 0, i32* %5)
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %22

12:                                               ; preds = %1
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @hwreset_deassert(i32 %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %12
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @device_printf(i32 %18, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* %6, align 4
  store i32 %20, i32* %2, align 4
  br label %70

21:                                               ; preds = %12
  br label %22

22:                                               ; preds = %21, %1
  %23 = load i32, i32* %3, align 4
  %24 = load %struct.twsi_softc*, %struct.twsi_softc** %4, align 8
  %25 = getelementptr inbounds %struct.twsi_softc, %struct.twsi_softc* %24, i32 0, i32 8
  %26 = call i32 @clk_get_by_ofw_index(i32 %23, i32 0, i32 0, i32* %25)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %22
  %30 = load i32, i32* %3, align 4
  %31 = call i32 @device_printf(i32 %30, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %32 = load i32, i32* %6, align 4
  store i32 %32, i32* %2, align 4
  br label %70

33:                                               ; preds = %22
  %34 = load %struct.twsi_softc*, %struct.twsi_softc** %4, align 8
  %35 = getelementptr inbounds %struct.twsi_softc, %struct.twsi_softc* %34, i32 0, i32 8
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @clk_enable(i32 %36)
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %33
  %41 = load i32, i32* %3, align 4
  %42 = call i32 @device_printf(i32 %41, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %43 = load i32, i32* %6, align 4
  store i32 %43, i32* %2, align 4
  br label %70

44:                                               ; preds = %33
  %45 = load i32, i32* @TWI_DATA, align 4
  %46 = load %struct.twsi_softc*, %struct.twsi_softc** %4, align 8
  %47 = getelementptr inbounds %struct.twsi_softc, %struct.twsi_softc* %46, i32 0, i32 7
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* @TWI_ADDR, align 4
  %49 = load %struct.twsi_softc*, %struct.twsi_softc** %4, align 8
  %50 = getelementptr inbounds %struct.twsi_softc, %struct.twsi_softc* %49, i32 0, i32 6
  store i32 %48, i32* %50, align 4
  %51 = load i32, i32* @TWI_XADDR, align 4
  %52 = load %struct.twsi_softc*, %struct.twsi_softc** %4, align 8
  %53 = getelementptr inbounds %struct.twsi_softc, %struct.twsi_softc* %52, i32 0, i32 5
  store i32 %51, i32* %53, align 4
  %54 = load i32, i32* @TWI_CNTR, align 4
  %55 = load %struct.twsi_softc*, %struct.twsi_softc** %4, align 8
  %56 = getelementptr inbounds %struct.twsi_softc, %struct.twsi_softc* %55, i32 0, i32 4
  store i32 %54, i32* %56, align 4
  %57 = load i32, i32* @TWI_STAT, align 4
  %58 = load %struct.twsi_softc*, %struct.twsi_softc** %4, align 8
  %59 = getelementptr inbounds %struct.twsi_softc, %struct.twsi_softc* %58, i32 0, i32 3
  store i32 %57, i32* %59, align 4
  %60 = load i32, i32* @TWI_CCR, align 4
  %61 = load %struct.twsi_softc*, %struct.twsi_softc** %4, align 8
  %62 = getelementptr inbounds %struct.twsi_softc, %struct.twsi_softc* %61, i32 0, i32 2
  store i32 %60, i32* %62, align 4
  %63 = load i32, i32* @TWI_SRST, align 4
  %64 = load %struct.twsi_softc*, %struct.twsi_softc** %4, align 8
  %65 = getelementptr inbounds %struct.twsi_softc, %struct.twsi_softc* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 4
  %66 = load %struct.twsi_softc*, %struct.twsi_softc** %4, align 8
  %67 = getelementptr inbounds %struct.twsi_softc, %struct.twsi_softc* %66, i32 0, i32 0
  store i32 1, i32* %67, align 4
  %68 = load i32, i32* %3, align 4
  %69 = call i32 @twsi_attach(i32 %68)
  store i32 %69, i32* %2, align 4
  br label %70

70:                                               ; preds = %44, %40, %29, %17
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

declare dso_local %struct.twsi_softc* @device_get_softc(i32) #1

declare dso_local i64 @hwreset_get_by_ofw_idx(i32, i32, i32, i32*) #1

declare dso_local i32 @hwreset_deassert(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @clk_get_by_ofw_index(i32, i32, i32, i32*) #1

declare dso_local i32 @clk_enable(i32) #1

declare dso_local i32 @twsi_attach(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
