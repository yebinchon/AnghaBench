; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/uart/extr_uart_kbd_sun.c_sunkbd_probe_keyboard.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/uart/extr_uart_kbd_sun.c_sunkbd_probe_keyboard.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_devinfo = type { i32 }

@SKBD_CMD_RESET = common dso_local global i32 0, align 4
@SKBD_RSP_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_devinfo*)* @sunkbd_probe_keyboard to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sunkbd_probe_keyboard(%struct.uart_devinfo* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.uart_devinfo*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.uart_devinfo* %0, %struct.uart_devinfo** %3, align 8
  store i32 5, i32* %7, align 4
  br label %8

8:                                                ; preds = %51, %1
  %9 = load i32, i32* %7, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %54

11:                                               ; preds = %8
  %12 = load %struct.uart_devinfo*, %struct.uart_devinfo** %3, align 8
  %13 = load i32, i32* @SKBD_CMD_RESET, align 4
  %14 = call i32 @uart_putc(%struct.uart_devinfo* %12, i32 %13)
  store i32 1000, i32* %6, align 4
  br label %15

15:                                               ; preds = %26, %11
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %29

18:                                               ; preds = %15
  %19 = load %struct.uart_devinfo*, %struct.uart_devinfo** %3, align 8
  %20 = call i32 @uart_poll(%struct.uart_devinfo* %19)
  %21 = load i32, i32* @SKBD_RSP_RESET, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  br label %29

24:                                               ; preds = %18
  %25 = call i32 @DELAY(i32 1000)
  br label %26

26:                                               ; preds = %24
  %27 = load i32, i32* %6, align 4
  %28 = add nsw i32 %27, -1
  store i32 %28, i32* %6, align 4
  br label %15

29:                                               ; preds = %23, %15
  %30 = load i32, i32* %6, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  br label %51

33:                                               ; preds = %29
  store i32 -1, i32* %5, align 4
  store i32 1000, i32* %6, align 4
  br label %34

34:                                               ; preds = %47, %33
  %35 = load i32, i32* %6, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %50

37:                                               ; preds = %34
  %38 = load %struct.uart_devinfo*, %struct.uart_devinfo** %3, align 8
  %39 = call i32 @uart_poll(%struct.uart_devinfo* %38)
  store i32 %39, i32* %4, align 4
  switch i32 %39, label %43 [
    i32 -1, label %40
    i32 128, label %41
  ]

40:                                               ; preds = %37
  br label %45

41:                                               ; preds = %37
  %42 = load i32, i32* %5, align 4
  store i32 %42, i32* %2, align 4
  br label %55

43:                                               ; preds = %37
  %44 = load i32, i32* %4, align 4
  store i32 %44, i32* %5, align 4
  br label %45

45:                                               ; preds = %43, %40
  %46 = call i32 @DELAY(i32 1000)
  br label %47

47:                                               ; preds = %45
  %48 = load i32, i32* %6, align 4
  %49 = add nsw i32 %48, -1
  store i32 %49, i32* %6, align 4
  br label %34

50:                                               ; preds = %34
  br label %51

51:                                               ; preds = %50, %32
  %52 = load i32, i32* %7, align 4
  %53 = add nsw i32 %52, -1
  store i32 %53, i32* %7, align 4
  br label %8

54:                                               ; preds = %8
  store i32 -1, i32* %2, align 4
  br label %55

55:                                               ; preds = %54, %41
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local i32 @uart_putc(%struct.uart_devinfo*, i32) #1

declare dso_local i32 @uart_poll(%struct.uart_devinfo*) #1

declare dso_local i32 @DELAY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
