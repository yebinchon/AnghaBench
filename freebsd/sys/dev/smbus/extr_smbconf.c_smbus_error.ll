; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/smbus/extr_smbconf.c_smbus_error.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/smbus/extr_smbconf.c_smbus_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SMB_ENOERR = common dso_local global i32 0, align 4
@SMB_ENOTSUPP = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@SMB_ENOACK = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@SMB_ETIMEOUT = common dso_local global i32 0, align 4
@EWOULDBLOCK = common dso_local global i32 0, align 4
@SMB_EBUSY = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@SMB_EABORT = common dso_local global i32 0, align 4
@SMB_EBUSERR = common dso_local global i32 0, align 4
@SMB_ECOLLI = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smbus_error(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @SMB_ENOERR, align 4
  %7 = icmp eq i32 %5, %6
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %56

9:                                                ; preds = %1
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @SMB_ENOTSUPP, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %9
  %15 = load i32, i32* @ENODEV, align 4
  store i32 %15, i32* %4, align 4
  br label %54

16:                                               ; preds = %9
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @SMB_ENOACK, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %16
  %22 = load i32, i32* @ENXIO, align 4
  store i32 %22, i32* %4, align 4
  br label %53

23:                                               ; preds = %16
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* @SMB_ETIMEOUT, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = load i32, i32* @EWOULDBLOCK, align 4
  store i32 %29, i32* %4, align 4
  br label %52

30:                                               ; preds = %23
  %31 = load i32, i32* %3, align 4
  %32 = load i32, i32* @SMB_EBUSY, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %30
  %36 = load i32, i32* @EBUSY, align 4
  store i32 %36, i32* %4, align 4
  br label %51

37:                                               ; preds = %30
  %38 = load i32, i32* %3, align 4
  %39 = load i32, i32* @SMB_EABORT, align 4
  %40 = load i32, i32* @SMB_EBUSERR, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @SMB_ECOLLI, align 4
  %43 = or i32 %41, %42
  %44 = and i32 %38, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %37
  %47 = load i32, i32* @EIO, align 4
  store i32 %47, i32* %4, align 4
  br label %50

48:                                               ; preds = %37
  %49 = load i32, i32* @EINVAL, align 4
  store i32 %49, i32* %4, align 4
  br label %50

50:                                               ; preds = %48, %46
  br label %51

51:                                               ; preds = %50, %35
  br label %52

52:                                               ; preds = %51, %28
  br label %53

53:                                               ; preds = %52, %21
  br label %54

54:                                               ; preds = %53, %14
  %55 = load i32, i32* %4, align 4
  store i32 %55, i32* %2, align 4
  br label %56

56:                                               ; preds = %54, %8
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
