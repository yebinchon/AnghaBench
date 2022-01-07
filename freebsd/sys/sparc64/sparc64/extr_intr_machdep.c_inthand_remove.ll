; ModuleID = '/home/carl/AnghaBench/freebsd/sys/sparc64/sparc64/extr_intr_machdep.c_inthand_remove.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/sparc64/sparc64/extr_intr_machdep.c_inthand_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intr_vector = type { i64 }

@IV_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@intr_table_lock = common dso_local global i32 0, align 4
@intr_vectors = common dso_local global %struct.intr_vector* null, align 8
@PIL_LOW = common dso_local global i32 0, align 4
@intr_fast = common dso_local global i32 0, align 4
@intr_stray_vector = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @inthand_remove(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.intr_vector*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %2
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @IV_MAX, align 4
  %13 = icmp sge i32 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %10, %2
  %15 = load i32, i32* @EINVAL, align 4
  store i32 %15, i32* %3, align 4
  br label %46

16:                                               ; preds = %10
  %17 = load i8*, i8** %5, align 8
  %18 = call i32 @intr_event_remove_handler(i8* %17)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %44

21:                                               ; preds = %16
  %22 = call i32 @sx_xlock(i32* @intr_table_lock)
  %23 = load %struct.intr_vector*, %struct.intr_vector** @intr_vectors, align 8
  %24 = load i32, i32* %4, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.intr_vector, %struct.intr_vector* %23, i64 %25
  store %struct.intr_vector* %26, %struct.intr_vector** %6, align 8
  %27 = load %struct.intr_vector*, %struct.intr_vector** %6, align 8
  %28 = getelementptr inbounds %struct.intr_vector, %struct.intr_vector* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = add nsw i64 %29, -1
  store i64 %30, i64* %28, align 8
  %31 = load %struct.intr_vector*, %struct.intr_vector** %6, align 8
  %32 = getelementptr inbounds %struct.intr_vector, %struct.intr_vector* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %21
  %36 = load i32, i32* @PIL_LOW, align 4
  %37 = load i32, i32* @intr_fast, align 4
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* @intr_stray_vector, align 4
  %40 = load %struct.intr_vector*, %struct.intr_vector** %6, align 8
  %41 = call i32 @intr_setup(i32 %36, i32 %37, i32 %38, i32 %39, %struct.intr_vector* %40)
  br label %42

42:                                               ; preds = %35, %21
  %43 = call i32 @sx_xunlock(i32* @intr_table_lock)
  br label %44

44:                                               ; preds = %42, %16
  %45 = load i32, i32* %7, align 4
  store i32 %45, i32* %3, align 4
  br label %46

46:                                               ; preds = %44, %14
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i32 @intr_event_remove_handler(i8*) #1

declare dso_local i32 @sx_xlock(i32*) #1

declare dso_local i32 @intr_setup(i32, i32, i32, i32, %struct.intr_vector*) #1

declare dso_local i32 @sx_xunlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
