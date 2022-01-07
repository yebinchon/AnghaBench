; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_sge.c_alloc_fl_sdesc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_sge.c_alloc_fl_sdesc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sge_fl = type { i32, i32 }

@M_CXGBE = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sge_fl*)* @alloc_fl_sdesc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alloc_fl_sdesc(%struct.sge_fl* %0) #0 {
  %2 = alloca %struct.sge_fl*, align 8
  store %struct.sge_fl* %0, %struct.sge_fl** %2, align 8
  %3 = load %struct.sge_fl*, %struct.sge_fl** %2, align 8
  %4 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = mul nsw i32 %5, 8
  %7 = sext i32 %6 to i64
  %8 = mul i64 %7, 4
  %9 = trunc i64 %8 to i32
  %10 = load i32, i32* @M_CXGBE, align 4
  %11 = load i32, i32* @M_ZERO, align 4
  %12 = load i32, i32* @M_WAITOK, align 4
  %13 = or i32 %11, %12
  %14 = call i32 @malloc(i32 %9, i32 %10, i32 %13)
  %15 = load %struct.sge_fl*, %struct.sge_fl** %2, align 8
  %16 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %15, i32 0, i32 1
  store i32 %14, i32* %16, align 4
  ret i32 0
}

declare dso_local i32 @malloc(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
