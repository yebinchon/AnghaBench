; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_link_elf_obj.c_link_elf_invoke_ctors.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_link_elf_obj.c_link_elf_invoke_ctors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i64)* @link_elf_invoke_ctors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @link_elf_invoke_ctors(i32* %0, i64 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca void ()**, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = icmp eq i32* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = load i64, i64* %4, align 8
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %10, %2
  br label %39

14:                                               ; preds = %10
  %15 = load i64, i64* %4, align 8
  %16 = udiv i64 %15, 8
  store i64 %16, i64* %7, align 8
  %17 = load i32*, i32** %3, align 8
  %18 = bitcast i32* %17 to i8*
  %19 = bitcast i8* %18 to void ()**
  store void ()** %19, void ()*** %5, align 8
  store i64 0, i64* %6, align 8
  br label %20

20:                                               ; preds = %36, %14
  %21 = load i64, i64* %6, align 8
  %22 = load i64, i64* %7, align 8
  %23 = icmp ult i64 %21, %22
  br i1 %23, label %24, label %39

24:                                               ; preds = %20
  %25 = load void ()**, void ()*** %5, align 8
  %26 = load i64, i64* %6, align 8
  %27 = getelementptr inbounds void ()*, void ()** %25, i64 %26
  %28 = load void ()*, void ()** %27, align 8
  %29 = icmp ne void ()* %28, null
  br i1 %29, label %30, label %35

30:                                               ; preds = %24
  %31 = load void ()**, void ()*** %5, align 8
  %32 = load i64, i64* %6, align 8
  %33 = getelementptr inbounds void ()*, void ()** %31, i64 %32
  %34 = load void ()*, void ()** %33, align 8
  call void %34()
  br label %35

35:                                               ; preds = %30, %24
  br label %36

36:                                               ; preds = %35
  %37 = load i64, i64* %6, align 8
  %38 = add i64 %37, 1
  store i64 %38, i64* %6, align 8
  br label %20

39:                                               ; preds = %13, %20
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
