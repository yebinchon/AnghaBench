; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_mutex.c___mtx_lock_spin_flags.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_mutex.c___mtx_lock_spin_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtx = type { i64, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32, i32 }

@MTX_DESTROYED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [43 x i8] c"mtx_lock_spin() of destroyed mutex @ %s:%d\00", align 1
@lock_class_mtx_spin = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"mtx_lock_spin() of sleep mutex %s @ %s:%d\00", align 1
@LO_RECURSABLE = common dso_local global i32 0, align 4
@MTX_RECURSE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [59 x i8] c"mtx_lock_spin: recursed on non-recursive mutex %s @ %s:%d\0A\00", align 1
@LOP_NEWORDER = common dso_local global i32 0, align 4
@LOP_EXCLUSIVE = common dso_local global i32 0, align 4
@curthread = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [5 x i8] c"LOCK\00", align 1
@MTX_UNOWNED = common dso_local global i64 0, align 8
@spin__acquire = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__mtx_lock_spin_flags(i64* %0, i32 %1, i8* %2, i32 %3) #0 {
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
  %24 = getelementptr inbounds %struct.mtx, %struct.mtx* %23, i32 0, i32 1
  %25 = call i32* @LOCK_CLASS(%struct.TYPE_5__* %24)
  %26 = icmp eq i32* %25, @lock_class_mtx_spin
  %27 = zext i1 %26 to i32
  %28 = load %struct.mtx*, %struct.mtx** %9, align 8
  %29 = getelementptr inbounds %struct.mtx, %struct.mtx* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i8*, i8** %7, align 8
  %33 = load i32, i32* %8, align 4
  %34 = sext i32 %33 to i64
  %35 = inttoptr i64 %34 to i8*
  %36 = call i32 @KASSERT(i32 %27, i8* %35)
  %37 = load %struct.mtx*, %struct.mtx** %9, align 8
  %38 = call i64 @mtx_owned(%struct.mtx* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %65

40:                                               ; preds = %4
  %41 = load %struct.mtx*, %struct.mtx** %9, align 8
  %42 = getelementptr inbounds %struct.mtx, %struct.mtx* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @LO_RECURSABLE, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %53, label %48

48:                                               ; preds = %40
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* @MTX_RECURSE, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br label %53

53:                                               ; preds = %48, %40
  %54 = phi i1 [ true, %40 ], [ %52, %48 ]
  %55 = zext i1 %54 to i32
  %56 = load %struct.mtx*, %struct.mtx** %9, align 8
  %57 = getelementptr inbounds %struct.mtx, %struct.mtx* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i8*, i8** %7, align 8
  %61 = load i32, i32* %8, align 4
  %62 = sext i32 %61 to i64
  %63 = inttoptr i64 %62 to i8*
  %64 = call i32 @KASSERT(i32 %55, i8* %63)
  br label %65

65:                                               ; preds = %53, %4
  %66 = load i32, i32* @MTX_RECURSE, align 4
  %67 = xor i32 %66, -1
  %68 = load i32, i32* %6, align 4
  %69 = and i32 %68, %67
  store i32 %69, i32* %6, align 4
  %70 = load %struct.mtx*, %struct.mtx** %9, align 8
  %71 = getelementptr inbounds %struct.mtx, %struct.mtx* %70, i32 0, i32 1
  %72 = load i32, i32* %6, align 4
  %73 = load i32, i32* @LOP_NEWORDER, align 4
  %74 = or i32 %72, %73
  %75 = load i32, i32* @LOP_EXCLUSIVE, align 4
  %76 = or i32 %74, %75
  %77 = load i8*, i8** %7, align 8
  %78 = load i32, i32* %8, align 4
  %79 = call i32 @WITNESS_CHECKORDER(%struct.TYPE_5__* %71, i32 %76, i8* %77, i32 %78, i32* null)
  %80 = load %struct.mtx*, %struct.mtx** %9, align 8
  %81 = load i64, i64* @curthread, align 8
  %82 = load i32, i32* %6, align 4
  %83 = load i8*, i8** %7, align 8
  %84 = load i32, i32* %8, align 4
  %85 = call i32 @__mtx_lock_spin(%struct.mtx* %80, i64 %81, i32 %82, i8* %83, i32 %84)
  %86 = load %struct.mtx*, %struct.mtx** %9, align 8
  %87 = getelementptr inbounds %struct.mtx, %struct.mtx* %86, i32 0, i32 1
  %88 = load i32, i32* %6, align 4
  %89 = load %struct.mtx*, %struct.mtx** %9, align 8
  %90 = getelementptr inbounds %struct.mtx, %struct.mtx* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = load i8*, i8** %7, align 8
  %93 = load i32, i32* %8, align 4
  %94 = call i32 @LOCK_LOG_LOCK(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), %struct.TYPE_5__* %87, i32 %88, i32 %91, i8* %92, i32 %93)
  %95 = load %struct.mtx*, %struct.mtx** %9, align 8
  %96 = getelementptr inbounds %struct.mtx, %struct.mtx* %95, i32 0, i32 1
  %97 = load i32, i32* %6, align 4
  %98 = load i32, i32* @LOP_EXCLUSIVE, align 4
  %99 = or i32 %97, %98
  %100 = load i8*, i8** %7, align 8
  %101 = load i32, i32* %8, align 4
  %102 = call i32 @WITNESS_LOCK(%struct.TYPE_5__* %96, i32 %99, i8* %100, i32 %101)
  ret void
}

declare dso_local %struct.mtx* @mtxlock2mtx(i64*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32* @LOCK_CLASS(%struct.TYPE_5__*) #1

declare dso_local i64 @mtx_owned(%struct.mtx*) #1

declare dso_local i32 @WITNESS_CHECKORDER(%struct.TYPE_5__*, i32, i8*, i32, i32*) #1

declare dso_local i32 @__mtx_lock_spin(%struct.mtx*, i64, i32, i8*, i32) #1

declare dso_local i32 @LOCK_LOG_LOCK(i8*, %struct.TYPE_5__*, i32, i32, i8*, i32) #1

declare dso_local i32 @WITNESS_LOCK(%struct.TYPE_5__*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
