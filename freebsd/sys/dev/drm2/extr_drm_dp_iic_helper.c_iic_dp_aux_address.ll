; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_dp_iic_helper.c_iic_dp_aux_address.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_dp_iic_helper.c_iic_dp_aux_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iic_dp_aux_data = type { i32, i32 }

@MODE_I2C_START = common dso_local global i32 0, align 4
@MODE_I2C_READ = common dso_local global i32 0, align 4
@MODE_I2C_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @iic_dp_aux_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iic_dp_aux_address(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.iic_dp_aux_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* %4, align 4
  %11 = call %struct.iic_dp_aux_data* @device_get_softc(i32 %10)
  store %struct.iic_dp_aux_data* %11, %struct.iic_dp_aux_data** %7, align 8
  %12 = load i32, i32* @MODE_I2C_START, align 4
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %3
  %16 = load i32, i32* @MODE_I2C_READ, align 4
  %17 = load i32, i32* %8, align 4
  %18 = or i32 %17, %16
  store i32 %18, i32* %8, align 4
  br label %23

19:                                               ; preds = %3
  %20 = load i32, i32* @MODE_I2C_WRITE, align 4
  %21 = load i32, i32* %8, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %8, align 4
  br label %23

23:                                               ; preds = %19, %15
  %24 = load i32, i32* %5, align 4
  %25 = load %struct.iic_dp_aux_data*, %struct.iic_dp_aux_data** %7, align 8
  %26 = getelementptr inbounds %struct.iic_dp_aux_data, %struct.iic_dp_aux_data* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  %27 = load %struct.iic_dp_aux_data*, %struct.iic_dp_aux_data** %7, align 8
  %28 = getelementptr inbounds %struct.iic_dp_aux_data, %struct.iic_dp_aux_data* %27, i32 0, i32 0
  store i32 1, i32* %28, align 4
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @iic_dp_aux_transaction(i32 %29, i32 %30, i32 0, i32* null)
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %9, align 4
  ret i32 %32
}

declare dso_local %struct.iic_dp_aux_data* @device_get_softc(i32) #1

declare dso_local i32 @iic_dp_aux_transaction(i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
