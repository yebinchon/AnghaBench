; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bluetooth/iwmbtfw/extr_main.c_iwmbt_init_ddc.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bluetooth/iwmbtfw/extr_main.c_iwmbt_init_ddc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwmbt_firmware = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"loading %s\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"iwmbt_fw_read() failed\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"Loading DDC file failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*)* @iwmbt_init_ddc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwmbt_init_ddc(i32* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.iwmbt_firmware, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = call i32 (i8*, ...) @iwmbt_debug(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %8)
  %10 = load i8*, i8** %5, align 8
  %11 = call i64 @iwmbt_fw_read(%struct.iwmbt_firmware* %6, i8* %10)
  %12 = icmp sle i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = call i32 (i8*, ...) @iwmbt_debug(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %25

15:                                               ; preds = %2
  %16 = load i32*, i32** %4, align 8
  %17 = call i32 @iwmbt_load_ddc(i32* %16, %struct.iwmbt_firmware* %6)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  %21 = call i32 (i8*, ...) @iwmbt_debug(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  br label %22

22:                                               ; preds = %20, %15
  %23 = call i32 @iwmbt_fw_free(%struct.iwmbt_firmware* %6)
  %24 = load i32, i32* %7, align 4
  store i32 %24, i32* %3, align 4
  br label %25

25:                                               ; preds = %22, %13
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

declare dso_local i32 @iwmbt_debug(i8*, ...) #1

declare dso_local i64 @iwmbt_fw_read(%struct.iwmbt_firmware*, i8*) #1

declare dso_local i32 @iwmbt_load_ddc(i32*, %struct.iwmbt_firmware*) #1

declare dso_local i32 @iwmbt_fw_free(%struct.iwmbt_firmware*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
