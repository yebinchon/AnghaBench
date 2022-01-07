; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/cavium/extr_uart_dev_oct16550.c_oct16550_delay.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/cavium/extr_uart_dev_oct16550.c_oct16550_delay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_bas = type { i32 }

@oct16550_delay.delay = internal global i32 0, align 4
@delay_changed = common dso_local global i64 0, align 8
@REG_LCR = common dso_local global i32 0, align 4
@LCR_DLAB = common dso_local global i32 0, align 4
@REG_DLL = common dso_local global i32 0, align 4
@REG_DLH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_bas*)* @oct16550_delay to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @oct16550_delay(%struct.uart_bas* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.uart_bas*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.uart_bas* %0, %struct.uart_bas** %3, align 8
  %6 = load i64, i64* @delay_changed, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %1
  %9 = load i32, i32* @oct16550_delay.delay, align 4
  store i32 %9, i32* %2, align 4
  br label %61

10:                                               ; preds = %1
  store i64 0, i64* @delay_changed, align 8
  %11 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %12 = load i32, i32* @REG_LCR, align 4
  %13 = call i32 @uart_getreg(%struct.uart_bas* %11, i32 %12)
  store i32 %13, i32* %5, align 4
  %14 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %15 = load i32, i32* @REG_LCR, align 4
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @LCR_DLAB, align 4
  %18 = or i32 %16, %17
  %19 = call i32 @uart_setreg(%struct.uart_bas* %14, i32 %15, i32 %18)
  %20 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %21 = call i32 @uart_barrier(%struct.uart_bas* %20)
  %22 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %23 = load i32, i32* @REG_DLL, align 4
  %24 = call i32 @uart_getreg(%struct.uart_bas* %22, i32 %23)
  %25 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %26 = load i32, i32* @REG_DLH, align 4
  %27 = call i32 @uart_getreg(%struct.uart_bas* %25, i32 %26)
  %28 = shl i32 %27, 8
  %29 = or i32 %24, %28
  store i32 %29, i32* %4, align 4
  %30 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %31 = call i32 @uart_barrier(%struct.uart_bas* %30)
  %32 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %33 = load i32, i32* @REG_LCR, align 4
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @uart_setreg(%struct.uart_bas* %32, i32 %33, i32 %34)
  %36 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %37 = call i32 @uart_barrier(%struct.uart_bas* %36)
  %38 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %39 = getelementptr inbounds %struct.uart_bas, %struct.uart_bas* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %10
  store i32 10, i32* %2, align 4
  br label %61

43:                                               ; preds = %10
  %44 = load i32, i32* %4, align 4
  %45 = icmp sle i32 %44, 134
  br i1 %45, label %46, label %53

46:                                               ; preds = %43
  %47 = load i32, i32* %4, align 4
  %48 = mul nsw i32 16000000, %47
  %49 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %50 = getelementptr inbounds %struct.uart_bas, %struct.uart_bas* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = sdiv i32 %48, %51
  store i32 %52, i32* %2, align 4
  br label %61

53:                                               ; preds = %43
  %54 = load i32, i32* %4, align 4
  %55 = mul nsw i32 16000, %54
  %56 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %57 = getelementptr inbounds %struct.uart_bas, %struct.uart_bas* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = sdiv i32 %58, 1000
  %60 = sdiv i32 %55, %59
  store i32 %60, i32* %2, align 4
  br label %61

61:                                               ; preds = %53, %46, %42, %8
  %62 = load i32, i32* %2, align 4
  ret i32 %62
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
