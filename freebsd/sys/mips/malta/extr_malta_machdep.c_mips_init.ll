; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/malta/extr_malta_machdep.c_mips_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/malta/extr_malta_machdep.c_mips_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PHYS_AVAIL_ENTRIES = common dso_local global i32 0, align 4
@phys_avail = common dso_local global i32* null, align 8
@kernel_kseg0_end = common dso_local global i32 0, align 4
@dump_avail = common dso_local global i32* null, align 8
@realmem = common dso_local global i32 0, align 4
@physmem = common dso_local global i32 0, align 4
@KDB_WHY_BOOTFLAGS = common dso_local global i32 0, align 4
@RB_KDB = common dso_local global i32 0, align 4
@boothowto = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64)* @mips_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mips_init(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %15, %2
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @PHYS_AVAIL_ENTRIES, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %18

10:                                               ; preds = %6
  %11 = load i32*, i32** @phys_avail, align 8
  %12 = load i32, i32* %5, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i32, i32* %11, i64 %13
  store i32 0, i32* %14, align 4
  br label %15

15:                                               ; preds = %10
  %16 = load i32, i32* %5, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %5, align 4
  br label %6

18:                                               ; preds = %6
  %19 = load i32, i32* @kernel_kseg0_end, align 4
  %20 = call i32 @MIPS_KSEG0_TO_PHYS(i32 %19)
  %21 = load i32*, i32** @phys_avail, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  store i32 %20, i32* %22, align 4
  %23 = load i64, i64* %3, align 8
  %24 = trunc i64 %23 to i32
  %25 = load i32*, i32** @phys_avail, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 1
  store i32 %24, i32* %26, align 4
  %27 = load i32*, i32** @dump_avail, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  store i32 0, i32* %28, align 4
  %29 = load i32*, i32** @phys_avail, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32*, i32** @dump_avail, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 1
  store i32 %31, i32* %33, align 4
  %34 = load i64, i64* %4, align 8
  %35 = load i64, i64* %3, align 8
  %36 = icmp ugt i64 %34, %35
  br i1 %36, label %37, label %57

37:                                               ; preds = %18
  %38 = load i32*, i32** @phys_avail, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 2
  store i32 -1879048192, i32* %39, align 4
  %40 = load i64, i64* %4, align 8
  %41 = load i64, i64* %3, align 8
  %42 = sub i64 %40, %41
  %43 = add i64 2415919104, %42
  %44 = trunc i64 %43 to i32
  %45 = load i32*, i32** @phys_avail, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 3
  store i32 %44, i32* %46, align 4
  %47 = load i32*, i32** @phys_avail, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 2
  %49 = load i32, i32* %48, align 4
  %50 = load i32*, i32** @dump_avail, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 2
  store i32 %49, i32* %51, align 4
  %52 = load i32*, i32** @phys_avail, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 3
  %54 = load i32, i32* %53, align 4
  %55 = load i32*, i32** @dump_avail, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 3
  store i32 %54, i32* %56, align 4
  br label %57

57:                                               ; preds = %37, %18
  %58 = load i32, i32* @realmem, align 4
  store i32 %58, i32* @physmem, align 4
  %59 = call i32 (...) @init_param1()
  %60 = load i32, i32* @physmem, align 4
  %61 = call i32 @init_param2(i32 %60)
  %62 = call i32 (...) @mips_cpu_init()
  %63 = call i32 (...) @pmap_bootstrap()
  %64 = call i32 (...) @mips_proc0_init()
  %65 = call i32 (...) @mutex_init()
  %66 = call i32 (...) @kdb_init()
  ret void
}

declare dso_local i32 @MIPS_KSEG0_TO_PHYS(i32) #1

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
