; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_proc.c_procinit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_proc.c_procinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@allproc_lock = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"allproc\00", align 1
@proctree_lock = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"proctree\00", align 1
@ppeers_lock = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"p_peers\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@procid_lock = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"procid\00", align 1
@allproc = common dso_local global i32 0, align 4
@maxproc = common dso_local global i32 0, align 4
@M_PROC = common dso_local global i32 0, align 4
@pidhash = common dso_local global i32 0, align 4
@pidhashtbl = common dso_local global i8* null, align 8
@pidhashlock = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@pidhashtbl_lock = common dso_local global i32* null, align 8
@.str.4 = private unnamed_addr constant [8 x i8] c"pidhash\00", align 1
@SX_DUPOK = common dso_local global i32 0, align 4
@pgrphash = common dso_local global i32 0, align 4
@pgrphashtbl = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [5 x i8] c"PROC\00", align 1
@proc_ctor = common dso_local global i32 0, align 4
@proc_dtor = common dso_local global i32 0, align 4
@proc_init = common dso_local global i32 0, align 4
@proc_fini = common dso_local global i32 0, align 4
@UMA_ALIGN_PTR = common dso_local global i32 0, align 4
@UMA_ZONE_NOFREE = common dso_local global i32 0, align 4
@proc_zone = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @procinit() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 @sx_init(i32* @allproc_lock, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %3 = call i32 @sx_init(i32* @proctree_lock, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %4 = load i32, i32* @MTX_DEF, align 4
  %5 = call i32 @mtx_init(i32* @ppeers_lock, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32* null, i32 %4)
  %6 = load i32, i32* @MTX_DEF, align 4
  %7 = call i32 @mtx_init(i32* @procid_lock, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32* null, i32 %6)
  %8 = call i32 @LIST_INIT(i32* @allproc)
  %9 = load i32, i32* @maxproc, align 4
  %10 = sdiv i32 %9, 4
  %11 = load i32, i32* @M_PROC, align 4
  %12 = call i8* @hashinit(i32 %10, i32 %11, i32* @pidhash)
  store i8* %12, i8** @pidhashtbl, align 8
  %13 = load i32, i32* @pidhash, align 4
  %14 = add nsw i32 %13, 1
  %15 = sdiv i32 %14, 64
  store i32 %15, i32* @pidhashlock, align 4
  %16 = load i32, i32* @pidhashlock, align 4
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %0
  %19 = load i32, i32* @pidhashlock, align 4
  %20 = add nsw i32 %19, -1
  store i32 %20, i32* @pidhashlock, align 4
  br label %21

21:                                               ; preds = %18, %0
  %22 = load i32, i32* @pidhashlock, align 4
  %23 = add nsw i32 %22, 1
  %24 = sext i32 %23 to i64
  %25 = mul i64 4, %24
  %26 = trunc i64 %25 to i32
  %27 = load i32, i32* @M_PROC, align 4
  %28 = load i32, i32* @M_WAITOK, align 4
  %29 = load i32, i32* @M_ZERO, align 4
  %30 = or i32 %28, %29
  %31 = call i32* @malloc(i32 %26, i32 %27, i32 %30)
  store i32* %31, i32** @pidhashtbl_lock, align 8
  store i32 0, i32* %1, align 4
  br label %32

32:                                               ; preds = %44, %21
  %33 = load i32, i32* %1, align 4
  %34 = load i32, i32* @pidhashlock, align 4
  %35 = add nsw i32 %34, 1
  %36 = icmp slt i32 %33, %35
  br i1 %36, label %37, label %47

37:                                               ; preds = %32
  %38 = load i32*, i32** @pidhashtbl_lock, align 8
  %39 = load i32, i32* %1, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* @SX_DUPOK, align 4
  %43 = call i32 @sx_init_flags(i32* %41, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 %42)
  br label %44

44:                                               ; preds = %37
  %45 = load i32, i32* %1, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %1, align 4
  br label %32

47:                                               ; preds = %32
  %48 = load i32, i32* @maxproc, align 4
  %49 = sdiv i32 %48, 4
  %50 = load i32, i32* @M_PROC, align 4
  %51 = call i8* @hashinit(i32 %49, i32 %50, i32* @pgrphash)
  store i8* %51, i8** @pgrphashtbl, align 8
  %52 = call i32 (...) @sched_sizeof_proc()
  %53 = load i32, i32* @proc_ctor, align 4
  %54 = load i32, i32* @proc_dtor, align 4
  %55 = load i32, i32* @proc_init, align 4
  %56 = load i32, i32* @proc_fini, align 4
  %57 = load i32, i32* @UMA_ALIGN_PTR, align 4
  %58 = load i32, i32* @UMA_ZONE_NOFREE, align 4
  %59 = call i32 @uma_zcreate(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %52, i32 %53, i32 %54, i32 %55, i32 %56, i32 %57, i32 %58)
  store i32 %59, i32* @proc_zone, align 4
  %60 = call i32 (...) @uihashinit()
  ret void
}

declare dso_local i32 @sx_init(i32*, i8*) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i32 @LIST_INIT(i32*) #1

declare dso_local i8* @hashinit(i32, i32, i32*) #1

declare dso_local i32* @malloc(i32, i32, i32) #1

declare dso_local i32 @sx_init_flags(i32*, i8*, i32) #1

declare dso_local i32 @uma_zcreate(i8*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @sched_sizeof_proc(...) #1

declare dso_local i32 @uihashinit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
