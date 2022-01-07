; ModuleID = '/home/carl/AnghaBench/freebsd/sys/riscv/riscv/extr_pmap.c_pmap_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/riscv/riscv/extr_pmap.c_pmap_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.md_page = type { i32 }
%struct.TYPE_4__ = type { i32 }

@pv_chunks_mutex = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"pmap pv chunk list\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@allpmaps_lock = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"allpmaps\00", align 1
@NPV_LIST_LOCKS = common dso_local global i32 0, align 4
@pv_list_locks = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [13 x i8] c"pmap pv list\00", align 1
@vm_phys_segs = common dso_local global %struct.TYPE_3__* null, align 8
@vm_phys_nsegs = common dso_local global i32 0, align 4
@L2_SIZE = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@pv_table = common dso_local global %struct.md_page* null, align 8
@pv_dummy = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@superpages_enabled = common dso_local global i64 0, align 8
@pagesizes = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pmap_init() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load i32, i32* @MTX_DEF, align 4
  %5 = call i32 @mtx_init(i32* @pv_chunks_mutex, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32* null, i32 %4)
  %6 = load i32, i32* @MTX_DEF, align 4
  %7 = call i32 @mtx_init(i32* @allpmaps_lock, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32* null, i32 %6)
  store i32 0, i32* %2, align 4
  br label %8

8:                                                ; preds = %18, %0
  %9 = load i32, i32* %2, align 4
  %10 = load i32, i32* @NPV_LIST_LOCKS, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %21

12:                                               ; preds = %8
  %13 = load i32*, i32** @pv_list_locks, align 8
  %14 = load i32, i32* %2, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %13, i64 %15
  %17 = call i32 @rw_init(i32* %16, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  br label %18

18:                                               ; preds = %12
  %19 = load i32, i32* %2, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %2, align 4
  br label %8

21:                                               ; preds = %8
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** @vm_phys_segs, align 8
  %23 = load i32, i32* @vm_phys_nsegs, align 4
  %24 = sub nsw i32 %23, 1
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @L2_SIZE, align 4
  %30 = call i32 @howmany(i32 %28, i32 %29)
  store i32 %30, i32* %3, align 4
  %31 = load i32, i32* %3, align 4
  %32 = sext i32 %31 to i64
  %33 = mul i64 %32, 4
  store i64 %33, i64* %1, align 8
  %34 = load i64, i64* %1, align 8
  %35 = call i64 @round_page(i64 %34)
  store i64 %35, i64* %1, align 8
  %36 = load i64, i64* %1, align 8
  %37 = load i32, i32* @M_WAITOK, align 4
  %38 = load i32, i32* @M_ZERO, align 4
  %39 = or i32 %37, %38
  %40 = call i64 @kmem_malloc(i64 %36, i32 %39)
  %41 = inttoptr i64 %40 to %struct.md_page*
  store %struct.md_page* %41, %struct.md_page** @pv_table, align 8
  store i32 0, i32* %2, align 4
  br label %42

42:                                               ; preds = %53, %21
  %43 = load i32, i32* %2, align 4
  %44 = load i32, i32* %3, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %56

46:                                               ; preds = %42
  %47 = load %struct.md_page*, %struct.md_page** @pv_table, align 8
  %48 = load i32, i32* %2, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.md_page, %struct.md_page* %47, i64 %49
  %51 = getelementptr inbounds %struct.md_page, %struct.md_page* %50, i32 0, i32 0
  %52 = call i32 @TAILQ_INIT(i32* %51)
  br label %53

53:                                               ; preds = %46
  %54 = load i32, i32* %2, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %2, align 4
  br label %42

56:                                               ; preds = %42
  %57 = call i32 @TAILQ_INIT(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @pv_dummy, i32 0, i32 0))
  %58 = load i64, i64* @superpages_enabled, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %56
  %61 = load i32, i32* @L2_SIZE, align 4
  %62 = load i32*, i32** @pagesizes, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 1
  store i32 %61, i32* %63, align 4
  br label %64

64:                                               ; preds = %60, %56
  ret void
}

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i32 @rw_init(i32*, i8*) #1

declare dso_local i32 @howmany(i32, i32) #1

declare dso_local i64 @round_page(i64) #1

declare dso_local i64 @kmem_malloc(i64, i32) #1

declare dso_local i32 @TAILQ_INIT(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
