; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_witness.c_witness_destroy.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_witness.c_witness_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lock_object = type { i32, %struct.witness*, i32 }
%struct.witness = type { i64 }
%struct.lock_class = type { i32 }

@witness_cold = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [42 x i8] c"lock (%s) %s destroyed while witness_cold\00", align 1
@LO_WITNESS = common dso_local global i32 0, align 4
@w_mtx = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @witness_destroy(%struct.lock_object* %0) #0 {
  %2 = alloca %struct.lock_object*, align 8
  %3 = alloca %struct.lock_class*, align 8
  %4 = alloca %struct.witness*, align 8
  store %struct.lock_object* %0, %struct.lock_object** %2, align 8
  %5 = load %struct.lock_object*, %struct.lock_object** %2, align 8
  %6 = call %struct.lock_class* @LOCK_CLASS(%struct.lock_object* %5)
  store %struct.lock_class* %6, %struct.lock_class** %3, align 8
  %7 = load i64, i64* @witness_cold, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %17

9:                                                ; preds = %1
  %10 = load %struct.lock_class*, %struct.lock_class** %3, align 8
  %11 = getelementptr inbounds %struct.lock_class, %struct.lock_class* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.lock_object*, %struct.lock_object** %2, align 8
  %14 = getelementptr inbounds %struct.lock_object, %struct.lock_object* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @panic(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %12, i32 %15)
  br label %17

17:                                               ; preds = %9, %1
  %18 = load %struct.lock_object*, %struct.lock_object** %2, align 8
  %19 = getelementptr inbounds %struct.lock_object, %struct.lock_object* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @LO_WITNESS, align 4
  %22 = and i32 %20, %21
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %17
  %25 = load %struct.lock_object*, %struct.lock_object** %2, align 8
  %26 = getelementptr inbounds %struct.lock_object, %struct.lock_object* %25, i32 0, i32 1
  %27 = load %struct.witness*, %struct.witness** %26, align 8
  %28 = icmp eq %struct.witness* %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %24, %17
  br label %54

30:                                               ; preds = %24
  %31 = load %struct.lock_object*, %struct.lock_object** %2, align 8
  %32 = getelementptr inbounds %struct.lock_object, %struct.lock_object* %31, i32 0, i32 1
  %33 = load %struct.witness*, %struct.witness** %32, align 8
  store %struct.witness* %33, %struct.witness** %4, align 8
  %34 = call i32 @mtx_lock_spin(i32* @w_mtx)
  %35 = load %struct.witness*, %struct.witness** %4, align 8
  %36 = getelementptr inbounds %struct.witness, %struct.witness* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp sgt i64 %37, 0
  %39 = zext i1 %38 to i32
  %40 = call i32 @MPASS(i32 %39)
  %41 = load %struct.witness*, %struct.witness** %4, align 8
  %42 = getelementptr inbounds %struct.witness, %struct.witness* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = add nsw i64 %43, -1
  store i64 %44, i64* %42, align 8
  %45 = load %struct.witness*, %struct.witness** %4, align 8
  %46 = getelementptr inbounds %struct.witness, %struct.witness* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %30
  %50 = load %struct.witness*, %struct.witness** %4, align 8
  %51 = call i32 @depart(%struct.witness* %50)
  br label %52

52:                                               ; preds = %49, %30
  %53 = call i32 @mtx_unlock_spin(i32* @w_mtx)
  br label %54

54:                                               ; preds = %52, %29
  ret void
}

declare dso_local %struct.lock_class* @LOCK_CLASS(%struct.lock_object*) #1

declare dso_local i32 @panic(i8*, i32, i32) #1

declare dso_local i32 @mtx_lock_spin(i32*) #1

declare dso_local i32 @MPASS(i32) #1

declare dso_local i32 @depart(%struct.witness*) #1

declare dso_local i32 @mtx_unlock_spin(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
