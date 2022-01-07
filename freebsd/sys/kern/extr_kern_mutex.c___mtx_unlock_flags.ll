; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_mutex.c___mtx_unlock_flags.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_mutex.c___mtx_unlock_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtx = type { i64, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@MTX_DESTROYED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [40 x i8] c"mtx_unlock() of destroyed mutex @ %s:%d\00", align 1
@lock_class_mtx_sleep = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"mtx_unlock() of spin mutex %s @ %s:%d\00", align 1
@LOP_EXCLUSIVE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"UNLOCK\00", align 1
@MA_OWNED = common dso_local global i32 0, align 4
@curthread = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__mtx_unlock_flags(i64* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.mtx*, align 8
  store i64* %0, i64** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load i64*, i64** %5, align 8
  %11 = call %struct.mtx* @mtxlock2mtx(i64* %10)
  store %struct.mtx* %11, %struct.mtx** %9, align 8
  %12 = load %struct.mtx*, %struct.mtx** %9, align 8
  %13 = getelementptr inbounds %struct.mtx, %struct.mtx* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @MTX_DESTROYED, align 8
  %16 = icmp ne i64 %14, %15
  %17 = zext i1 %16 to i32
  %18 = load i8*, i8** %7, align 8
  %19 = load i32, i32* %8, align 4
  %20 = sext i32 %19 to i64
  %21 = inttoptr i64 %20 to i8*
  %22 = call i32 @KASSERT(i32 %17, i8* %21)
  %23 = load %struct.mtx*, %struct.mtx** %9, align 8
  %24 = getelementptr inbounds %struct.mtx, %struct.mtx* %23, i32 0, i32 2
  %25 = call i32* @LOCK_CLASS(%struct.TYPE_4__* %24)
  %26 = icmp eq i32* %25, @lock_class_mtx_sleep
  %27 = zext i1 %26 to i32
  %28 = load %struct.mtx*, %struct.mtx** %9, align 8
  %29 = getelementptr inbounds %struct.mtx, %struct.mtx* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i8*, i8** %7, align 8
  %33 = load i32, i32* %8, align 4
  %34 = sext i32 %33 to i64
  %35 = inttoptr i64 %34 to i8*
  %36 = call i32 @KASSERT(i32 %27, i8* %35)
  %37 = load %struct.mtx*, %struct.mtx** %9, align 8
  %38 = getelementptr inbounds %struct.mtx, %struct.mtx* %37, i32 0, i32 2
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* @LOP_EXCLUSIVE, align 4
  %41 = or i32 %39, %40
  %42 = load i8*, i8** %7, align 8
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @WITNESS_UNLOCK(%struct.TYPE_4__* %38, i32 %41, i8* %42, i32 %43)
  %45 = load %struct.mtx*, %struct.mtx** %9, align 8
  %46 = getelementptr inbounds %struct.mtx, %struct.mtx* %45, i32 0, i32 2
  %47 = load i32, i32* %6, align 4
  %48 = load %struct.mtx*, %struct.mtx** %9, align 8
  %49 = getelementptr inbounds %struct.mtx, %struct.mtx* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = load i8*, i8** %7, align 8
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @LOCK_LOG_LOCK(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_4__* %46, i32 %47, i32 %50, i8* %51, i32 %52)
  %54 = load %struct.mtx*, %struct.mtx** %9, align 8
  %55 = load i32, i32* @MA_OWNED, align 4
  %56 = call i32 @mtx_assert(%struct.mtx* %54, i32 %55)
  %57 = load %struct.mtx*, %struct.mtx** %9, align 8
  %58 = load i64, i64* @curthread, align 8
  %59 = load i32, i32* %6, align 4
  %60 = load i8*, i8** %7, align 8
  %61 = load i32, i32* %8, align 4
  %62 = call i32 @__mtx_unlock(%struct.mtx* %57, i64 %58, i32 %59, i8* %60, i32 %61)
  %63 = load i64, i64* @curthread, align 8
  %64 = call i32 @TD_LOCKS_DEC(i64 %63)
  ret void
}

declare dso_local %struct.mtx* @mtxlock2mtx(i64*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32* @LOCK_CLASS(%struct.TYPE_4__*) #1

declare dso_local i32 @WITNESS_UNLOCK(%struct.TYPE_4__*, i32, i8*, i32) #1

declare dso_local i32 @LOCK_LOG_LOCK(i8*, %struct.TYPE_4__*, i32, i32, i8*, i32) #1

declare dso_local i32 @mtx_assert(%struct.mtx*, i32) #1

declare dso_local i32 @__mtx_unlock(%struct.mtx*, i64, i32, i8*, i32) #1

declare dso_local i32 @TD_LOCKS_DEC(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
