; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/powermac/extr_pmu.c_pmu_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/powermac/extr_pmu.c_pmu_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmu_softc = type { i32, i32, i32, i32 }

@vIFR = common dso_local global i32 0, align 4
@PMU_INT_ACK = common dso_local global i32 0, align 4
@PMU_INT_ADB = common dso_local global i32 0, align 4
@ADB_COMMAND_TALK = common dso_local global i32 0, align 4
@PMU_SET_POLL_MASK = common dso_local global i32 0, align 4
@PMU_ADB_CMD = common dso_local global i32 0, align 4
@PMU_INT_ENVIRONMENT = common dso_local global i32 0, align 4
@PMU_ENV_LID_CLOSED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"PMU\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"lid\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"close\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"open\00", align 1
@PMU_ENV_POWER = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"Button\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"pressed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @pmu_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pmu_intr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.pmu_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [16 x i32], align 16
  %7 = alloca [16 x i32], align 16
  %8 = alloca [4 x i32], align 16
  store i8* %0, i8** %2, align 8
  %9 = load i8*, i8** %2, align 8
  %10 = ptrtoint i8* %9 to i64
  store i64 %10, i64* %3, align 8
  %11 = load i64, i64* %3, align 8
  %12 = call %struct.pmu_softc* @device_get_softc(i64 %11)
  store %struct.pmu_softc* %12, %struct.pmu_softc** %4, align 8
  %13 = load %struct.pmu_softc*, %struct.pmu_softc** %4, align 8
  %14 = getelementptr inbounds %struct.pmu_softc, %struct.pmu_softc* %13, i32 0, i32 3
  %15 = call i32 @mtx_lock(i32* %14)
  %16 = load %struct.pmu_softc*, %struct.pmu_softc** %4, align 8
  %17 = load i32, i32* @vIFR, align 4
  %18 = call i32 @pmu_write_reg(%struct.pmu_softc* %16, i32 %17, i32 144)
  %19 = load %struct.pmu_softc*, %struct.pmu_softc** %4, align 8
  %20 = load i32, i32* @PMU_INT_ACK, align 4
  %21 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 0
  %22 = call i32 @pmu_send(%struct.pmu_softc* %19, i32 %20, i32 0, i32* null, i32 16, i32* %21)
  store i32 %22, i32* %5, align 4
  %23 = load %struct.pmu_softc*, %struct.pmu_softc** %4, align 8
  %24 = getelementptr inbounds %struct.pmu_softc, %struct.pmu_softc* %23, i32 0, i32 3
  %25 = call i32 @mtx_unlock(i32* %24)
  %26 = load i32, i32* %5, align 4
  %27 = icmp ult i32 %26, 1
  br i1 %27, label %32, label %28

28:                                               ; preds = %1
  %29 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 1
  %30 = load i32, i32* %29, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %28, %1
  br label %136

33:                                               ; preds = %28
  %34 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @PMU_INT_ADB, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %90

39:                                               ; preds = %33
  %40 = load %struct.pmu_softc*, %struct.pmu_softc** %4, align 8
  %41 = getelementptr inbounds %struct.pmu_softc, %struct.pmu_softc* %40, i32 0, i32 3
  %42 = call i32 @mtx_lock(i32* %41)
  %43 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 2
  %44 = load i32, i32* %43, align 8
  %45 = and i32 %44, 15
  %46 = load i32, i32* @ADB_COMMAND_TALK, align 4
  %47 = shl i32 %46, 2
  %48 = icmp ne i32 %45, %47
  br i1 %48, label %49, label %75

49:                                               ; preds = %39
  %50 = load %struct.pmu_softc*, %struct.pmu_softc** %4, align 8
  %51 = getelementptr inbounds %struct.pmu_softc, %struct.pmu_softc* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %74

