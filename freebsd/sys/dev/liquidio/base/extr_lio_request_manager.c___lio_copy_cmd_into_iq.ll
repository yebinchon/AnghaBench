; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/liquidio/base/extr_lio_request_manager.c___lio_copy_cmd_into_iq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/liquidio/base/extr_lio_request_manager.c___lio_copy_cmd_into_iq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lio_instr_queue = type { i32*, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lio_instr_queue*, i32*)* @__lio_copy_cmd_into_iq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__lio_copy_cmd_into_iq(%struct.lio_instr_queue* %0, i32* %1) #0 {
  %3 = alloca %struct.lio_instr_queue*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.lio_instr_queue* %0, %struct.lio_instr_queue** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load %struct.lio_instr_queue*, %struct.lio_instr_queue** %3, align 8
  %8 = getelementptr inbounds %struct.lio_instr_queue, %struct.lio_instr_queue* %7, i32 0, i32 2
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  %11 = zext i1 %10 to i64
  %12 = select i1 %10, i32 64, i32 32
  store i32 %12, i32* %6, align 4
  %13 = load %struct.lio_instr_queue*, %struct.lio_instr_queue** %3, align 8
  %14 = getelementptr inbounds %struct.lio_instr_queue, %struct.lio_instr_queue* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = load i32, i32* %6, align 4
  %17 = load %struct.lio_instr_queue*, %struct.lio_instr_queue** %3, align 8
  %18 = getelementptr inbounds %struct.lio_instr_queue, %struct.lio_instr_queue* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = mul nsw i32 %16, %19
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %15, i64 %21
  store i32* %22, i32** %5, align 8
  %23 = load i32*, i32** %5, align 8
  %24 = load i32*, i32** %4, align 8
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @memcpy(i32* %23, i32* %24, i32 %25)
  ret void
}

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
