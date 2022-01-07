; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/efidev/extr_efirtc.c_efirtc_settime.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/efidev/extr_efirtc.c_efirtc_settime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i32 }
%struct.clocktime = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.efi_tm = type { i32, i32, i32, i32, i32, i32, i32 }

@efirtc_zeroes_subseconds = common dso_local global i32 0, align 4
@efirtc_resadj = common dso_local global i32 0, align 4
@CLOCK_DBG_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.timespec*)* @efirtc_settime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @efirtc_settime(i32 %0, %struct.timespec* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.timespec*, align 8
  %5 = alloca %struct.clocktime, align 4
  %6 = alloca %struct.efi_tm, align 4
  store i32 %0, i32* %3, align 4
  store %struct.timespec* %1, %struct.timespec** %4, align 8
  %7 = call i64 (...) @utc_offset()
  %8 = load %struct.timespec*, %struct.timespec** %4, align 8
  %9 = getelementptr inbounds %struct.timespec, %struct.timespec* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = sext i32 %10 to i64
  %12 = sub nsw i64 %11, %7
  %13 = trunc i64 %12 to i32
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* @efirtc_zeroes_subseconds, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %2
  %17 = load %struct.timespec*, %struct.timespec** %4, align 8
  %18 = load %struct.timespec*, %struct.timespec** %4, align 8
  %19 = call i32 @timespecadd(%struct.timespec* %17, i32* @efirtc_resadj, %struct.timespec* %18)
  br label %20

20:                                               ; preds = %16, %2
  %21 = load %struct.timespec*, %struct.timespec** %4, align 8
  %22 = call i32 @clock_ts_to_ct(%struct.timespec* %21, %struct.clocktime* %5)
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* @CLOCK_DBG_WRITE, align 4
  %25 = call i32 @clock_dbgprint_ct(i32 %23, i32 %24, %struct.clocktime* %5)
  %26 = call i32 @bzero(%struct.efi_tm* %6, i32 28)
  %27 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %5, i32 0, i32 6
  %28 = load i32, i32* %27, align 4
  %29 = getelementptr inbounds %struct.efi_tm, %struct.efi_tm* %6, i32 0, i32 6
  store i32 %28, i32* %29, align 4
  %30 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %5, i32 0, i32 5
  %31 = load i32, i32* %30, align 4
  %32 = getelementptr inbounds %struct.efi_tm, %struct.efi_tm* %6, i32 0, i32 5
  store i32 %31, i32* %32, align 4
  %33 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %5, i32 0, i32 4
  %34 = load i32, i32* %33, align 4
  %35 = getelementptr inbounds %struct.efi_tm, %struct.efi_tm* %6, i32 0, i32 4
  store i32 %34, i32* %35, align 4
  %36 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %5, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = getelementptr inbounds %struct.efi_tm, %struct.efi_tm* %6, i32 0, i32 3
  store i32 %37, i32* %38, align 4
  %39 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %5, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = getelementptr inbounds %struct.efi_tm, %struct.efi_tm* %6, i32 0, i32 2
  store i32 %40, i32* %41, align 4
  %42 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %5, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = getelementptr inbounds %struct.efi_tm, %struct.efi_tm* %6, i32 0, i32 1
  store i32 %43, i32* %44, align 4
  %45 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %5, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = getelementptr inbounds %struct.efi_tm, %struct.efi_tm* %6, i32 0, i32 0
  store i32 %46, i32* %47, align 4
  %48 = call i32 @efi_set_time(%struct.efi_tm* %6)
  ret i32 %48
}

declare dso_local i64 @utc_offset(...) #1

declare dso_local i32 @timespecadd(%struct.timespec*, i32*, %struct.timespec*) #1

declare dso_local i32 @clock_ts_to_ct(%struct.timespec*, %struct.clocktime*) #1

declare dso_local i32 @clock_dbgprint_ct(i32, i32, %struct.clocktime*) #1

declare dso_local i32 @bzero(%struct.efi_tm*, i32) #1

declare dso_local i32 @efi_set_time(%struct.efi_tm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
