; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlxgbe/extr_ql_misc.c_qla_tmplt_16bit_checksum.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlxgbe/extr_ql_misc.c_qla_tmplt_16bit_checksum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32)* @qla_tmplt_16bit_checksum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qla_tmplt_16bit_checksum(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %9 = load i32, i32* %6, align 4
  %10 = ashr i32 %9, 1
  store i32 %10, i32* %8, align 4
  br label %11

11:                                               ; preds = %15, %3
  %12 = load i32, i32* %8, align 4
  %13 = add nsw i32 %12, -1
  store i32 %13, i32* %8, align 4
  %14 = icmp sgt i32 %12, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %11
  %16 = load i32*, i32** %5, align 8
  %17 = getelementptr inbounds i32, i32* %16, i32 1
  store i32* %17, i32** %5, align 8
  %18 = load i32, i32* %16, align 4
  %19 = load i32, i32* %7, align 4
  %20 = add nsw i32 %19, %18
  store i32 %20, i32* %7, align 4
  br label %11

21:                                               ; preds = %11
  br label %22

22:                                               ; preds = %26, %21
  %23 = load i32, i32* %7, align 4
  %24 = ashr i32 %23, 16
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %22
  %27 = load i32, i32* %7, align 4
  %28 = and i32 %27, 65535
  %29 = load i32, i32* %7, align 4
  %30 = ashr i32 %29, 16
  %31 = add nsw i32 %28, %30
  store i32 %31, i32* %7, align 4
  br label %22

32:                                               ; preds = %22
  %33 = load i32, i32* %7, align 4
  %34 = xor i32 %33, -1
  ret i32 %34
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
