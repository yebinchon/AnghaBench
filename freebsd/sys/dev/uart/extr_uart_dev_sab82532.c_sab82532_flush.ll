; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/uart/extr_uart_dev_sab82532.c_sab82532_flush.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/uart/extr_uart_dev_sab82532.c_sab82532_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_bas = type { i32 }

@UART_FLUSH_TRANSMITTER = common dso_local global i32 0, align 4
@SAB_STAR = common dso_local global i32 0, align 4
@SAB_STAR_CEC = common dso_local global i32 0, align 4
@SAB_CMDR = common dso_local global i32 0, align 4
@SAB_CMDR_XRES = common dso_local global i32 0, align 4
@UART_FLUSH_RECEIVER = common dso_local global i32 0, align 4
@SAB_CMDR_RRES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_bas*, i32)* @sab82532_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sab82532_flush(%struct.uart_bas* %0, i32 %1) #0 {
  %3 = alloca %struct.uart_bas*, align 8
  %4 = alloca i32, align 4
  store %struct.uart_bas* %0, %struct.uart_bas** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @UART_FLUSH_TRANSMITTER, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %25

9:                                                ; preds = %2
  br label %10

10:                                               ; preds = %17, %9
  %11 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %12 = load i32, i32* @SAB_STAR, align 4
  %13 = call i32 @uart_getreg(%struct.uart_bas* %11, i32 %12)
  %14 = load i32, i32* @SAB_STAR_CEC, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %10
  br label %10

18:                                               ; preds = %10
  %19 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %20 = load i32, i32* @SAB_CMDR, align 4
  %21 = load i32, i32* @SAB_CMDR_XRES, align 4
  %22 = call i32 @uart_setreg(%struct.uart_bas* %19, i32 %20, i32 %21)
  %23 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %24 = call i32 @uart_barrier(%struct.uart_bas* %23)
  br label %25

25:                                               ; preds = %18, %2
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @UART_FLUSH_RECEIVER, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %46

30:                                               ; preds = %25
  br label %31

31:                                               ; preds = %38, %30
  %32 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %33 = load i32, i32* @SAB_STAR, align 4
  %34 = call i32 @uart_getreg(%struct.uart_bas* %32, i32 %33)
  %35 = load i32, i32* @SAB_STAR_CEC, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %31
  br label %31

39:                                               ; preds = %31
  %40 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %41 = load i32, i32* @SAB_CMDR, align 4
  %42 = load i32, i32* @SAB_CMDR_RRES, align 4
  %43 = call i32 @uart_setreg(%struct.uart_bas* %40, i32 %41, i32 %42)
  %44 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %45 = call i32 @uart_barrier(%struct.uart_bas* %44)
  br label %46

46:                                               ; preds = %39, %25
  ret void
}

declare dso_local i32 @uart_getreg(%struct.uart_bas*, i32) #1

declare dso_local i32 @uart_setreg(%struct.uart_bas*, i32, i32) #1

declare dso_local i32 @uart_barrier(%struct.uart_bas*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
