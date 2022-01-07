; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_subr.c_vfs_unixify_accmode.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_subr.c_vfs_unixify_accmode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VEXPLICIT_DENY = common dso_local global i32 0, align 4
@VDELETE_CHILD = common dso_local global i32 0, align 4
@VDELETE = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@VADMIN_PERMS = common dso_local global i32 0, align 4
@VADMIN = common dso_local global i32 0, align 4
@VSTAT_PERMS = common dso_local global i32 0, align 4
@VSYNCHRONIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vfs_unixify_accmode(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %4 = load i32*, i32** %3, align 8
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @VEXPLICIT_DENY, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32*, i32** %3, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %2, align 4
  br label %45

11:                                               ; preds = %1
  %12 = load i32*, i32** %3, align 8
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @VDELETE_CHILD, align 4
  %15 = load i32, i32* @VDELETE, align 4
  %16 = or i32 %14, %15
  %17 = and i32 %13, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %11
  %20 = load i32, i32* @EPERM, align 4
  store i32 %20, i32* %2, align 4
  br label %45

21:                                               ; preds = %11
  %22 = load i32*, i32** %3, align 8
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @VADMIN_PERMS, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %37

27:                                               ; preds = %21
  %28 = load i32, i32* @VADMIN_PERMS, align 4
  %29 = xor i32 %28, -1
  %30 = load i32*, i32** %3, align 8
  %31 = load i32, i32* %30, align 4
  %32 = and i32 %31, %29
  store i32 %32, i32* %30, align 4
  %33 = load i32, i32* @VADMIN, align 4
  %34 = load i32*, i32** %3, align 8
  %35 = load i32, i32* %34, align 4
  %36 = or i32 %35, %33
  store i32 %36, i32* %34, align 4
  br label %37

37:                                               ; preds = %27, %21
  %38 = load i32, i32* @VSTAT_PERMS, align 4
  %39 = load i32, i32* @VSYNCHRONIZE, align 4
  %40 = or i32 %38, %39
  %41 = xor i32 %40, -1
  %42 = load i32*, i32** %3, align 8
  %43 = load i32, i32* %42, align 4
  %44 = and i32 %43, %41
  store i32 %44, i32* %42, align 4
  store i32 0, i32* %2, align 4
  br label %45

45:                                               ; preds = %37, %19, %9
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
