; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/broadcom/extr_bcm_machdep.c_mips_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/broadcom/extr_bcm_machdep.c_mips_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [20 x i8] c"entry: mips_init()\0A\00", align 1
@phys_avail = common dso_local global i64* null, align 8
@dump_avail = common dso_local global i64* null, align 8
@realmem = common dso_local global i64 0, align 8
@physmem = common dso_local global i64 0, align 8
@CFE_MI_AVAILABLE = common dso_local global i64 0, align 8
@KDB_WHY_BOOTFLAGS = common dso_local global i32 0, align 4
@RB_KDB = common dso_local global i32 0, align 4
@boothowto = common dso_local global i32 0, align 4
@kernel_kseg0_end = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @mips_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mips_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = call i32 @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %4

4:                                                ; preds = %18, %0
  %5 = load i32, i32* %2, align 4
  %6 = load i32, i32* %1, align 4
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %8, label %21

8:                                                ; preds = %4
  %9 = load i64*, i64** @phys_avail, align 8
  %10 = load i32, i32* %2, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i64, i64* %9, i64 %11
  %13 = load i64, i64* %12, align 8
  %14 = load i64*, i64** @dump_avail, align 8
  %15 = load i32, i32* %2, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i64, i64* %14, i64 %16
  store i64 %13, i64* %17, align 8
  br label %18

18:                                               ; preds = %8
  %19 = load i32, i32* %2, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %2, align 4
  br label %4

21:                                               ; preds = %4
  %22 = load i64, i64* @realmem, align 8
  store i64 %22, i64* @physmem, align 8
  %23 = call i32 (...) @init_param1()
  %24 = load i64, i64* @physmem, align 8
  %25 = call i32 @init_param2(i64 %24)
  %26 = call i32 (...) @mips_cpu_init()
  %27 = call i32 (...) @pmap_bootstrap()
  %28 = call i32 (...) @mips_proc0_init()
  %29 = call i32 (...) @mutex_init()
  %30 = call i32 (...) @kdb_init()
  ret void
}

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @init_param1(...) #1

declare dso_local i32 @init_param2(i64) #1

declare dso_local i32 @mips_cpu_init(...) #1

declare dso_local i32 @pmap_bootstrap(...) #1

declare dso_local i32 @mips_proc0_init(...) #1

declare dso_local i32 @mutex_init(...) #1

declare dso_local i32 @kdb_init(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
