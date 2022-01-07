; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/booke/extr_booke_machdep.c_booke_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/booke/extr_booke_machdep.c_booke_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_end = common dso_local global i64 0, align 8
@bootinfo = common dso_local global i32* null, align 8
@__sbss_start = common dso_local global i64 0, align 8
@__sbss_end = common dso_local global i64 0, align 8
@__bss_start = common dso_local global i64 0, align 8
@__endkernel = common dso_local global i64 0, align 8
@kernload = common dso_local global i64 0, align 8
@cacheline_size = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @booke_init(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = load i64, i64* @_end, align 8
  store i64 %9, i64* %8, align 8
  store i64 0, i64* %7, align 8
  store i32* null, i32** @bootinfo, align 8
  %10 = load i64, i64* @__sbss_start, align 8
  %11 = load i64, i64* @__sbss_end, align 8
  %12 = load i64, i64* @__sbss_start, align 8
  %13 = sub nsw i64 %11, %12
  %14 = call i32 @bzero(i64 %10, i64 %13)
  %15 = load i64, i64* @__bss_start, align 8
  %16 = load i64, i64* @_end, align 8
  %17 = load i64, i64* @__bss_start, align 8
  %18 = sub nsw i64 %16, %17
  %19 = call i32 @bzero(i64 %15, i64 %18)
  %20 = call i32 (...) @tlb1_init()
  %21 = load i64, i64* %3, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %2
  %24 = load i64, i64* %4, align 8
  %25 = inttoptr i64 %24 to i8*
  store i8* %25, i8** %6, align 8
  br label %58

26:                                               ; preds = %2
  %27 = load i64, i64* %3, align 8
  %28 = call i64 @booke_check_for_fdt(i64 %27, i64* %7)
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %48

30:                                               ; preds = %26
  %31 = load i64, i64* %8, align 8
  %32 = call i64 @roundup(i64 %31, i32 8)
  store i64 %32, i64* %8, align 8
  %33 = load i64, i64* %8, align 8
  %34 = inttoptr i64 %33 to i8*
  %35 = load i64, i64* %7, align 8
  %36 = inttoptr i64 %35 to i8*
  %37 = load i64, i64* %7, align 8
  %38 = inttoptr i64 %37 to i8*
  %39 = call i64 @fdt_totalsize(i8* %38)
  %40 = call i32 @memmove(i8* %34, i8* %36, i64 %39)
  %41 = load i64, i64* %8, align 8
  store i64 %41, i64* %7, align 8
  %42 = load i64, i64* %7, align 8
  %43 = inttoptr i64 %42 to i8*
  %44 = call i64 @fdt_totalsize(i8* %43)
  %45 = load i64, i64* %8, align 8
  %46 = add i64 %45, %44
  store i64 %46, i64* %8, align 8
  %47 = load i64, i64* %8, align 8
  store i64 %47, i64* @__endkernel, align 8
  store i8* null, i8** %6, align 8
  br label %57

48:                                               ; preds = %26
  %49 = load i64, i64* %3, align 8
  %50 = load i64, i64* @kernload, align 8
  %51 = icmp ugt i64 %49, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %48
  %53 = load i64, i64* %3, align 8
  %54 = inttoptr i64 %53 to i8*
  store i8* %54, i8** %6, align 8
  br label %56

55:                                               ; preds = %48
  store i8* null, i8** %6, align 8
  br label %56

56:                                               ; preds = %55, %52
  br label %57

57:                                               ; preds = %56, %30
  br label %58

58:                                               ; preds = %57, %23
  %59 = call i32 (...) @mfpvr()
  %60 = ashr i32 %59, 16
  switch i32 %60, label %62 [
    i32 130, label %61
    i32 129, label %61
    i32 128, label %61
  ]

61:                                               ; preds = %58, %58, %58
  store i32 64, i32* @cacheline_size, align 4
  br label %62

62:                                               ; preds = %58, %61
  %63 = load i64, i64* %7, align 8
  %64 = load i8*, i8** %6, align 8
  %65 = load i8*, i8** %6, align 8
  %66 = icmp eq i8* %65, null
  %67 = zext i1 %66 to i64
  %68 = select i1 %66, i32 0, i32 -77787059
  %69 = call i64 @powerpc_init(i64 %63, i32 0, i32 0, i8* %64, i32 %68)
  store i64 %69, i64* %5, align 8
  %70 = call i32 (...) @booke_enable_l1_cache()
  %71 = call i32 (...) @booke_enable_l2_cache()
  %72 = call i32 (...) @booke_enable_bpred()
  %73 = load i64, i64* %5, align 8
  ret i64 %73
}

declare dso_local i32 @bzero(i64, i64) #1

declare dso_local i32 @tlb1_init(...) #1

declare dso_local i64 @booke_check_for_fdt(i64, i64*) #1

declare dso_local i64 @roundup(i64, i32) #1

declare dso_local i32 @memmove(i8*, i8*, i64) #1

declare dso_local i64 @fdt_totalsize(i8*) #1

declare dso_local i32 @mfpvr(...) #1

declare dso_local i64 @powerpc_init(i64, i32, i32, i8*, i32) #1

declare dso_local i32 @booke_enable_l1_cache(...) #1

declare dso_local i32 @booke_enable_l2_cache(...) #1

declare dso_local i32 @booke_enable_bpred(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
