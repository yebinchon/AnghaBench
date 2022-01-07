; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/cavium/extr_octeon_wdog.c_octeon_wdog_nmi.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/cavium/extr_octeon_wdog.c_octeon_wdog_nmi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [21 x i8] c"cpu%u: NMI detected\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"cpu%u: Exception PC: %p\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"cpu%u: status %#x cause %#x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @octeon_wdog_nmi() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 (...) @cvmx_get_core_num()
  store i32 %2, i32* %1, align 4
  %3 = load i32, i32* %1, align 4
  %4 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %3)
  %5 = load i32, i32* %1, align 4
  %6 = call i64 (...) @mips_rd_excpc()
  %7 = inttoptr i64 %6 to i8*
  %8 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %5, i8* %7)
  %9 = load i32, i32* %1, align 4
  %10 = call i32 (...) @mips_rd_status()
  %11 = call i32 (...) @mips_rd_cause()
  %12 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %9, i32 %10, i32 %11)
  br label %13

13:                                               ; preds = %13, %0
  br label %13
}

declare dso_local i32 @cvmx_get_core_num(...) #1

declare dso_local i32 @printf(i8*, i32, ...) #1

declare dso_local i64 @mips_rd_excpc(...) #1

declare dso_local i32 @mips_rd_status(...) #1

declare dso_local i32 @mips_rd_cause(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
