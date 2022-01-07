; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/liquidio/base/extr_lio_device.c_lio_enable_irq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/liquidio/base/extr_lio_device.c_lio_enable_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lio_droq = type { i32, i32, i64, i32, %struct.octeon_device* }
%struct.octeon_device = type { i32 }
%struct.lio_instr_queue = type { i32, i32, i64, %struct.octeon_device* }

@LIO_CN23XX_INTR_RESEND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lio_enable_irq(%struct.lio_droq* %0, %struct.lio_instr_queue* %1) #0 {
  %3 = alloca %struct.lio_droq*, align 8
  %4 = alloca %struct.lio_instr_queue*, align 8
  %5 = alloca %struct.octeon_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.lio_droq* %0, %struct.lio_droq** %3, align 8
  store %struct.lio_instr_queue* %1, %struct.lio_instr_queue** %4, align 8
  store %struct.octeon_device* null, %struct.octeon_device** %5, align 8
  %8 = load %struct.lio_droq*, %struct.lio_droq** %3, align 8
  %9 = icmp ne %struct.lio_droq* %8, null
  br i1 %9, label %10, label %37

10:                                               ; preds = %2
  %11 = load %struct.lio_droq*, %struct.lio_droq** %3, align 8
  %12 = getelementptr inbounds %struct.lio_droq, %struct.lio_droq* %11, i32 0, i32 4
  %13 = load %struct.octeon_device*, %struct.octeon_device** %12, align 8
  store %struct.octeon_device* %13, %struct.octeon_device** %5, align 8
  %14 = load %struct.lio_droq*, %struct.lio_droq** %3, align 8
  %15 = getelementptr inbounds %struct.lio_droq, %struct.lio_droq* %14, i32 0, i32 3
  %16 = call i64 @atomic_load_acq_int(i32* %15)
  store i64 %16, i64* %7, align 8
  %17 = load %struct.lio_droq*, %struct.lio_droq** %3, align 8
  %18 = getelementptr inbounds %struct.lio_droq, %struct.lio_droq* %17, i32 0, i32 1
  %19 = call i32 @mtx_lock(i32* %18)
  %20 = load %struct.octeon_device*, %struct.octeon_device** %5, align 8
  %21 = load %struct.lio_droq*, %struct.lio_droq** %3, align 8
  %22 = getelementptr inbounds %struct.lio_droq, %struct.lio_droq* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.lio_droq*, %struct.lio_droq** %3, align 8
  %25 = getelementptr inbounds %struct.lio_droq, %struct.lio_droq* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* %7, align 8
  %28 = sub nsw i64 %26, %27
  %29 = call i32 @lio_write_csr32(%struct.octeon_device* %20, i32 %23, i64 %28)
  %30 = load i64, i64* %7, align 8
  %31 = load %struct.lio_droq*, %struct.lio_droq** %3, align 8
  %32 = getelementptr inbounds %struct.lio_droq, %struct.lio_droq* %31, i32 0, i32 2
  store i64 %30, i64* %32, align 8
  %33 = call i32 (...) @__compiler_membar()
  %34 = load %struct.lio_droq*, %struct.lio_droq** %3, align 8
  %35 = getelementptr inbounds %struct.lio_droq, %struct.lio_droq* %34, i32 0, i32 1
  %36 = call i32 @mtx_unlock(i32* %35)
  br label %37

37:                                               ; preds = %10, %2
  %38 = load %struct.lio_instr_queue*, %struct.lio_instr_queue** %4, align 8
  %39 = icmp ne %struct.lio_instr_queue* %38, null
  br i1 %39, label %40, label %61

