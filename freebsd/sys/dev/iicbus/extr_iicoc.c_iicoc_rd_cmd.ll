; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_iicoc.c_iicoc_rd_cmd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_iicoc.c_iicoc_rd_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@OC_I2C_CMD_REG = common dso_local global i32 0, align 4
@OC_STATUS_TIP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"read: Timeout waiting for TIP clear.\0A\00", align 1
@OC_I2C_DATA_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @iicoc_rd_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iicoc_rd_cmd(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @OC_I2C_CMD_REG, align 4
  %9 = load i32, i32* %5, align 4
  %10 = call i32 @iicoc_dev_write(i32 %7, i32 %8, i32 %9)
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @OC_STATUS_TIP, align 4
  %13 = call i64 @iicoc_wait_on_status(i32 %11, i32 %12)
  %14 = icmp slt i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @device_printf(i32 %16, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %23

18:                                               ; preds = %2
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @OC_I2C_DATA_REG, align 4
  %21 = call i32 @iicoc_dev_read(i32 %19, i32 %20)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  store i32 %22, i32* %3, align 4
  br label %23

23:                                               ; preds = %18, %15
  %24 = load i32, i32* %3, align 4
  ret i32 %24
}

declare dso_local i32 @iicoc_dev_write(i32, i32, i32) #1

declare dso_local i64 @iicoc_wait_on_status(i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @iicoc_dev_read(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
