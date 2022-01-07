; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/beri/extr_beri_machdep.c_mips_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/beri/extr_beri_machdep.c_mips_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@phys_avail = common dso_local global i64* null, align 8
@kernel_kseg0_end = common dso_local global i32 0, align 4
@realmem = common dso_local global i32 0, align 4
@dump_avail = common dso_local global i64* null, align 8
@physmem = common dso_local global i32 0, align 4
@FDT_MEM_REGIONS = common dso_local global i32 0, align 4
@KDB_WHY_BOOTFLAGS = common dso_local global i32 0, align 4
@RB_KDB = common dso_local global i32 0, align 4
@boothowto = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @mips_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mips_init() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  br label %2

2:                                                ; preds = %10, %0
  %3 = load i32, i32* %1, align 4
  %4 = icmp slt i32 %3, 10
  br i1 %4, label %5, label %13

5:                                                ; preds = %2
  %6 = load i64*, i64** @phys_avail, align 8
  %7 = load i32, i32* %1, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds i64, i64* %6, i64 %8
  store i64 0, i64* %9, align 8
  br label %10

10:                                               ; preds = %5
  %11 = load i32, i32* %1, align 4
  %12 = add nsw i32 %11, 1
  store i32 %12, i32* %1, align 4
  br label %2

13:                                               ; preds = %2
  %14 = load i32, i32* @kernel_kseg0_end, align 4
  %15 = call i64 @MIPS_KSEG0_TO_PHYS(i32 %14)
  %16 = load i64*, i64** @phys_avail, align 8
  %17 = getelementptr inbounds i64, i64* %16, i64 0
  store i64 %15, i64* %17, align 8
  %18 = load i32, i32* @realmem, align 4
  %19 = call i64 @ctob(i32 %18)
  %20 = load i64*, i64** @phys_avail, align 8
  %21 = getelementptr inbounds i64, i64* %20, i64 1
  store i64 %19, i64* %21, align 8
  %22 = load i64*, i64** @phys_avail, align 8
  %23 = getelementptr inbounds i64, i64* %22, i64 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64*, i64** @dump_avail, align 8
  %26 = getelementptr inbounds i64, i64* %25, i64 0
  store i64 %24, i64* %26, align 8
  %27 = load i64*, i64** @phys_avail, align 8
  %28 = getelementptr inbounds i64, i64* %27, i64 1
  %29 = load i64, i64* %28, align 8
  %30 = load i64*, i64** @dump_avail, align 8
  %31 = getelementptr inbounds i64, i64* %30, i64 1
  store i64 %29, i64* %31, align 8
  %32 = load i32, i32* @realmem, align 4
  store i32 %32, i32* @physmem, align 4
  %33 = call i32 (...) @init_param1()
  %34 = load i32, i32* @physmem, align 4
  %35 = call i32 @init_param2(i32 %34)
  %36 = call i32 (...) @mips_cpu_init()
  %37 = call i32 (...) @pmap_bootstrap()
  %38 = call i32 (...) @mips_proc0_init()
  %39 = call i32 (...) @mutex_init()
  %40 = call i32 (...) @kdb_init()
  ret void
}

declare dso_local i64 @MIPS_KSEG0_TO_PHYS(i32) #1

declare dso_local i64 @ctob(i32) #1

declare dso_local i32 @init_param1(...) #1

declare dso_local i32 @init_param2(i32) #1

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
