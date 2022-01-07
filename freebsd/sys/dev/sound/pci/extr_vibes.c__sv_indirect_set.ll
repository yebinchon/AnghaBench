; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_vibes.c__sv_indirect_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_vibes.c__sv_indirect_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sc_info = type { i32, i32, i32 }

@SV_REG_FORMAT = common dso_local global i32 0, align 4
@SV_REG_ANALOG_PWR = common dso_local global i32 0, align 4
@SV_CM_INDEX_MCE = common dso_local global i32 0, align 4
@SV_CM_INDEX = common dso_local global i32 0, align 4
@SV_CM_DATA = common dso_local global i32 0, align 4
@SV_REG_ADC_PLLM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"sv_indirect_set register 0x%02x %d != %d line %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sc_info*, i32, i32, i32)* @_sv_indirect_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_sv_indirect_set(%struct.sc_info* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.sc_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.sc_info* %0, %struct.sc_info** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @SV_REG_FORMAT, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %17, label %13

13:                                               ; preds = %4
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @SV_REG_ANALOG_PWR, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %13, %4
  %18 = load i32, i32* @SV_CM_INDEX_MCE, align 4
  %19 = load i32, i32* %6, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %6, align 4
  br label %21

21:                                               ; preds = %17, %13
  %22 = load %struct.sc_info*, %struct.sc_info** %5, align 8
  %23 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.sc_info*, %struct.sc_info** %5, align 8
  %26 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @SV_CM_INDEX, align 4
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @bus_space_write_1(i32 %24, i32 %27, i32 %28, i32 %29)
  %31 = load %struct.sc_info*, %struct.sc_info** %5, align 8
  %32 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.sc_info*, %struct.sc_info** %5, align 8
  %35 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @SV_CM_DATA, align 4
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @bus_space_write_1(i32 %33, i32 %36, i32 %37, i32 %38)
  %40 = load i32, i32* @SV_CM_INDEX_MCE, align 4
  %41 = xor i32 %40, -1
  %42 = load i32, i32* %6, align 4
  %43 = and i32 %42, %41
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* @SV_REG_ADC_PLLM, align 4
  %46 = icmp ne i32 %44, %45
  br i1 %46, label %47, label %64

47:                                               ; preds = %21
  %48 = load %struct.sc_info*, %struct.sc_info** %5, align 8
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @sv_indirect_get(%struct.sc_info* %48, i32 %49)
  store i32 %50, i32* %9, align 4
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* %7, align 4
  %53 = icmp ne i32 %51, %52
  br i1 %53, label %54, label %63

54:                                               ; preds = %47
  %55 = load %struct.sc_info*, %struct.sc_info** %5, align 8
  %56 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* %8, align 4
  %62 = call i32 @device_printf(i32 %57, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %58, i32 %59, i32 %60, i32 %61)
  br label %63

63:                                               ; preds = %54, %47
  br label %64

64:                                               ; preds = %63, %21
  ret void
}

declare dso_local i32 @bus_space_write_1(i32, i32, i32, i32) #1

declare dso_local i32 @sv_indirect_get(%struct.sc_info*, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
