; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/uart/extr_uart_cpu_arm64.c_uart_cpu_eqres.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/uart/extr_uart_cpu_arm64.c_uart_cpu_eqres.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_bas = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uart_cpu_eqres(%struct.uart_bas* %0, %struct.uart_bas* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.uart_bas*, align 8
  %5 = alloca %struct.uart_bas*, align 8
  store %struct.uart_bas* %0, %struct.uart_bas** %4, align 8
  store %struct.uart_bas* %1, %struct.uart_bas** %5, align 8
  %6 = load %struct.uart_bas*, %struct.uart_bas** %4, align 8
  %7 = getelementptr inbounds %struct.uart_bas, %struct.uart_bas* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i64 @pmap_kextract(i32 %8)
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %31

12:                                               ; preds = %2
  %13 = load %struct.uart_bas*, %struct.uart_bas** %5, align 8
  %14 = getelementptr inbounds %struct.uart_bas, %struct.uart_bas* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @pmap_kextract(i32 %15)
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %12
  store i32 0, i32* %3, align 4
  br label %31

19:                                               ; preds = %12
  %20 = load %struct.uart_bas*, %struct.uart_bas** %4, align 8
  %21 = getelementptr inbounds %struct.uart_bas, %struct.uart_bas* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @pmap_kextract(i32 %22)
  %24 = load %struct.uart_bas*, %struct.uart_bas** %5, align 8
  %25 = getelementptr inbounds %struct.uart_bas, %struct.uart_bas* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @pmap_kextract(i32 %26)
  %28 = icmp eq i64 %23, %27
  %29 = zext i1 %28 to i64
  %30 = select i1 %28, i32 1, i32 0
  store i32 %30, i32* %3, align 4
  br label %31

31:                                               ; preds = %19, %18, %11
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local i64 @pmap_kextract(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
