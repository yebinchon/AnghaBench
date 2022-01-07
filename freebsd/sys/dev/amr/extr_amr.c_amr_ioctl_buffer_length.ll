; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/amr/extr_amr.c_amr_ioctl_buffer_length.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/amr/extr_amr.c_amr_ioctl_buffer_length.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64)* @amr_ioctl_buffer_length to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @amr_ioctl_buffer_length(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %4 = load i64, i64* %3, align 8
  %5 = icmp ule i64 %4, 4096
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  store i64 4096, i64* %2, align 8
  br label %21

7:                                                ; preds = %1
  %8 = load i64, i64* %3, align 8
  %9 = icmp ule i64 %8, 8192
  br i1 %9, label %10, label %11

10:                                               ; preds = %7
  store i64 8192, i64* %2, align 8
  br label %21

11:                                               ; preds = %7
  %12 = load i64, i64* %3, align 8
  %13 = icmp ule i64 %12, 32768
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  store i64 32768, i64* %2, align 8
  br label %21

15:                                               ; preds = %11
  %16 = load i64, i64* %3, align 8
  %17 = icmp ule i64 %16, 65536
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  store i64 65536, i64* %2, align 8
  br label %21

19:                                               ; preds = %15
  %20 = load i64, i64* %3, align 8
  store i64 %20, i64* %2, align 8
  br label %21

21:                                               ; preds = %19, %18, %14, %10, %6
  %22 = load i64, i64* %2, align 8
  ret i64 %22
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
