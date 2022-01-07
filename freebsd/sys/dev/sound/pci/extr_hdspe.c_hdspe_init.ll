; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_hdspe.c_hdspe_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_hdspe.c_hdspe_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sc_info = type { i64, i32, i64, i32, i64 }

@HDSPM_CLOCK_MODE_MASTER = common dso_local global i64 0, align 8
@HDSPE_SPEED_DEFAULT = common dso_local global i64 0, align 8
@HDSPE_FREQ_MASK = common dso_local global i64 0, align 8
@HDSPE_FREQ_MASK_DEFAULT = common dso_local global i64 0, align 8
@HDSPE_CONTROL_REG = common dso_local global i32 0, align 4
@HDSPE_FREQ_AIO = common dso_local global i64 0, align 8
@ENXIO = common dso_local global i32 0, align 4
@HDSPE_FREQ_REG = common dso_local global i32 0, align 4
@HDSPE_SETTINGS_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sc_info*)* @hdspe_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdspe_init(%struct.sc_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sc_info*, align 8
  %4 = alloca i64, align 8
  store %struct.sc_info* %0, %struct.sc_info** %3, align 8
  %5 = load i64, i64* @HDSPM_CLOCK_MODE_MASTER, align 8
  %6 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %7 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = or i64 %8, %5
  store i64 %9, i64* %7, align 8
  %10 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %11 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %10, i32 0, i32 1
  store i32 32, i32* %11, align 8
  %12 = call i64 @hdspe_encode_latency(i32 7)
  %13 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %14 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %13, i32 0, i32 0
  store i64 %12, i64* %14, align 8
  %15 = load i64, i64* @HDSPE_SPEED_DEFAULT, align 8
  %16 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %17 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %16, i32 0, i32 2
  store i64 %15, i64* %17, align 8
  %18 = load i64, i64* @HDSPE_FREQ_MASK, align 8
  %19 = xor i64 %18, -1
  %20 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %21 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = and i64 %22, %19
  store i64 %23, i64* %21, align 8
  %24 = load i64, i64* @HDSPE_FREQ_MASK_DEFAULT, align 8
  %25 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %26 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = or i64 %27, %24
  store i64 %28, i64* %26, align 8
  %29 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %30 = load i32, i32* @HDSPE_CONTROL_REG, align 4
  %31 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %32 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @hdspe_write_4(%struct.sc_info* %29, i32 %30, i64 %33)
  %35 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %36 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 8
  switch i32 %37, label %40 [
    i32 128, label %38
    i32 129, label %38
  ]

38:                                               ; preds = %1, %1
  %39 = load i64, i64* @HDSPE_FREQ_AIO, align 8
  store i64 %39, i64* %4, align 8
  br label %42

40:                                               ; preds = %1
  %41 = load i32, i32* @ENXIO, align 4
  store i32 %41, i32* %2, align 4
  br label %60

42:                                               ; preds = %38
  %43 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %44 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* %4, align 8
  %47 = sdiv i64 %46, %45
  store i64 %47, i64* %4, align 8
  %48 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %49 = load i32, i32* @HDSPE_FREQ_REG, align 4
  %50 = load i64, i64* %4, align 8
  %51 = call i32 @hdspe_write_4(%struct.sc_info* %48, i32 %49, i64 %50)
  %52 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %53 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %52, i32 0, i32 4
  store i64 0, i64* %53, align 8
  %54 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %55 = load i32, i32* @HDSPE_SETTINGS_REG, align 4
  %56 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %57 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %56, i32 0, i32 4
  %58 = load i64, i64* %57, align 8
  %59 = call i32 @hdspe_write_4(%struct.sc_info* %54, i32 %55, i64 %58)
  store i32 0, i32* %2, align 4
  br label %60

60:                                               ; preds = %42, %40
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local i64 @hdspe_encode_latency(i32) #1

declare dso_local i32 @hdspe_write_4(%struct.sc_info*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
