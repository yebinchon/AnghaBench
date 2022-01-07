; ModuleID = '/home/carl/AnghaBench/freebsd/sys/sparc64/sparc64/extr_intr_machdep.c_intr_describe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/sparc64/sparc64/extr_intr_machdep.c_intr_describe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intr_vector = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@IV_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@intr_table_lock = common dso_local global i32 0, align 4
@intr_vectors = common dso_local global %struct.intr_vector* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @intr_describe(i32 %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.intr_vector*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load i32, i32* %5, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %3
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @IV_MAX, align 4
  %15 = icmp sge i32 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %12, %3
  %17 = load i32, i32* @EINVAL, align 4
  store i32 %17, i32* %4, align 4
  br label %51

18:                                               ; preds = %12
  %19 = call i32 @sx_xlock(i32* @intr_table_lock)
  %20 = load %struct.intr_vector*, %struct.intr_vector** @intr_vectors, align 8
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.intr_vector, %struct.intr_vector* %20, i64 %22
  store %struct.intr_vector* %23, %struct.intr_vector** %8, align 8
  %24 = load %struct.intr_vector*, %struct.intr_vector** %8, align 8
  %25 = icmp eq %struct.intr_vector* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %18
  %27 = call i32 @sx_xunlock(i32* @intr_table_lock)
  %28 = load i32, i32* @EINVAL, align 4
  store i32 %28, i32* %4, align 4
  br label %51

29:                                               ; preds = %18
  %30 = load %struct.intr_vector*, %struct.intr_vector** %8, align 8
  %31 = getelementptr inbounds %struct.intr_vector, %struct.intr_vector* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = load i8*, i8** %6, align 8
  %34 = load i8*, i8** %7, align 8
  %35 = call i32 @intr_event_describe_handler(%struct.TYPE_2__* %32, i8* %33, i8* %34)
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %29
  %39 = call i32 @sx_xunlock(i32* @intr_table_lock)
  %40 = load i32, i32* %9, align 4
  store i32 %40, i32* %4, align 4
  br label %51

41:                                               ; preds = %29
  %42 = load i32, i32* %5, align 4
  %43 = load %struct.intr_vector*, %struct.intr_vector** %8, align 8
  %44 = getelementptr inbounds %struct.intr_vector, %struct.intr_vector* %43, i32 0, i32 0
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @intrcnt_updatename(i32 %42, i32 %47, i32 0)
  %49 = call i32 @sx_xunlock(i32* @intr_table_lock)
  %50 = load i32, i32* %9, align 4
  store i32 %50, i32* %4, align 4
  br label %51

51:                                               ; preds = %41, %38, %26, %16
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

declare dso_local i32 @sx_xlock(i32*) #1

declare dso_local i32 @sx_xunlock(i32*) #1

declare dso_local i32 @intr_event_describe_handler(%struct.TYPE_2__*, i8*, i8*) #1

declare dso_local i32 @intrcnt_updatename(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
