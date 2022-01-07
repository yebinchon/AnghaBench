; ModuleID = '/home/carl/AnghaBench/freebsd/sys/gdb/extr_gdb_packet.c_gdb_rx_bindata.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/gdb/extr_gdb_packet.c_gdb_rx_bindata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EOF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gdb_rx_bindata(i8* %0, i64 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  %9 = load i64*, i64** %7, align 8
  store i64 0, i64* %9, align 8
  br label %10

10:                                               ; preds = %32, %3
  %11 = load i64*, i64** %7, align 8
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* %6, align 8
  %14 = icmp ult i64 %12, %13
  br i1 %14, label %15, label %41

15:                                               ; preds = %10
  %16 = call i32 (...) @gdb_rx_char()
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* @EOF, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  br label %41

21:                                               ; preds = %15
  %22 = load i32, i32* %8, align 4
  %23 = icmp eq i32 %22, 125
  br i1 %23, label %24, label %32

24:                                               ; preds = %21
  %25 = call i32 (...) @gdb_rx_char()
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* @EOF, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  store i32 1, i32* %4, align 4
  br label %42

29:                                               ; preds = %24
  %30 = load i32, i32* %8, align 4
  %31 = xor i32 %30, 32
  store i32 %31, i32* %8, align 4
  br label %32

32:                                               ; preds = %29, %21
  %33 = load i32, i32* %8, align 4
  %34 = and i32 %33, 255
  %35 = trunc i32 %34 to i8
  %36 = load i8*, i8** %5, align 8
  %37 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %37, i8** %5, align 8
  store i8 %35, i8* %36, align 1
  %38 = load i64*, i64** %7, align 8
  %39 = load i64, i64* %38, align 8
  %40 = add i64 %39, 1
  store i64 %40, i64* %38, align 8
  br label %10

41:                                               ; preds = %20, %10
  store i32 0, i32* %4, align 4
  br label %42

42:                                               ; preds = %41, %28
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local i32 @gdb_rx_char(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
