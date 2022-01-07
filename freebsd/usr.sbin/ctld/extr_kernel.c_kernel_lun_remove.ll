; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ctld/extr_kernel.c_kernel_lun_remove.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ctld/extr_kernel.c_kernel_lun_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lun = type { i32, i32 }
%struct.ctl_lun_req = type { i32, i32, %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@CTL_LUNREQ_RM = common dso_local global i32 0, align 4
@ctl_fd = common dso_local global i32 0, align 4
@CTL_LUN_REQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"error issuing CTL_LUN_REQ ioctl\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"LUN removal error: %s\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"LUN removal warning: %s\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"unknown LUN removal status: %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kernel_lun_remove(%struct.lun* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lun*, align 8
  %4 = alloca %struct.ctl_lun_req, align 4
  store %struct.lun* %0, %struct.lun** %3, align 8
  %5 = call i32 @bzero(%struct.ctl_lun_req* %4, i32 20)
  %6 = getelementptr inbounds %struct.ctl_lun_req, %struct.ctl_lun_req* %4, i32 0, i32 4
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.lun*, %struct.lun** %3, align 8
  %9 = getelementptr inbounds %struct.lun, %struct.lun* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @strlcpy(i32 %7, i32 %10, i32 4)
  %12 = load i32, i32* @CTL_LUNREQ_RM, align 4
  %13 = getelementptr inbounds %struct.ctl_lun_req, %struct.ctl_lun_req* %4, i32 0, i32 3
  store i32 %12, i32* %13, align 4
  %14 = load %struct.lun*, %struct.lun** %3, align 8
  %15 = getelementptr inbounds %struct.lun, %struct.lun* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = getelementptr inbounds %struct.ctl_lun_req, %struct.ctl_lun_req* %4, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  store i32 %16, i32* %19, align 4
  %20 = load i32, i32* @ctl_fd, align 4
  %21 = load i32, i32* @CTL_LUN_REQ, align 4
  %22 = call i32 @ioctl(i32 %20, i32 %21, %struct.ctl_lun_req* %4)
  %23 = icmp eq i32 %22, -1
  br i1 %23, label %24, label %26

24:                                               ; preds = %1
  %25 = call i32 @log_warn(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %43

26:                                               ; preds = %1
  %27 = getelementptr inbounds %struct.ctl_lun_req, %struct.ctl_lun_req* %4, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  switch i32 %28, label %38 [
    i32 130, label %29
    i32 128, label %33
    i32 129, label %37
  ]

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.ctl_lun_req, %struct.ctl_lun_req* %4, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @log_warnx(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  store i32 1, i32* %2, align 4
  br label %43

33:                                               ; preds = %26
  %34 = getelementptr inbounds %struct.ctl_lun_req, %struct.ctl_lun_req* %4, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @log_warnx(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %35)
  br label %42

37:                                               ; preds = %26
  br label %42

38:                                               ; preds = %26
  %39 = getelementptr inbounds %struct.ctl_lun_req, %struct.ctl_lun_req* %4, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @log_warnx(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %40)
  store i32 1, i32* %2, align 4
  br label %43

42:                                               ; preds = %37, %33
  store i32 0, i32* %2, align 4
  br label %43

43:                                               ; preds = %42, %38, %29, %24
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local i32 @bzero(%struct.ctl_lun_req*, i32) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #1

declare dso_local i32 @ioctl(i32, i32, %struct.ctl_lun_req*) #1

declare dso_local i32 @log_warn(i8*) #1

declare dso_local i32 @log_warnx(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
