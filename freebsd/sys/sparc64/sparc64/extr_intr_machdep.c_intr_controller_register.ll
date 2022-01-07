; ModuleID = '/home/carl/AnghaBench/freebsd/sys/sparc64/sparc64/extr_intr_machdep.c_intr_controller_register.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/sparc64/sparc64/extr_intr_machdep.c_intr_controller_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intr_vector = type { i32, %struct.intr_event*, i8*, %struct.intr_controller* }
%struct.intr_event = type { i32 }
%struct.intr_controller = type { i32 }

@IV_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@intr_table_lock = common dso_local global i32 0, align 4
@intr_vectors = common dso_local global %struct.intr_vector* null, align 8
@EEXIST = common dso_local global i32 0, align 4
@intr_assign_cpu = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"vec%d:\00", align 1
@mid = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @intr_controller_register(i32 %0, %struct.intr_controller* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.intr_controller*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.intr_event*, align 8
  %9 = alloca %struct.intr_vector*, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.intr_controller* %1, %struct.intr_controller** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load i32, i32* %5, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %3
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @IV_MAX, align 4
  %16 = icmp sge i32 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %13, %3
  %18 = load i32, i32* @EINVAL, align 4
  store i32 %18, i32* %4, align 4
  br label %75

19:                                               ; preds = %13
  %20 = call i32 @sx_xlock(i32* @intr_table_lock)
  %21 = load %struct.intr_vector*, %struct.intr_vector** @intr_vectors, align 8
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.intr_vector, %struct.intr_vector* %21, i64 %23
  store %struct.intr_vector* %24, %struct.intr_vector** %9, align 8
  %25 = load %struct.intr_vector*, %struct.intr_vector** %9, align 8
  %26 = getelementptr inbounds %struct.intr_vector, %struct.intr_vector* %25, i32 0, i32 1
  %27 = load %struct.intr_event*, %struct.intr_event** %26, align 8
  store %struct.intr_event* %27, %struct.intr_event** %8, align 8
  %28 = call i32 @sx_xunlock(i32* @intr_table_lock)
  %29 = load %struct.intr_event*, %struct.intr_event** %8, align 8
  %30 = icmp ne %struct.intr_event* %29, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %19
  %32 = load i32, i32* @EEXIST, align 4
  store i32 %32, i32* %4, align 4
  br label %75

33:                                               ; preds = %19
  %34 = load %struct.intr_vector*, %struct.intr_vector** %9, align 8
  %35 = load i32, i32* %5, align 4
  %36 = load %struct.intr_controller*, %struct.intr_controller** %6, align 8
  %37 = getelementptr inbounds %struct.intr_controller, %struct.intr_controller* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.intr_controller*, %struct.intr_controller** %6, align 8
  %40 = getelementptr inbounds %struct.intr_controller, %struct.intr_controller* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @intr_assign_cpu, align 4
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @intr_event_create(%struct.intr_event** %8, %struct.intr_vector* %34, i32 0, i32 %35, i32* null, i32 %38, i32 %41, i32 %42, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %43)
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %10, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %33
  %48 = load i32, i32* %10, align 4
  store i32 %48, i32* %4, align 4
  br label %75

49:                                               ; preds = %33
  %50 = call i32 @sx_xlock(i32* @intr_table_lock)
  %51 = load %struct.intr_vector*, %struct.intr_vector** %9, align 8
  %52 = getelementptr inbounds %struct.intr_vector, %struct.intr_vector* %51, i32 0, i32 1
  %53 = load %struct.intr_event*, %struct.intr_event** %52, align 8
  %54 = icmp ne %struct.intr_event* %53, null
  br i1 %54, label %55, label %60

55:                                               ; preds = %49
  %56 = call i32 @sx_xunlock(i32* @intr_table_lock)
  %57 = load %struct.intr_event*, %struct.intr_event** %8, align 8
  %58 = call i32 @intr_event_destroy(%struct.intr_event* %57)
  %59 = load i32, i32* @EEXIST, align 4
  store i32 %59, i32* %4, align 4
  br label %75

60:                                               ; preds = %49
  %61 = load %struct.intr_controller*, %struct.intr_controller** %6, align 8
  %62 = load %struct.intr_vector*, %struct.intr_vector** %9, align 8
  %63 = getelementptr inbounds %struct.intr_vector, %struct.intr_vector* %62, i32 0, i32 3
  store %struct.intr_controller* %61, %struct.intr_controller** %63, align 8
  %64 = load i8*, i8** %7, align 8
  %65 = load %struct.intr_vector*, %struct.intr_vector** %9, align 8
  %66 = getelementptr inbounds %struct.intr_vector, %struct.intr_vector* %65, i32 0, i32 2
  store i8* %64, i8** %66, align 8
  %67 = load %struct.intr_event*, %struct.intr_event** %8, align 8
  %68 = load %struct.intr_vector*, %struct.intr_vector** %9, align 8
  %69 = getelementptr inbounds %struct.intr_vector, %struct.intr_vector* %68, i32 0, i32 1
  store %struct.intr_event* %67, %struct.intr_event** %69, align 8
  %70 = load i32, i32* @mid, align 4
  %71 = call i32 @PCPU_GET(i32 %70)
  %72 = load %struct.intr_vector*, %struct.intr_vector** %9, align 8
  %73 = getelementptr inbounds %struct.intr_vector, %struct.intr_vector* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 8
  %74 = call i32 @sx_xunlock(i32* @intr_table_lock)
  store i32 0, i32* %4, align 4
  br label %75

75:                                               ; preds = %60, %55, %47, %31, %17
  %76 = load i32, i32* %4, align 4
  ret i32 %76
}

declare dso_local i32 @sx_xlock(i32*) #1

declare dso_local i32 @sx_xunlock(i32*) #1

declare dso_local i32 @intr_event_create(%struct.intr_event**, %struct.intr_vector*, i32, i32, i32*, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @intr_event_destroy(%struct.intr_event*) #1

declare dso_local i32 @PCPU_GET(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
