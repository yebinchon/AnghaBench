; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/malo/extr_if_malohal.c_malo_hal_get_pwrcal_table.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/malo/extr_if_malohal.c_malo_hal_get_pwrcal_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.malo_hal = type { i32, i64 }
%struct.malo_hal_caldata = type { i32 }
%struct.malo_cmd_caltable = type { i32* }

@MHF_CALDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.malo_hal*, %struct.malo_hal_caldata*)* @malo_hal_get_pwrcal_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @malo_hal_get_pwrcal_table(%struct.malo_hal* %0, %struct.malo_hal_caldata* %1) #0 {
  %3 = alloca %struct.malo_hal*, align 8
  %4 = alloca %struct.malo_hal_caldata*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.malo_hal* %0, %struct.malo_hal** %3, align 8
  store %struct.malo_hal_caldata* %1, %struct.malo_hal_caldata** %4, align 8
  %7 = load %struct.malo_hal*, %struct.malo_hal** %3, align 8
  %8 = call i32 @MALO_HAL_LOCK(%struct.malo_hal* %7)
  %9 = load %struct.malo_hal*, %struct.malo_hal** %3, align 8
  %10 = getelementptr inbounds %struct.malo_hal, %struct.malo_hal* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.malo_cmd_caltable*
  %13 = getelementptr inbounds %struct.malo_cmd_caltable, %struct.malo_cmd_caltable* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  store i32* %14, i32** %5, align 8
  %15 = load %struct.malo_hal*, %struct.malo_hal** %3, align 8
  %16 = call i64 @malo_hal_get_cal_table(%struct.malo_hal* %15, i32 33, i32 0)
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %35

18:                                               ; preds = %2
  %19 = load i32*, i32** %5, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 2
  %21 = load i32, i32* %20, align 4
  %22 = load i32*, i32** %5, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 3
  %24 = load i32, i32* %23, align 4
  %25 = shl i32 %24, 8
  %26 = or i32 %21, %25
  %27 = sub nsw i32 %26, 12
  store i32 %27, i32* %6, align 4
  %28 = load %struct.malo_hal_caldata*, %struct.malo_hal_caldata** %4, align 8
  %29 = getelementptr inbounds %struct.malo_hal_caldata, %struct.malo_hal_caldata* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32*, i32** %5, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 12
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @memcpy(i32 %30, i32* %32, i32 %33)
  br label %35

35:                                               ; preds = %18, %2
  %36 = load i32, i32* @MHF_CALDATA, align 4
  %37 = load %struct.malo_hal*, %struct.malo_hal** %3, align 8
  %38 = getelementptr inbounds %struct.malo_hal, %struct.malo_hal* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = or i32 %39, %36
  store i32 %40, i32* %38, align 8
  %41 = load %struct.malo_hal*, %struct.malo_hal** %3, align 8
  %42 = call i32 @MALO_HAL_UNLOCK(%struct.malo_hal* %41)
  ret i32 0
}

declare dso_local i32 @MALO_HAL_LOCK(%struct.malo_hal*) #1

declare dso_local i64 @malo_hal_get_cal_table(%struct.malo_hal*, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @MALO_HAL_UNLOCK(%struct.malo_hal*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
