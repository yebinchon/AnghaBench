; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_lock.c_lock_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_lock.c_lock_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lock_class = type { i32 }
%struct.lock_object = type { i32, i8* }

@LO_NEW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"lock \22%s\22 %p already initialized\00", align 1
@LOCK_CLASS_MAX = common dso_local global i32 0, align 4
@lock_classes = common dso_local global %struct.lock_class** null, align 8
@LO_CLASSSHIFT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"unknown lock class %p\00", align 1
@LO_INITIALIZED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lock_init(%struct.lock_object* %0, %struct.lock_class* %1, i8* %2, i8* %3, i32 %4) #0 {
  %6 = alloca %struct.lock_object*, align 8
  %7 = alloca %struct.lock_class*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.lock_object* %0, %struct.lock_object** %6, align 8
  store %struct.lock_class* %1, %struct.lock_class** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  %12 = load i32, i32* %10, align 4
  %13 = load i32, i32* @LO_NEW, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %5
  %17 = load %struct.lock_object*, %struct.lock_object** %6, align 8
  %18 = call i32 @lock_initialized(%struct.lock_object* %17)
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  br label %21

21:                                               ; preds = %16, %5
  %22 = phi i1 [ true, %5 ], [ %20, %16 ]
  %23 = zext i1 %22 to i32
  %24 = load i8*, i8** %8, align 8
  %25 = load %struct.lock_object*, %struct.lock_object** %6, align 8
  %26 = bitcast %struct.lock_object* %25 to i8*
  %27 = call i32 @KASSERT(i32 %23, i8* %26)
  store i32 0, i32* %11, align 4
  br label %28

28:                                               ; preds = %47, %21
  %29 = load i32, i32* %11, align 4
  %30 = load i32, i32* @LOCK_CLASS_MAX, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %50

32:                                               ; preds = %28
  %33 = load %struct.lock_class**, %struct.lock_class*** @lock_classes, align 8
  %34 = load i32, i32* %11, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.lock_class*, %struct.lock_class** %33, i64 %35
  %37 = load %struct.lock_class*, %struct.lock_class** %36, align 8
  %38 = load %struct.lock_class*, %struct.lock_class** %7, align 8
  %39 = icmp eq %struct.lock_class* %37, %38
  br i1 %39, label %40, label %46

40:                                               ; preds = %32
  %41 = load i32, i32* %11, align 4
  %42 = load i32, i32* @LO_CLASSSHIFT, align 4
  %43 = shl i32 %41, %42
  %44 = load %struct.lock_object*, %struct.lock_object** %6, align 8
  %45 = getelementptr inbounds %struct.lock_object, %struct.lock_object* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  br label %50

46:                                               ; preds = %32
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %11, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %11, align 4
  br label %28

50:                                               ; preds = %40, %28
  %51 = load i32, i32* %11, align 4
  %52 = load i32, i32* @LOCK_CLASS_MAX, align 4
  %53 = icmp slt i32 %51, %52
  %54 = zext i1 %53 to i32
  %55 = load %struct.lock_class*, %struct.lock_class** %7, align 8
  %56 = bitcast %struct.lock_class* %55 to i8*
  %57 = call i32 @KASSERT(i32 %54, i8* %56)
  %58 = load i8*, i8** %8, align 8
  %59 = load %struct.lock_object*, %struct.lock_object** %6, align 8
  %60 = getelementptr inbounds %struct.lock_object, %struct.lock_object* %59, i32 0, i32 1
  store i8* %58, i8** %60, align 8
  %61 = load i32, i32* %10, align 4
  %62 = load i32, i32* @LO_INITIALIZED, align 4
  %63 = or i32 %61, %62
  %64 = load %struct.lock_object*, %struct.lock_object** %6, align 8
  %65 = getelementptr inbounds %struct.lock_object, %struct.lock_object* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = or i32 %66, %63
  store i32 %67, i32* %65, align 8
  %68 = load %struct.lock_object*, %struct.lock_object** %6, align 8
  %69 = call i32 @LOCK_LOG_INIT(%struct.lock_object* %68, i32 0)
  %70 = load %struct.lock_object*, %struct.lock_object** %6, align 8
  %71 = load i8*, i8** %9, align 8
  %72 = icmp ne i8* %71, null
  br i1 %72, label %73, label %75

73:                                               ; preds = %50
  %74 = load i8*, i8** %9, align 8
  br label %77

75:                                               ; preds = %50
  %76 = load i8*, i8** %8, align 8
  br label %77

77:                                               ; preds = %75, %73
  %78 = phi i8* [ %74, %73 ], [ %76, %75 ]
  %79 = call i32 @WITNESS_INIT(%struct.lock_object* %70, i8* %78)
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @lock_initialized(%struct.lock_object*) #1

declare dso_local i32 @LOCK_LOG_INIT(%struct.lock_object*, i32) #1

declare dso_local i32 @WITNESS_INIT(%struct.lock_object*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
