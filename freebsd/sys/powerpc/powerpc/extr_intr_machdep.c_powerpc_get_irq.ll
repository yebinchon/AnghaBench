; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/powerpc/extr_intr_machdep.c_powerpc_get_irq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/powerpc/extr_intr_machdep.c_powerpc_get_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32, i32, i64, i32* }

@intr_table_lock = common dso_local global i32 0, align 4
@npics = common dso_local global i32 0, align 4
@piclist = common dso_local global %struct.TYPE_2__* null, align 8
@nirqs = common dso_local global i64 0, align 8
@MAX_PICS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Number of PICs exceeds maximum (%d)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @powerpc_get_irq(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load i64, i64* %4, align 8
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = load i64, i64* %5, align 8
  store i64 %10, i64* %3, align 8
  br label %89

11:                                               ; preds = %2
  %12 = call i32 @mtx_lock(i32* @intr_table_lock)
  store i32 0, i32* %6, align 4
  br label %13

13:                                               ; preds = %37, %11
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @npics, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %40

17:                                               ; preds = %13
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** @piclist, align 8
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* %4, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %36

26:                                               ; preds = %17
  %27 = call i32 @mtx_unlock(i32* @intr_table_lock)
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** @piclist, align 8
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 3
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* %5, align 8
  %35 = add nsw i64 %33, %34
  store i64 %35, i64* %3, align 8
  br label %89

36:                                               ; preds = %17
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %6, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %6, align 4
  br label %13

40:                                               ; preds = %13
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** @piclist, align 8
  %42 = load i32, i32* %6, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 4
  store i32* null, i32** %45, align 8
  %46 = load i64, i64* %4, align 8
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** @piclist, align 8
  %48 = load i32, i32* %6, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  store i64 %46, i64* %51, align 8
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** @piclist, align 8
  %53 = load i32, i32* %6, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  store i32 124, i32* %56, align 8
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** @piclist, align 8
  %58 = load i32, i32* %6, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 2
  store i32 4, i32* %61, align 4
  %62 = load i64, i64* @nirqs, align 8
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** @piclist, align 8
  %64 = load i32, i32* %6, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 3
  store i64 %62, i64* %67, align 8
  %68 = load i64, i64* @nirqs, align 8
  %69 = add nsw i64 %68, 33554432
  store i64 %69, i64* @nirqs, align 8
  %70 = load i32, i32* @npics, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* @npics, align 4
  %72 = load i32, i32* @npics, align 4
  %73 = load i32, i32* @MAX_PICS, align 4
  %74 = icmp slt i32 %72, %73
  %75 = zext i1 %74 to i32
  %76 = load i32, i32* @MAX_PICS, align 4
  %77 = sext i32 %76 to i64
  %78 = inttoptr i64 %77 to i8*
  %79 = call i32 @KASSERT(i32 %75, i8* %78)
  %80 = call i32 @mtx_unlock(i32* @intr_table_lock)
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** @piclist, align 8
  %82 = load i32, i32* %6, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 3
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* %5, align 8
  %88 = add nsw i64 %86, %87
  store i64 %88, i64* %3, align 8
  br label %89

89:                                               ; preds = %40, %26, %9
  %90 = load i64, i64* %3, align 8
  ret i64 %90
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
