; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_rangelock.c_rangelock_unlock_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_rangelock.c_rangelock_unlock_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.rl_q_entry* }
%struct.rl_q_entry = type { i32 }
%struct.rangelock = type { i32, %struct.rl_q_entry* }
%struct.mtx = type { i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@rl_q_link = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"rangelock_enqueue: next entry not NULL\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"stuck currdep\00", align 1
@curthread = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rangelock*, %struct.rl_q_entry*, %struct.mtx*, i32)* @rangelock_unlock_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rangelock_unlock_locked(%struct.rangelock* %0, %struct.rl_q_entry* %1, %struct.mtx* %2, i32 %3) #0 {
  %5 = alloca %struct.rangelock*, align 8
  %6 = alloca %struct.rl_q_entry*, align 8
  %7 = alloca %struct.mtx*, align 8
  %8 = alloca i32, align 4
  store %struct.rangelock* %0, %struct.rangelock** %5, align 8
  store %struct.rl_q_entry* %1, %struct.rl_q_entry** %6, align 8
  store %struct.mtx* %2, %struct.mtx** %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load %struct.rangelock*, %struct.rangelock** %5, align 8
  %10 = icmp ne %struct.rangelock* %9, null
  br i1 %10, label %11, label %17

11:                                               ; preds = %4
  %12 = load %struct.rl_q_entry*, %struct.rl_q_entry** %6, align 8
  %13 = icmp ne %struct.rl_q_entry* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %11
  %15 = load %struct.mtx*, %struct.mtx** %7, align 8
  %16 = icmp ne %struct.mtx* %15, null
  br label %17

17:                                               ; preds = %14, %11, %4
  %18 = phi i1 [ false, %11 ], [ false, %4 ], [ %16, %14 ]
  %19 = zext i1 %18 to i32
  %20 = call i32 @MPASS(i32 %19)
  %21 = load %struct.mtx*, %struct.mtx** %7, align 8
  %22 = load i32, i32* @MA_OWNED, align 4
  %23 = call i32 @mtx_assert(%struct.mtx* %21, i32 %22)
  %24 = load i32, i32* %8, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %44, label %26

26:                                               ; preds = %17
  %27 = load %struct.rangelock*, %struct.rangelock** %5, align 8
  %28 = getelementptr inbounds %struct.rangelock, %struct.rangelock* %27, i32 0, i32 1
  %29 = load %struct.rl_q_entry*, %struct.rl_q_entry** %28, align 8
  %30 = load %struct.rl_q_entry*, %struct.rl_q_entry** %6, align 8
  %31 = icmp eq %struct.rl_q_entry* %29, %30
  br i1 %31, label %32, label %43

32:                                               ; preds = %26
  %33 = load %struct.rangelock*, %struct.rangelock** %5, align 8
  %34 = getelementptr inbounds %struct.rangelock, %struct.rangelock* %33, i32 0, i32 1
  %35 = load %struct.rl_q_entry*, %struct.rl_q_entry** %34, align 8
  %36 = load i32, i32* @rl_q_link, align 4
  %37 = call i32* @TAILQ_NEXT(%struct.rl_q_entry* %35, i32 %36)
  %38 = icmp eq i32* %37, null
  %39 = zext i1 %38 to i32
  %40 = call i32 @KASSERT(i32 %39, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %41 = load %struct.rangelock*, %struct.rangelock** %5, align 8
  %42 = getelementptr inbounds %struct.rangelock, %struct.rangelock* %41, i32 0, i32 1
  store %struct.rl_q_entry* null, %struct.rl_q_entry** %42, align 8
  br label %43

43:                                               ; preds = %32, %26
  br label %52

44:                                               ; preds = %17
  %45 = load %struct.rl_q_entry*, %struct.rl_q_entry** %6, align 8
  %46 = load %struct.rangelock*, %struct.rangelock** %5, align 8
  %47 = getelementptr inbounds %struct.rangelock, %struct.rangelock* %46, i32 0, i32 1
  %48 = load %struct.rl_q_entry*, %struct.rl_q_entry** %47, align 8
  %49 = icmp ne %struct.rl_q_entry* %45, %48
  %50 = zext i1 %49 to i32
  %51 = call i32 @KASSERT(i32 %50, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  br label %52

52:                                               ; preds = %44, %43
  %53 = load %struct.rangelock*, %struct.rangelock** %5, align 8
  %54 = getelementptr inbounds %struct.rangelock, %struct.rangelock* %53, i32 0, i32 0
  %55 = load %struct.rl_q_entry*, %struct.rl_q_entry** %6, align 8
  %56 = load i32, i32* @rl_q_link, align 4
  %57 = call i32 @TAILQ_REMOVE(i32* %54, %struct.rl_q_entry* %55, i32 %56)
  %58 = load i32, i32* %8, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %52
  %61 = load %struct.rangelock*, %struct.rangelock** %5, align 8
  %62 = call i32 @rangelock_calc_block(%struct.rangelock* %61)
  br label %63

63:                                               ; preds = %60, %52
  %64 = load %struct.mtx*, %struct.mtx** %7, align 8
  %65 = call i32 @mtx_unlock(%struct.mtx* %64)
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** @curthread, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load %struct.rl_q_entry*, %struct.rl_q_entry** %67, align 8
  %69 = icmp eq %struct.rl_q_entry* %68, null
  br i1 %69, label %70, label %74

70:                                               ; preds = %63
  %71 = load %struct.rl_q_entry*, %struct.rl_q_entry** %6, align 8
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** @curthread, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  store %struct.rl_q_entry* %71, %struct.rl_q_entry** %73, align 8
  br label %77

74:                                               ; preds = %63
  %75 = load %struct.rl_q_entry*, %struct.rl_q_entry** %6, align 8
  %76 = call i32 @rlqentry_free(%struct.rl_q_entry* %75)
  br label %77

77:                                               ; preds = %74, %70
  ret void
}

declare dso_local i32 @MPASS(i32) #1

declare dso_local i32 @mtx_assert(%struct.mtx*, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32* @TAILQ_NEXT(%struct.rl_q_entry*, i32) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.rl_q_entry*, i32) #1

declare dso_local i32 @rangelock_calc_block(%struct.rangelock*) #1

declare dso_local i32 @mtx_unlock(%struct.mtx*) #1

declare dso_local i32 @rlqentry_free(%struct.rl_q_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
