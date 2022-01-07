; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_rangelock.c_rangelock_unlock_range.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_rangelock.c_rangelock_unlock_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rangelock = type { i32 }
%struct.mtx = type { i32 }
%struct.rl_q_entry = type { i32, i64, i64 }

@RL_LOCK_GRANTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Unlocking non-granted lock\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"wrong start\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"wrong end\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @rangelock_unlock_range(%struct.rangelock* %0, i8* %1, i64 %2, i64 %3, %struct.mtx* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca %struct.rangelock*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.mtx*, align 8
  %12 = alloca %struct.rl_q_entry*, align 8
  store %struct.rangelock* %0, %struct.rangelock** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store %struct.mtx* %4, %struct.mtx** %11, align 8
  %13 = load %struct.rangelock*, %struct.rangelock** %7, align 8
  %14 = icmp ne %struct.rangelock* %13, null
  br i1 %14, label %15, label %21

15:                                               ; preds = %5
  %16 = load i8*, i8** %8, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  %19 = load %struct.mtx*, %struct.mtx** %11, align 8
  %20 = icmp ne %struct.mtx* %19, null
  br label %21

21:                                               ; preds = %18, %15, %5
  %22 = phi i1 [ false, %15 ], [ false, %5 ], [ %20, %18 ]
  %23 = zext i1 %22 to i32
  %24 = call i32 @MPASS(i32 %23)
  %25 = load i8*, i8** %8, align 8
  %26 = bitcast i8* %25 to %struct.rl_q_entry*
  store %struct.rl_q_entry* %26, %struct.rl_q_entry** %12, align 8
  %27 = load %struct.rl_q_entry*, %struct.rl_q_entry** %12, align 8
  %28 = getelementptr inbounds %struct.rl_q_entry, %struct.rl_q_entry* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @RL_LOCK_GRANTED, align 4
  %31 = and i32 %29, %30
  %32 = call i32 @KASSERT(i32 %31, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %33 = load %struct.rl_q_entry*, %struct.rl_q_entry** %12, align 8
  %34 = getelementptr inbounds %struct.rl_q_entry, %struct.rl_q_entry* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* %9, align 8
  %37 = icmp eq i64 %35, %36
  %38 = zext i1 %37 to i32
  %39 = call i32 @KASSERT(i32 %38, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %40 = load %struct.rl_q_entry*, %struct.rl_q_entry** %12, align 8
  %41 = getelementptr inbounds %struct.rl_q_entry, %struct.rl_q_entry* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* %10, align 8
  %44 = icmp sge i64 %42, %43
  %45 = zext i1 %44 to i32
  %46 = call i32 @KASSERT(i32 %45, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %47 = load %struct.mtx*, %struct.mtx** %11, align 8
  %48 = call i32 @mtx_lock(%struct.mtx* %47)
  %49 = load %struct.rl_q_entry*, %struct.rl_q_entry** %12, align 8
  %50 = getelementptr inbounds %struct.rl_q_entry, %struct.rl_q_entry* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* %10, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %59

54:                                               ; preds = %21
  %55 = load %struct.rangelock*, %struct.rangelock** %7, align 8
  %56 = load i8*, i8** %8, align 8
  %57 = load %struct.mtx*, %struct.mtx** %11, align 8
  %58 = call i32 @rangelock_unlock_locked(%struct.rangelock* %55, i8* %56, %struct.mtx* %57, i32 1)
  store i8* null, i8** %6, align 8
  br label %68

59:                                               ; preds = %21
  %60 = load i64, i64* %10, align 8
  %61 = load %struct.rl_q_entry*, %struct.rl_q_entry** %12, align 8
  %62 = getelementptr inbounds %struct.rl_q_entry, %struct.rl_q_entry* %61, i32 0, i32 2
  store i64 %60, i64* %62, align 8
  %63 = load %struct.rangelock*, %struct.rangelock** %7, align 8
  %64 = call i32 @rangelock_calc_block(%struct.rangelock* %63)
  %65 = load %struct.mtx*, %struct.mtx** %11, align 8
  %66 = call i32 @mtx_unlock(%struct.mtx* %65)
  %67 = load i8*, i8** %8, align 8
  store i8* %67, i8** %6, align 8
  br label %68

68:                                               ; preds = %59, %54
  %69 = load i8*, i8** %6, align 8
  ret i8* %69
}

declare dso_local i32 @MPASS(i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @mtx_lock(%struct.mtx*) #1

declare dso_local i32 @rangelock_unlock_locked(%struct.rangelock*, i8*, %struct.mtx*, i32) #1

declare dso_local i32 @rangelock_calc_block(%struct.rangelock*) #1

declare dso_local i32 @mtx_unlock(%struct.mtx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
