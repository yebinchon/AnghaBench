; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/powermac/extr_fcu.c_fcu_fan_get_rpm.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/powermac/extr_fcu.c_fcu_fan_get_rpm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fcu_fan = type { i64, i32, i32 }
%struct.fcu_softc = type { i32, i32 }

@FCU_FAN_RPM = common dso_local global i64 0, align 8
@FCU_RPM_AVAILABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"RPM Fan not available ID: %d\0A\00", align 1
@FCU_RPM_FAIL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"RPM Fan failed ID: %d\0A\00", align 1
@FCU_RPM_ACTIVE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"RPM Fan not active ID: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"Unknown fan type: %d\0A\00", align 1
@fcu_rpm_shift = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fcu_fan*)* @fcu_fan_get_rpm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fcu_fan_get_rpm(%struct.fcu_fan* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fcu_fan*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.fcu_softc*, align 8
  %6 = alloca [2 x i32], align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.fcu_fan* %0, %struct.fcu_fan** %3, align 8
  %11 = bitcast [2 x i32]* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %11, i8 0, i64 8, i1 false)
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %12 = load %struct.fcu_fan*, %struct.fcu_fan** %3, align 8
  %13 = getelementptr inbounds %struct.fcu_fan, %struct.fcu_fan* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.fcu_softc* @device_get_softc(i32 %14)
  store %struct.fcu_softc* %15, %struct.fcu_softc** %5, align 8
  %16 = load %struct.fcu_fan*, %struct.fcu_fan** %3, align 8
  %17 = getelementptr inbounds %struct.fcu_fan, %struct.fcu_fan* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @FCU_FAN_RPM, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %110

21:                                               ; preds = %1
  %22 = load i32, i32* @FCU_RPM_AVAILABLE, align 4
  store i32 %22, i32* %4, align 4
  %23 = load %struct.fcu_softc*, %struct.fcu_softc** %5, align 8
  %24 = getelementptr inbounds %struct.fcu_softc, %struct.fcu_softc* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.fcu_softc*, %struct.fcu_softc** %5, align 8
  %27 = getelementptr inbounds %struct.fcu_softc, %struct.fcu_softc* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %4, align 4
  %30 = call i64 @fcu_read_1(i32 %25, i32 %28, i32 %29, i32* %8)
  %31 = icmp slt i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %21
  store i32 -1, i32* %2, align 4
  br label %143

33:                                               ; preds = %21
  %34 = load i32, i32* %8, align 4
  %35 = load %struct.fcu_fan*, %struct.fcu_fan** %3, align 8
  %36 = getelementptr inbounds %struct.fcu_fan, %struct.fcu_fan* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = shl i32 1, %37
  %39 = and i32 %34, %38
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %33
  %42 = load %struct.fcu_fan*, %struct.fcu_fan** %3, align 8
  %43 = getelementptr inbounds %struct.fcu_fan, %struct.fcu_fan* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.fcu_fan*, %struct.fcu_fan** %3, align 8
  %46 = getelementptr inbounds %struct.fcu_fan, %struct.fcu_fan* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @device_printf(i32 %44, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %47)
  store i32 -1, i32* %2, align 4
  br label %143

49:                                               ; preds = %33
  %50 = load i32, i32* @FCU_RPM_FAIL, align 4
  store i32 %50, i32* %4, align 4
  %51 = load %struct.fcu_softc*, %struct.fcu_softc** %5, align 8
  %52 = getelementptr inbounds %struct.fcu_softc, %struct.fcu_softc* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.fcu_softc*, %struct.fcu_softc** %5, align 8
  %55 = getelementptr inbounds %struct.fcu_softc, %struct.fcu_softc* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %4, align 4
  %58 = call i64 @fcu_read_1(i32 %53, i32 %56, i32 %57, i32* %9)
  %59 = icmp slt i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %49
  store i32 -1, i32* %2, align 4
  br label %143

61:                                               ; preds = %49
  %62 = load i32, i32* %9, align 4
  %63 = load %struct.fcu_fan*, %struct.fcu_fan** %3, align 8
  %64 = getelementptr inbounds %struct.fcu_fan, %struct.fcu_fan* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = shl i32 1, %65
  %67 = and i32 %62, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %77