54:                                               ; preds = %49
  %55 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  store i32 0, i32* %55, align 4
  %56 = getelementptr inbounds i32, i32* %55, i64 1
  %57 = load i32, i32* @PMU_SET_POLL_MASK, align 4
  store i32 %57, i32* %56, align 4
  %58 = getelementptr inbounds i32, i32* %56, i64 1
  %59 = load %struct.pmu_softc*, %struct.pmu_softc** %4, align 8
  %60 = getelementptr inbounds %struct.pmu_softc, %struct.pmu_softc* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = ashr i32 %61, 8
  %63 = and i32 %62, 255
  store i32 %63, i32* %58, align 4
  %64 = getelementptr inbounds i32, i32* %58, i64 1
  %65 = load %struct.pmu_softc*, %struct.pmu_softc** %4, align 8
  %66 = getelementptr inbounds %struct.pmu_softc, %struct.pmu_softc* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = and i32 %67, 255
  store i32 %68, i32* %64, align 4
  %69 = load %struct.pmu_softc*, %struct.pmu_softc** %4, align 8
  %70 = load i32, i32* @PMU_ADB_CMD, align 4
  %71 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %72 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 0
  %73 = call i32 @pmu_send(%struct.pmu_softc* %69, i32 %70, i32 4, i32* %71, i32 16, i32* %72)
  br label %74

74:                                               ; preds = %54, %49
  br label %75

75:                                               ; preds = %74, %39
  %76 = load %struct.pmu_softc*, %struct.pmu_softc** %4, align 8
  %77 = getelementptr inbounds %struct.pmu_softc, %struct.pmu_softc* %76, i32 0, i32 3
  %78 = call i32 @mtx_unlock(i32* %77)
  %79 = load %struct.pmu_softc*, %struct.pmu_softc** %4, align 8
  %80 = getelementptr inbounds %struct.pmu_softc, %struct.pmu_softc* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 1
  %83 = load i32, i32* %82, align 4
  %84 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 2
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* %5, align 4
  %87 = sub i32 %86, 3
  %88 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 3
  %89 = call i32 @adb_receive_raw_packet(i32 %81, i32 %83, i32 %85, i32 %87, i32* %88)
  br label %90

90:                                               ; preds = %75, %33
  %91 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 1
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @PMU_INT_ENVIRONMENT, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %136

96:                                               ; preds = %90
  %97 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 2
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* @PMU_ENV_LID_CLOSED, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %111

102:                                              ; preds = %96
  %103 = load %struct.pmu_softc*, %struct.pmu_softc** %4, align 8
  %104 = getelementptr inbounds %struct.pmu_softc, %struct.pmu_softc* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %111, label %107

107:                                              ; preds = %102
  %108 = load %struct.pmu_softc*, %struct.pmu_softc** %4, align 8
  %109 = getelementptr inbounds %struct.pmu_softc, %struct.pmu_softc* %108, i32 0, i32 1
  store i32 1, i32* %109, align 4
  %110 = call i32 @devctl_notify(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32* null)
  br label %127

111:                                              ; preds = %102, %96
  %112 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 2
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* @PMU_ENV_LID_CLOSED, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %126, label %117

117:                                              ; preds = %111
  %118 = load %struct.pmu_softc*, %struct.pmu_softc** %4, align 8
  %119 = getelementptr inbounds %struct.pmu_softc, %struct.pmu_softc* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %126

122:                                              ; preds = %117
  %123 = load %struct.pmu_softc*, %struct.pmu_softc** %4, align 8
  %124 = getelementptr inbounds %struct.pmu_softc, %struct.pmu_softc* %123, i32 0, i32 1
  store i32 0, i32* %124, align 4
  %125 = call i32 @devctl_notify(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32* null)
  br label %126

126:                                              ; preds = %122, %117, %111
  br label %127

127:                                              ; preds = %126, %107
  %128 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 2
  %129 = load i32, i32* %128, align 8
  %130 = load i32, i32* @PMU_ENV_POWER, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %135

133:                                              ; preds = %127
  %134 = call i32 @devctl_notify(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32* null)
  br label %135

135:                                              ; preds = %133, %127
  br label %136

136:                                              ; preds = %32, %135, %90
  ret void
}

declare dso_local %struct.pmu_softc* @device_get_softc(i64) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @pmu_write_reg(%struct.pmu_softc*, i32, i32) #1

declare dso_local i32 @pmu_send(%struct.pmu_softc*, i32, i32, i32*, i32, i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @adb_receive_raw_packet(i32, i32, i32, i32, i32*) #1

declare dso_local i32 @devctl_notify(i8*, i8*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
