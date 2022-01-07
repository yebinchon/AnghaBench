; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_rman.c_rman_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_rman.c_rman_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rman = type { i64, i64, i32*, i32, i32 }

@rman_init.once = internal global i32 0, align 4
@rman_head = common dso_local global i32 0, align 4
@rman_mtx = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"rman head\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@RMAN_UNINIT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"rman_init\00", align 1
@RMAN_GAUGE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [21 x i8] c"implement RMAN_GAUGE\00", align 1
@M_RMAN = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"rman\00", align 1
@rm_link = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rman_init(%struct.rman* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rman*, align 8
  store %struct.rman* %0, %struct.rman** %3, align 8
  %4 = load i32, i32* @rman_init.once, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %10

6:                                                ; preds = %1
  store i32 1, i32* @rman_init.once, align 4
  %7 = call i32 @TAILQ_INIT(i32* @rman_head)
  %8 = load i32, i32* @MTX_DEF, align 4
  %9 = call i32 @mtx_init(i32* @rman_mtx, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32* null, i32 %8)
  br label %10

10:                                               ; preds = %6, %1
  %11 = load %struct.rman*, %struct.rman** %3, align 8
  %12 = getelementptr inbounds %struct.rman, %struct.rman* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %23

15:                                               ; preds = %10
  %16 = load %struct.rman*, %struct.rman** %3, align 8
  %17 = getelementptr inbounds %struct.rman, %struct.rman* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = load %struct.rman*, %struct.rman** %3, align 8
  %22 = getelementptr inbounds %struct.rman, %struct.rman* %21, i32 0, i32 4
  store i32 -1, i32* %22, align 4
  br label %23

23:                                               ; preds = %20, %15, %10
  %24 = load %struct.rman*, %struct.rman** %3, align 8
  %25 = getelementptr inbounds %struct.rman, %struct.rman* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @RMAN_UNINIT, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = call i32 @panic(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  br label %31

31:                                               ; preds = %29, %23
  %32 = load %struct.rman*, %struct.rman** %3, align 8
  %33 = getelementptr inbounds %struct.rman, %struct.rman* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @RMAN_GAUGE, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %31
  %38 = call i32 @panic(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  br label %39

39:                                               ; preds = %37, %31
  %40 = load %struct.rman*, %struct.rman** %3, align 8
  %41 = getelementptr inbounds %struct.rman, %struct.rman* %40, i32 0, i32 3
  %42 = call i32 @TAILQ_INIT(i32* %41)
  %43 = load i32, i32* @M_RMAN, align 4
  %44 = load i32, i32* @M_NOWAIT, align 4
  %45 = load i32, i32* @M_ZERO, align 4
  %46 = or i32 %44, %45
  %47 = call i32* @malloc(i32 4, i32 %43, i32 %46)
  %48 = load %struct.rman*, %struct.rman** %3, align 8
  %49 = getelementptr inbounds %struct.rman, %struct.rman* %48, i32 0, i32 2
  store i32* %47, i32** %49, align 8
  %50 = load %struct.rman*, %struct.rman** %3, align 8
  %51 = getelementptr inbounds %struct.rman, %struct.rman* %50, i32 0, i32 2
  %52 = load i32*, i32** %51, align 8
  %53 = icmp eq i32* %52, null
  br i1 %53, label %54, label %56

54:                                               ; preds = %39
  %55 = load i32, i32* @ENOMEM, align 4
  store i32 %55, i32* %2, align 4
  br label %67

56:                                               ; preds = %39
  %57 = load %struct.rman*, %struct.rman** %3, align 8
  %58 = getelementptr inbounds %struct.rman, %struct.rman* %57, i32 0, i32 2
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* @MTX_DEF, align 4
  %61 = call i32 @mtx_init(i32* %59, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32* null, i32 %60)
  %62 = call i32 @mtx_lock(i32* @rman_mtx)
  %63 = load %struct.rman*, %struct.rman** %3, align 8
  %64 = load i32, i32* @rm_link, align 4
  %65 = call i32 @TAILQ_INSERT_TAIL(i32* @rman_head, %struct.rman* %63, i32 %64)
  %66 = call i32 @mtx_unlock(i32* @rman_mtx)
  store i32 0, i32* %2, align 4
  br label %67

67:                                               ; preds = %56, %54
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local i32 @TAILQ_INIT(i32*) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32* @malloc(i32, i32, i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.rman*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
