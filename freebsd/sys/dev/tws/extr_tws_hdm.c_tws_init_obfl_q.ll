; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/tws/extr_tws_hdm.c_tws_init_obfl_q.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/tws/extr_tws_hdm.c_tws_init_obfl_q.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tws_softc = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@tws_queue_depth = common dso_local global i32 0, align 4
@TWS_I2O0_HOBQPH = common dso_local global i32 0, align 4
@TWS_I2O0_HOBQPL = common dso_local global i32 0, align 4
@TWS_I2O0_STATUS = common dso_local global i32 0, align 4
@TWS_BIT13 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"OBFL Overrun\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tws_init_obfl_q(%struct.tws_softc* %0) #0 {
  %2 = alloca %struct.tws_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.tws_softc* %0, %struct.tws_softc** %2, align 8
  store i32 0, i32* %3, align 4
  %8 = load %struct.tws_softc*, %struct.tws_softc** %2, align 8
  %9 = load %struct.tws_softc*, %struct.tws_softc** %2, align 8
  %10 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @TWS_TRACE_DEBUG(%struct.tws_softc* %8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 0, i32 %11)
  br label %13

13:                                               ; preds = %51, %1
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @tws_queue_depth, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %54

17:                                               ; preds = %13
  %18 = load %struct.tws_softc*, %struct.tws_softc** %2, align 8
  %19 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %18, i32 0, i32 2
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = load i32, i32* %3, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  %27 = ashr i32 %26, 32
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %4, align 4
  store i32 %28, i32* %6, align 4
  %29 = load %struct.tws_softc*, %struct.tws_softc** %2, align 8
  %30 = load i32, i32* @TWS_I2O0_HOBQPH, align 4
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @tws_write_reg(%struct.tws_softc* %29, i32 %30, i32 %31, i32 4)
  %33 = load %struct.tws_softc*, %struct.tws_softc** %2, align 8
  %34 = load i32, i32* @TWS_I2O0_HOBQPL, align 4
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @tws_write_reg(%struct.tws_softc* %33, i32 %34, i32 %35, i32 4)
  %37 = load %struct.tws_softc*, %struct.tws_softc** %2, align 8
  %38 = load i32, i32* @TWS_I2O0_STATUS, align 4
  %39 = call i32 @tws_read_reg(%struct.tws_softc* %37, i32 %38, i32 4)
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* @TWS_BIT13, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %17
  %45 = load %struct.tws_softc*, %struct.tws_softc** %2, align 8
  %46 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @device_printf(i32 %47, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %49 = load %struct.tws_softc*, %struct.tws_softc** %2, align 8
  %50 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %49, i32 0, i32 0
  store i32 1, i32* %50, align 8
  br label %54

51:                                               ; preds = %17
  %52 = load i32, i32* %3, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %3, align 4
  br label %13

54:                                               ; preds = %44, %13
  %55 = load i32, i32* %3, align 4
  %56 = load i32, i32* @tws_queue_depth, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %54
  %59 = load %struct.tws_softc*, %struct.tws_softc** %2, align 8
  %60 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %59, i32 0, i32 0
  store i32 0, i32* %60, align 8
  br label %61

61:                                               ; preds = %58, %54
  ret void
}

declare dso_local i32 @TWS_TRACE_DEBUG(%struct.tws_softc*, i8*, i32, i32) #1

declare dso_local i32 @tws_write_reg(%struct.tws_softc*, i32, i32, i32) #1

declare dso_local i32 @tws_read_reg(%struct.tws_softc*, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
