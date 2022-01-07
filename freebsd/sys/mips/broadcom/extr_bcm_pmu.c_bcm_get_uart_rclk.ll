; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/broadcom/extr_bcm_pmu.c_bcm_get_uart_rclk.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/broadcom/extr_bcm_pmu.c_bcm_get_uart_rclk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm_platform = type { i32 }
%struct.bcm_uart_clkcfg = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bcm_get_uart_rclk(%struct.bcm_platform* %0) #0 {
  %2 = alloca %struct.bcm_platform*, align 8
  %3 = alloca %struct.bcm_uart_clkcfg, align 4
  %4 = alloca %struct.bcm_uart_clkcfg, align 4
  store %struct.bcm_platform* %0, %struct.bcm_platform** %2, align 8
  %5 = load %struct.bcm_platform*, %struct.bcm_platform** %2, align 8
  %6 = call i64 @bcm_get_uart_clkcfg(%struct.bcm_platform* %5)
  %7 = bitcast %struct.bcm_uart_clkcfg* %4 to i64*
  store i64 %6, i64* %7, align 4
  %8 = bitcast %struct.bcm_uart_clkcfg* %3 to i8*
  %9 = bitcast %struct.bcm_uart_clkcfg* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %8, i8* align 4 %9, i64 8, i1 false)
  %10 = getelementptr inbounds %struct.bcm_uart_clkcfg, %struct.bcm_uart_clkcfg* %3, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = getelementptr inbounds %struct.bcm_uart_clkcfg, %struct.bcm_uart_clkcfg* %3, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = sdiv i32 %11, %13
  ret i32 %14
}

declare dso_local i64 @bcm_get_uart_clkcfg(%struct.bcm_platform*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
