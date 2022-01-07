; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/powermac/extr_smu.c_smu_fan_set_pwm.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/powermac/extr_smu.c_smu_fan_set_pwm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smu_fan = type { i32, i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.smu_cmd = type { i32, i32*, i32 }

@SMU_FAN = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@EWOULDBLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smu_fan*, i32)* @smu_fan_set_pwm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smu_fan_set_pwm(%struct.smu_fan* %0, i32 %1) #0 {
  %3 = alloca %struct.smu_fan*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.smu_cmd, align 8
  %7 = alloca i32, align 4
  store %struct.smu_fan* %0, %struct.smu_fan** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.smu_fan*, %struct.smu_fan** %3, align 8
  %9 = getelementptr inbounds %struct.smu_fan, %struct.smu_fan* %8, i32 0, i32 4
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* @SMU_FAN, align 4
  %12 = getelementptr inbounds %struct.smu_cmd, %struct.smu_cmd* %6, i32 0, i32 2
  store i32 %11, i32* %12, align 8
  %13 = load i32, i32* @EIO, align 4
  store i32 %13, i32* %7, align 4
  %14 = load %struct.smu_fan*, %struct.smu_fan** %3, align 8
  %15 = getelementptr inbounds %struct.smu_fan, %struct.smu_fan* %14, i32 0, i32 3
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @max(i32 %17, i32 %18)
  store i32 %19, i32* %4, align 4
  %20 = load %struct.smu_fan*, %struct.smu_fan** %3, align 8
  %21 = getelementptr inbounds %struct.smu_fan, %struct.smu_fan* %20, i32 0, i32 3
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @min(i32 %23, i32 %24)
  store i32 %25, i32* %4, align 4
  %26 = load %struct.smu_fan*, %struct.smu_fan** %3, align 8
  %27 = getelementptr inbounds %struct.smu_fan, %struct.smu_fan* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %64, label %30

30:                                               ; preds = %2
  %31 = getelementptr inbounds %struct.smu_cmd, %struct.smu_cmd* %6, i32 0, i32 0
  store i32 4, i32* %31, align 8
  %32 = getelementptr inbounds %struct.smu_cmd, %struct.smu_cmd* %6, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  store i32 48, i32* %34, align 4
  %35 = load %struct.smu_fan*, %struct.smu_fan** %3, align 8
  %36 = getelementptr inbounds %struct.smu_fan, %struct.smu_fan* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = getelementptr inbounds %struct.smu_cmd, %struct.smu_cmd* %6, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 1
  store i32 %37, i32* %40, align 4
  %41 = load i32, i32* %4, align 4
  %42 = ashr i32 %41, 8
  %43 = and i32 %42, 255
  %44 = getelementptr inbounds %struct.smu_cmd, %struct.smu_cmd* %6, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 2
  store i32 %43, i32* %46, align 4
  %47 = load i32, i32* %4, align 4
  %48 = and i32 %47, 255
  %49 = getelementptr inbounds %struct.smu_cmd, %struct.smu_cmd* %6, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 3
  store i32 %48, i32* %51, align 4
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @smu_run_cmd(i32 %52, %struct.smu_cmd* %6, i32 1)
  store i32 %53, i32* %7, align 4
  %54 = load i32, i32* %7, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %30
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* @EWOULDBLOCK, align 4
  %59 = icmp ne i32 %57, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %56
  %61 = load %struct.smu_fan*, %struct.smu_fan** %3, align 8
  %62 = getelementptr inbounds %struct.smu_fan, %struct.smu_fan* %61, i32 0, i32 0
  store i32 1, i32* %62, align 4
  br label %63

63:                                               ; preds = %60, %56, %30
  br label %64

64:                                               ; preds = %63, %2
  %65 = load %struct.smu_fan*, %struct.smu_fan** %3, align 8
  %66 = getelementptr inbounds %struct.smu_fan, %struct.smu_fan* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %106

69:                                               ; preds = %64
  %70 = getelementptr inbounds %struct.smu_cmd, %struct.smu_cmd* %6, i32 0, i32 0
  store i32 14, i32* %70, align 8
  %71 = getelementptr inbounds %struct.smu_cmd, %struct.smu_cmd* %6, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 0
  store i32 16, i32* %73, align 4
  %74 = load %struct.smu_fan*, %struct.smu_fan** %3, align 8
  %75 = getelementptr inbounds %struct.smu_fan, %struct.smu_fan* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = shl i32 1, %76
  %78 = getelementptr inbounds %struct.smu_cmd, %struct.smu_cmd* %6, i32 0, i32 1
  %79 = load i32*, i32** %78, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 1
  store i32 %77, i32* %80, align 4
  %81 = load i32, i32* %4, align 4
  %82 = ashr i32 %81, 8
  %83 = and i32 %82, 255
  %84 = getelementptr inbounds %struct.smu_cmd, %struct.smu_cmd* %6, i32 0, i32 1
  %85 = load i32*, i32** %84, align 8
  %86 = load %struct.smu_fan*, %struct.smu_fan** %3, align 8
  %87 = getelementptr inbounds %struct.smu_fan, %struct.smu_fan* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = mul nsw i32 2, %88
  %90 = add nsw i32 2, %89
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %85, i64 %91
  store i32 %83, i32* %92, align 4
  %93 = load i32, i32* %4, align 4
  %94 = and i32 %93, 255
  %95 = getelementptr inbounds %struct.smu_cmd, %struct.smu_cmd* %6, i32 0, i32 1
  %96 = load i32*, i32** %95, align 8
  %97 = load %struct.smu_fan*, %struct.smu_fan** %3, align 8
  %98 = getelementptr inbounds %struct.smu_fan, %struct.smu_fan* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = mul nsw i32 2, %99
  %101 = add nsw i32 3, %100
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %96, i64 %102
  store i32 %94, i32* %103, align 4
  %104 = load i32, i32* %5, align 4
  %105 = call i32 @smu_run_cmd(i32 %104, %struct.smu_cmd* %6, i32 1)
  store i32 %105, i32* %7, align 4
  br label %106

106:                                              ; preds = %69, %64
  %107 = load i32, i32* %7, align 4
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %113

109:                                              ; preds = %106
  %110 = load i32, i32* %4, align 4
  %111 = load %struct.smu_fan*, %struct.smu_fan** %3, align 8
  %112 = getelementptr inbounds %struct.smu_fan, %struct.smu_fan* %111, i32 0, i32 2
  store i32 %110, i32* %112, align 4
  br label %113

113:                                              ; preds = %109, %106
  %114 = load i32, i32* %7, align 4
  ret i32 %114
}

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @smu_run_cmd(i32, %struct.smu_cmd*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
