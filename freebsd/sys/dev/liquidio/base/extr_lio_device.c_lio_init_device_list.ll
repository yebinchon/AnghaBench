; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/liquidio/base/extr_lio_device.c_lio_init_device_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/liquidio/base/extr_lio_device.c_lio_init_device_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@octeon_device = common dso_local global i32 0, align 4
@LIO_MAX_DEVICES = common dso_local global i32 0, align 4
@octeon_devices_lock = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"octeon_devices_lock\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lio_init_device_list(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* @octeon_device, align 4
  %5 = load i32, i32* @LIO_MAX_DEVICES, align 4
  %6 = sext i32 %5 to i64
  %7 = mul i64 8, %6
  %8 = trunc i64 %7 to i32
  %9 = call i32 @bzero(i32 %4, i32 %8)
  store i32 0, i32* %3, align 4
  br label %10

10:                                               ; preds = %18, %1
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @LIO_MAX_DEVICES, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %21

14:                                               ; preds = %10
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* %2, align 4
  %17 = call i32 @oct_set_config_info(i32 %15, i32 %16)
  br label %18

18:                                               ; preds = %14
  %19 = load i32, i32* %3, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %3, align 4
  br label %10

21:                                               ; preds = %10
  %22 = load i32, i32* @MTX_DEF, align 4
  %23 = call i32 @mtx_init(i32* @octeon_devices_lock, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32* null, i32 %22)
  ret void
}

declare dso_local i32 @bzero(i32, i32) #1

declare dso_local i32 @oct_set_config_info(i32, i32) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
