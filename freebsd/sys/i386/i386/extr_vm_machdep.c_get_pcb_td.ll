; ModuleID = '/home/carl/AnghaBench/freebsd/sys/i386/i386/extr_vm_machdep.c_get_pcb_td.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/i386/i386/extr_vm_machdep.c_get_pcb_td.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcb = type { i32 }
%struct.thread = type { i32, i64 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@cpu_max_ext_state_size = common dso_local global i32 0, align 4
@XSAVE_AREA_ALIGN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.pcb* @get_pcb_td(%struct.thread* %0) #0 {
  %2 = alloca %struct.thread*, align 8
  %3 = alloca i64, align 8
  store %struct.thread* %0, %struct.thread** %2, align 8
  %4 = load %struct.thread*, %struct.thread** %2, align 8
  %5 = getelementptr inbounds %struct.thread, %struct.thread* %4, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  %7 = load %struct.thread*, %struct.thread** %2, align 8
  %8 = getelementptr inbounds %struct.thread, %struct.thread* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @PAGE_SIZE, align 4
  %11 = mul nsw i32 %9, %10
  %12 = sext i32 %11 to i64
  %13 = add nsw i64 %6, %12
  %14 = load i32, i32* @cpu_max_ext_state_size, align 4
  %15 = load i32, i32* @XSAVE_AREA_ALIGN, align 4
  %16 = call i64 @roundup2(i32 %14, i32 %15)
  %17 = sub nsw i64 %13, %16
  %18 = sub i64 %17, 4
  store i64 %18, i64* %3, align 8
  %19 = load i64, i64* %3, align 8
  %20 = inttoptr i64 %19 to %struct.pcb*
  ret %struct.pcb* %20
}

declare dso_local i64 @roundup2(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
