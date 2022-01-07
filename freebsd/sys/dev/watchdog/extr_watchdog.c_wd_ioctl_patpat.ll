; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/watchdog/extr_watchdog.c_wd_ioctl_patpat.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/watchdog/extr_watchdog.c_wd_ioctl_patpat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@WD_ACTIVE = common dso_local global i32 0, align 4
@WD_PASSIVE = common dso_local global i32 0, align 4
@WD_LASTVAL = common dso_local global i32 0, align 4
@WD_INTERVAL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENOSYS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @wd_ioctl_patpat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wd_ioctl_patpat(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  %5 = load i64, i64* %3, align 8
  %6 = inttoptr i64 %5 to i32*
  %7 = load i32, i32* %6, align 4
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @WD_ACTIVE, align 4
  %10 = load i32, i32* @WD_PASSIVE, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @WD_LASTVAL, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @WD_INTERVAL, align 4
  %15 = or i32 %13, %14
  %16 = xor i32 %15, -1
  %17 = and i32 %8, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = load i32, i32* @EINVAL, align 4
  store i32 %20, i32* %2, align 4
  br label %68

21:                                               ; preds = %1
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @WD_ACTIVE, align 4
  %24 = load i32, i32* @WD_PASSIVE, align 4
  %25 = or i32 %23, %24
  %26 = and i32 %22, %25
  %27 = load i32, i32* @WD_ACTIVE, align 4
  %28 = load i32, i32* @WD_PASSIVE, align 4
  %29 = or i32 %27, %28
  %30 = icmp eq i32 %26, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %21
  %32 = load i32, i32* @EINVAL, align 4
  store i32 %32, i32* %2, align 4
  br label %68

33:                                               ; preds = %21
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* @WD_ACTIVE, align 4
  %36 = load i32, i32* @WD_PASSIVE, align 4
  %37 = or i32 %35, %36
  %38 = and i32 %34, %37
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %52

40:                                               ; preds = %33
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* @WD_INTERVAL, align 4
  %43 = and i32 %41, %42
  %44 = icmp sgt i32 %43, 0
  br i1 %44, label %50, label %45

45:                                               ; preds = %40
  %46 = load i32, i32* %4, align 4
  %47 = load i32, i32* @WD_LASTVAL, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %45, %40
  %51 = load i32, i32* @EINVAL, align 4
  store i32 %51, i32* %2, align 4
  br label %68

52:                                               ; preds = %45, %33
  %53 = load i32, i32* %4, align 4
  %54 = load i32, i32* @WD_PASSIVE, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %52
  %58 = load i32, i32* @ENOSYS, align 4
  store i32 %58, i32* %2, align 4
  br label %68

59:                                               ; preds = %52
  %60 = load i32, i32* @WD_ACTIVE, align 4
  %61 = load i32, i32* @WD_PASSIVE, align 4
  %62 = or i32 %60, %61
  %63 = xor i32 %62, -1
  %64 = load i32, i32* %4, align 4
  %65 = and i32 %64, %63
  store i32 %65, i32* %4, align 4
  %66 = load i32, i32* %4, align 4
  %67 = call i32 @wdog_kern_pat(i32 %66)
  store i32 %67, i32* %2, align 4
  br label %68

68:                                               ; preds = %59, %57, %50, %31, %19
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare dso_local i32 @wdog_kern_pat(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
