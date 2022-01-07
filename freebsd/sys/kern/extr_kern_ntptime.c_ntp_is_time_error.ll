; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_ntptime.c_ntp_is_time_error.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_ntptime.c_ntp_is_time_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@STA_UNSYNC = common dso_local global i32 0, align 4
@STA_CLOCKERR = common dso_local global i32 0, align 4
@STA_PPSFREQ = common dso_local global i32 0, align 4
@STA_PPSTIME = common dso_local global i32 0, align 4
@STA_PPSSIGNAL = common dso_local global i32 0, align 4
@STA_PPSJITTER = common dso_local global i32 0, align 4
@STA_PPSWANDER = common dso_local global i32 0, align 4
@STA_PPSERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ntp_is_time_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ntp_is_time_error(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = load i32, i32* @STA_UNSYNC, align 4
  %6 = load i32, i32* @STA_CLOCKERR, align 4
  %7 = or i32 %5, %6
  %8 = and i32 %4, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %44, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @STA_PPSFREQ, align 4
  %13 = load i32, i32* @STA_PPSTIME, align 4
  %14 = or i32 %12, %13
  %15 = and i32 %11, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %10
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* @STA_PPSSIGNAL, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %44

22:                                               ; preds = %17, %10
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* @STA_PPSTIME, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %22
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* @STA_PPSJITTER, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %44, label %32

32:                                               ; preds = %27, %22
  %33 = load i32, i32* %3, align 4
  %34 = load i32, i32* @STA_PPSFREQ, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %32
  %38 = load i32, i32* %3, align 4
  %39 = load i32, i32* @STA_PPSWANDER, align 4
  %40 = load i32, i32* @STA_PPSERROR, align 4
  %41 = or i32 %39, %40
  %42 = and i32 %38, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %37, %27, %17, %1
  store i32 1, i32* %2, align 4
  br label %46

45:                                               ; preds = %37, %32
  store i32 0, i32* %2, align 4
  br label %46

46:                                               ; preds = %45, %44
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
