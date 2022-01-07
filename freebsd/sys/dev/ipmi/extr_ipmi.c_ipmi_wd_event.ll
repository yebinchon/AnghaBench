; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ipmi/extr_ipmi.c_ipmi_wd_event.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ipmi/extr_ipmi.c_ipmi_wd_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipmi_softc = type { i32, i64, i64 }

@on = common dso_local global i32 0, align 4
@wd_in_shutdown = common dso_local global i64 0, align 8
@dumping = common dso_local global i64 0, align 8
@WD_INTERVAL = common dso_local global i32 0, align 4
@wd_timer_actions = common dso_local global i64 0, align 8
@wd_pretimeout_countdown = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i32*)* @ipmi_wd_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipmi_wd_event(i8* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.ipmi_softc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.ipmi_softc*
  store %struct.ipmi_softc* %11, %struct.ipmi_softc** %7, align 8
  %12 = load i32, i32* @on, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  br label %135

15:                                               ; preds = %3
  %16 = load i64, i64* @wd_in_shutdown, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %30

18:                                               ; preds = %15
  %19 = load i64, i64* @dumping, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %18
  %22 = load %struct.ipmi_softc*, %struct.ipmi_softc** %7, align 8
  %23 = getelementptr inbounds %struct.ipmi_softc, %struct.ipmi_softc* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load %struct.ipmi_softc*, %struct.ipmi_softc** %7, align 8
  %28 = call i32 @ipmi_reset_watchdog(%struct.ipmi_softc* %27)
  br label %29

29:                                               ; preds = %26, %21, %18
  br label %135

30:                                               ; preds = %15
  %31 = load i32, i32* @WD_INTERVAL, align 4
  %32 = load i32, i32* %5, align 4
  %33 = and i32 %32, %31
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %5, align 4
  %35 = icmp ugt i32 %34, 0
  br i1 %35, label %36, label %113

36:                                               ; preds = %30
  %37 = load i32, i32* %5, align 4
  %38 = icmp ule i32 %37, 63
  br i1 %38, label %39, label %113

39:                                               ; preds = %36
  %40 = load i32, i32* %5, align 4
  %41 = shl i32 1, %40
  %42 = udiv i32 %41, 1000000000
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %39
  store i32 1, i32* %8, align 4
  br label %46

46:                                               ; preds = %45, %39
  %47 = load i32, i32* %8, align 4
  %48 = load %struct.ipmi_softc*, %struct.ipmi_softc** %7, align 8
  %49 = getelementptr inbounds %struct.ipmi_softc, %struct.ipmi_softc* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp ne i32 %47, %50
  br i1 %51, label %64, label %52

52:                                               ; preds = %46
  %53 = load i64, i64* @wd_timer_actions, align 8
  %54 = load %struct.ipmi_softc*, %struct.ipmi_softc** %7, align 8
  %55 = getelementptr inbounds %struct.ipmi_softc, %struct.ipmi_softc* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %53, %56
  br i1 %57, label %64, label %58

58:                                               ; preds = %52
  %59 = load i64, i64* @wd_pretimeout_countdown, align 8
  %60 = load %struct.ipmi_softc*, %struct.ipmi_softc** %7, align 8
  %61 = getelementptr inbounds %struct.ipmi_softc, %struct.ipmi_softc* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %59, %62
  br i1 %63, label %64, label %90

64:                                               ; preds = %58, %52, %46
  %65 = load %struct.ipmi_softc*, %struct.ipmi_softc** %7, align 8
  %66 = load i32, i32* %8, align 4
  %67 = call i32 @ipmi_set_watchdog(%struct.ipmi_softc* %65, i32 %66)
  store i32 %67, i32* %9, align 4
  %68 = load i32, i32* %9, align 4
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %80

70:                                               ; preds = %64
  %71 = load i32, i32* %8, align 4
  %72 = load %struct.ipmi_softc*, %struct.ipmi_softc** %7, align 8
  %73 = getelementptr inbounds %struct.ipmi_softc, %struct.ipmi_softc* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 8
  %74 = load i64, i64* @wd_timer_actions, align 8
  %75 = load %struct.ipmi_softc*, %struct.ipmi_softc** %7, align 8
  %76 = getelementptr inbounds %struct.ipmi_softc, %struct.ipmi_softc* %75, i32 0, i32 1
  store i64 %74, i64* %76, align 8
  %77 = load i64, i64* @wd_pretimeout_countdown, align 8
  %78 = load %struct.ipmi_softc*, %struct.ipmi_softc** %7, align 8
  %79 = getelementptr inbounds %struct.ipmi_softc, %struct.ipmi_softc* %78, i32 0, i32 2
  store i64 %77, i64* %79, align 8
  br label %89

80:                                               ; preds = %64
  %81 = load %struct.ipmi_softc*, %struct.ipmi_softc** %7, align 8
  %82 = call i32 @ipmi_set_watchdog(%struct.ipmi_softc* %81, i32 0)
  %83 = load %struct.ipmi_softc*, %struct.ipmi_softc** %7, align 8
  %84 = getelementptr inbounds %struct.ipmi_softc, %struct.ipmi_softc* %83, i32 0, i32 0
  store i32 0, i32* %84, align 8
  %85 = load %struct.ipmi_softc*, %struct.ipmi_softc** %7, align 8
  %86 = getelementptr inbounds %struct.ipmi_softc, %struct.ipmi_softc* %85, i32 0, i32 1
  store i64 0, i64* %86, align 8
  %87 = load %struct.ipmi_softc*, %struct.ipmi_softc** %7, align 8
  %88 = getelementptr inbounds %struct.ipmi_softc, %struct.ipmi_softc* %87, i32 0, i32 2
  store i64 0, i64* %88, align 8
  br label %89

89:                                               ; preds = %80, %70
  br label %90

90:                                               ; preds = %89, %58
  %91 = load %struct.ipmi_softc*, %struct.ipmi_softc** %7, align 8
  %92 = getelementptr inbounds %struct.ipmi_softc, %struct.ipmi_softc* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %112

95:                                               ; preds = %90
  %96 = load %struct.ipmi_softc*, %struct.ipmi_softc** %7, align 8
  %97 = call i32 @ipmi_reset_watchdog(%struct.ipmi_softc* %96)
  store i32 %97, i32* %9, align 4
  %98 = load i32, i32* %9, align 4
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %95
  %101 = load i32*, i32** %6, align 8
  store i32 0, i32* %101, align 4
  br label %111

102:                                              ; preds = %95
  %103 = load %struct.ipmi_softc*, %struct.ipmi_softc** %7, align 8
  %104 = call i32 @ipmi_set_watchdog(%struct.ipmi_softc* %103, i32 0)
  %105 = load %struct.ipmi_softc*, %struct.ipmi_softc** %7, align 8
  %106 = getelementptr inbounds %struct.ipmi_softc, %struct.ipmi_softc* %105, i32 0, i32 0
  store i32 0, i32* %106, align 8
  %107 = load %struct.ipmi_softc*, %struct.ipmi_softc** %7, align 8
  %108 = getelementptr inbounds %struct.ipmi_softc, %struct.ipmi_softc* %107, i32 0, i32 1
  store i64 0, i64* %108, align 8
  %109 = load %struct.ipmi_softc*, %struct.ipmi_softc** %7, align 8
  %110 = getelementptr inbounds %struct.ipmi_softc, %struct.ipmi_softc* %109, i32 0, i32 2
  store i64 0, i64* %110, align 8
  br label %111

111:                                              ; preds = %102, %100
  br label %112

112:                                              ; preds = %111, %90
  br label %135

113:                                              ; preds = %36, %30
  %114 = load %struct.ipmi_softc*, %struct.ipmi_softc** %7, align 8
  %115 = getelementptr inbounds %struct.ipmi_softc, %struct.ipmi_softc* %114, i32 0, i32 0
  %116 = call i64 @atomic_readandclear_int(i32* %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %134

118:                                              ; preds = %113
  %119 = load %struct.ipmi_softc*, %struct.ipmi_softc** %7, align 8
  %120 = getelementptr inbounds %struct.ipmi_softc, %struct.ipmi_softc* %119, i32 0, i32 1
  store i64 0, i64* %120, align 8
  %121 = load %struct.ipmi_softc*, %struct.ipmi_softc** %7, align 8
  %122 = getelementptr inbounds %struct.ipmi_softc, %struct.ipmi_softc* %121, i32 0, i32 2
  store i64 0, i64* %122, align 8
  %123 = load %struct.ipmi_softc*, %struct.ipmi_softc** %7, align 8
  %124 = call i32 @ipmi_set_watchdog(%struct.ipmi_softc* %123, i32 0)
  store i32 %124, i32* %9, align 4
  %125 = load i32, i32* %9, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %133

127:                                              ; preds = %118
  %128 = load i32, i32* %5, align 4
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %130, label %133

130:                                              ; preds = %127
  %131 = load i32, i32* @EOPNOTSUPP, align 4
  %132 = load i32*, i32** %6, align 8
  store i32 %131, i32* %132, align 4
  br label %133

133:                                              ; preds = %130, %127, %118
  br label %134

134:                                              ; preds = %133, %113
  br label %135

135:                                              ; preds = %14, %29, %134, %112
  ret void
}

declare dso_local i32 @ipmi_reset_watchdog(%struct.ipmi_softc*) #1

declare dso_local i32 @ipmi_set_watchdog(%struct.ipmi_softc*, i32) #1

declare dso_local i64 @atomic_readandclear_int(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
