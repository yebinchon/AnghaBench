; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/liquidio/extr_lio_main.c_lio_check_rx_oom_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/liquidio/extr_lio_main.c_lio_check_rx_oom_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lio = type { %struct.TYPE_6__, %struct.octeon_device* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.octeon_device = type { i32, %struct.lio_droq** }
%struct.lio_droq = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lio*)* @lio_check_rx_oom_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lio_check_rx_oom_status(%struct.lio* %0) #0 {
  %2 = alloca %struct.lio*, align 8
  %3 = alloca %struct.lio_droq*, align 8
  %4 = alloca %struct.octeon_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.lio* %0, %struct.lio** %2, align 8
  %8 = load %struct.lio*, %struct.lio** %2, align 8
  %9 = getelementptr inbounds %struct.lio, %struct.lio* %8, i32 0, i32 1
  %10 = load %struct.octeon_device*, %struct.octeon_device** %9, align 8
  store %struct.octeon_device* %10, %struct.octeon_device** %4, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %11

11:                                               ; preds = %64, %1
  %12 = load i32, i32* %6, align 4
  %13 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %14 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %67

17:                                               ; preds = %11
  %18 = load %struct.lio*, %struct.lio** %2, align 8
  %19 = getelementptr inbounds %struct.lio, %struct.lio* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %22 = load i32, i32* %6, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %7, align 4
  %28 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %29 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %28, i32 0, i32 1
  %30 = load %struct.lio_droq**, %struct.lio_droq*** %29, align 8
  %31 = load i32, i32* %7, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.lio_droq*, %struct.lio_droq** %30, i64 %32
  %34 = load %struct.lio_droq*, %struct.lio_droq** %33, align 8
  store %struct.lio_droq* %34, %struct.lio_droq** %3, align 8
  %35 = load %struct.lio_droq*, %struct.lio_droq** %3, align 8
  %36 = icmp eq %struct.lio_droq* %35, null
  br i1 %36, label %37, label %38

37:                                               ; preds = %17
  br label %64

38:                                               ; preds = %17
  %39 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %40 = load %struct.lio_droq*, %struct.lio_droq** %3, align 8
  %41 = getelementptr inbounds %struct.lio_droq, %struct.lio_droq* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @lio_read_csr32(%struct.octeon_device* %39, i32 %42)
  %44 = icmp sle i32 %43, 64
  br i1 %44, label %45, label %63

45:                                               ; preds = %38
  %46 = load %struct.lio_droq*, %struct.lio_droq** %3, align 8
  %47 = getelementptr inbounds %struct.lio_droq, %struct.lio_droq* %46, i32 0, i32 0
  %48 = call i32 @mtx_lock(i32* %47)
  %49 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %50 = load %struct.lio_droq*, %struct.lio_droq** %3, align 8
  %51 = call i32 @lio_droq_refill(%struct.octeon_device* %49, %struct.lio_droq* %50)
  store i32 %51, i32* %5, align 4
  %52 = call i32 (...) @wmb()
  %53 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %54 = load %struct.lio_droq*, %struct.lio_droq** %3, align 8
  %55 = getelementptr inbounds %struct.lio_droq, %struct.lio_droq* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %5, align 4
  %58 = call i32 @lio_write_csr32(%struct.octeon_device* %53, i32 %56, i32 %57)
  %59 = call i32 (...) @__compiler_membar()
  %60 = load %struct.lio_droq*, %struct.lio_droq** %3, align 8
  %61 = getelementptr inbounds %struct.lio_droq, %struct.lio_droq* %60, i32 0, i32 0
  %62 = call i32 @mtx_unlock(i32* %61)
  br label %63

63:                                               ; preds = %45, %38
  br label %64

64:                                               ; preds = %63, %37
  %65 = load i32, i32* %6, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %6, align 4
  br label %11

67:                                               ; preds = %11
  ret void
}

declare dso_local i32 @lio_read_csr32(%struct.octeon_device*, i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @lio_droq_refill(%struct.octeon_device*, %struct.lio_droq*) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @lio_write_csr32(%struct.octeon_device*, i32, i32) #1

declare dso_local i32 @__compiler_membar(...) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
