; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_vibes.c_sv_power.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_vibes.c_sv_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sc_info = type { i32 }

@SV_REG_ANALOG_PWR = common dso_local global i32 0, align 4
@SV_ANALOG_OFF = common dso_local global i32 0, align 4
@SV_ANALOG_OFF_SRS = common dso_local global i32 0, align 4
@SV_ANALOG_OFF_SPLL = common dso_local global i32 0, align 4
@SV_REG_DIGITAL_PWR = common dso_local global i32 0, align 4
@SV_DIGITAL_OFF = common dso_local global i32 0, align 4
@SV_DIGITAL_OFF_SYN = common dso_local global i32 0, align 4
@SV_DIGITAL_OFF_MU = common dso_local global i32 0, align 4
@SV_DIGITAL_OFF_GP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"Power state %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sc_info*, i32)* @sv_power to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sv_power(%struct.sc_info* %0, i32 %1) #0 {
  %3 = alloca %struct.sc_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.sc_info* %0, %struct.sc_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %40 [
    i32 0, label %7
  ]

7:                                                ; preds = %2
  %8 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %9 = load i32, i32* @SV_REG_ANALOG_PWR, align 4
  %10 = call i32 @sv_indirect_get(%struct.sc_info* %8, i32 %9)
  %11 = load i32, i32* @SV_ANALOG_OFF, align 4
  %12 = xor i32 %11, -1
  %13 = and i32 %10, %12
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* @SV_ANALOG_OFF_SRS, align 4
  %15 = load i32, i32* @SV_ANALOG_OFF_SPLL, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* %5, align 4
  %18 = or i32 %17, %16
  store i32 %18, i32* %5, align 4
  %19 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %20 = load i32, i32* @SV_REG_ANALOG_PWR, align 4
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @sv_indirect_set(%struct.sc_info* %19, i32 %20, i32 %21)
  %23 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %24 = load i32, i32* @SV_REG_DIGITAL_PWR, align 4
  %25 = call i32 @sv_indirect_get(%struct.sc_info* %23, i32 %24)
  %26 = load i32, i32* @SV_DIGITAL_OFF, align 4
  %27 = xor i32 %26, -1
  %28 = and i32 %25, %27
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* @SV_DIGITAL_OFF_SYN, align 4
  %30 = load i32, i32* @SV_DIGITAL_OFF_MU, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @SV_DIGITAL_OFF_GP, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* %5, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %5, align 4
  %36 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %37 = load i32, i32* @SV_REG_DIGITAL_PWR, align 4
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @sv_indirect_set(%struct.sc_info* %36, i32 %37, i32 %38)
  br label %59

40:                                               ; preds = %2
  %41 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %42 = load i32, i32* @SV_REG_ANALOG_PWR, align 4
  %43 = call i32 @sv_indirect_get(%struct.sc_info* %41, i32 %42)
  %44 = load i32, i32* @SV_ANALOG_OFF, align 4
  %45 = or i32 %43, %44
  store i32 %45, i32* %5, align 4
  %46 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %47 = load i32, i32* @SV_REG_ANALOG_PWR, align 4
  %48 = load i32, i32* %5, align 4
  %49 = call i32 @sv_indirect_set(%struct.sc_info* %46, i32 %47, i32 %48)
  %50 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %51 = load i32, i32* @SV_REG_DIGITAL_PWR, align 4
  %52 = call i32 @sv_indirect_get(%struct.sc_info* %50, i32 %51)
  %53 = load i32, i32* @SV_DIGITAL_OFF, align 4
  %54 = or i32 %52, %53
  store i32 %54, i32* %5, align 4
  %55 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %56 = load i32, i32* @SV_REG_DIGITAL_PWR, align 4
  %57 = load i32, i32* @SV_DIGITAL_OFF, align 4
  %58 = call i32 @sv_indirect_set(%struct.sc_info* %55, i32 %56, i32 %57)
  br label %59

59:                                               ; preds = %40, %7
  %60 = load i32, i32* %4, align 4
  %61 = call i32 @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %60)
  %62 = call i32 @DEB(i32 %61)
  ret void
}

declare dso_local i32 @sv_indirect_get(%struct.sc_info*, i32) #1

declare dso_local i32 @sv_indirect_set(%struct.sc_info*, i32, i32) #1

declare dso_local i32 @DEB(i32) #1

declare dso_local i32 @printf(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
