; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_witness.c_witness_get.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_witness.c_witness_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.witness = type { i32 }

@witness_cold = common dso_local global i64 0, align 8
@w_mtx = common dso_local global i32 0, align 4
@MA_OWNED = common dso_local global i32 0, align 4
@witness_watch = common dso_local global i32 0, align 4
@w_free = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"WITNESS: unable to allocate a new witness object\0A\00", align 1
@w_list = common dso_local global i32 0, align 4
@w_free_cnt = common dso_local global i32 0, align 4
@w_max_used_index = common dso_local global i32 0, align 4
@witness_count = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.witness* ()* @witness_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.witness* @witness_get() #0 {
  %1 = alloca %struct.witness*, align 8
  %2 = alloca %struct.witness*, align 8
  %3 = alloca i32, align 4
  %4 = load i64, i64* @witness_cold, align 8
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %0
  %7 = load i32, i32* @MA_OWNED, align 4
  %8 = call i32 @mtx_assert(i32* @w_mtx, i32 %7)
  br label %9

9:                                                ; preds = %6, %0
  %10 = load i32, i32* @witness_watch, align 4
  %11 = icmp eq i32 %10, -1
  br i1 %11, label %12, label %14

12:                                               ; preds = %9
  %13 = call i32 @mtx_unlock_spin(i32* @w_mtx)
  store %struct.witness* null, %struct.witness** %1, align 8
  br label %56

14:                                               ; preds = %9
  %15 = call i64 @STAILQ_EMPTY(i32* @w_free)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %14
  store i32 -1, i32* @witness_watch, align 4
  %18 = call i32 @mtx_unlock_spin(i32* @w_mtx)
  %19 = call i32 @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  store %struct.witness* null, %struct.witness** %1, align 8
  br label %56

20:                                               ; preds = %14
  %21 = call %struct.witness* @STAILQ_FIRST(i32* @w_free)
  store %struct.witness* %21, %struct.witness** %2, align 8
  %22 = load i32, i32* @w_list, align 4
  %23 = call i32 @STAILQ_REMOVE_HEAD(i32* @w_free, i32 %22)
  %24 = load i32, i32* @w_free_cnt, align 4
  %25 = add nsw i32 %24, -1
  store i32 %25, i32* @w_free_cnt, align 4
  %26 = load %struct.witness*, %struct.witness** %2, align 8
  %27 = getelementptr inbounds %struct.witness, %struct.witness* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %3, align 4
  %29 = load i32, i32* %3, align 4
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %20
  %32 = load i32, i32* %3, align 4
  %33 = load i32, i32* @w_max_used_index, align 4
  %34 = add nsw i32 %33, 1
  %35 = icmp eq i32 %32, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %31
  %37 = load i32, i32* %3, align 4
  %38 = load i32, i32* @witness_count, align 4
  %39 = icmp slt i32 %37, %38
  br label %40

40:                                               ; preds = %36, %31, %20
  %41 = phi i1 [ false, %31 ], [ false, %20 ], [ %39, %36 ]
  %42 = zext i1 %41 to i32
  %43 = call i32 @MPASS(i32 %42)
  %44 = load %struct.witness*, %struct.witness** %2, align 8
  %45 = call i32 @bzero(%struct.witness* %44, i32 4)
  %46 = load i32, i32* %3, align 4
  %47 = load %struct.witness*, %struct.witness** %2, align 8
  %48 = getelementptr inbounds %struct.witness, %struct.witness* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 4
  %49 = load i32, i32* %3, align 4
  %50 = load i32, i32* @w_max_used_index, align 4
  %51 = icmp sgt i32 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %40
  %53 = load i32, i32* %3, align 4
  store i32 %53, i32* @w_max_used_index, align 4
  br label %54

54:                                               ; preds = %52, %40
  %55 = load %struct.witness*, %struct.witness** %2, align 8
  store %struct.witness* %55, %struct.witness** %1, align 8
  br label %56

56:                                               ; preds = %54, %17, %12
  %57 = load %struct.witness*, %struct.witness** %1, align 8
  ret %struct.witness* %57
}

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local i32 @mtx_unlock_spin(i32*) #1

declare dso_local i64 @STAILQ_EMPTY(i32*) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local %struct.witness* @STAILQ_FIRST(i32*) #1

declare dso_local i32 @STAILQ_REMOVE_HEAD(i32*, i32) #1

declare dso_local i32 @MPASS(i32) #1

declare dso_local i32 @bzero(%struct.witness*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
