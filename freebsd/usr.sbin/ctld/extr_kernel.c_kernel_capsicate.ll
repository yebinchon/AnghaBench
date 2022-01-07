; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ctld/extr_kernel.c_kernel_capsicate.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ctld/extr_kernel.c_kernel_capsicate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CTL_ISCSI = common dso_local global i64 0, align 8
@CAP_IOCTL = common dso_local global i32 0, align 4
@ctl_fd = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"cap_rights_limit\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"cap_ioctls_limit\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"cap_enter\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"Capsicum capability mode enabled\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"Capsicum capability mode not supported\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kernel_capsicate() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [1 x i64], align 8
  %3 = getelementptr inbounds [1 x i64], [1 x i64]* %2, i64 0, i64 0
  %4 = load i64, i64* @CTL_ISCSI, align 8
  store i64 %4, i64* %3, align 8
  %5 = load i32, i32* @CAP_IOCTL, align 4
  %6 = call i32 @cap_rights_init(i32* %1, i32 %5)
  %7 = load i32, i32* @ctl_fd, align 4
  %8 = call i64 @caph_rights_limit(i32 %7, i32* %1)
  %9 = icmp slt i64 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %0
  %11 = call i32 @log_err(i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %12

12:                                               ; preds = %10, %0
  %13 = load i32, i32* @ctl_fd, align 4
  %14 = getelementptr inbounds [1 x i64], [1 x i64]* %2, i64 0, i64 0
  %15 = getelementptr inbounds [1 x i64], [1 x i64]* %2, i64 0, i64 0
  %16 = call i32 @nitems(i64* %15)
  %17 = call i64 @caph_ioctls_limit(i32 %13, i64* %14, i32 %16)
  %18 = icmp slt i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %12
  %20 = call i32 @log_err(i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %21

21:                                               ; preds = %19, %12
  %22 = call i64 (...) @caph_enter()
  %23 = icmp slt i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  %25 = call i32 @log_err(i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  br label %26

26:                                               ; preds = %24, %21
  %27 = call i64 (...) @cap_sandboxed()
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = call i32 @log_debugx(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  br label %33

31:                                               ; preds = %26
  %32 = call i32 @log_warnx(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0))
  br label %33

33:                                               ; preds = %31, %29
  ret void
}

declare dso_local i32 @cap_rights_init(i32*, i32) #1

declare dso_local i64 @caph_rights_limit(i32, i32*) #1

declare dso_local i32 @log_err(i32, i8*) #1

declare dso_local i64 @caph_ioctls_limit(i32, i64*, i32) #1

declare dso_local i32 @nitems(i64*) #1

declare dso_local i64 @caph_enter(...) #1

declare dso_local i64 @cap_sandboxed(...) #1

declare dso_local i32 @log_debugx(i8*) #1

declare dso_local i32 @log_warnx(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
