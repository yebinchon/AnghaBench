; ModuleID = '/home/carl/AnghaBench/freebsd/sys/i386/i386/extr_pmap.c_pmap_pte_ufast.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/i386/i386/extr_pmap.c_pmap_pte_ufast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MA_OWNED = common dso_local global i32 0, align 4
@PG_FRAME = common dso_local global i32 0, align 4
@pmap_eh_ptep = common dso_local global i32 0, align 4
@PG_RW = common dso_local global i32 0, align 4
@PG_V = common dso_local global i32 0, align 4
@PG_A = common dso_local global i32 0, align 4
@PG_M = common dso_local global i32 0, align 4
@pmap_eh_va = common dso_local global i32 0, align 4
@NPTEPG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @pmap_pte_ufast to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pmap_pte_ufast(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @MA_OWNED, align 4
  %12 = call i32 @PMAP_LOCK_ASSERT(i32 %10, i32 %11)
  %13 = load i32, i32* @PG_FRAME, align 4
  %14 = load i32, i32* %6, align 4
  %15 = and i32 %14, %13
  store i32 %15, i32* %6, align 4
  %16 = call i32 (...) @critical_enter()
  %17 = load i32, i32* @pmap_eh_ptep, align 4
  %18 = call i64 @PCPU_GET(i32 %17)
  %19 = inttoptr i64 %18 to i32*
  store i32* %19, i32** %7, align 8
  %20 = load i32*, i32** %7, align 8
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @PG_FRAME, align 4
  %23 = and i32 %21, %22
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %23, %24
  br i1 %25, label %26, label %41

26:                                               ; preds = %3
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @PG_RW, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @PG_V, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @PG_A, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @PG_M, align 4
  %35 = or i32 %33, %34
  %36 = load i32*, i32** %7, align 8
  store i32 %35, i32* %36, align 4
  %37 = load i32, i32* @pmap_eh_va, align 4
  %38 = call i64 @PCPU_GET(i32 %37)
  %39 = inttoptr i64 %38 to i8*
  %40 = call i32 @invlcaddr(i8* %39)
  br label %41

41:                                               ; preds = %26, %3
  %42 = load i32, i32* @pmap_eh_va, align 4
  %43 = call i64 @PCPU_GET(i32 %42)
  %44 = inttoptr i64 %43 to i32*
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @i386_btop(i32 %45)
  %47 = load i32, i32* @NPTEPG, align 4
  %48 = sub nsw i32 %47, 1
  %49 = and i32 %46, %48
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %44, i64 %50
  store i32* %51, i32** %9, align 8
  %52 = load i32*, i32** %9, align 8
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %8, align 4
  %54 = call i32 (...) @critical_exit()
  %55 = load i32, i32* %8, align 4
  ret i32 %55
}

declare dso_local i32 @PMAP_LOCK_ASSERT(i32, i32) #1

declare dso_local i32 @critical_enter(...) #1

declare dso_local i64 @PCPU_GET(i32) #1

declare dso_local i32 @invlcaddr(i8*) #1

declare dso_local i32 @i386_btop(i32) #1

declare dso_local i32 @critical_exit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
