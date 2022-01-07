; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_ixl_pf_iov.c_ixl_adminq_err_to_errno.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_ixl_pf_iov.c_ixl_adminq_err_to_errno.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EPERM = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@ESRCH = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@E2BIG = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENOTTY = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@ENOSYS = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4
@EFBIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ixl_adminq_err_to_errno to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixl_adminq_err_to_errno(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %49 [
    i32 130, label %5
    i32 136, label %7
    i32 128, label %9
    i32 140, label %11
    i32 138, label %13
    i32 131, label %15
    i32 148, label %17
    i32 146, label %19
    i32 135, label %21
    i32 147, label %23
    i32 143, label %25
    i32 145, label %27
    i32 144, label %29
    i32 139, label %31
    i32 132, label %33
    i32 134, label %35
    i32 133, label %37
    i32 129, label %39
    i32 141, label %41
    i32 149, label %43
    i32 137, label %45
    i32 142, label %47
  ]

5:                                                ; preds = %1
  %6 = load i32, i32* @EPERM, align 4
  store i32 %6, i32* %2, align 4
  br label %51

7:                                                ; preds = %1
  %8 = load i32, i32* @ENOENT, align 4
  store i32 %8, i32* %2, align 4
  br label %51

9:                                                ; preds = %1
  %10 = load i32, i32* @ESRCH, align 4
  store i32 %10, i32* %2, align 4
  br label %51

11:                                               ; preds = %1
  %12 = load i32, i32* @EINTR, align 4
  store i32 %12, i32* %2, align 4
  br label %51

13:                                               ; preds = %1
  %14 = load i32, i32* @EIO, align 4
  store i32 %14, i32* %2, align 4
  br label %51

15:                                               ; preds = %1
  %16 = load i32, i32* @ENXIO, align 4
  store i32 %16, i32* %2, align 4
  br label %51

17:                                               ; preds = %1
  %18 = load i32, i32* @E2BIG, align 4
  store i32 %18, i32* %2, align 4
  br label %51

19:                                               ; preds = %1
  %20 = load i32, i32* @EAGAIN, align 4
  store i32 %20, i32* %2, align 4
  br label %51

21:                                               ; preds = %1
  %22 = load i32, i32* @ENOMEM, align 4
  store i32 %22, i32* %2, align 4
  br label %51

23:                                               ; preds = %1
  %24 = load i32, i32* @EACCES, align 4
  store i32 %24, i32* %2, align 4
  br label %51

25:                                               ; preds = %1
  %26 = load i32, i32* @EFAULT, align 4
  store i32 %26, i32* %2, align 4
  br label %51

27:                                               ; preds = %1
  %28 = load i32, i32* @EBUSY, align 4
  store i32 %28, i32* %2, align 4
  br label %51

29:                                               ; preds = %1
  %30 = load i32, i32* @EEXIST, align 4
  store i32 %30, i32* %2, align 4
  br label %51

31:                                               ; preds = %1
  %32 = load i32, i32* @EINVAL, align 4
  store i32 %32, i32* %2, align 4
  br label %51

33:                                               ; preds = %1
  %34 = load i32, i32* @ENOTTY, align 4
  store i32 %34, i32* %2, align 4
  br label %51

35:                                               ; preds = %1
  %36 = load i32, i32* @ENOSPC, align 4
  store i32 %36, i32* %2, align 4
  br label %51

37:                                               ; preds = %1
  %38 = load i32, i32* @ENOSYS, align 4
  store i32 %38, i32* %2, align 4
  br label %51

39:                                               ; preds = %1
  %40 = load i32, i32* @ERANGE, align 4
  store i32 %40, i32* %2, align 4
  br label %51

41:                                               ; preds = %1
  %42 = load i32, i32* @EINVAL, align 4
  store i32 %42, i32* %2, align 4
  br label %51

43:                                               ; preds = %1
  %44 = load i32, i32* @EFAULT, align 4
  store i32 %44, i32* %2, align 4
  br label %51

45:                                               ; preds = %1
  %46 = load i32, i32* @EPERM, align 4
  store i32 %46, i32* %2, align 4
  br label %51

47:                                               ; preds = %1
  %48 = load i32, i32* @EFBIG, align 4
  store i32 %48, i32* %2, align 4
  br label %51

49:                                               ; preds = %1
  %50 = load i32, i32* @EINVAL, align 4
  store i32 %50, i32* %2, align 4
  br label %51

51:                                               ; preds = %49, %47, %45, %43, %41, %39, %37, %35, %33, %31, %29, %27, %25, %23, %21, %19, %17, %15, %13, %11, %9, %7, %5
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
