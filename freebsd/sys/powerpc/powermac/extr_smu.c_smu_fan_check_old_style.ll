; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/powermac/extr_smu.c_smu_fan_check_old_style.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/powermac/extr_smu.c_smu_fan_check_old_style.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smu_fan = type { i32, i32 }
%struct.smu_softc = type { i32 }
%struct.smu_cmd = type { i32, i32*, i32 }

@SMU_FAN = common dso_local global i32 0, align 4
@EWOULDBLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smu_fan*)* @smu_fan_check_old_style to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smu_fan_check_old_style(%struct.smu_fan* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.smu_fan*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.smu_softc*, align 8
  %6 = alloca %struct.smu_cmd, align 8
  %7 = alloca i32, align 4
  store %struct.smu_fan* %0, %struct.smu_fan** %3, align 8
  %8 = load %struct.smu_fan*, %struct.smu_fan** %3, align 8
  %9 = getelementptr inbounds %struct.smu_fan, %struct.smu_fan* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = call %struct.smu_softc* @device_get_softc(i32 %11)
  store %struct.smu_softc* %12, %struct.smu_softc** %5, align 8
  %13 = load %struct.smu_softc*, %struct.smu_softc** %5, align 8
  %14 = getelementptr inbounds %struct.smu_softc, %struct.smu_softc* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, -1
  br i1 %16, label %17, label %21

17:                                               ; preds = %1
  %18 = load %struct.smu_softc*, %struct.smu_softc** %5, align 8
  %19 = getelementptr inbounds %struct.smu_softc, %struct.smu_softc* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %2, align 4
  br label %50

21:                                               ; preds = %1
  %22 = load i32, i32* @SMU_FAN, align 4
  %23 = getelementptr inbounds %struct.smu_cmd, %struct.smu_cmd* %6, i32 0, i32 2
  store i32 %22, i32* %23, align 8
  %24 = getelementptr inbounds %struct.smu_cmd, %struct.smu_cmd* %6, i32 0, i32 0
  store i32 2, i32* %24, align 8
  %25 = getelementptr inbounds %struct.smu_cmd, %struct.smu_cmd* %6, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  store i32 49, i32* %27, align 4
  %28 = load %struct.smu_fan*, %struct.smu_fan** %3, align 8
  %29 = getelementptr inbounds %struct.smu_fan, %struct.smu_fan* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = getelementptr inbounds %struct.smu_cmd, %struct.smu_cmd* %6, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 1
  store i32 %30, i32* %33, align 4
  br label %34

34:                                               ; preds = %37, %21
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @smu_run_cmd(i32 %35, %struct.smu_cmd* %6, i32 1)
  store i32 %36, i32* %7, align 4
  br label %37

37:                                               ; preds = %34
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @EWOULDBLOCK, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %34, label %41

41:                                               ; preds = %37
  %42 = load i32, i32* %7, align 4
  %43 = icmp ne i32 %42, 0
  %44 = zext i1 %43 to i32
  %45 = load %struct.smu_softc*, %struct.smu_softc** %5, align 8
  %46 = getelementptr inbounds %struct.smu_softc, %struct.smu_softc* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 4
  %47 = load %struct.smu_softc*, %struct.smu_softc** %5, align 8
  %48 = getelementptr inbounds %struct.smu_softc, %struct.smu_softc* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %2, align 4
  br label %50

50:                                               ; preds = %41, %17
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local %struct.smu_softc* @device_get_softc(i32) #1

declare dso_local i32 @smu_run_cmd(i32, %struct.smu_cmd*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