69:                                               ; preds = %61
  %70 = load %struct.fcu_fan*, %struct.fcu_fan** %3, align 8
  %71 = getelementptr inbounds %struct.fcu_fan, %struct.fcu_fan* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.fcu_fan*, %struct.fcu_fan** %3, align 8
  %74 = getelementptr inbounds %struct.fcu_fan, %struct.fcu_fan* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @device_printf(i32 %72, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %75)
  store i32 -1, i32* %2, align 4
  br label %143

77:                                               ; preds = %61
  %78 = load i32, i32* @FCU_RPM_ACTIVE, align 4
  store i32 %78, i32* %4, align 4
  %79 = load %struct.fcu_softc*, %struct.fcu_softc** %5, align 8
  %80 = getelementptr inbounds %struct.fcu_softc, %struct.fcu_softc* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.fcu_softc*, %struct.fcu_softc** %5, align 8
  %83 = getelementptr inbounds %struct.fcu_softc, %struct.fcu_softc* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %4, align 4
  %86 = call i64 @fcu_read_1(i32 %81, i32 %84, i32 %85, i32* %7)
  %87 = icmp slt i64 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %77
  store i32 -1, i32* %2, align 4
  br label %143

89:                                               ; preds = %77
  %90 = load i32, i32* %7, align 4
  %91 = load %struct.fcu_fan*, %struct.fcu_fan** %3, align 8
  %92 = getelementptr inbounds %struct.fcu_fan, %struct.fcu_fan* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = shl i32 1, %93
  %95 = and i32 %90, %94
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %105

97:                                               ; preds = %89
  %98 = load %struct.fcu_fan*, %struct.fcu_fan** %3, align 8
  %99 = getelementptr inbounds %struct.fcu_fan, %struct.fcu_fan* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.fcu_fan*, %struct.fcu_fan** %3, align 8
  %102 = getelementptr inbounds %struct.fcu_fan, %struct.fcu_fan* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @device_printf(i32 %100, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %103)
  store i32 -1, i32* %2, align 4
  br label %143

105:                                              ; preds = %89
  %106 = load %struct.fcu_fan*, %struct.fcu_fan** %3, align 8
  %107 = getelementptr inbounds %struct.fcu_fan, %struct.fcu_fan* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @FCU_RPM_READ(i32 %108)
  store i32 %109, i32* %4, align 4
  br label %119

110:                                              ; preds = %1
  %111 = load %struct.fcu_fan*, %struct.fcu_fan** %3, align 8
  %112 = getelementptr inbounds %struct.fcu_fan, %struct.fcu_fan* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.fcu_fan*, %struct.fcu_fan** %3, align 8
  %115 = getelementptr inbounds %struct.fcu_fan, %struct.fcu_fan* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = trunc i64 %116 to i32
  %118 = call i32 @device_printf(i32 %113, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 %117)
  store i32 -1, i32* %2, align 4
  br label %143

119:                                              ; preds = %105
  %120 = load %struct.fcu_softc*, %struct.fcu_softc** %5, align 8
  %121 = getelementptr inbounds %struct.fcu_softc, %struct.fcu_softc* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.fcu_softc*, %struct.fcu_softc** %5, align 8
  %124 = getelementptr inbounds %struct.fcu_softc, %struct.fcu_softc* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* %4, align 4
  %127 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %128 = call i64 @fcu_read_1(i32 %122, i32 %125, i32 %126, i32* %127)
  %129 = icmp slt i64 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %119
  store i32 -1, i32* %2, align 4
  br label %143

131:                                              ; preds = %119
  %132 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* @fcu_rpm_shift, align 4
  %135 = sub nsw i32 8, %134
  %136 = shl i32 %133, %135
  %137 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* @fcu_rpm_shift, align 4
  %140 = ashr i32 %138, %139
  %141 = or i32 %136, %140
  store i32 %141, i32* %10, align 4
  %142 = load i32, i32* %10, align 4
  store i32 %142, i32* %2, align 4
  br label %143

143:                                              ; preds = %131, %130, %110, %97, %88, %69, %60, %41, %32
  %144 = load i32, i32* %2, align 4
  ret i32 %144
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.fcu_softc* @device_get_softc(i32) #2

declare dso_local i64 @fcu_read_1(i32, i32, i32, i32*) #2

declare dso_local i32 @device_printf(i32, i8*, i32) #2

declare dso_local i32 @FCU_RPM_READ(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
