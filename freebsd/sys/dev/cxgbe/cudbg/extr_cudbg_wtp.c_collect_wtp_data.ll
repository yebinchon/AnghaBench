; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/cudbg/extr_cudbg_wtp.c_collect_wtp_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/cudbg/extr_cudbg_wtp.c_collect_wtp_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cudbg_init = type { %struct.adapter* }
%struct.adapter = type { i32 }
%struct.cudbg_buffer = type { i32 }
%struct.cudbg_error = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @collect_wtp_data(%struct.cudbg_init* %0, %struct.cudbg_buffer* %1, %struct.cudbg_error* %2) #0 {
  %4 = alloca %struct.cudbg_init*, align 8
  %5 = alloca %struct.cudbg_buffer*, align 8
  %6 = alloca %struct.cudbg_error*, align 8
  %7 = alloca %struct.adapter*, align 8
  %8 = alloca i32, align 4
  store %struct.cudbg_init* %0, %struct.cudbg_init** %4, align 8
  store %struct.cudbg_buffer* %1, %struct.cudbg_buffer** %5, align 8
  store %struct.cudbg_error* %2, %struct.cudbg_error** %6, align 8
  %9 = load %struct.cudbg_init*, %struct.cudbg_init** %4, align 8
  %10 = getelementptr inbounds %struct.cudbg_init, %struct.cudbg_init* %9, i32 0, i32 0
  %11 = load %struct.adapter*, %struct.adapter** %10, align 8
  store %struct.adapter* %11, %struct.adapter** %7, align 8
  store i32 -1, i32* %8, align 4
  %12 = load %struct.adapter*, %struct.adapter** %7, align 8
  %13 = call i64 @is_t5(%struct.adapter* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %3
  %16 = load %struct.cudbg_init*, %struct.cudbg_init** %4, align 8
  %17 = load %struct.cudbg_buffer*, %struct.cudbg_buffer** %5, align 8
  %18 = load %struct.cudbg_error*, %struct.cudbg_error** %6, align 8
  %19 = call i32 @t5_wtp_data(%struct.cudbg_init* %16, %struct.cudbg_buffer* %17, %struct.cudbg_error* %18)
  store i32 %19, i32* %8, align 4
  br label %30

20:                                               ; preds = %3
  %21 = load %struct.adapter*, %struct.adapter** %7, align 8
  %22 = call i64 @is_t6(%struct.adapter* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %20
  %25 = load %struct.cudbg_init*, %struct.cudbg_init** %4, align 8
  %26 = load %struct.cudbg_buffer*, %struct.cudbg_buffer** %5, align 8
  %27 = load %struct.cudbg_error*, %struct.cudbg_error** %6, align 8
  %28 = call i32 @t6_wtp_data(%struct.cudbg_init* %25, %struct.cudbg_buffer* %26, %struct.cudbg_error* %27)
  store i32 %28, i32* %8, align 4
  br label %29

29:                                               ; preds = %24, %20
  br label %30

30:                                               ; preds = %29, %15
  %31 = load i32, i32* %8, align 4
  ret i32 %31
}

declare dso_local i64 @is_t5(%struct.adapter*) #1

declare dso_local i32 @t5_wtp_data(%struct.cudbg_init*, %struct.cudbg_buffer*, %struct.cudbg_error*) #1

declare dso_local i64 @is_t6(%struct.adapter*) #1

declare dso_local i32 @t6_wtp_data(%struct.cudbg_init*, %struct.cudbg_buffer*, %struct.cudbg_error*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
