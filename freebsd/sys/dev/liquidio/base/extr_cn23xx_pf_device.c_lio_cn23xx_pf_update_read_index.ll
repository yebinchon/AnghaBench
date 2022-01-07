; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/liquidio/base/extr_cn23xx_pf_device.c_lio_cn23xx_pf_update_read_index.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/liquidio/base/extr_cn23xx_pf_device.c_lio_cn23xx_pf_update_read_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lio_instr_queue = type { i32, i32, i32, i32, %struct.octeon_device* }
%struct.octeon_device = type { i32 }

@LIO_CN23XX_PKT_IN_DONE_CNT_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lio_instr_queue*)* @lio_cn23xx_pf_update_read_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lio_cn23xx_pf_update_read_index(%struct.lio_instr_queue* %0) #0 {
  %2 = alloca %struct.lio_instr_queue*, align 8
  %3 = alloca %struct.octeon_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.lio_instr_queue* %0, %struct.lio_instr_queue** %2, align 8
  %7 = load %struct.lio_instr_queue*, %struct.lio_instr_queue** %2, align 8
  %8 = getelementptr inbounds %struct.lio_instr_queue, %struct.lio_instr_queue* %7, i32 0, i32 4
  %9 = load %struct.octeon_device*, %struct.octeon_device** %8, align 8
  store %struct.octeon_device* %9, %struct.octeon_device** %3, align 8
  %10 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %11 = load %struct.lio_instr_queue*, %struct.lio_instr_queue** %2, align 8
  %12 = getelementptr inbounds %struct.lio_instr_queue, %struct.lio_instr_queue* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @lio_read_csr32(%struct.octeon_device* %10, i32 %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = load %struct.lio_instr_queue*, %struct.lio_instr_queue** %2, align 8
  %17 = getelementptr inbounds %struct.lio_instr_queue, %struct.lio_instr_queue* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = sub nsw i32 %15, %18
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %6, align 4
  %21 = load %struct.lio_instr_queue*, %struct.lio_instr_queue** %2, align 8
  %22 = getelementptr inbounds %struct.lio_instr_queue, %struct.lio_instr_queue* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  %23 = load %struct.lio_instr_queue*, %struct.lio_instr_queue** %2, align 8
  %24 = getelementptr inbounds %struct.lio_instr_queue, %struct.lio_instr_queue* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @LIO_CN23XX_PKT_IN_DONE_CNT_MASK, align 4
  %28 = and i32 %26, %27
  %29 = add nsw i32 %25, %28
  %30 = load %struct.lio_instr_queue*, %struct.lio_instr_queue** %2, align 8
  %31 = getelementptr inbounds %struct.lio_instr_queue, %struct.lio_instr_queue* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = srem i32 %29, %32
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* %4, align 4
  ret i32 %34
}

declare dso_local i32 @lio_read_csr32(%struct.octeon_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
