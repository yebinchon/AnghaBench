; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/uart/extr_uart_dev_sab82532.c_sab82532_putc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/uart/extr_uart_dev_sab82532.c_sab82532_putc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_bas = type { i32 }

@SAB_STAR = common dso_local global i32 0, align 4
@SAB_STAR_TEC = common dso_local global i32 0, align 4
@SAB_TIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_bas*, i32)* @sab82532_putc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sab82532_putc(%struct.uart_bas* %0, i32 %1) #0 {
  %3 = alloca %struct.uart_bas*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.uart_bas* %0, %struct.uart_bas** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %8 = call i32 @sab82532_delay(%struct.uart_bas* %7)
  store i32 %8, i32* %5, align 4
  store i32 20, i32* %6, align 4
  br label %9

9:                                                ; preds = %22, %2
  %10 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %11 = load i32, i32* @SAB_STAR, align 4
  %12 = call i32 @uart_getreg(%struct.uart_bas* %10, i32 %11)
  %13 = load i32, i32* @SAB_STAR_TEC, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %9
  %17 = load i32, i32* %6, align 4
  %18 = add nsw i32 %17, -1
  store i32 %18, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  br label %20

20:                                               ; preds = %16, %9
  %21 = phi i1 [ false, %9 ], [ %19, %16 ]
  br i1 %21, label %22, label %25

22:                                               ; preds = %20
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @DELAY(i32 %23)
  br label %9

25:                                               ; preds = %20
  %26 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %27 = load i32, i32* @SAB_TIC, align 4
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @uart_setreg(%struct.uart_bas* %26, i32 %27, i32 %28)
  store i32 20, i32* %6, align 4
  br label %30

30:                                               ; preds = %43, %25
  %31 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %32 = load i32, i32* @SAB_STAR, align 4
  %33 = call i32 @uart_getreg(%struct.uart_bas* %31, i32 %32)
  %34 = load i32, i32* @SAB_STAR_TEC, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %30
  %38 = load i32, i32* %6, align 4
  %39 = add nsw i32 %38, -1
  store i32 %39, i32* %6, align 4
  %40 = icmp ne i32 %39, 0
  br label %41

41:                                               ; preds = %37, %30
  %42 = phi i1 [ false, %30 ], [ %40, %37 ]
  br i1 %42, label %43, label %46

43:                                               ; preds = %41
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @DELAY(i32 %44)
  br label %30

46:                                               ; preds = %41
  ret void
}

declare dso_local i32 @sab82532_delay(%struct.uart_bas*) #1

declare dso_local i32 @uart_getreg(%struct.uart_bas*, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @uart_setreg(%struct.uart_bas*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
