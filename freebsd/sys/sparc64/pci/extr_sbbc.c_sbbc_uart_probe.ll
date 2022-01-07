; ModuleID = '/home/carl/AnghaBench/freebsd/sys/sparc64/pci/extr_sbbc.c_sbbc_uart_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/sparc64/pci/extr_sbbc.c_sbbc_uart_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_bas = type { i32, i32 }

@sbbc_console = common dso_local global i32 0, align 4
@sbbc_scsolie = common dso_local global i64 0, align 8
@sbbc_scsolir = common dso_local global i64 0, align 8
@sbbc_solcons = common dso_local global i64 0, align 8
@sbbc_solscie = common dso_local global i64 0, align 8
@sbbc_solscir = common dso_local global i64 0, align 8
@ENXIO = common dso_local global i32 0, align 4
@cons_magic = common dso_local global i32 0, align 4
@SBBC_CONS_MAGIC = common dso_local global i64 0, align 8
@cons_version = common dso_local global i32 0, align 4
@SBBC_CONS_VERSION = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_bas*)* @sbbc_uart_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sbbc_uart_probe(%struct.uart_bas* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.uart_bas*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.uart_bas* %0, %struct.uart_bas** %3, align 8
  store i32 1, i32* @sbbc_console, align 4
  %7 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %8 = getelementptr inbounds %struct.uart_bas, %struct.uart_bas* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %4, align 4
  %10 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %11 = getelementptr inbounds %struct.uart_bas, %struct.uart_bas* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @sbbc_parse_toc(i32 %13, i32 %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i32, i32* %6, align 4
  store i32 %19, i32* %2, align 4
  br label %56

20:                                               ; preds = %1
  %21 = load i64, i64* @sbbc_scsolie, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %35, label %23

23:                                               ; preds = %20
  %24 = load i64, i64* @sbbc_scsolir, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %35, label %26

26:                                               ; preds = %23
  %27 = load i64, i64* @sbbc_solcons, align 8
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %35, label %29

29:                                               ; preds = %26
  %30 = load i64, i64* @sbbc_solscie, align 8
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %29
  %33 = load i64, i64* @sbbc_solscir, align 8
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %32, %29, %26, %23, %20
  %36 = load i32, i32* @ENXIO, align 4
  store i32 %36, i32* %2, align 4
  br label %56

37:                                               ; preds = %32
  %38 = load i64, i64* @sbbc_solcons, align 8
  %39 = load i32, i32* @cons_magic, align 4
  %40 = call i64 @SBBC_CONS_OFF(i32 %39)
  %41 = add nsw i64 %38, %40
  %42 = call i64 @SBBC_SRAM_READ_4(i64 %41)
  %43 = load i64, i64* @SBBC_CONS_MAGIC, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %53, label %45

45:                                               ; preds = %37
  %46 = load i64, i64* @sbbc_solcons, align 8
  %47 = load i32, i32* @cons_version, align 4
  %48 = call i64 @SBBC_CONS_OFF(i32 %47)
  %49 = add nsw i64 %46, %48
  %50 = call i64 @SBBC_SRAM_READ_4(i64 %49)
  %51 = load i64, i64* @SBBC_CONS_VERSION, align 8
  %52 = icmp slt i64 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %45, %37
  %54 = load i32, i32* @ENXIO, align 4
  store i32 %54, i32* %2, align 4
  br label %56

55:                                               ; preds = %45
  store i32 0, i32* %2, align 4
  br label %56

56:                                               ; preds = %55, %53, %35, %18
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local i32 @sbbc_parse_toc(i32, i32) #1

declare dso_local i64 @SBBC_SRAM_READ_4(i64) #1

declare dso_local i64 @SBBC_CONS_OFF(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
