; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/liquidio/base/extr_lio_request_manager.c_lio_check_db_timeout.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/liquidio/base/extr_lio_request_manager.c_lio_check_db_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lio_tq = type { i32, i32, i32, %struct.octeon_device* }
%struct.octeon_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @lio_check_db_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lio_check_db_timeout(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.lio_tq*, align 8
  %6 = alloca %struct.octeon_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i8*, i8** %3, align 8
  %10 = bitcast i8* %9 to %struct.lio_tq*
  store %struct.lio_tq* %10, %struct.lio_tq** %5, align 8
  %11 = load %struct.lio_tq*, %struct.lio_tq** %5, align 8
  %12 = getelementptr inbounds %struct.lio_tq, %struct.lio_tq* %11, i32 0, i32 3
  %13 = load %struct.octeon_device*, %struct.octeon_device** %12, align 8
  store %struct.octeon_device* %13, %struct.octeon_device** %6, align 8
  %14 = load %struct.lio_tq*, %struct.lio_tq** %5, align 8
  %15 = getelementptr inbounds %struct.lio_tq, %struct.lio_tq* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %7, align 4
  store i32 10, i32* %8, align 4
  %17 = load %struct.octeon_device*, %struct.octeon_device** %6, align 8
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @__lio_check_db_timeout(%struct.octeon_device* %17, i32 %18)
  %20 = load %struct.lio_tq*, %struct.lio_tq** %5, align 8
  %21 = getelementptr inbounds %struct.lio_tq, %struct.lio_tq* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.lio_tq*, %struct.lio_tq** %5, align 8
  %24 = getelementptr inbounds %struct.lio_tq, %struct.lio_tq* %23, i32 0, i32 0
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @lio_ms_to_ticks(i32 %25)
  %27 = call i32 @taskqueue_enqueue_timeout(i32 %22, i32* %24, i32 %26)
  ret void
}

declare dso_local i32 @__lio_check_db_timeout(%struct.octeon_device*, i32) #1

declare dso_local i32 @taskqueue_enqueue_timeout(i32, i32*, i32) #1

declare dso_local i32 @lio_ms_to_ticks(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
