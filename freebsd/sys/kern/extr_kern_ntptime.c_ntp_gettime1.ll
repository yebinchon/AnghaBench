; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_ntptime.c_ntp_gettime1.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_ntptime.c_ntp_gettime1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ntptimeval = type { i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.timespec = type { i32, i32 }

@time_maxerror = common dso_local global i32 0, align 4
@time_esterror = common dso_local global i32 0, align 4
@time_tai = common dso_local global i32 0, align 4
@time_state = common dso_local global i32 0, align 4
@time_status = common dso_local global i32 0, align 4
@TIME_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ntptimeval*)* @ntp_gettime1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ntp_gettime1(%struct.ntptimeval* %0) #0 {
  %2 = alloca %struct.ntptimeval*, align 8
  %3 = alloca %struct.timespec, align 4
  store %struct.ntptimeval* %0, %struct.ntptimeval** %2, align 8
  %4 = call i32 (...) @NTP_ASSERT_LOCKED()
  %5 = call i32 @nanotime(%struct.timespec* %3)
  %6 = getelementptr inbounds %struct.timespec, %struct.timespec* %3, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.ntptimeval*, %struct.ntptimeval** %2, align 8
  %9 = getelementptr inbounds %struct.ntptimeval, %struct.ntptimeval* %8, i32 0, i32 4
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 1
  store i32 %7, i32* %10, align 4
  %11 = getelementptr inbounds %struct.timespec, %struct.timespec* %3, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.ntptimeval*, %struct.ntptimeval** %2, align 8
  %14 = getelementptr inbounds %struct.ntptimeval, %struct.ntptimeval* %13, i32 0, i32 4
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  store i32 %12, i32* %15, align 4
  %16 = load i32, i32* @time_maxerror, align 4
  %17 = load %struct.ntptimeval*, %struct.ntptimeval** %2, align 8
  %18 = getelementptr inbounds %struct.ntptimeval, %struct.ntptimeval* %17, i32 0, i32 3
  store i32 %16, i32* %18, align 4
  %19 = load i32, i32* @time_esterror, align 4
  %20 = load %struct.ntptimeval*, %struct.ntptimeval** %2, align 8
  %21 = getelementptr inbounds %struct.ntptimeval, %struct.ntptimeval* %20, i32 0, i32 2
  store i32 %19, i32* %21, align 4
  %22 = load i32, i32* @time_tai, align 4
  %23 = load %struct.ntptimeval*, %struct.ntptimeval** %2, align 8
  %24 = getelementptr inbounds %struct.ntptimeval, %struct.ntptimeval* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  %25 = load i32, i32* @time_state, align 4
  %26 = load %struct.ntptimeval*, %struct.ntptimeval** %2, align 8
  %27 = getelementptr inbounds %struct.ntptimeval, %struct.ntptimeval* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* @time_status, align 4
  %29 = call i64 @ntp_is_time_error(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %1
  %32 = load i32, i32* @TIME_ERROR, align 4
  %33 = load %struct.ntptimeval*, %struct.ntptimeval** %2, align 8
  %34 = getelementptr inbounds %struct.ntptimeval, %struct.ntptimeval* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  br label %35

35:                                               ; preds = %31, %1
  ret void
}

declare dso_local i32 @NTP_ASSERT_LOCKED(...) #1

declare dso_local i32 @nanotime(%struct.timespec*) #1

declare dso_local i64 @ntp_is_time_error(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
