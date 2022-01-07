; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/uart/extr_uart_dev_quicc.c_quicc_getc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/uart/extr_uart_dev_quicc.c_quicc_getc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_bas = type { i64 }
%struct.mtx = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_bas*, %struct.mtx*)* @quicc_getc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @quicc_getc(%struct.uart_bas* %0, %struct.mtx* %1) #0 {
  %3 = alloca %struct.uart_bas*, align 8
  %4 = alloca %struct.mtx*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.uart_bas* %0, %struct.uart_bas** %3, align 8
  store %struct.mtx* %1, %struct.mtx** %4, align 8
  %9 = load %struct.mtx*, %struct.mtx** %4, align 8
  %10 = call i32 @uart_lock(%struct.mtx* %9)
  %11 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %12 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %13 = getelementptr inbounds %struct.uart_bas, %struct.uart_bas* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = sub nsw i64 %14, 1
  %16 = call i32 @QUICC_PRAM_SCC_RBASE(i64 %15)
  %17 = call i32 @quicc_read2(%struct.uart_bas* %11, i32 %16)
  store i32 %17, i32* %7, align 4
  br label %18

18:                                               ; preds = %24, %2
  %19 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @quicc_read2(%struct.uart_bas* %19, i32 %20)
  store i32 %21, i32* %8, align 4
  %22 = and i32 %21, 32768
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %18
  %25 = load %struct.mtx*, %struct.mtx** %4, align 8
  %26 = call i32 @uart_unlock(%struct.mtx* %25)
  %27 = call i32 @DELAY(i32 4)
  %28 = load %struct.mtx*, %struct.mtx** %4, align 8
  %29 = call i32 @uart_lock(%struct.mtx* %28)
  br label %18

30:                                               ; preds = %18
  %31 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %32 = load i32, i32* %7, align 4
  %33 = add nsw i32 %32, 4
  %34 = call i64 @quicc_read4(%struct.uart_bas* %31, i32 %33)
  %35 = inttoptr i64 %34 to i8*
  store i8* %35, i8** %5, align 8
  %36 = load i8*, i8** %5, align 8
  %37 = load volatile i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  store i32 %38, i32* %6, align 4
  %39 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* %8, align 4
  %42 = or i32 %41, 32768
  %43 = call i32 @quicc_write2(%struct.uart_bas* %39, i32 %40, i32 %42)
  %44 = load %struct.mtx*, %struct.mtx** %4, align 8
  %45 = call i32 @uart_unlock(%struct.mtx* %44)
  %46 = load i32, i32* %6, align 4
  ret i32 %46
}

declare dso_local i32 @uart_lock(%struct.mtx*) #1

declare dso_local i32 @quicc_read2(%struct.uart_bas*, i32) #1

declare dso_local i32 @QUICC_PRAM_SCC_RBASE(i64) #1

declare dso_local i32 @uart_unlock(%struct.mtx*) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i64 @quicc_read4(%struct.uart_bas*, i32) #1

declare dso_local i32 @quicc_write2(%struct.uart_bas*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
