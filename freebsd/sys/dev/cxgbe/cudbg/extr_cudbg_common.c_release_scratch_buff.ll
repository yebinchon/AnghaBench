; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/cudbg/extr_cudbg_common.c_release_scratch_buff.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/cudbg/extr_cudbg_common.c_release_scratch_buff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cudbg_buffer = type { i64, i64, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @release_scratch_buff(%struct.cudbg_buffer* %0, %struct.cudbg_buffer* %1) #0 {
  %3 = alloca %struct.cudbg_buffer*, align 8
  %4 = alloca %struct.cudbg_buffer*, align 8
  store %struct.cudbg_buffer* %0, %struct.cudbg_buffer** %3, align 8
  store %struct.cudbg_buffer* %1, %struct.cudbg_buffer** %4, align 8
  %5 = load %struct.cudbg_buffer*, %struct.cudbg_buffer** %3, align 8
  %6 = getelementptr inbounds %struct.cudbg_buffer, %struct.cudbg_buffer* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load %struct.cudbg_buffer*, %struct.cudbg_buffer** %4, align 8
  %9 = getelementptr inbounds %struct.cudbg_buffer, %struct.cudbg_buffer* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = add nsw i64 %10, %7
  store i64 %11, i64* %9, align 8
  %12 = load %struct.cudbg_buffer*, %struct.cudbg_buffer** %3, align 8
  %13 = getelementptr inbounds %struct.cudbg_buffer, %struct.cudbg_buffer* %12, i32 0, i32 2
  %14 = load i32*, i32** %13, align 8
  %15 = load %struct.cudbg_buffer*, %struct.cudbg_buffer** %3, align 8
  %16 = getelementptr inbounds %struct.cudbg_buffer, %struct.cudbg_buffer* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = call i32 @memset(i32* %14, i32 0, i64 %17)
  %19 = load %struct.cudbg_buffer*, %struct.cudbg_buffer** %3, align 8
  %20 = getelementptr inbounds %struct.cudbg_buffer, %struct.cudbg_buffer* %19, i32 0, i32 2
  store i32* null, i32** %20, align 8
  %21 = load %struct.cudbg_buffer*, %struct.cudbg_buffer** %3, align 8
  %22 = getelementptr inbounds %struct.cudbg_buffer, %struct.cudbg_buffer* %21, i32 0, i32 1
  store i64 0, i64* %22, align 8
  %23 = load %struct.cudbg_buffer*, %struct.cudbg_buffer** %3, align 8
  %24 = getelementptr inbounds %struct.cudbg_buffer, %struct.cudbg_buffer* %23, i32 0, i32 0
  store i64 0, i64* %24, align 8
  ret void
}

declare dso_local i32 @memset(i32*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
