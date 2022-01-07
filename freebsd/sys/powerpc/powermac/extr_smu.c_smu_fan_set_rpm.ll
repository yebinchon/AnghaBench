; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/powermac/extr_smu.c_smu_fan_set_rpm.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/powermac/extr_smu.c_smu_fan_set_rpm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smu_fan = type { i32, i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.smu_cmd = type { i32, i32*, i32 }

@SMU_FAN = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@EWOULDBLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smu_fan*, i32)* @smu_fan_set_rpm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smu_fan_set_rpm(%struct.smu_fan* %0, i32 %1) #0 {
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
  %27 = call i32 @smu_fan_check_old_style(%struct.smu_fan* %26)
  %28 = load %struct.smu_fan*, %struct.smu_fan** %3, align 8
  %29 = getelementptr inbounds %struct.smu_fan, %struct.smu_fan* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %66, label %32

32:                                               ; preds = %2
  %33 = getelementptr inbounds %struct.smu_cmd, %struct.smu_cmd* %6, i32 0, i32 0
  store i32 4, i32* %33, align 8
  %34 = getelementptr inbounds %struct.smu_cmd, %struct.smu_cmd* %6, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  store i32 48, i32* %36, align 4
  %37 = load %struct.smu_fan*, %struct.smu_fan** %3, align 8
  %38 = getelementptr inbounds %struct.smu_fan, %struct.smu_fan* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = getelementptr inbounds %struct.smu_cmd, %struct.smu_cmd* %6, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 1
  store i32 %39, i32* %42, align 4
  %43 = load i32, i32* %4, align 4
  %44 = ashr i32 %43, 8
  %45 = and i32 %44, 255
  %46 = getelementptr inbounds %struct.smu_cmd, %struct.smu_cmd* %6, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 2
  store i32 %45, i32* %48, align 4
  %49 = load i32, i32* %4, align 4
  %50 = and i32 %49, 255
  %51 = getelementptr inbounds %struct.smu_cmd, %struct.smu_cmd* %6, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 3
  store i32 %50, i32* %53, align 4
  %54 = load i32, i32* %5, align 4
  %55 = call i32 @smu_run_cmd(i32 %54, %struct.smu_cmd* %6, i32 1)
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* %7, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %32
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* @EWOULDBLOCK, align 4
  %61 = icmp ne i32 %59, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %58
  %63 = load %struct.smu_fan*, %struct.smu_fan** %3, align 8
  %64 = getelementptr inbounds %struct.smu_fan, %struct.smu_fan* %63, i32 0, i32 0
  store i32 1, i32* %64, align 4
  br label %65

65:                                               ; preds = %62, %58, %32
  br label %103

66:                                               ; preds = %2
  %67 = getelementptr inbounds %struct.smu_cmd, %struct.smu_cmd* %6, i32 0, i32 0
  store i32 14, i32* %67, align 8
  %68 = getelementptr inbounds %struct.smu_cmd, %struct.smu_cmd* %6, i32 0, i32 1
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 0
  store i32 0, i32* %70, align 4
  %71 = load %struct.smu_fan*, %struct.smu_fan** %3, align 8
  %72 = getelementptr inbounds %struct.smu_fan, %struct.smu_fan* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = shl i32 1, %73
  %75 = getelementptr inbounds %struct.smu_cmd, %struct.smu_cmd* %6, i32 0, i32 1
  %76 = load i32*, i32** %75, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 1
  store i32 %74, i32* %77, align 4
  %78 = load i32, i32* %4, align 4
  %79 = ashr i32 %78, 8
  %80 = and i32 %79, 255
  %81 = getelementptr inbounds %struct.smu_cmd, %struct.smu_cmd* %6, i32 0, i32 1
  %82 = load i32*, i32** %81, align 8
  %83 = load %struct.smu_fan*, %struct.smu_fan** %3, align 8
  %84 = getelementptr inbounds %struct.smu_fan, %struct.smu_fan* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = mul nsw i32 2, %85
  %87 = add nsw i32 2, %86
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %82, i64 %88
  store i32 %80, i32* %89, align 4
  %90 = load i32, i32* %4, align 4
  %91 = and i32 %90, 255
  %92 = getelementptr inbounds %struct.smu_cmd, %struct.smu_cmd* %6, i32 0, i32 1
  %93 = load i32*, i32** %92, align 8
  %94 = load %struct.smu_fan*, %struct.smu_fan** %3, align 8
  %95 = getelementptr inbounds %struct.smu_fan, %struct.smu_fan* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = mul nsw i32 2, %96
  %98 = add nsw i32 3, %97
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %93, i64 %99
  store i32 %91, i32* %100, align 4
  %101 = load i32, i32* %5, align 4
  %102 = call i32 @smu_run_cmd(i32 %101, %struct.smu_cmd* %6, i32 1)
  store i32 %102, i32* %7, align 4
  br label %103

103:                                              ; preds = %66, %65
  %104 = load i32, i32* %7, align 4
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %110

106:                                              ; preds = %103
  %107 = load i32, i32* %4, align 4
  %108 = load %struct.smu_fan*, %struct.smu_fan** %3, align 8
  %109 = getelementptr inbounds %struct.smu_fan, %struct.smu_fan* %108, i32 0, i32 2
  store i32 %107, i32* %109, align 4
  br label %110

110:                                              ; preds = %106, %103
  %111 = load i32, i32* %7, align 4
  ret i32 %111
}

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @smu_fan_check_old_style(%struct.smu_fan*) #1

declare dso_local i32 @smu_run_cmd(i32, %struct.smu_cmd*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