40:                                               ; preds = %37
  %41 = load %struct.lio_instr_queue*, %struct.lio_instr_queue** %4, align 8
  %42 = getelementptr inbounds %struct.lio_instr_queue, %struct.lio_instr_queue* %41, i32 0, i32 3
  %43 = load %struct.octeon_device*, %struct.octeon_device** %42, align 8
  store %struct.octeon_device* %43, %struct.octeon_device** %5, align 8
  %44 = load %struct.lio_instr_queue*, %struct.lio_instr_queue** %4, align 8
  %45 = getelementptr inbounds %struct.lio_instr_queue, %struct.lio_instr_queue* %44, i32 0, i32 1
  %46 = call i32 @mtx_lock(i32* %45)
  %47 = load %struct.octeon_device*, %struct.octeon_device** %5, align 8
  %48 = load %struct.lio_instr_queue*, %struct.lio_instr_queue** %4, align 8
  %49 = getelementptr inbounds %struct.lio_instr_queue, %struct.lio_instr_queue* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.lio_instr_queue*, %struct.lio_instr_queue** %4, align 8
  %52 = getelementptr inbounds %struct.lio_instr_queue, %struct.lio_instr_queue* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = call i32 @lio_write_csr32(%struct.octeon_device* %47, i32 %50, i64 %53)
  %55 = load %struct.lio_instr_queue*, %struct.lio_instr_queue** %4, align 8
  %56 = getelementptr inbounds %struct.lio_instr_queue, %struct.lio_instr_queue* %55, i32 0, i32 2
  store i64 0, i64* %56, align 8
  %57 = call i32 (...) @__compiler_membar()
  %58 = load %struct.lio_instr_queue*, %struct.lio_instr_queue** %4, align 8
  %59 = getelementptr inbounds %struct.lio_instr_queue, %struct.lio_instr_queue* %58, i32 0, i32 1
  %60 = call i32 @mtx_unlock(i32* %59)
  br label %61

61:                                               ; preds = %40, %37
  %62 = load %struct.octeon_device*, %struct.octeon_device** %5, align 8
  %63 = icmp ne %struct.octeon_device* %62, null
  br i1 %63, label %64, label %101

64:                                               ; preds = %61
  %65 = load %struct.octeon_device*, %struct.octeon_device** %5, align 8
  %66 = call i64 @LIO_CN23XX_PF(%struct.octeon_device* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %101

68:                                               ; preds = %64
  %69 = load %struct.lio_droq*, %struct.lio_droq** %3, align 8
  %70 = icmp ne %struct.lio_droq* %69, null
  br i1 %70, label %71, label %78

71:                                               ; preds = %68
  %72 = load %struct.octeon_device*, %struct.octeon_device** %5, align 8
  %73 = load %struct.lio_droq*, %struct.lio_droq** %3, align 8
  %74 = getelementptr inbounds %struct.lio_droq, %struct.lio_droq* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @LIO_CN23XX_INTR_RESEND, align 4
  %77 = call i32 @lio_write_csr64(%struct.octeon_device* %72, i32 %75, i32 %76)
  br label %100

78:                                               ; preds = %68
  %79 = load %struct.lio_instr_queue*, %struct.lio_instr_queue** %4, align 8
  %80 = icmp ne %struct.lio_instr_queue* %79, null
  br i1 %80, label %81, label %99

81:                                               ; preds = %78
  %82 = load %struct.octeon_device*, %struct.octeon_device** %5, align 8
  %83 = load %struct.lio_instr_queue*, %struct.lio_instr_queue** %4, align 8
  %84 = getelementptr inbounds %struct.lio_instr_queue, %struct.lio_instr_queue* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @lio_read_csr64(%struct.octeon_device* %82, i32 %85)
  store i32 %86, i32* %6, align 4
  %87 = load %struct.octeon_device*, %struct.octeon_device** %5, align 8
  %88 = load %struct.lio_instr_queue*, %struct.lio_instr_queue** %4, align 8
  %89 = getelementptr inbounds %struct.lio_instr_queue, %struct.lio_instr_queue* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* %6, align 4
  %92 = sext i32 %91 to i64
  %93 = and i64 %92, -4294967296
  %94 = load i32, i32* @LIO_CN23XX_INTR_RESEND, align 4
  %95 = sext i32 %94 to i64
  %96 = or i64 %93, %95
  %97 = trunc i64 %96 to i32
  %98 = call i32 @lio_write_csr64(%struct.octeon_device* %87, i32 %90, i32 %97)
  br label %99

99:                                               ; preds = %81, %78
  br label %100

100:                                              ; preds = %99, %71
  br label %101

101:                                              ; preds = %100, %64, %61
  ret void
}

declare dso_local i64 @atomic_load_acq_int(i32*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @lio_write_csr32(%struct.octeon_device*, i32, i64) #1

declare dso_local i32 @__compiler_membar(...) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i64 @LIO_CN23XX_PF(%struct.octeon_device*) #1

declare dso_local i32 @lio_write_csr64(%struct.octeon_device*, i32, i32) #1

declare dso_local i32 @lio_read_csr64(%struct.octeon_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
