; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ioat/extr_ioat.c_chanerr_to_errno.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ioat/extr_ioat.c_chanerr_to_errno.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IOAT_CHANERR_XSADDERR = common dso_local global i32 0, align 4
@IOAT_CHANERR_XDADDERR = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@IOAT_CHANERR_RDERR = common dso_local global i32 0, align 4
@IOAT_CHANERR_WDERR = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@IOAT_CHANERR_NDADDERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @chanerr_to_errno to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chanerr_to_errno(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %34

7:                                                ; preds = %1
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @IOAT_CHANERR_XSADDERR, align 4
  %10 = load i32, i32* @IOAT_CHANERR_XDADDERR, align 4
  %11 = or i32 %9, %10
  %12 = and i32 %8, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %7
  %15 = load i32, i32* @EFAULT, align 4
  store i32 %15, i32* %2, align 4
  br label %34

16:                                               ; preds = %7
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @IOAT_CHANERR_RDERR, align 4
  %19 = load i32, i32* @IOAT_CHANERR_WDERR, align 4
  %20 = or i32 %18, %19
  %21 = and i32 %17, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %16
  %24 = load i32, i32* @EIO, align 4
  store i32 %24, i32* %2, align 4
  br label %34

25:                                               ; preds = %16
  %26 = load i32, i32* %3, align 4
  %27 = load i32, i32* @IOAT_CHANERR_NDADDERR, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = load i32, i32* @EIO, align 4
  store i32 %31, i32* %2, align 4
  br label %34

32:                                               ; preds = %25
  %33 = load i32, i32* @EIO, align 4
  store i32 %33, i32* %2, align 4
  br label %34

34:                                               ; preds = %32, %30, %23, %14, %6
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
