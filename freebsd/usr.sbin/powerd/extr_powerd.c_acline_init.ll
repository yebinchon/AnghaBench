; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/powerd/extr_powerd.c_acline_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/powerd/extr_powerd.c_acline_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@acline_mib_len = common dso_local global i32 0, align 4
@SRC_UNKNOWN = common dso_local global i32 0, align 4
@acline_status = common dso_local global i32 0, align 4
@acline_mode_user = common dso_local global i64 0, align 8
@ac_none = common dso_local global i64 0, align 8
@ac_acpi_devd = common dso_local global i64 0, align 8
@ac_sysctl = common dso_local global i64 0, align 8
@ACPIAC = common dso_local global i32 0, align 4
@acline_mib = common dso_local global i32 0, align 4
@acline_mode = common dso_local global i64 0, align 8
@vflag = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"using sysctl for AC line status\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"unable to determine AC line status\00", align 1
@APMDEV = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@PMUAC = common dso_local global i32 0, align 4
@ac_apm = common dso_local global i64 0, align 8
@apm_fd = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @acline_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @acline_init() #0 {
  %1 = alloca i32, align 4
  store i32 4, i32* @acline_mib_len, align 4
  %2 = load i32, i32* @SRC_UNKNOWN, align 4
  store i32 %2, i32* @acline_status, align 4
  %3 = load i64, i64* @acline_mode_user, align 8
  %4 = load i64, i64* @ac_none, align 8
  %5 = icmp eq i64 %3, %4
  br i1 %5, label %10, label %6

6:                                                ; preds = %0
  %7 = load i64, i64* @acline_mode_user, align 8
  %8 = load i64, i64* @ac_acpi_devd, align 8
  %9 = icmp eq i64 %7, %8
  br label %10

10:                                               ; preds = %6, %0
  %11 = phi i1 [ true, %0 ], [ %9, %6 ]
  %12 = zext i1 %11 to i32
  store i32 %12, i32* %1, align 4
  %13 = load i32, i32* %1, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %10
  %16 = load i64, i64* @acline_mode_user, align 8
  %17 = load i64, i64* @ac_sysctl, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %31

19:                                               ; preds = %15, %10
  %20 = load i32, i32* @ACPIAC, align 4
  %21 = load i32, i32* @acline_mib, align 4
  %22 = call i64 @sysctlnametomib(i32 %20, i32 %21, i32* @acline_mib_len)
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %19
  %25 = load i64, i64* @ac_sysctl, align 8
  store i64 %25, i64* @acline_mode, align 8
  %26 = load i64, i64* @vflag, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = call i32 @warnx(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %30

30:                                               ; preds = %28, %24
  br label %34

31:                                               ; preds = %19, %15
  %32 = call i32 @warnx(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %33 = load i64, i64* @ac_none, align 8
  store i64 %33, i64* @acline_mode, align 8
  br label %34

34:                                               ; preds = %31, %30
  ret void
}

declare dso_local i64 @sysctlnametomib(i32, i32, i32*) #1

declare dso_local i32 @warnx(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
