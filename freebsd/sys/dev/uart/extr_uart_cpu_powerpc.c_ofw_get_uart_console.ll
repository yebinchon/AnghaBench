; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/uart/extr_uart_cpu_powerpc.c_ofw_get_uart_console.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/uart/extr_uart_cpu_powerpc.c_ofw_get_uart_console.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i8*, i8*)* @ofw_get_uart_console to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ofw_get_uart_console(i32 %0, i32* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca [64 x i8], align 16
  %11 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32* %1, i32** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %12 = load i32, i32* %6, align 4
  %13 = load i8*, i8** %8, align 8
  %14 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 0
  %15 = call i32 @OF_getprop(i32 %12, i8* %13, i8* %14, i32 64)
  %16 = icmp eq i32 %15, -1
  br i1 %16, label %17, label %19

17:                                               ; preds = %4
  %18 = load i32, i32* @ENXIO, align 4
  store i32 %18, i32* %5, align 4
  br label %48

19:                                               ; preds = %4
  %20 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 0
  %21 = call i32 @OF_finddevice(i8* %20)
  store i32 %21, i32* %11, align 4
  %22 = load i32, i32* %11, align 4
  %23 = icmp eq i32 %22, -1
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = load i32, i32* @ENXIO, align 4
  store i32 %25, i32* %5, align 4
  br label %48

26:                                               ; preds = %19
  %27 = load i8*, i8** %9, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %45

29:                                               ; preds = %26
  %30 = load i32, i32* %6, align 4
  %31 = load i8*, i8** %9, align 8
  %32 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 0
  %33 = call i32 @OF_getprop(i32 %30, i8* %31, i8* %32, i32 64)
  %34 = icmp eq i32 %33, -1
  br i1 %34, label %35, label %37

35:                                               ; preds = %29
  %36 = load i32, i32* @ENXIO, align 4
  store i32 %36, i32* %5, align 4
  br label %48

37:                                               ; preds = %29
  %38 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 0
  %39 = call i32 @OF_finddevice(i8* %38)
  %40 = load i32, i32* %11, align 4
  %41 = icmp ne i32 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %37
  %43 = load i32, i32* @ENXIO, align 4
  store i32 %43, i32* %5, align 4
  br label %48

44:                                               ; preds = %37
  br label %45

45:                                               ; preds = %44, %26
  %46 = load i32, i32* %11, align 4
  %47 = load i32*, i32** %7, align 8
  store i32 %46, i32* %47, align 4
  store i32 0, i32* %5, align 4
  br label %48

48:                                               ; preds = %45, %42, %35, %24, %17
  %49 = load i32, i32* %5, align 4
  ret i32 %49
}

declare dso_local i32 @OF_getprop(i32, i8*, i8*, i32) #1

declare dso_local i32 @OF_finddevice(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
