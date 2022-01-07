; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/uart/extr_uart_cpu_fdt.c_uart_cpu_eqres.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/uart/extr_uart_cpu_fdt.c_uart_cpu_eqres.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_bas = type { i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uart_cpu_eqres(%struct.uart_bas* %0, %struct.uart_bas* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.uart_bas*, align 8
  %5 = alloca %struct.uart_bas*, align 8
  store %struct.uart_bas* %0, %struct.uart_bas** %4, align 8
  store %struct.uart_bas* %1, %struct.uart_bas** %5, align 8
  %6 = load %struct.uart_bas*, %struct.uart_bas** %4, align 8
  %7 = getelementptr inbounds %struct.uart_bas, %struct.uart_bas* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load %struct.uart_bas*, %struct.uart_bas** %5, align 8
  %10 = getelementptr inbounds %struct.uart_bas, %struct.uart_bas* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %8, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %40

14:                                               ; preds = %2
  %15 = load %struct.uart_bas*, %struct.uart_bas** %4, align 8
  %16 = getelementptr inbounds %struct.uart_bas, %struct.uart_bas* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = call i64 @pmap_kextract(i32 %17)
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  store i32 0, i32* %3, align 4
  br label %40

21:                                               ; preds = %14
  %22 = load %struct.uart_bas*, %struct.uart_bas** %5, align 8
  %23 = getelementptr inbounds %struct.uart_bas, %struct.uart_bas* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call i64 @pmap_kextract(i32 %24)
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  store i32 0, i32* %3, align 4
  br label %40

28:                                               ; preds = %21
  %29 = load %struct.uart_bas*, %struct.uart_bas** %4, align 8
  %30 = getelementptr inbounds %struct.uart_bas, %struct.uart_bas* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = call i64 @pmap_kextract(i32 %31)
  %33 = load %struct.uart_bas*, %struct.uart_bas** %5, align 8
  %34 = getelementptr inbounds %struct.uart_bas, %struct.uart_bas* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = call i64 @pmap_kextract(i32 %35)
  %37 = icmp eq i64 %32, %36
  %38 = zext i1 %37 to i64
  %39 = select i1 %37, i32 1, i32 0
  store i32 %39, i32* %3, align 4
  br label %40

40:                                               ; preds = %28, %27, %20, %13
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i64 @pmap_kextract(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
