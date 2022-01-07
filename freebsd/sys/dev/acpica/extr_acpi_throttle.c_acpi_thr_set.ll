; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi_throttle.c_acpi_thr_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi_throttle.c_acpi_thr_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cf_setting = type { i32 }
%struct.acpi_throttle_softc = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@CPU_MAX_SPEED = common dso_local global i32 0, align 4
@CPU_P_CNT_THT_EN = common dso_local global i32 0, align 4
@cpu_duty_offset = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.cf_setting*)* @acpi_thr_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_thr_set(i32 %0, %struct.cf_setting* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.cf_setting*, align 8
  %6 = alloca %struct.acpi_throttle_softc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.cf_setting* %1, %struct.cf_setting** %5, align 8
  %10 = load %struct.cf_setting*, %struct.cf_setting** %5, align 8
  %11 = icmp eq %struct.cf_setting* %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* @EINVAL, align 4
  store i32 %13, i32* %3, align 4
  br label %95

14:                                               ; preds = %2
  %15 = load i32, i32* %4, align 4
  %16 = call %struct.acpi_throttle_softc* @device_get_softc(i32 %15)
  store %struct.acpi_throttle_softc* %16, %struct.acpi_throttle_softc** %6, align 8
  %17 = load %struct.cf_setting*, %struct.cf_setting** %5, align 8
  %18 = getelementptr inbounds %struct.cf_setting, %struct.cf_setting* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @CPU_MAX_SPEED, align 4
  %21 = mul nsw i32 %19, %20
  %22 = sdiv i32 %21, 10000
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = mul nsw i32 %23, 10000
  %25 = load %struct.cf_setting*, %struct.cf_setting** %5, align 8
  %26 = getelementptr inbounds %struct.cf_setting, %struct.cf_setting* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @CPU_MAX_SPEED, align 4
  %29 = mul nsw i32 %27, %28
  %30 = icmp ne i32 %24, %29
  br i1 %30, label %38, label %31

31:                                               ; preds = %14
  %32 = load i32, i32* %9, align 4
  %33 = icmp slt i32 %32, 1
  br i1 %33, label %38, label %34

34:                                               ; preds = %31
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* @CPU_MAX_SPEED, align 4
  %37 = icmp sgt i32 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %34, %31, %14
  %39 = load i32, i32* @EINVAL, align 4
  store i32 %39, i32* %3, align 4
  br label %95

40:                                               ; preds = %34
  %41 = load i32, i32* %9, align 4
  %42 = load %struct.acpi_throttle_softc*, %struct.acpi_throttle_softc** %6, align 8
  %43 = getelementptr inbounds %struct.acpi_throttle_softc, %struct.acpi_throttle_softc* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp eq i32 %41, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  store i32 0, i32* %3, align 4
  br label %95

47:                                               ; preds = %40
  %48 = load %struct.acpi_throttle_softc*, %struct.acpi_throttle_softc** %6, align 8
  %49 = getelementptr inbounds %struct.acpi_throttle_softc, %struct.acpi_throttle_softc* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @THR_GET_REG(i32 %50)
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* @CPU_P_CNT_THT_EN, align 4
  %53 = xor i32 %52, -1
  %54 = load i32, i32* %8, align 4
  %55 = and i32 %54, %53
  store i32 %55, i32* %8, align 4
  %56 = load %struct.acpi_throttle_softc*, %struct.acpi_throttle_softc** %6, align 8
  %57 = getelementptr inbounds %struct.acpi_throttle_softc, %struct.acpi_throttle_softc* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %8, align 4
  %60 = call i32 @THR_SET_REG(i32 %58, i32 %59)
  %61 = load i32, i32* %9, align 4
  %62 = load i32, i32* @CPU_MAX_SPEED, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %91

64:                                               ; preds = %47
  %65 = load i32, i32* @CPU_MAX_SPEED, align 4
  %66 = sub nsw i32 %65, 1
  %67 = load i32, i32* @cpu_duty_offset, align 4
  %68 = shl i32 %66, %67
  store i32 %68, i32* %7, align 4
  %69 = load i32, i32* %7, align 4
  %70 = xor i32 %69, -1
  %71 = load i32, i32* %8, align 4
  %72 = and i32 %71, %70
  store i32 %72, i32* %8, align 4
  %73 = load i32, i32* %9, align 4
  %74 = load i32, i32* @cpu_duty_offset, align 4
  %75 = shl i32 %73, %74
  %76 = load i32, i32* %8, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %8, align 4
  %78 = load %struct.acpi_throttle_softc*, %struct.acpi_throttle_softc** %6, align 8
  %79 = getelementptr inbounds %struct.acpi_throttle_softc, %struct.acpi_throttle_softc* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* %8, align 4
  %82 = call i32 @THR_SET_REG(i32 %80, i32 %81)
  %83 = load i32, i32* @CPU_P_CNT_THT_EN, align 4
  %84 = load i32, i32* %8, align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* %8, align 4
  %86 = load %struct.acpi_throttle_softc*, %struct.acpi_throttle_softc** %6, align 8
  %87 = getelementptr inbounds %struct.acpi_throttle_softc, %struct.acpi_throttle_softc* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* %8, align 4
  %90 = call i32 @THR_SET_REG(i32 %88, i32 %89)
  br label %91

91:                                               ; preds = %64, %47
  %92 = load i32, i32* %9, align 4
  %93 = load %struct.acpi_throttle_softc*, %struct.acpi_throttle_softc** %6, align 8
  %94 = getelementptr inbounds %struct.acpi_throttle_softc, %struct.acpi_throttle_softc* %93, i32 0, i32 0
  store i32 %92, i32* %94, align 4
  store i32 0, i32* %3, align 4
  br label %95

95:                                               ; preds = %91, %46, %38, %12
  %96 = load i32, i32* %3, align 4
  ret i32 %96
}

declare dso_local %struct.acpi_throttle_softc* @device_get_softc(i32) #1

declare dso_local i32 @THR_GET_REG(i32) #1

declare dso_local i32 @THR_SET_REG(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
