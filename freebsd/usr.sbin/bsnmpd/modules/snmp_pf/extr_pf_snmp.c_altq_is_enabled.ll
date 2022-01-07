; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_pf/extr_pf_snmp.c_altq_is_enabled.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_pf/extr_pf_snmp.c_altq_is_enabled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pfioc_altq = type { i32 }

@errno = common dso_local global i64 0, align 8
@PFIOC_ALTQ_VERSION = common dso_local global i32 0, align 4
@DIOCGETALTQS = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i64 0, align 8
@LOG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"No ALTQ support in kernel\0AALTQ related functions disabled\0A\00", align 1
@LOG_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"DIOCGETALTQS returned an error: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @altq_is_enabled to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @altq_is_enabled(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.pfioc_altq, align 4
  store i32 %0, i32* %3, align 4
  store i64 0, i64* @errno, align 8
  %5 = load i32, i32* @PFIOC_ALTQ_VERSION, align 4
  %6 = getelementptr inbounds %struct.pfioc_altq, %struct.pfioc_altq* %4, i32 0, i32 0
  store i32 %5, i32* %6, align 4
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @DIOCGETALTQS, align 4
  %9 = call i64 @ioctl(i32 %7, i32 %8, %struct.pfioc_altq* %4)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %24

11:                                               ; preds = %1
  %12 = load i64, i64* @errno, align 8
  %13 = load i64, i64* @ENODEV, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %11
  %16 = load i32, i32* @LOG_INFO, align 4
  %17 = call i32 (i32, i8*, ...) @syslog(i32 %16, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %25

18:                                               ; preds = %11
  %19 = load i32, i32* @LOG_ERR, align 4
  %20 = load i64, i64* @errno, align 8
  %21 = call i32 @strerror(i64 %20)
  %22 = call i32 (i32, i8*, ...) @syslog(i32 %19, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %21)
  br label %23

23:                                               ; preds = %18
  store i32 -1, i32* %2, align 4
  br label %25

24:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %25

25:                                               ; preds = %24, %23, %15
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

declare dso_local i64 @ioctl(i32, i32, %struct.pfioc_altq*) #1

declare dso_local i32 @syslog(i32, i8*, ...) #1

declare dso_local i32 @strerror(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
