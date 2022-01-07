; ModuleID = '/home/carl/AnghaBench/freebsd/sys/i386/i386/extr_pmap.c_pmap_pte_quick3.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/i386/i386/extr_pmap.c_pmap_pte_quick3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@PG_PS = common dso_local global i32 0, align 4
@pvh_global_lock = common dso_local global i32 0, align 4
@RA_WLOCKED = common dso_local global i32 0, align 4
@curthread = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [21 x i8] c"curthread not pinned\00", align 1
@PG_FRAME = common dso_local global i32 0, align 4
@PMAP3 = common dso_local global i32* null, align 8
@PG_RW = common dso_local global i32 0, align 4
@PG_V = common dso_local global i32 0, align 4
@PG_A = common dso_local global i32 0, align 4
@PG_M = common dso_local global i32 0, align 4
@PADDR3 = common dso_local global i32* null, align 8
@PMAP1changed = common dso_local global i32 0, align 4
@PMAP1unchanged = common dso_local global i32 0, align 4
@NPTEPG = common dso_local global i32 0, align 4
@PMAP1changedcpu = common dso_local global i32 0, align 4
@PMAP3cpu = common dso_local global i64 0, align 8
@cpuid = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32, i32)* @pmap_pte_quick3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @pmap_pte_quick3(i32 %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* %5, align 4
  %10 = call i32* @pmap_pde(i32 %8, i32 %9)
  store i32* %10, i32** %7, align 8
  %11 = load i32*, i32** %7, align 8
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @PG_PS, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32*, i32** %7, align 8
  store i32* %17, i32** %3, align 8
  br label %69

18:                                               ; preds = %2
  %19 = load i32*, i32** %7, align 8
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %68

22:                                               ; preds = %18
  %23 = load i32, i32* @RA_WLOCKED, align 4
  %24 = call i32 @rw_assert(i32* @pvh_global_lock, i32 %23)
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** @curthread, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp sgt i64 %27, 0
  %29 = zext i1 %28 to i32
  %30 = call i32 @KASSERT(i32 %29, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %31 = load i32*, i32** %7, align 8
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @PG_FRAME, align 4
  %34 = and i32 %32, %33
  store i32 %34, i32* %6, align 4
  %35 = load i32*, i32** @PMAP3, align 8
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @PG_FRAME, align 4
  %38 = and i32 %36, %37
  %39 = load i32, i32* %6, align 4
  %40 = icmp ne i32 %38, %39
  br i1 %40, label %41, label %56

41:                                               ; preds = %22
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* @PG_RW, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @PG_V, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @PG_A, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* @PG_M, align 4
  %50 = or i32 %48, %49
  %51 = load i32*, i32** @PMAP3, align 8
  store i32 %50, i32* %51, align 4
  %52 = load i32*, i32** @PADDR3, align 8
  %53 = call i32 @invlcaddr(i32* %52)
  %54 = load i32, i32* @PMAP1changed, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* @PMAP1changed, align 4
  br label %59

56:                                               ; preds = %22
  %57 = load i32, i32* @PMAP1unchanged, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* @PMAP1unchanged, align 4
  br label %59

59:                                               ; preds = %56, %41
  %60 = load i32*, i32** @PADDR3, align 8
  %61 = load i32, i32* %5, align 4
  %62 = call i32 @i386_btop(i32 %61)
  %63 = load i32, i32* @NPTEPG, align 4
  %64 = sub nsw i32 %63, 1
  %65 = and i32 %62, %64
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %60, i64 %66
  store i32* %67, i32** %3, align 8
  br label %69

68:                                               ; preds = %18
  store i32* null, i32** %3, align 8
  br label %69

69:                                               ; preds = %68, %59, %16
  %70 = load i32*, i32** %3, align 8
  ret i32* %70
}

declare dso_local i32* @pmap_pde(i32, i32) #1

declare dso_local i32 @rw_assert(i32*, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @invlcaddr(i32*) #1

declare dso_local i32 @i386_btop(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
