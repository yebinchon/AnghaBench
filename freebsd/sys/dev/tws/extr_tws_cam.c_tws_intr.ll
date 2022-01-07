; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/tws/extr_tws_cam.c_tws_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/tws/extr_tws_cam.c_tws_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tws_softc = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"null softc!!!\0A\00", align 1
@TWS_RESET = common dso_local global i64 0, align 8
@TWS_ONLINE = common dso_local global i64 0, align 8
@TWS_I2O0_HISTAT = common dso_local global i32 0, align 4
@TWS_BIT2 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"door bell :)\00", align 1
@TWS_I2O0_IOBDB = common dso_local global i32 0, align 4
@TWS_BIT21 = common dso_local global i32 0, align 4
@TWS_BIT18 = common dso_local global i32 0, align 4
@TWS_BIT3 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tws_intr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.tws_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.tws_softc*
  store %struct.tws_softc* %7, %struct.tws_softc** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %8 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %9 = icmp ne %struct.tws_softc* %8, null
  br i1 %9, label %15, label %10

10:                                               ; preds = %1
  %11 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %12 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @device_printf(i32 %13, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %72

15:                                               ; preds = %1
  %16 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %17 = call i64 @tws_get_state(%struct.tws_softc* %16)
  %18 = load i64, i64* @TWS_RESET, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  br label %72

21:                                               ; preds = %15
  %22 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %23 = call i64 @tws_get_state(%struct.tws_softc* %22)
  %24 = load i64, i64* @TWS_ONLINE, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  br label %72

27:                                               ; preds = %21
  %28 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %29 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %30, align 4
  %33 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %34 = load i32, i32* @TWS_I2O0_HISTAT, align 4
  %35 = call i32 @tws_read_reg(%struct.tws_softc* %33, i32 %34, i32 4)
  store i32 %35, i32* %4, align 4
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* @TWS_BIT2, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %64

40:                                               ; preds = %27
  %41 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* @TWS_I2O0_HISTAT, align 4
  %44 = call i32 @TWS_TRACE_DEBUG(%struct.tws_softc* %41, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %42, i32 %43)
  %45 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %46 = load i32, i32* @TWS_I2O0_IOBDB, align 4
  %47 = call i32 @tws_read_reg(%struct.tws_softc* %45, i32 %46, i32 4)
  store i32 %47, i32* %5, align 4
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* @TWS_BIT21, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %40
  %53 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %54 = call i32 @tws_intr_attn_error(%struct.tws_softc* %53)
  br label %72

55:                                               ; preds = %40
  %56 = load i32, i32* %5, align 4
  %57 = load i32, i32* @TWS_BIT18, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %55
  %61 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %62 = call i32 @tws_intr_attn_aen(%struct.tws_softc* %61)
  br label %63

63:                                               ; preds = %60, %55
  br label %64

64:                                               ; preds = %63, %27
  %65 = load i32, i32* %4, align 4
  %66 = load i32, i32* @TWS_BIT3, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %64
  %70 = load %struct.tws_softc*, %struct.tws_softc** %3, align 8
  %71 = call i32 @tws_intr_resp(%struct.tws_softc* %70)
  br label %72

72:                                               ; preds = %10, %20, %26, %52, %69, %64
  ret void
}

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i64 @tws_get_state(%struct.tws_softc*) #1

declare dso_local i32 @tws_read_reg(%struct.tws_softc*, i32, i32) #1

declare dso_local i32 @TWS_TRACE_DEBUG(%struct.tws_softc*, i8*, i32, i32) #1

declare dso_local i32 @tws_intr_attn_error(%struct.tws_softc*) #1

declare dso_local i32 @tws_intr_attn_aen(%struct.tws_softc*) #1

declare dso_local i32 @tws_intr_resp(%struct.tws_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
