; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cyapa/extr_cyapa.c_cyapa_poll_thread.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cyapa/extr_cyapa.c_cyapa_poll_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cyapa_softc = type { i32, i64, i32, i32, i32 }
%struct.cyapa_regs = type { i32 }

@cyapa_norm_freq = common dso_local global i32 0, align 4
@ticks = common dso_local global i32 0, align 4
@IIC_WAIT = common dso_local global i32 0, align 4
@CMD_DEV_STATUS = common dso_local global i32 0, align 4
@cyapa_reset = common dso_local global i64 0, align 8
@CYAPA_STAT_RUNNING = common dso_local global i32 0, align 4
@TIME_TO_RESET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"cyapw\00", align 1
@hz = common dso_local global i32 0, align 4
@cyapa_idle_freq = common dso_local global i32 0, align 4
@cyapa_slow_freq = common dso_local global i32 0, align 4
@cyapa_debug = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [18 x i8] c"cyapa: power off\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"cyapa: power idle\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"cyapa: power full\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @cyapa_poll_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cyapa_poll_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.cyapa_softc*, align 8
  %4 = alloca %struct.cyapa_regs, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %12 = load i8*, i8** %2, align 8
  %13 = bitcast i8* %12 to %struct.cyapa_softc*
  store %struct.cyapa_softc* %13, %struct.cyapa_softc** %3, align 8
  %14 = load i32, i32* @cyapa_norm_freq, align 4
  store i32 %14, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 129, i32* %9, align 4
  %15 = load i32, i32* @ticks, align 4
  store i32 %15, i32* %11, align 4
  %16 = load %struct.cyapa_softc*, %struct.cyapa_softc** %3, align 8
  %17 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @device_get_parent(i32 %18)
  store i32 %19, i32* %5, align 4
  %20 = load %struct.cyapa_softc*, %struct.cyapa_softc** %3, align 8
  %21 = call i32 @cyapa_lock(%struct.cyapa_softc* %20)
  %22 = load %struct.cyapa_softc*, %struct.cyapa_softc** %3, align 8
  %23 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %22, i32 0, i32 0
  store i32 1, i32* %23, align 8
  br label %24

24:                                               ; preds = %125, %1
  %25 = load %struct.cyapa_softc*, %struct.cyapa_softc** %3, align 8
  %26 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  %29 = xor i1 %28, true
  br i1 %29, label %30, label %128

30:                                               ; preds = %24
  %31 = load %struct.cyapa_softc*, %struct.cyapa_softc** %3, align 8
  %32 = call i32 @cyapa_unlock(%struct.cyapa_softc* %31)
  %33 = load i32, i32* %5, align 4
  %34 = load %struct.cyapa_softc*, %struct.cyapa_softc** %3, align 8
  %35 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @IIC_WAIT, align 4
  %38 = call i32 @iicbus_request_bus(i32 %33, i32 %36, i32 %37)
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %6, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %81

41:                                               ; preds = %30
  %42 = load %struct.cyapa_softc*, %struct.cyapa_softc** %3, align 8
  %43 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @CMD_DEV_STATUS, align 4
  %46 = bitcast %struct.cyapa_regs* %4 to i8*
  %47 = call i32 @cyapa_read_bytes(i32 %44, i32 %45, i8* %46, i32 4)
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %6, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %41
  %51 = load %struct.cyapa_softc*, %struct.cyapa_softc** %3, align 8
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @cyapa_raw_input(%struct.cyapa_softc* %51, %struct.cyapa_regs* %4, i32 %52)
  store i32 %53, i32* %8, align 4
  br label %54

54:                                               ; preds = %50, %41
  %55 = load i64, i64* @cyapa_reset, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %69, label %57

57:                                               ; preds = %54
  %58 = getelementptr inbounds %struct.cyapa_regs, %struct.cyapa_regs* %4, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @CYAPA_STAT_RUNNING, align 4
  %61 = and i32 %59, %60
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %75

63:                                               ; preds = %57
  %64 = load i32, i32* @ticks, align 4
  %65 = load i32, i32* %11, align 4
  %66 = sub nsw i32 %64, %65
  %67 = load i32, i32* @TIME_TO_RESET, align 4
  %68 = icmp ugt i32 %66, %67
  br i1 %68, label %69, label %75

