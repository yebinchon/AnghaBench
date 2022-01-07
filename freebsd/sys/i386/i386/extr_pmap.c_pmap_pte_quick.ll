; ModuleID = '/home/carl/AnghaBench/freebsd/sys/i386/i386/extr_pmap.c_pmap_pte_quick.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/i386/i386/extr_pmap.c_pmap_pte_quick.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@PG_PS = common dso_local global i32 0, align 4
@pvh_global_lock = common dso_local global i32 0, align 4
@RA_WLOCKED = common dso_local global i32 0, align 4
@curthread = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [21 x i8] c"curthread not pinned\00", align 1
@PG_FRAME = common dso_local global i32 0, align 4
@PMAP1 = common dso_local global i32* null, align 8
@PG_RW = common dso_local global i32 0, align 4
@PG_V = common dso_local global i32 0, align 4
@PG_A = common dso_local global i32 0, align 4
@PG_M = common dso_local global i32 0, align 4
@PADDR1 = common dso_local global i32* null, align 8
@PMAP1changed = common dso_local global i32 0, align 4
@PMAP1unchanged = common dso_local global i32 0, align 4
@NPTEPG = common dso_local global i32 0, align 4
@PMAP1changedcpu = common dso_local global i32 0, align 4
@PMAP1cpu = common dso_local global i64 0, align 8
@cpuid = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32, i32)* @pmap_pte_quick to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @pmap_pte_quick(i32 %0, i32 %1) #0 {
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
  br label %76

18:                                               ; preds = %2
  %19 = load i32*, i32** %7, align 8
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %75

22:                                               ; preds = %18
  %23 = load i32, i32* %4, align 4
  %24 = call i64 @pmap_is_current(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = load i32, i32* %5, align 4
  %28 = call i32* @vtopte(i32 %27)
  store i32* %28, i32** %3, align 8
  br label %76

29:                                               ; preds = %22
  %30 = load i32, i32* @RA_WLOCKED, align 4
  %31 = call i32 @rw_assert(i32* @pvh_global_lock, i32 %30)
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** @curthread, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp sgt i64 %34, 0
  %36 = zext i1 %35 to i32
  %37 = call i32 @KASSERT(i32 %36, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %38 = load i32*, i32** %7, align 8
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @PG_FRAME, align 4
  %41 = and i32 %39, %40
  store i32 %41, i32* %6, align 4
  %42 = load i32*, i32** @PMAP1, align 8
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @PG_FRAME, align 4
  %45 = and i32 %43, %44
  %46 = load i32, i32* %6, align 4
  %47 = icmp ne i32 %45, %46
  br i1 %47, label %48, label %63

48:                                               ; preds = %29
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* @PG_RW, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* @PG_V, align 4
  %53 = or i32 %51, %52
  %54 = load i32, i32* @PG_A, align 4
  %55 = or i32 %53, %54
  %56 = load i32, i32* @PG_M, align 4
  %57 = or i32 %55, %56
  %58 = load i32*, i32** @PMAP1, align 8
  store i32 %57, i32* %58, align 4
  %59 = load i32*, i32** @PADDR1, align 8
  %60 = call i32 @invlcaddr(i32* %59)
  %61 = load i32, i32* @PMAP1changed, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* @PMAP1changed, align 4
  br label %66

63:                                               ; preds = %29
  %64 = load i32, i32* @PMAP1unchanged, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* @PMAP1unchanged, align 4
  br label %66

66:                                               ; preds = %63, %48
  %67 = load i32*, i32** @PADDR1, align 8
  %68 = load i32, i32* %5, align 4
  %69 = call i32 @i386_btop(i32 %68)
  %70 = load i32, i32* @NPTEPG, align 4
  %71 = sub nsw i32 %70, 1
  %72 = and i32 %69, %71
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %67, i64 %73
  store i32* %74, i32** %3, align 8
  br label %76

75:                                               ; preds = %18
  store i32* null, i32** %3, align 8
  br label %76

76:                                               ; preds = %75, %66, %26, %16
  %77 = load i32*, i32** %3, align 8
  ret i32* %77
}

declare dso_local i32* @pmap_pde(i32, i32) #1

declare dso_local i64 @pmap_is_current(i32) #1

declare dso_local i32* @vtopte(i32) #1

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
