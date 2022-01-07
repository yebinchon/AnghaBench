; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/powermac/extr_smu.c_smu_fan_read_rpm.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/powermac/extr_smu.c_smu_fan_read_rpm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smu_fan = type { i32, i32, i32 }
%struct.smu_cmd = type { i32, i32*, i8* }

@SMU_FAN = common dso_local global i8* null, align 8
@EWOULDBLOCK = common dso_local global i32 0, align 4
@SMU_RPM_STATUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smu_fan*)* @smu_fan_read_rpm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smu_fan_read_rpm(%struct.smu_fan* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.smu_fan*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.smu_cmd, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.smu_fan* %0, %struct.smu_fan** %3, align 8
  %8 = load %struct.smu_fan*, %struct.smu_fan** %3, align 8
  %9 = getelementptr inbounds %struct.smu_fan, %struct.smu_fan* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %4, align 4
  %11 = load %struct.smu_fan*, %struct.smu_fan** %3, align 8
  %12 = call i32 @smu_fan_check_old_style(%struct.smu_fan* %11)
  %13 = load %struct.smu_fan*, %struct.smu_fan** %3, align 8
  %14 = getelementptr inbounds %struct.smu_fan, %struct.smu_fan* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %52, label %17

17:                                               ; preds = %1
  %18 = load i8*, i8** @SMU_FAN, align 8
  %19 = getelementptr inbounds %struct.smu_cmd, %struct.smu_cmd* %5, i32 0, i32 2
  store i8* %18, i8** %19, align 8
  %20 = getelementptr inbounds %struct.smu_cmd, %struct.smu_cmd* %5, i32 0, i32 0
  store i32 2, i32* %20, align 8
  %21 = getelementptr inbounds %struct.smu_cmd, %struct.smu_cmd* %5, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  store i32 49, i32* %23, align 4
  %24 = load %struct.smu_fan*, %struct.smu_fan** %3, align 8
  %25 = getelementptr inbounds %struct.smu_fan, %struct.smu_fan* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = getelementptr inbounds %struct.smu_cmd, %struct.smu_cmd* %5, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 1
  store i32 %26, i32* %29, align 4
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @smu_run_cmd(i32 %30, %struct.smu_cmd* %5, i32 1)
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %17
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* @EWOULDBLOCK, align 4
  %37 = icmp ne i32 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = load %struct.smu_fan*, %struct.smu_fan** %3, align 8
  %40 = getelementptr inbounds %struct.smu_fan, %struct.smu_fan* %39, i32 0, i32 0
  store i32 1, i32* %40, align 4
  br label %41

41:                                               ; preds = %38, %34, %17
  %42 = getelementptr inbounds %struct.smu_cmd, %struct.smu_cmd* %5, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 0
  %45 = load i32, i32* %44, align 4
  %46 = shl i32 %45, 8
  %47 = getelementptr inbounds %struct.smu_cmd, %struct.smu_cmd* %5, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 1
  %50 = load i32, i32* %49, align 4
  %51 = or i32 %46, %50
  store i32 %51, i32* %6, align 4
  br label %52

52:                                               ; preds = %41, %1
  %53 = load %struct.smu_fan*, %struct.smu_fan** %3, align 8
  %54 = getelementptr inbounds %struct.smu_fan, %struct.smu_fan* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %94

57:                                               ; preds = %52
  %58 = load i8*, i8** @SMU_FAN, align 8
  %59 = getelementptr inbounds %struct.smu_cmd, %struct.smu_cmd* %5, i32 0, i32 2
  store i8* %58, i8** %59, align 8
  %60 = getelementptr inbounds %struct.smu_cmd, %struct.smu_cmd* %5, i32 0, i32 0
  store i32 1, i32* %60, align 8
  %61 = load i32, i32* @SMU_RPM_STATUS, align 4
  %62 = getelementptr inbounds %struct.smu_cmd, %struct.smu_cmd* %5, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 0
  store i32 %61, i32* %64, align 4
  %65 = load i32, i32* %4, align 4
  %66 = call i32 @smu_run_cmd(i32 %65, %struct.smu_cmd* %5, i32 1)
  store i32 %66, i32* %7, align 4
  %67 = load i32, i32* %7, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %57
  %70 = load i32, i32* %7, align 4
  store i32 %70, i32* %2, align 4
  br label %96

71:                                               ; preds = %57
  %72 = getelementptr inbounds %struct.smu_cmd, %struct.smu_cmd* %5, i32 0, i32 1
  %73 = load i32*, i32** %72, align 8
  %74 = load %struct.smu_fan*, %struct.smu_fan** %3, align 8
  %75 = getelementptr inbounds %struct.smu_fan, %struct.smu_fan* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = mul nsw i32 %76, 2
  %78 = add nsw i32 %77, 1
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %73, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = shl i32 %81, 8
  %83 = getelementptr inbounds %struct.smu_cmd, %struct.smu_cmd* %5, i32 0, i32 1
  %84 = load i32*, i32** %83, align 8
  %85 = load %struct.smu_fan*, %struct.smu_fan** %3, align 8
  %86 = getelementptr inbounds %struct.smu_fan, %struct.smu_fan* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = mul nsw i32 %87, 2
  %89 = add nsw i32 %88, 2
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %84, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = or i32 %82, %92
  store i32 %93, i32* %6, align 4
  br label %94

94:                                               ; preds = %71, %52
  %95 = load i32, i32* %6, align 4
  store i32 %95, i32* %2, align 4
  br label %96

96:                                               ; preds = %94, %69
  %97 = load i32, i32* %2, align 4
  ret i32 %97
}

declare dso_local i32 @smu_fan_check_old_style(%struct.smu_fan*) #1

declare dso_local i32 @smu_run_cmd(i32, %struct.smu_cmd*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
