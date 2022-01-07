; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_dp_iic_helper.c_iic_dp_aux_stop.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_dp_iic_helper.c_iic_dp_aux_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iic_dp_aux_data = type { i32 }

@MODE_I2C_STOP = common dso_local global i32 0, align 4
@MODE_I2C_READ = common dso_local global i32 0, align 4
@MODE_I2C_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @iic_dp_aux_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iic_dp_aux_stop(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.iic_dp_aux_data*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call %struct.iic_dp_aux_data* @device_get_softc(i32 %7)
  store %struct.iic_dp_aux_data* %8, %struct.iic_dp_aux_data** %5, align 8
  %9 = load i32, i32* @MODE_I2C_STOP, align 4
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = load i32, i32* @MODE_I2C_READ, align 4
  %14 = load i32, i32* %6, align 4
  %15 = or i32 %14, %13
  store i32 %15, i32* %6, align 4
  br label %20

16:                                               ; preds = %2
  %17 = load i32, i32* @MODE_I2C_WRITE, align 4
  %18 = load i32, i32* %6, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %6, align 4
  br label %20

20:                                               ; preds = %16, %12
  %21 = load %struct.iic_dp_aux_data*, %struct.iic_dp_aux_data** %5, align 8
  %22 = getelementptr inbounds %struct.iic_dp_aux_data, %struct.iic_dp_aux_data* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %20
  %26 = load i32, i32* %3, align 4
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @iic_dp_aux_transaction(i32 %26, i32 %27, i32 0, i32* null)
  %29 = load %struct.iic_dp_aux_data*, %struct.iic_dp_aux_data** %5, align 8
  %30 = getelementptr inbounds %struct.iic_dp_aux_data, %struct.iic_dp_aux_data* %29, i32 0, i32 0
  store i32 0, i32* %30, align 4
  br label %31

31:                                               ; preds = %25, %20
  ret void
}

declare dso_local %struct.iic_dp_aux_data* @device_get_softc(i32) #1

declare dso_local i32 @iic_dp_aux_transaction(i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
