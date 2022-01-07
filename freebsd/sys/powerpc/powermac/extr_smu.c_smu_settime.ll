; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/powermac/extr_smu.c_smu_settime.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/powermac/extr_smu.c_smu_settime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smu_cmd = type { i32, i8**, i32 }
%struct.timespec = type { i32 }
%struct.clocktime = type { i64, i64, i64, i64, i64, i64, i64 }

@smu_settime.cmd = internal global %struct.smu_cmd zeroinitializer, align 8
@SMU_RTC = common dso_local global i32 0, align 4
@SMU_RTC_SET = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.timespec*)* @smu_settime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smu_settime(i32 %0, %struct.timespec* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.timespec*, align 8
  %5 = alloca %struct.clocktime, align 8
  store i32 %0, i32* %3, align 4
  store %struct.timespec* %1, %struct.timespec** %4, align 8
  %6 = load i32, i32* @SMU_RTC, align 4
  store i32 %6, i32* getelementptr inbounds (%struct.smu_cmd, %struct.smu_cmd* @smu_settime.cmd, i32 0, i32 2), align 8
  store i32 8, i32* getelementptr inbounds (%struct.smu_cmd, %struct.smu_cmd* @smu_settime.cmd, i32 0, i32 0), align 8
  %7 = load i8*, i8** @SMU_RTC_SET, align 8
  %8 = load i8**, i8*** getelementptr inbounds (%struct.smu_cmd, %struct.smu_cmd* @smu_settime.cmd, i32 0, i32 1), align 8
  %9 = getelementptr inbounds i8*, i8** %8, i64 0
  store i8* %7, i8** %9, align 8
  %10 = load %struct.timespec*, %struct.timespec** %4, align 8
  %11 = call i32 @clock_ts_to_ct(%struct.timespec* %10, %struct.clocktime* %5)
  %12 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %5, i32 0, i32 6
  %13 = load i64, i64* %12, align 8
  %14 = call i8* @bin2bcd(i64 %13)
  %15 = load i8**, i8*** getelementptr inbounds (%struct.smu_cmd, %struct.smu_cmd* @smu_settime.cmd, i32 0, i32 1), align 8
  %16 = getelementptr inbounds i8*, i8** %15, i64 1
  store i8* %14, i8** %16, align 8
  %17 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %5, i32 0, i32 5
  %18 = load i64, i64* %17, align 8
  %19 = call i8* @bin2bcd(i64 %18)
  %20 = load i8**, i8*** getelementptr inbounds (%struct.smu_cmd, %struct.smu_cmd* @smu_settime.cmd, i32 0, i32 1), align 8
  %21 = getelementptr inbounds i8*, i8** %20, i64 2
  store i8* %19, i8** %21, align 8
  %22 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %5, i32 0, i32 4
  %23 = load i64, i64* %22, align 8
  %24 = call i8* @bin2bcd(i64 %23)
  %25 = load i8**, i8*** getelementptr inbounds (%struct.smu_cmd, %struct.smu_cmd* @smu_settime.cmd, i32 0, i32 1), align 8
  %26 = getelementptr inbounds i8*, i8** %25, i64 3
  store i8* %24, i8** %26, align 8
  %27 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %5, i32 0, i32 3
  %28 = load i64, i64* %27, align 8
  %29 = call i8* @bin2bcd(i64 %28)
  %30 = load i8**, i8*** getelementptr inbounds (%struct.smu_cmd, %struct.smu_cmd* @smu_settime.cmd, i32 0, i32 1), align 8
  %31 = getelementptr inbounds i8*, i8** %30, i64 4
  store i8* %29, i8** %31, align 8
  %32 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %5, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = call i8* @bin2bcd(i64 %33)
  %35 = load i8**, i8*** getelementptr inbounds (%struct.smu_cmd, %struct.smu_cmd* @smu_settime.cmd, i32 0, i32 1), align 8
  %36 = getelementptr inbounds i8*, i8** %35, i64 5
  store i8* %34, i8** %36, align 8
  %37 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %5, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = call i8* @bin2bcd(i64 %38)
  %40 = load i8**, i8*** getelementptr inbounds (%struct.smu_cmd, %struct.smu_cmd* @smu_settime.cmd, i32 0, i32 1), align 8
  %41 = getelementptr inbounds i8*, i8** %40, i64 6
  store i8* %39, i8** %41, align 8
  %42 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %5, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = sub nsw i64 %43, 2000
  %45 = call i8* @bin2bcd(i64 %44)
  %46 = load i8**, i8*** getelementptr inbounds (%struct.smu_cmd, %struct.smu_cmd* @smu_settime.cmd, i32 0, i32 1), align 8
  %47 = getelementptr inbounds i8*, i8** %46, i64 7
  store i8* %45, i8** %47, align 8
  %48 = load i32, i32* %3, align 4
  %49 = call i32 @smu_run_cmd(i32 %48, %struct.smu_cmd* @smu_settime.cmd, i32 0)
  ret i32 %49
}

declare dso_local i32 @clock_ts_to_ct(%struct.timespec*, %struct.clocktime*) #1

declare dso_local i8* @bin2bcd(i64) #1

declare dso_local i32 @smu_run_cmd(i32, %struct.smu_cmd*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
