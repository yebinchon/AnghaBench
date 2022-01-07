; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/powermac/extr_fcu.c_fcu_fan_get_pwm.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/powermac/extr_fcu.c_fcu_fan_get_pwm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fcu_fan = type { i64, i32 }
%struct.fcu_softc = type { i32, i32 }

@FCU_FAN_PWM = common dso_local global i64 0, align 8
@FCU_PWM_AVAILABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"PWM Fan not available ID: %d\0A\00", align 1
@FCU_PWM_FAIL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"PWM Fan failed ID: %d\0A\00", align 1
@FCU_PWM_ACTIVE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"PWM Fan not active ID: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"Unknown fan type: %d\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@fcu_rpm_shift = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.fcu_fan*, i32*, i32*)* @fcu_fan_get_pwm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fcu_fan_get_pwm(i32 %0, %struct.fcu_fan* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.fcu_fan*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.fcu_softc*, align 8
  %12 = alloca [2 x i32], align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store %struct.fcu_fan* %1, %struct.fcu_fan** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %16 = load i32, i32* %6, align 4
  %17 = call %struct.fcu_softc* @device_get_softc(i32 %16)
  store %struct.fcu_softc* %17, %struct.fcu_softc** %11, align 8
  %18 = load %struct.fcu_fan*, %struct.fcu_fan** %7, align 8
  %19 = getelementptr inbounds %struct.fcu_fan, %struct.fcu_fan* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @FCU_FAN_PWM, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %106

23:                                               ; preds = %4
  %24 = load i32, i32* @FCU_PWM_AVAILABLE, align 4
  store i32 %24, i32* %10, align 4
  %25 = load %struct.fcu_softc*, %struct.fcu_softc** %11, align 8
  %26 = getelementptr inbounds %struct.fcu_softc, %struct.fcu_softc* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.fcu_softc*, %struct.fcu_softc** %11, align 8
  %29 = getelementptr inbounds %struct.fcu_softc, %struct.fcu_softc* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %10, align 4
  %32 = call i64 @fcu_read_1(i32 %27, i32 %30, i32 %31, i32* %14)
  %33 = icmp slt i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %23
  store i32 -1, i32* %5, align 4
  br label %159

35:                                               ; preds = %23
  %36 = load i32, i32* %14, align 4
  %37 = load %struct.fcu_fan*, %struct.fcu_fan** %7, align 8
  %38 = getelementptr inbounds %struct.fcu_fan, %struct.fcu_fan* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = shl i32 1, %39
  %41 = and i32 %36, %40
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %35
  %44 = load i32, i32* %6, align 4
  %45 = load %struct.fcu_fan*, %struct.fcu_fan** %7, align 8
  %46 = getelementptr inbounds %struct.fcu_fan, %struct.fcu_fan* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @device_printf(i32 %44, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %47)
  store i32 -1, i32* %5, align 4
  br label %159

49:                                               ; preds = %35
  %50 = load i32, i32* @FCU_PWM_FAIL, align 4
  store i32 %50, i32* %10, align 4
  %51 = load %struct.fcu_softc*, %struct.fcu_softc** %11, align 8
  %52 = getelementptr inbounds %struct.fcu_softc, %struct.fcu_softc* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.fcu_softc*, %struct.fcu_softc** %11, align 8
  %55 = getelementptr inbounds %struct.fcu_softc, %struct.fcu_softc* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %10, align 4
  %58 = call i64 @fcu_read_1(i32 %53, i32 %56, i32 %57, i32* %15)
  %59 = icmp slt i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %49
  store i32 -1, i32* %5, align 4
  br label %159

61:                                               ; preds = %49
  %62 = load i32, i32* %15, align 4
  %63 = load %struct.fcu_fan*, %struct.fcu_fan** %7, align 8
  %64 = getelementptr inbounds %struct.fcu_fan, %struct.fcu_fan* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = shl i32 1, %65
  %67 = and i32 %62, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %61
  %70 = load i32, i32* %6, align 4
  %71 = load %struct.fcu_fan*, %struct.fcu_fan** %7, align 8
  %72 = getelementptr inbounds %struct.fcu_fan, %struct.fcu_fan* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @device_printf(i32 %70, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %73)
  store i32 -1, i32* %5, align 4
  br label %159

75:                                               ; preds = %61
  %76 = load i32, i32* @FCU_PWM_ACTIVE, align 4
  store i32 %76, i32* %10, align 4
  %77 = load %struct.fcu_softc*, %struct.fcu_softc** %11, align 8
  %78 = getelementptr inbounds %struct.fcu_softc, %struct.fcu_softc* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.fcu_softc*, %struct.fcu_softc** %11, align 8
  %81 = getelementptr inbounds %struct.fcu_softc, %struct.fcu_softc* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* %10, align 4
  %84 = call i64 @fcu_read_1(i32 %79, i32 %82, i32 %83, i32* %13)
  %85 = icmp slt i64 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %75
  store i32 -1, i32* %5, align 4
  br label %159

87:                                               ; preds = %75
  %88 = load i32, i32* %13, align 4
  %89 = load %struct.fcu_fan*, %struct.fcu_fan** %7, align 8
  %90 = getelementptr inbounds %struct.fcu_fan, %struct.fcu_fan* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = shl i32 1, %91
  %93 = and i32 %88, %92
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %101

95:                                               ; preds = %87
  %96 = load i32, i32* %6, align 4
  %97 = load %struct.fcu_fan*, %struct.fcu_fan** %7, align 8
  %98 = getelementptr inbounds %struct.fcu_fan, %struct.fcu_fan* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @device_printf(i32 %96, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %99)
  store i32 -1, i32* %5, align 4
  br label %159

101:                                              ; preds = %87
  %102 = load %struct.fcu_fan*, %struct.fcu_fan** %7, align 8
  %103 = getelementptr inbounds %struct.fcu_fan, %struct.fcu_fan* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @FCU_PWM_SGET(i32 %104)
  store i32 %105, i32* %10, align 4
  br label %114

106:                                              ; preds = %4
  %107 = load i32, i32* %6, align 4
  %108 = load %struct.fcu_fan*, %struct.fcu_fan** %7, align 8
  %109 = getelementptr inbounds %struct.fcu_fan, %struct.fcu_fan* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = trunc i64 %110 to i32
  %112 = call i32 @device_printf(i32 %107, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 %111)
  %113 = load i32, i32* @EIO, align 4
  store i32 %113, i32* %5, align 4
  br label %159

114:                                              ; preds = %101
  %115 = load %struct.fcu_softc*, %struct.fcu_softc** %11, align 8
  %116 = getelementptr inbounds %struct.fcu_softc, %struct.fcu_softc* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.fcu_softc*, %struct.fcu_softc** %11, align 8
  %119 = getelementptr inbounds %struct.fcu_softc, %struct.fcu_softc* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* %10, align 4
  %122 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %123 = call i64 @fcu_read_1(i32 %117, i32 %120, i32 %121, i32* %122)
  %124 = icmp slt i64 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %114
  store i32 -1, i32* %5, align 4
  br label %159

126:                                              ; preds = %114
  %127 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %128 = load i32, i32* %127, align 4
  %129 = mul nsw i32 %128, 1000
  %130 = sdiv i32 %129, 2550
  %131 = load i32*, i32** %8, align 8
  store i32 %130, i32* %131, align 4
  %132 = load %struct.fcu_fan*, %struct.fcu_fan** %7, align 8
  %133 = getelementptr inbounds %struct.fcu_fan, %struct.fcu_fan* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 8
  %135 = call i32 @FCU_PWM_RPM(i32 %134)
  store i32 %135, i32* %10, align 4
  %136 = load %struct.fcu_softc*, %struct.fcu_softc** %11, align 8
  %137 = getelementptr inbounds %struct.fcu_softc, %struct.fcu_softc* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.fcu_softc*, %struct.fcu_softc** %11, align 8
  %140 = getelementptr inbounds %struct.fcu_softc, %struct.fcu_softc* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* %10, align 4
  %143 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %144 = call i64 @fcu_read_1(i32 %138, i32 %141, i32 %142, i32* %143)
  %145 = icmp slt i64 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %126
  store i32 -1, i32* %5, align 4
  br label %159

147:                                              ; preds = %126
  %148 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* @fcu_rpm_shift, align 4
  %151 = sub nsw i32 8, %150
  %152 = shl i32 %149, %151
  %153 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 1
  %154 = load i32, i32* %153, align 4
  %155 = load i32, i32* @fcu_rpm_shift, align 4
  %156 = ashr i32 %154, %155
  %157 = or i32 %152, %156
  %158 = load i32*, i32** %9, align 8
  store i32 %157, i32* %158, align 4
  store i32 0, i32* %5, align 4
  br label %159

159:                                              ; preds = %147, %146, %125, %106, %95, %86, %69, %60, %43, %34
  %160 = load i32, i32* %5, align 4
  ret i32 %160
}

declare dso_local %struct.fcu_softc* @device_get_softc(i32) #1

declare dso_local i64 @fcu_read_1(i32, i32, i32, i32*) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

declare dso_local i32 @FCU_PWM_SGET(i32) #1

declare dso_local i32 @FCU_PWM_RPM(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
