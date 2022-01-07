; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/liquidio/base/extr_lio_droq.c_lio_droq_check_hw_for_pkts.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/liquidio/base/extr_lio_droq.c_lio_droq_check_hw_for_pkts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lio_droq = type { i32, i64, i32, %struct.octeon_device* }
%struct.octeon_device = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @lio_droq_check_hw_for_pkts(%struct.lio_droq* %0) #0 {
  %2 = alloca %struct.lio_droq*, align 8
  %3 = alloca %struct.octeon_device*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.lio_droq* %0, %struct.lio_droq** %2, align 8
  %6 = load %struct.lio_droq*, %struct.lio_droq** %2, align 8
  %7 = getelementptr inbounds %struct.lio_droq, %struct.lio_droq* %6, i32 0, i32 3
  %8 = load %struct.octeon_device*, %struct.octeon_device** %7, align 8
  store %struct.octeon_device* %8, %struct.octeon_device** %3, align 8
  store i64 0, i64* %5, align 8
  %9 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %10 = load %struct.lio_droq*, %struct.lio_droq** %2, align 8
  %11 = getelementptr inbounds %struct.lio_droq, %struct.lio_droq* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = call i64 @lio_read_csr32(%struct.octeon_device* %9, i32 %12)
  store i64 %13, i64* %5, align 8
  %14 = load i64, i64* %5, align 8
  %15 = load %struct.lio_droq*, %struct.lio_droq** %2, align 8
  %16 = getelementptr inbounds %struct.lio_droq, %struct.lio_droq* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = sub nsw i64 %14, %17
  store i64 %18, i64* %4, align 8
  %19 = load i64, i64* %5, align 8
  %20 = load %struct.lio_droq*, %struct.lio_droq** %2, align 8
  %21 = getelementptr inbounds %struct.lio_droq, %struct.lio_droq* %20, i32 0, i32 1
  store i64 %19, i64* %21, align 8
  %22 = load i64, i64* %4, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %1
  %25 = load %struct.lio_droq*, %struct.lio_droq** %2, align 8
  %26 = getelementptr inbounds %struct.lio_droq, %struct.lio_droq* %25, i32 0, i32 0
  %27 = load i64, i64* %4, align 8
  %28 = call i32 @atomic_add_int(i32* %26, i64 %27)
  br label %29

29:                                               ; preds = %24, %1
  %30 = load i64, i64* %4, align 8
  ret i64 %30
}

declare dso_local i64 @lio_read_csr32(%struct.octeon_device*, i32) #1

declare dso_local i32 @atomic_add_int(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
