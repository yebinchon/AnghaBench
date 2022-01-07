; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/video/extr_udl.c_udl_cmd_write_reg_1.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/video/extr_udl.c_udl_cmd_write_reg_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.udl_cmd_buf = type { i32 }

@UDL_BULK_SOC = common dso_local global i32 0, align 4
@UDL_BULK_CMD_REG_WRITE_1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.udl_cmd_buf*, i32, i32)* @udl_cmd_write_reg_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @udl_cmd_write_reg_1(%struct.udl_cmd_buf* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.udl_cmd_buf*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.udl_cmd_buf* %0, %struct.udl_cmd_buf** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.udl_cmd_buf*, %struct.udl_cmd_buf** %4, align 8
  %8 = load i32, i32* @UDL_BULK_SOC, align 4
  %9 = call i32 @udl_cmd_insert_int_1(%struct.udl_cmd_buf* %7, i32 %8)
  %10 = load %struct.udl_cmd_buf*, %struct.udl_cmd_buf** %4, align 8
  %11 = load i32, i32* @UDL_BULK_CMD_REG_WRITE_1, align 4
  %12 = call i32 @udl_cmd_insert_int_1(%struct.udl_cmd_buf* %10, i32 %11)
  %13 = load %struct.udl_cmd_buf*, %struct.udl_cmd_buf** %4, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @udl_cmd_insert_int_1(%struct.udl_cmd_buf* %13, i32 %14)
  %16 = load %struct.udl_cmd_buf*, %struct.udl_cmd_buf** %4, align 8
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @udl_cmd_insert_int_1(%struct.udl_cmd_buf* %16, i32 %17)
  ret void
}

declare dso_local i32 @udl_cmd_insert_int_1(%struct.udl_cmd_buf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
