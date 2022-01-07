; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/kdump/extr_kdump.c_syscallabi.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/kdump/extr_kdump.c_syscallabi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SYSDECODE_ABI_FREEBSD = common dso_local global i32 0, align 4
@SV_ABI_MASK = common dso_local global i32 0, align 4
@SV_ILP32 = common dso_local global i32 0, align 4
@SYSDECODE_ABI_LINUX32 = common dso_local global i32 0, align 4
@SYSDECODE_ABI_LINUX = common dso_local global i32 0, align 4
@SYSDECODE_ABI_CLOUDABI64 = common dso_local global i32 0, align 4
@SYSDECODE_ABI_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @syscallabi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @syscallabi(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = load i32, i32* @SYSDECODE_ABI_FREEBSD, align 4
  store i32 %7, i32* %2, align 4
  br label %27

8:                                                ; preds = %1
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @SV_ABI_MASK, align 4
  %11 = and i32 %9, %10
  switch i32 %11, label %25 [
    i32 129, label %12
    i32 128, label %14
    i32 130, label %23
  ]

12:                                               ; preds = %8
  %13 = load i32, i32* @SYSDECODE_ABI_FREEBSD, align 4
  store i32 %13, i32* %2, align 4
  br label %27

14:                                               ; preds = %8
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @SV_ILP32, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %14
  %20 = load i32, i32* @SYSDECODE_ABI_LINUX32, align 4
  store i32 %20, i32* %2, align 4
  br label %27

21:                                               ; preds = %14
  %22 = load i32, i32* @SYSDECODE_ABI_LINUX, align 4
  store i32 %22, i32* %2, align 4
  br label %27

23:                                               ; preds = %8
  %24 = load i32, i32* @SYSDECODE_ABI_CLOUDABI64, align 4
  store i32 %24, i32* %2, align 4
  br label %27

25:                                               ; preds = %8
  %26 = load i32, i32* @SYSDECODE_ABI_UNKNOWN, align 4
  store i32 %26, i32* %2, align 4
  br label %27

27:                                               ; preds = %25, %23, %21, %19, %12, %6
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
