; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/smartpqi/extr_smartpqi_misc.c_os_get_time.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/smartpqi/extr_smartpqi_misc.c_os_get_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bmic_host_wellness_time = type { i8*, i8*, i8*, i8*, i64, i8*, i8*, i8* }
%struct.timespec = type { i32 }
%struct.clocktime = type { i32, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @os_get_time(%struct.bmic_host_wellness_time* %0) #0 {
  %2 = alloca %struct.bmic_host_wellness_time*, align 8
  %3 = alloca %struct.timespec, align 4
  %4 = alloca %struct.clocktime, align 4
  store %struct.bmic_host_wellness_time* %0, %struct.bmic_host_wellness_time** %2, align 8
  %5 = call i32 @getnanotime(%struct.timespec* %3)
  %6 = call i32 @clock_ts_to_ct(%struct.timespec* %3, %struct.clocktime* %4)
  %7 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %4, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i64 @bin2bcd(i32 %8)
  %10 = inttoptr i64 %9 to i8*
  %11 = load %struct.bmic_host_wellness_time*, %struct.bmic_host_wellness_time** %2, align 8
  %12 = getelementptr inbounds %struct.bmic_host_wellness_time, %struct.bmic_host_wellness_time* %11, i32 0, i32 7
  store i8* %10, i8** %12, align 8
  %13 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %4, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @bin2bcd(i32 %14)
  %16 = inttoptr i64 %15 to i8*
  %17 = load %struct.bmic_host_wellness_time*, %struct.bmic_host_wellness_time** %2, align 8
  %18 = getelementptr inbounds %struct.bmic_host_wellness_time, %struct.bmic_host_wellness_time* %17, i32 0, i32 6
  store i8* %16, i8** %18, align 8
  %19 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %4, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @bin2bcd(i32 %20)
  %22 = inttoptr i64 %21 to i8*
  %23 = load %struct.bmic_host_wellness_time*, %struct.bmic_host_wellness_time** %2, align 8
  %24 = getelementptr inbounds %struct.bmic_host_wellness_time, %struct.bmic_host_wellness_time* %23, i32 0, i32 5
  store i8* %22, i8** %24, align 8
  %25 = load %struct.bmic_host_wellness_time*, %struct.bmic_host_wellness_time** %2, align 8
  %26 = getelementptr inbounds %struct.bmic_host_wellness_time, %struct.bmic_host_wellness_time* %25, i32 0, i32 4
  store i64 0, i64* %26, align 8
  %27 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %4, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @bin2bcd(i32 %28)
  %30 = inttoptr i64 %29 to i8*
  %31 = load %struct.bmic_host_wellness_time*, %struct.bmic_host_wellness_time** %2, align 8
  %32 = getelementptr inbounds %struct.bmic_host_wellness_time, %struct.bmic_host_wellness_time* %31, i32 0, i32 3
  store i8* %30, i8** %32, align 8
  %33 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %4, i32 0, i32 4
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @bin2bcd(i32 %34)
  %36 = inttoptr i64 %35 to i8*
  %37 = load %struct.bmic_host_wellness_time*, %struct.bmic_host_wellness_time** %2, align 8
  %38 = getelementptr inbounds %struct.bmic_host_wellness_time, %struct.bmic_host_wellness_time* %37, i32 0, i32 2
  store i8* %36, i8** %38, align 8
  %39 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %4, i32 0, i32 5
  %40 = load i32, i32* %39, align 4
  %41 = sdiv i32 %40, 100
  %42 = call i64 @bin2bcd(i32 %41)
  %43 = inttoptr i64 %42 to i8*
  %44 = load %struct.bmic_host_wellness_time*, %struct.bmic_host_wellness_time** %2, align 8
  %45 = getelementptr inbounds %struct.bmic_host_wellness_time, %struct.bmic_host_wellness_time* %44, i32 0, i32 1
  store i8* %43, i8** %45, align 8
  %46 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %4, i32 0, i32 5
  %47 = load i32, i32* %46, align 4
  %48 = srem i32 %47, 100
  %49 = call i64 @bin2bcd(i32 %48)
  %50 = inttoptr i64 %49 to i8*
  %51 = load %struct.bmic_host_wellness_time*, %struct.bmic_host_wellness_time** %2, align 8
  %52 = getelementptr inbounds %struct.bmic_host_wellness_time, %struct.bmic_host_wellness_time* %51, i32 0, i32 0
  store i8* %50, i8** %52, align 8
  ret void
}

declare dso_local i32 @getnanotime(%struct.timespec*) #1

declare dso_local i32 @clock_ts_to_ct(%struct.timespec*, %struct.clocktime*) #1

declare dso_local i64 @bin2bcd(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
