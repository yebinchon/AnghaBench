; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/powermac/extr_smu.c_smu_gettime.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/powermac/extr_smu.c_smu_gettime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i32 }
%struct.smu_cmd = type { i32, i32*, i32 }
%struct.clocktime = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i64 }

@SMU_RTC = common dso_local global i32 0, align 4
@SMU_RTC_GET = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.timespec*)* @smu_gettime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smu_gettime(i32 %0, %struct.timespec* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.timespec*, align 8
  %6 = alloca %struct.smu_cmd, align 8
  %7 = alloca %struct.clocktime, align 8
  store i32 %0, i32* %4, align 4
  store %struct.timespec* %1, %struct.timespec** %5, align 8
  %8 = load i32, i32* @SMU_RTC, align 4
  %9 = getelementptr inbounds %struct.smu_cmd, %struct.smu_cmd* %6, i32 0, i32 2
  store i32 %8, i32* %9, align 8
  %10 = getelementptr inbounds %struct.smu_cmd, %struct.smu_cmd* %6, i32 0, i32 0
  store i32 1, i32* %10, align 8
  %11 = load i32, i32* @SMU_RTC_GET, align 4
  %12 = getelementptr inbounds %struct.smu_cmd, %struct.smu_cmd* %6, i32 0, i32 1
  %13 = load i32*, i32** %12, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 0
  store i32 %11, i32* %14, align 4
  %15 = load i32, i32* %4, align 4
  %16 = call i64 @smu_run_cmd(i32 %15, %struct.smu_cmd* %6, i32 1)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* @ENXIO, align 4
  store i32 %19, i32* %3, align 4
  br label %67

20:                                               ; preds = %2
  %21 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %7, i32 0, i32 7
  store i64 0, i64* %21, align 8
  %22 = getelementptr inbounds %struct.smu_cmd, %struct.smu_cmd* %6, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  %25 = load i32, i32* %24, align 4
  %26 = call i8* @bcd2bin(i32 %25)
  %27 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %7, i32 0, i32 6
  store i8* %26, i8** %27, align 8
  %28 = getelementptr inbounds %struct.smu_cmd, %struct.smu_cmd* %6, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 1
  %31 = load i32, i32* %30, align 4
  %32 = call i8* @bcd2bin(i32 %31)
  %33 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %7, i32 0, i32 5
  store i8* %32, i8** %33, align 8
  %34 = getelementptr inbounds %struct.smu_cmd, %struct.smu_cmd* %6, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 2
  %37 = load i32, i32* %36, align 4
  %38 = call i8* @bcd2bin(i32 %37)
  %39 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %7, i32 0, i32 4
  store i8* %38, i8** %39, align 8
  %40 = getelementptr inbounds %struct.smu_cmd, %struct.smu_cmd* %6, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 3
  %43 = load i32, i32* %42, align 4
  %44 = call i8* @bcd2bin(i32 %43)
  %45 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %7, i32 0, i32 3
  store i8* %44, i8** %45, align 8
  %46 = getelementptr inbounds %struct.smu_cmd, %struct.smu_cmd* %6, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 4
  %49 = load i32, i32* %48, align 4
  %50 = call i8* @bcd2bin(i32 %49)
  %51 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %7, i32 0, i32 2
  store i8* %50, i8** %51, align 8
  %52 = getelementptr inbounds %struct.smu_cmd, %struct.smu_cmd* %6, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 5
  %55 = load i32, i32* %54, align 4
  %56 = call i8* @bcd2bin(i32 %55)
  %57 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %7, i32 0, i32 1
  store i8* %56, i8** %57, align 8
  %58 = getelementptr inbounds %struct.smu_cmd, %struct.smu_cmd* %6, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 6
  %61 = load i32, i32* %60, align 4
  %62 = call i8* @bcd2bin(i32 %61)
  %63 = getelementptr i8, i8* %62, i64 2000
  %64 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %7, i32 0, i32 0
  store i8* %63, i8** %64, align 8
  %65 = load %struct.timespec*, %struct.timespec** %5, align 8
  %66 = call i32 @clock_ct_to_ts(%struct.clocktime* %7, %struct.timespec* %65)
  store i32 %66, i32* %3, align 4
  br label %67

67:                                               ; preds = %20, %18
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local i64 @smu_run_cmd(i32, %struct.smu_cmd*, i32) #1

declare dso_local i8* @bcd2bin(i32) #1

declare dso_local i32 @clock_ct_to_ts(%struct.clocktime*, %struct.timespec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
