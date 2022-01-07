; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ctld/extr_kernel.c_kernel_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ctld/extr_kernel.c_kernel_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CTL_DEFAULT_DEV = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@ctl_fd = common dso_local global i64 0, align 8
@errno = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"ctl\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"failed to open %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kernel_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @CTL_DEFAULT_DEV, align 4
  %4 = load i32, i32* @O_RDWR, align 4
  %5 = call i64 @open(i32 %3, i32 %4)
  store i64 %5, i64* @ctl_fd, align 8
  %6 = load i64, i64* @ctl_fd, align 8
  %7 = icmp slt i64 %6, 0
  br i1 %7, label %8, label %24

8:                                                ; preds = %0
  %9 = load i32, i32* @errno, align 4
  %10 = load i32, i32* @ENOENT, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %24

12:                                               ; preds = %8
  %13 = load i32, i32* @errno, align 4
  store i32 %13, i32* %2, align 4
  %14 = call i32 @kldload(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i32 %14, i32* %1, align 4
  %15 = load i32, i32* %1, align 4
  %16 = icmp ne i32 %15, -1
  br i1 %16, label %17, label %21

17:                                               ; preds = %12
  %18 = load i32, i32* @CTL_DEFAULT_DEV, align 4
  %19 = load i32, i32* @O_RDWR, align 4
  %20 = call i64 @open(i32 %18, i32 %19)
  store i64 %20, i64* @ctl_fd, align 8
  br label %23

21:                                               ; preds = %12
  %22 = load i32, i32* %2, align 4
  store i32 %22, i32* @errno, align 4
  br label %23

23:                                               ; preds = %21, %17
  br label %24

24:                                               ; preds = %23, %8, %0
  %25 = load i64, i64* @ctl_fd, align 8
  %26 = icmp slt i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = load i32, i32* @CTL_DEFAULT_DEV, align 4
  %29 = call i32 @log_err(i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  br label %30

30:                                               ; preds = %27, %24
  ret void
}

declare dso_local i64 @open(i32, i32) #1

declare dso_local i32 @kldload(i8*) #1

declare dso_local i32 @log_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
