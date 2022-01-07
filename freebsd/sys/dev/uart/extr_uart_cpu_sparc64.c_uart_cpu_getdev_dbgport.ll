; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/uart/extr_uart_cpu_sparc64.c_uart_cpu_getdev_dbgport.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/uart/extr_uart_cpu_sparc64.c_uart_cpu_getdev_dbgport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [16 x i8] c"hw.uart.dbgport\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"device_type\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"serial\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64)* @uart_cpu_getdev_dbgport to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uart_cpu_getdev_dbgport(i8* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca [7 x i8], align 1
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = load i64, i64* %5, align 8
  %10 = call i32 @getenv_string(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* %8, i64 %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %31

13:                                               ; preds = %2
  %14 = load i8*, i8** %4, align 8
  %15 = call i32 @OF_finddevice(i8* %14)
  store i32 %15, i32* %7, align 4
  %16 = icmp eq i32 %15, -1
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  store i32 -1, i32* %3, align 4
  br label %31

18:                                               ; preds = %13
  %19 = load i32, i32* %7, align 4
  %20 = getelementptr inbounds [7 x i8], [7 x i8]* %6, i64 0, i64 0
  %21 = call i32 @OF_getprop(i32 %19, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* %20, i32 7)
  %22 = icmp eq i32 %21, -1
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  store i32 -1, i32* %3, align 4
  br label %31

24:                                               ; preds = %18
  %25 = getelementptr inbounds [7 x i8], [7 x i8]* %6, i64 0, i64 0
  %26 = call i64 @strcmp(i8* %25, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  store i32 -1, i32* %3, align 4
  br label %31

29:                                               ; preds = %24
  %30 = load i32, i32* %7, align 4
  store i32 %30, i32* %3, align 4
  br label %31

31:                                               ; preds = %29, %28, %23, %17, %12
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local i32 @getenv_string(i8*, i8*, i64) #1

declare dso_local i32 @OF_finddevice(i8*) #1

declare dso_local i32 @OF_getprop(i32, i8*, i8*, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