69:                                               ; preds = %63, %54
  store i64 0, i64* @cyapa_reset, align 8
  %70 = load i32, i32* @ticks, align 4
  store i32 %70, i32* %11, align 4
  %71 = load %struct.cyapa_softc*, %struct.cyapa_softc** %3, align 8
  %72 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @init_device(i32 %73, i32* null, i32 2)
  br label %75

75:                                               ; preds = %69, %63, %57
  %76 = load i32, i32* %5, align 4
  %77 = load %struct.cyapa_softc*, %struct.cyapa_softc** %3, align 8
  %78 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @iicbus_release_bus(i32 %76, i32 %79)
  br label %81

81:                                               ; preds = %75, %30
  %82 = load i32, i32* @hz, align 4
  %83 = load i32, i32* %7, align 4
  %84 = sdiv i32 %82, %83
  %85 = call i32 @pause(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %84)
  %86 = load %struct.cyapa_softc*, %struct.cyapa_softc** %3, align 8
  %87 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %87, align 8
  %90 = load %struct.cyapa_softc*, %struct.cyapa_softc** %3, align 8
  %91 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = icmp eq i64 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %81
  %95 = load i32, i32* @cyapa_idle_freq, align 4
  store i32 %95, i32* %7, align 4
  store i32 129, i32* %10, align 4
  br label %104

96:                                               ; preds = %81
  %97 = load i32, i32* %8, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %96
  %100 = load i32, i32* @cyapa_slow_freq, align 4
  store i32 %100, i32* %7, align 4
  store i32 129, i32* %10, align 4
  br label %103

101:                                              ; preds = %96
  %102 = load i32, i32* @cyapa_norm_freq, align 4
  store i32 %102, i32* %7, align 4
  store i32 130, i32* %10, align 4
  br label %103

103:                                              ; preds = %101, %99
  br label %104

104:                                              ; preds = %103, %94
  %105 = load i32, i32* %9, align 4
  %106 = load i32, i32* %10, align 4
  %107 = icmp ne i32 %105, %106
  br i1 %107, label %108, label %125

108:                                              ; preds = %104
  %109 = load i32, i32* %10, align 4
  store i32 %109, i32* %9, align 4
  %110 = load %struct.cyapa_softc*, %struct.cyapa_softc** %3, align 8
  %111 = load i32, i32* %9, align 4
  %112 = call i32 @cyapa_set_power_mode(%struct.cyapa_softc* %110, i32 %111)
  %113 = load i64, i64* @cyapa_debug, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %124

115:                                              ; preds = %108
  %116 = load i32, i32* %9, align 4
  switch i32 %116, label %123 [
    i32 128, label %117
    i32 129, label %119
    i32 130, label %121
  ]

117:                                              ; preds = %115
  %118 = call i32 @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  br label %123

119:                                              ; preds = %115
  %120 = call i32 @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  br label %123

121:                                              ; preds = %115
  %122 = call i32 @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  br label %123

123:                                              ; preds = %115, %121, %119, %117
  br label %124

124:                                              ; preds = %123, %108
  br label %125

125:                                              ; preds = %124, %104
  %126 = load %struct.cyapa_softc*, %struct.cyapa_softc** %3, align 8
  %127 = call i32 @cyapa_lock(%struct.cyapa_softc* %126)
  br label %24

128:                                              ; preds = %24
  %129 = load %struct.cyapa_softc*, %struct.cyapa_softc** %3, align 8
  %130 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %129, i32 0, i32 0
  store i32 0, i32* %130, align 8
  %131 = load %struct.cyapa_softc*, %struct.cyapa_softc** %3, align 8
  %132 = call i32 @cyapa_unlock(%struct.cyapa_softc* %131)
  %133 = call i32 (...) @kthread_exit()
  ret void
}

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i32 @cyapa_lock(%struct.cyapa_softc*) #1

declare dso_local i32 @cyapa_unlock(%struct.cyapa_softc*) #1

declare dso_local i32 @iicbus_request_bus(i32, i32, i32) #1

declare dso_local i32 @cyapa_read_bytes(i32, i32, i8*, i32) #1

declare dso_local i32 @cyapa_raw_input(%struct.cyapa_softc*, %struct.cyapa_regs*, i32) #1

declare dso_local i32 @init_device(i32, i32*, i32) #1

declare dso_local i32 @iicbus_release_bus(i32, i32) #1

declare dso_local i32 @pause(i8*, i32) #1

declare dso_local i32 @cyapa_set_power_mode(%struct.cyapa_softc*, i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @kthread_exit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
