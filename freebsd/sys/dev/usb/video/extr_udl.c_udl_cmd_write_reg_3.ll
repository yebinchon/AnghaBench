; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/video/extr_udl.c_udl_cmd_write_reg_3.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/video/extr_udl.c_udl_cmd_write_reg_3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.udl_cmd_buf = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.udl_cmd_buf*, i64, i32)* @udl_cmd_write_reg_3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @udl_cmd_write_reg_3(%struct.udl_cmd_buf* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.udl_cmd_buf*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.udl_cmd_buf* %0, %struct.udl_cmd_buf** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.udl_cmd_buf*, %struct.udl_cmd_buf** %4, align 8
  %8 = load i64, i64* %5, align 8
  %9 = add nsw i64 %8, 0
  %10 = load i32, i32* %6, align 4
  %11 = ashr i32 %10, 16
  %12 = and i32 %11, 255
  %13 = call i32 @udl_cmd_write_reg_1(%struct.udl_cmd_buf* %7, i64 %9, i32 %12)
  %14 = load %struct.udl_cmd_buf*, %struct.udl_cmd_buf** %4, align 8
  %15 = load i64, i64* %5, align 8
  %16 = add nsw i64 %15, 1
  %17 = load i32, i32* %6, align 4
  %18 = ashr i32 %17, 8
  %19 = and i32 %18, 255
  %20 = call i32 @udl_cmd_write_reg_1(%struct.udl_cmd_buf* %14, i64 %16, i32 %19)
  %21 = load %struct.udl_cmd_buf*, %struct.udl_cmd_buf** %4, align 8
  %22 = load i64, i64* %5, align 8
  %23 = add nsw i64 %22, 2
  %24 = load i32, i32* %6, align 4
  %25 = ashr i32 %24, 0
  %26 = and i32 %25, 255
  %27 = call i32 @udl_cmd_write_reg_1(%struct.udl_cmd_buf* %21, i64 %23, i32 %26)
  ret void
}

declare dso_local i32 @udl_cmd_write_reg_1(%struct.udl_cmd_buf*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
