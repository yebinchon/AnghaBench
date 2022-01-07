; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/powermac/extr_smu.c_smu_fan_read_pwm.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/powermac/extr_smu.c_smu_fan_read_pwm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smu_fan = type { i32, i32, i32 }
%struct.smu_cmd = type { i32, i32*, i8* }

@SMU_FAN = common dso_local global i8* null, align 8
@EWOULDBLOCK = common dso_local global i32 0, align 4
@SMU_PWM_STATUS = common dso_local global i32 0, align 4
@SMU_PWM_SETPOINT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smu_fan*, i32*, i32*)* @smu_fan_read_pwm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smu_fan_read_pwm(%struct.smu_fan* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.smu_fan*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.smu_cmd, align 8
  %10 = alloca i32, align 4
  store %struct.smu_fan* %0, %struct.smu_fan** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load %struct.smu_fan*, %struct.smu_fan** %5, align 8
  %12 = getelementptr inbounds %struct.smu_fan, %struct.smu_fan* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %8, align 4
  %14 = load %struct.smu_fan*, %struct.smu_fan** %5, align 8
  %15 = getelementptr inbounds %struct.smu_fan, %struct.smu_fan* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %54, label %18

18:                                               ; preds = %3
  %19 = load i8*, i8** @SMU_FAN, align 8
  %20 = getelementptr inbounds %struct.smu_cmd, %struct.smu_cmd* %9, i32 0, i32 2
  store i8* %19, i8** %20, align 8
  %21 = getelementptr inbounds %struct.smu_cmd, %struct.smu_cmd* %9, i32 0, i32 0
  store i32 2, i32* %21, align 8
  %22 = getelementptr inbounds %struct.smu_cmd, %struct.smu_cmd* %9, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  store i32 49, i32* %24, align 4
  %25 = load %struct.smu_fan*, %struct.smu_fan** %5, align 8
  %26 = getelementptr inbounds %struct.smu_fan, %struct.smu_fan* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = getelementptr inbounds %struct.smu_cmd, %struct.smu_cmd* %9, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 1
  store i32 %27, i32* %30, align 4
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @smu_run_cmd(i32 %31, %struct.smu_cmd* %9, i32 1)
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %10, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %18
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* @EWOULDBLOCK, align 4
  %38 = icmp ne i32 %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %35
  %40 = load %struct.smu_fan*, %struct.smu_fan** %5, align 8
  %41 = getelementptr inbounds %struct.smu_fan, %struct.smu_fan* %40, i32 0, i32 0
  store i32 1, i32* %41, align 4
  br label %42

42:                                               ; preds = %39, %35, %18
  %43 = getelementptr inbounds %struct.smu_cmd, %struct.smu_cmd* %9, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 0
  %46 = load i32, i32* %45, align 4
  %47 = shl i32 %46, 8
  %48 = getelementptr inbounds %struct.smu_cmd, %struct.smu_cmd* %9, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 1
  %51 = load i32, i32* %50, align 4
  %52 = or i32 %47, %51
  %53 = load i32*, i32** %7, align 8
  store i32 %52, i32* %53, align 4
  br label %54

54:                                               ; preds = %42, %3
  %55 = load %struct.smu_fan*, %struct.smu_fan** %5, align 8
  %56 = getelementptr inbounds %struct.smu_fan, %struct.smu_fan* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %97

59:                                               ; preds = %54
  %60 = load i8*, i8** @SMU_FAN, align 8
  %61 = getelementptr inbounds %struct.smu_cmd, %struct.smu_cmd* %9, i32 0, i32 2
  store i8* %60, i8** %61, align 8
  %62 = getelementptr inbounds %struct.smu_cmd, %struct.smu_cmd* %9, i32 0, i32 0
  store i32 1, i32* %62, align 8
  %63 = load i32, i32* @SMU_PWM_STATUS, align 4
  %64 = getelementptr inbounds %struct.smu_cmd, %struct.smu_cmd* %9, i32 0, i32 1
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 0
  store i32 %63, i32* %66, align 4
  %67 = load i32, i32* %8, align 4
  %68 = call i32 @smu_run_cmd(i32 %67, %struct.smu_cmd* %9, i32 1)
  store i32 %68, i32* %10, align 4
  %69 = load i32, i32* %10, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %59
  %72 = load i32, i32* %10, align 4
  store i32 %72, i32* %4, align 4
  br label %136

73:                                               ; preds = %59
  %74 = getelementptr inbounds %struct.smu_cmd, %struct.smu_cmd* %9, i32 0, i32 1
  %75 = load i32*, i32** %74, align 8
  %76 = load %struct.smu_fan*, %struct.smu_fan** %5, align 8
  %77 = getelementptr inbounds %struct.smu_fan, %struct.smu_fan* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = mul nsw i32 %78, 2
  %80 = add nsw i32 %79, 1
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %75, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = shl i32 %83, 8
  %85 = getelementptr inbounds %struct.smu_cmd, %struct.smu_cmd* %9, i32 0, i32 1
  %86 = load i32*, i32** %85, align 8
  %87 = load %struct.smu_fan*, %struct.smu_fan** %5, align 8
  %88 = getelementptr inbounds %struct.smu_fan, %struct.smu_fan* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = mul nsw i32 %89, 2
  %91 = add nsw i32 %90, 2
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %86, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = or i32 %84, %94
  %96 = load i32*, i32** %7, align 8
  store i32 %95, i32* %96, align 4
  br label %97

97:                                               ; preds = %73, %54
  %98 = load %struct.smu_fan*, %struct.smu_fan** %5, align 8
  %99 = getelementptr inbounds %struct.smu_fan, %struct.smu_fan* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %135

102:                                              ; preds = %97
  %103 = load i8*, i8** @SMU_FAN, align 8
  %104 = getelementptr inbounds %struct.smu_cmd, %struct.smu_cmd* %9, i32 0, i32 2
  store i8* %103, i8** %104, align 8
  %105 = getelementptr inbounds %struct.smu_cmd, %struct.smu_cmd* %9, i32 0, i32 0
  store i32 14, i32* %105, align 8
  %106 = load i32, i32* @SMU_PWM_SETPOINT, align 4
  %107 = getelementptr inbounds %struct.smu_cmd, %struct.smu_cmd* %9, i32 0, i32 1
  %108 = load i32*, i32** %107, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 0
  store i32 %106, i32* %109, align 4
  %110 = load %struct.smu_fan*, %struct.smu_fan** %5, align 8
  %111 = getelementptr inbounds %struct.smu_fan, %struct.smu_fan* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = shl i32 1, %112
  %114 = getelementptr inbounds %struct.smu_cmd, %struct.smu_cmd* %9, i32 0, i32 1
  %115 = load i32*, i32** %114, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 1
  store i32 %113, i32* %116, align 4
  %117 = load i32, i32* %8, align 4
  %118 = call i32 @smu_run_cmd(i32 %117, %struct.smu_cmd* %9, i32 1)
  store i32 %118, i32* %10, align 4
  %119 = load i32, i32* %10, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %102
  %122 = load i32, i32* %10, align 4
  store i32 %122, i32* %4, align 4
  br label %136

123:                                              ; preds = %102
  %124 = getelementptr inbounds %struct.smu_cmd, %struct.smu_cmd* %9, i32 0, i32 1
  %125 = load i32*, i32** %124, align 8
  %126 = load %struct.smu_fan*, %struct.smu_fan** %5, align 8
  %127 = getelementptr inbounds %struct.smu_fan, %struct.smu_fan* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = mul nsw i32 %128, 2
  %130 = add nsw i32 %129, 2
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i32, i32* %125, i64 %131
  %133 = load i32, i32* %132, align 4
  %134 = load i32*, i32** %6, align 8
  store i32 %133, i32* %134, align 4
  br label %135

135:                                              ; preds = %123, %97
  store i32 0, i32* %4, align 4
  br label %136

136:                                              ; preds = %135, %121, %71
  %137 = load i32, i32* %4, align 4
  ret i32 %137
}

declare dso_local i32 @smu_run_cmd(i32, %struct.smu_cmd*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
