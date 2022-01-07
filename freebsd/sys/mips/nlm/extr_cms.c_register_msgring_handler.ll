; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/nlm/extr_cms.c_register_msgring_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/nlm/extr_cms.c_register_msgring_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i32* }

@bootverbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"Register handler %d-%d %p(%p)\0A\00", align 1
@MSGRNG_NSTATIONS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Invalid value for bucket range %d,%d\00", align 1
@msgmap_lock = common dso_local global i32 0, align 4
@msgmap = common dso_local global %struct.TYPE_2__* null, align 8
@.str.2 = private unnamed_addr constant [35 x i8] c"Bucket %d already used [action %p]\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @register_msgring_handler(i32 %0, i32 %1, i32* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i8* %3, i8** %8, align 8
  %10 = load i64, i64* @bootverbose, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %4
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* %6, align 4
  %15 = load i32*, i32** %7, align 8
  %16 = load i8*, i8** %8, align 8
  %17 = call i32 @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %14, i32* %15, i8* %16)
  br label %18

18:                                               ; preds = %12, %4
  %19 = load i32, i32* %5, align 4
  %20 = icmp sge i32 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %18
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp sle i32 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %21
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @MSGRNG_NSTATIONS, align 4
  %28 = icmp slt i32 %26, %27
  br label %29

29:                                               ; preds = %25, %21, %18
  %30 = phi i1 [ false, %21 ], [ false, %18 ], [ %28, %25 ]
  %31 = zext i1 %30 to i32
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = inttoptr i64 %34 to i8*
  %36 = call i32 @KASSERT(i32 %31, i8* %35)
  %37 = call i32 @mtx_lock_spin(i32* @msgmap_lock)
  %38 = load i32, i32* %5, align 4
  store i32 %38, i32* %9, align 4
  br label %39

39:                                               ; preds = %73, %29
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp sle i32 %40, %41
  br i1 %42, label %43, label %76

43:                                               ; preds = %39
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** @msgmap, align 8
  %45 = load i32, i32* %9, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = icmp eq i32* %49, null
  %51 = zext i1 %50 to i32
  %52 = load i32, i32* %9, align 4
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** @msgmap, align 8
  %54 = load i32, i32* %9, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = bitcast i32* %58 to i8*
  %60 = call i32 @KASSERT(i32 %51, i8* %59)
  %61 = load i32*, i32** %7, align 8
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** @msgmap, align 8
  %63 = load i32, i32* %9, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 1
  store i32* %61, i32** %66, align 8
  %67 = load i8*, i8** %8, align 8
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** @msgmap, align 8
  %69 = load i32, i32* %9, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  store i8* %67, i8** %72, align 8
  br label %73

73:                                               ; preds = %43
  %74 = load i32, i32* %9, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %9, align 4
  br label %39

76:                                               ; preds = %39
  %77 = call i32 @mtx_unlock_spin(i32* @msgmap_lock)
  ret i32 0
}

declare dso_local i32 @printf(i8*, i32, i32, i32*, i8*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @mtx_lock_spin(i32*) #1

declare dso_local i32 @mtx_unlock_spin(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
