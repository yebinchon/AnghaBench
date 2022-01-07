; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/ingenic/extr_jz4780_machdep.c_mips_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/ingenic/extr_jz4780_machdep.c_mips_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@phys_avail = common dso_local global i64* null, align 8
@kernel_kseg0_end = common dso_local global i32 0, align 4
@dump_avail = common dso_local global i64* null, align 8
@realmem = common dso_local global i32 0, align 4
@physmem = common dso_local global i32 0, align 4
@led = common dso_local global i32* null, align 8
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
  %18 = load i64*, i64** @dump_avail, align 8
  %19 = getelementptr inbounds i64, i64* %18, i64 0
  store i64 %15, i64* %19, align 8
  %20 = call i32 @btoc(i32 33554432)
  store i32 %20, i32* @realmem, align 4
  store i32 %20, i32* @physmem, align 4
  call void asm sideeffect "li\09$$2, 0xa9000000\09\0A\09mtc0\09$$2, $$5, 4\09\0A\09nop\09\09\09\0A\09", "r,~{dirflag},~{fpsr},~{flags}"(i32 2) #2, !srcloc !2
  %21 = call i32 (...) @init_param1()
  %22 = load i32, i32* @physmem, align 4
  %23 = call i32 @init_param2(i32 %22)
  %24 = call i32 (...) @mips_cpu_init()
  %25 = call i32 (...) @pmap_bootstrap()
  %26 = call i32 (...) @mips_proc0_init()
  %27 = call i32 (...) @mutex_init()
  %28 = call i32 (...) @kdb_init()
  %29 = load i32*, i32** @led, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  store i32 32768, i32* %30, align 4
  ret void
}

declare dso_local i64 @MIPS_KSEG0_TO_PHYS(i32) #1

declare dso_local i32 @btoc(i32) #1

declare dso_local i32 @init_param1(...) #1

declare dso_local i32 @init_param2(i32) #1

declare dso_local i32 @mips_cpu_init(...) #1

declare dso_local i32 @pmap_bootstrap(...) #1

declare dso_local i32 @mips_proc0_init(...) #1

declare dso_local i32 @mutex_init(...) #1

declare dso_local i32 @kdb_init(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 1076, i32 1097, i32 1121, i32 1136}
