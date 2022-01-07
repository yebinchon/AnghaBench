; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_mutex.c___mtx_trylock_spin_flags.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_mutex.c___mtx_trylock_spin_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtx = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@MTX_DESTROYED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [46 x i8] c"mtx_trylock_spin() of destroyed mutex @ %s:%d\00", align 1
@lock_class_mtx_spin = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"mtx_trylock_spin() of sleep mutex %s @ %s:%d\00", align 1
@MTX_RECURSE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [63 x i8] c"mtx_trylock_spin: unsupp. opt MTX_RECURSE on mutex %s @ %s:%d\0A\00", align 1
@curthread = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"LOCK\00", align 1
@LOP_EXCLUSIVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__mtx_trylock_spin_flags(i64* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.mtx*, align 8
  store i64* %0, i64** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = call i64 (...) @SCHEDULER_STOPPED()
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %4
  store i32 1, i32* %5, align 4
  br label %85

14:                                               ; preds = %4
  %15 = load i64*, i64** %6, align 8
  %16 = call %struct.mtx* @mtxlock2mtx(i64* %15)
  store %struct.mtx* %16, %struct.mtx** %10, align 8
  %17 = load %struct.mtx*, %struct.mtx** %10, align 8
  %18 = getelementptr inbounds %struct.mtx, %struct.mtx* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @MTX_DESTROYED, align 8
  %21 = icmp ne i64 %19, %20
  %22 = zext i1 %21 to i32
  %23 = load i8*, i8** %8, align 8
  %24 = load i32, i32* %9, align 4
  %25 = sext i32 %24 to i64
  %26 = inttoptr i64 %25 to i8*
  %27 = call i32 @KASSERT(i32 %22, i8* %26)
  %28 = load %struct.mtx*, %struct.mtx** %10, align 8
  %29 = getelementptr inbounds %struct.mtx, %struct.mtx* %28, i32 0, i32 1
  %30 = call i32* @LOCK_CLASS(%struct.TYPE_4__* %29)
  %31 = icmp eq i32* %30, @lock_class_mtx_spin
  %32 = zext i1 %31 to i32
  %33 = load %struct.mtx*, %struct.mtx** %10, align 8
  %34 = getelementptr inbounds %struct.mtx, %struct.mtx* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i8*, i8** %8, align 8
  %38 = load i32, i32* %9, align 4
  %39 = sext i32 %38 to i64
  %40 = inttoptr i64 %39 to i8*
  %41 = call i32 @KASSERT(i32 %32, i8* %40)
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* @MTX_RECURSE, align 4
  %44 = and i32 %42, %43
  %45 = icmp eq i32 %44, 0
  %46 = zext i1 %45 to i32
  %47 = load %struct.mtx*, %struct.mtx** %10, align 8
  %48 = getelementptr inbounds %struct.mtx, %struct.mtx* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i8*, i8** %8, align 8
  %52 = load i32, i32* %9, align 4
  %53 = sext i32 %52 to i64
  %54 = inttoptr i64 %53 to i8*
  %55 = call i32 @KASSERT(i32 %46, i8* %54)
  %56 = load %struct.mtx*, %struct.mtx** %10, align 8
  %57 = load i32, i32* @curthread, align 4
  %58 = load i32, i32* %7, align 4
  %59 = load i8*, i8** %8, align 8
  %60 = load i32, i32* %9, align 4
  %61 = call i64 @__mtx_trylock_spin(%struct.mtx* %56, i32 %57, i32 %58, i8* %59, i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %78

63:                                               ; preds = %14
  %64 = load %struct.mtx*, %struct.mtx** %10, align 8
  %65 = getelementptr inbounds %struct.mtx, %struct.mtx* %64, i32 0, i32 1
  %66 = load i32, i32* %7, align 4
  %67 = load i8*, i8** %8, align 8
  %68 = load i32, i32* %9, align 4
  %69 = call i32 @LOCK_LOG_TRY(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), %struct.TYPE_4__* %65, i32 %66, i32 1, i8* %67, i32 %68)
  %70 = load %struct.mtx*, %struct.mtx** %10, align 8
  %71 = getelementptr inbounds %struct.mtx, %struct.mtx* %70, i32 0, i32 1
  %72 = load i32, i32* %7, align 4
  %73 = load i32, i32* @LOP_EXCLUSIVE, align 4
  %74 = or i32 %72, %73
  %75 = load i8*, i8** %8, align 8
  %76 = load i32, i32* %9, align 4
  %77 = call i32 @WITNESS_LOCK(%struct.TYPE_4__* %71, i32 %74, i8* %75, i32 %76)
  store i32 1, i32* %5, align 4
  br label %85

78:                                               ; preds = %14
  %79 = load %struct.mtx*, %struct.mtx** %10, align 8
  %80 = getelementptr inbounds %struct.mtx, %struct.mtx* %79, i32 0, i32 1
  %81 = load i32, i32* %7, align 4
  %82 = load i8*, i8** %8, align 8
  %83 = load i32, i32* %9, align 4
  %84 = call i32 @LOCK_LOG_TRY(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), %struct.TYPE_4__* %80, i32 %81, i32 0, i8* %82, i32 %83)
  store i32 0, i32* %5, align 4
  br label %85

85:                                               ; preds = %78, %63, %13
  %86 = load i32, i32* %5, align 4
  ret i32 %86
}

declare dso_local i64 @SCHEDULER_STOPPED(...) #1

declare dso_local %struct.mtx* @mtxlock2mtx(i64*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32* @LOCK_CLASS(%struct.TYPE_4__*) #1

declare dso_local i64 @__mtx_trylock_spin(%struct.mtx*, i32, i32, i8*, i32) #1

declare dso_local i32 @LOCK_LOG_TRY(i8*, %struct.TYPE_4__*, i32, i32, i8*, i32) #1

declare dso_local i32 @WITNESS_LOCK(%struct.TYPE_4__*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
