; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_iiconf.c_iic2errno.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_iiconf.c_iic2errno.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EALREADY = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@EWOULDBLOCK = common dso_local global i32 0, align 4
@EPROTO = common dso_local global i32 0, align 4
@EOVERFLOW = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@EADDRNOTAVAIL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IIC_ERRNO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iic2errno(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %26 [
    i32 128, label %5
    i32 137, label %6
    i32 136, label %8
    i32 130, label %10
    i32 138, label %12
    i32 131, label %14
    i32 129, label %16
    i32 133, label %18
    i32 134, label %20
    i32 135, label %22
    i32 132, label %24
  ]

5:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %44

6:                                                ; preds = %1
  %7 = load i32, i32* @EALREADY, align 4
  store i32 %7, i32* %2, align 4
  br label %44

8:                                                ; preds = %1
  %9 = load i32, i32* @EIO, align 4
  store i32 %9, i32* %2, align 4
  br label %44

10:                                               ; preds = %1
  %11 = load i32, i32* @ETIMEDOUT, align 4
  store i32 %11, i32* %2, align 4
  br label %44

12:                                               ; preds = %1
  %13 = load i32, i32* @EWOULDBLOCK, align 4
  store i32 %13, i32* %2, align 4
  br label %44

14:                                               ; preds = %1
  %15 = load i32, i32* @EPROTO, align 4
  store i32 %15, i32* %2, align 4
  br label %44

16:                                               ; preds = %1
  %17 = load i32, i32* @EIO, align 4
  store i32 %17, i32* %2, align 4
  br label %44

18:                                               ; preds = %1
  %19 = load i32, i32* @EOVERFLOW, align 4
  store i32 %19, i32* %2, align 4
  br label %44

20:                                               ; preds = %1
  %21 = load i32, i32* @EOPNOTSUPP, align 4
  store i32 %21, i32* %2, align 4
  br label %44

22:                                               ; preds = %1
  %23 = load i32, i32* @EADDRNOTAVAIL, align 4
  store i32 %23, i32* %2, align 4
  br label %44

24:                                               ; preds = %1
  %25 = load i32, i32* @ENOMEM, align 4
  store i32 %25, i32* %2, align 4
  br label %44

26:                                               ; preds = %1
  %27 = load i32, i32* %3, align 4
  %28 = load i32, i32* @IIC_ERRNO, align 4
  %29 = and i32 %27, %28
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = load i32, i32* @EIO, align 4
  store i32 %32, i32* %2, align 4
  br label %44

33:                                               ; preds = %26
  %34 = load i32, i32* %3, align 4
  %35 = and i32 %34, -65536
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = load i32, i32* %3, align 4
  store i32 %38, i32* %2, align 4
  br label %44

39:                                               ; preds = %33
  %40 = load i32, i32* %3, align 4
  %41 = load i32, i32* @IIC_ERRNO, align 4
  %42 = xor i32 %41, -1
  %43 = and i32 %40, %42
  store i32 %43, i32* %2, align 4
  br label %44

44:                                               ; preds = %39, %37, %31, %24, %22, %20, %18, %16, %14, %12, %10, %8, %6, %5
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
