; ModuleID = '/home/carl/AnghaBench/freebsd/sys/tests/framework/extr_kern_testfrwk.c_kfrwk_task.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/tests/framework/extr_kern_testfrwk.c_kfrwk_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kern_totfrwk = type { i32, i32, i32, i32 }
%struct.kern_test_entry = type { %struct.TYPE_3__*, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32 (%struct.kern_test*)* }
%struct.kern_test = type { i32 }
%struct.TYPE_4__ = type { i64 }

@next = common dso_local global i32 0, align 4
@M_KTFRWK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @kfrwk_task to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kfrwk_task(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.kern_totfrwk*, align 8
  %6 = alloca %struct.kern_test_entry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.kern_test, align 4
  %9 = alloca i32 (%struct.kern_test*)*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %7, align 4
  %10 = call i32 @memset(%struct.kern_test* %8, i32 0, i32 4)
  store i32 (%struct.kern_test*)* null, i32 (%struct.kern_test*)** %9, align 8
  %11 = load i8*, i8** %3, align 8
  %12 = bitcast i8* %11 to %struct.kern_totfrwk*
  store %struct.kern_totfrwk* %12, %struct.kern_totfrwk** %5, align 8
  %13 = call i32 (...) @KTFRWK_LOCK()
  %14 = load %struct.kern_totfrwk*, %struct.kern_totfrwk** %5, align 8
  %15 = getelementptr inbounds %struct.kern_totfrwk, %struct.kern_totfrwk* %14, i32 0, i32 3
  %16 = call %struct.kern_test_entry* @TAILQ_FIRST(i32* %15)
  store %struct.kern_test_entry* %16, %struct.kern_test_entry** %6, align 8
  %17 = load %struct.kern_test_entry*, %struct.kern_test_entry** %6, align 8
  %18 = icmp ne %struct.kern_test_entry* %17, null
  br i1 %18, label %19, label %62

19:                                               ; preds = %2
  %20 = load %struct.kern_test_entry*, %struct.kern_test_entry** %6, align 8
  %21 = getelementptr inbounds %struct.kern_test_entry, %struct.kern_test_entry* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = add nsw i64 %23, -1
  store i64 %24, i64* %22, align 8
  %25 = load %struct.kern_totfrwk*, %struct.kern_totfrwk** %5, align 8
  %26 = getelementptr inbounds %struct.kern_totfrwk, %struct.kern_totfrwk* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 %27, -1
  store i32 %28, i32* %26, align 4
  %29 = load %struct.kern_test_entry*, %struct.kern_test_entry** %6, align 8
  %30 = getelementptr inbounds %struct.kern_test_entry, %struct.kern_test_entry* %29, i32 0, i32 1
  %31 = call i32 @memcpy(%struct.kern_test* %8, %struct.TYPE_4__* %30, i32 4)
  %32 = load %struct.kern_test_entry*, %struct.kern_test_entry** %6, align 8
  %33 = getelementptr inbounds %struct.kern_test_entry, %struct.kern_test_entry* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %19
  %38 = load %struct.kern_totfrwk*, %struct.kern_totfrwk** %5, align 8
  %39 = getelementptr inbounds %struct.kern_totfrwk, %struct.kern_totfrwk* %38, i32 0, i32 3
  %40 = load %struct.kern_test_entry*, %struct.kern_test_entry** %6, align 8
  %41 = load i32, i32* @next, align 4
  %42 = call i32 @TAILQ_REMOVE(i32* %39, %struct.kern_test_entry* %40, i32 %41)
  store i32 1, i32* %7, align 4
  br label %50

43:                                               ; preds = %19
  %44 = load %struct.kern_totfrwk*, %struct.kern_totfrwk** %5, align 8
  %45 = getelementptr inbounds %struct.kern_totfrwk, %struct.kern_totfrwk* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.kern_totfrwk*, %struct.kern_totfrwk** %5, align 8
  %48 = getelementptr inbounds %struct.kern_totfrwk, %struct.kern_totfrwk* %47, i32 0, i32 1
  %49 = call i32 @taskqueue_enqueue(i32 %46, i32* %48)
  br label %50

50:                                               ; preds = %43, %37
  %51 = load %struct.kern_test_entry*, %struct.kern_test_entry** %6, align 8
  %52 = getelementptr inbounds %struct.kern_test_entry, %struct.kern_test_entry* %51, i32 0, i32 0
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %52, align 8
  %54 = icmp ne %struct.TYPE_3__* %53, null
  br i1 %54, label %55, label %61

55:                                               ; preds = %50
  %56 = load %struct.kern_test_entry*, %struct.kern_test_entry** %6, align 8
  %57 = getelementptr inbounds %struct.kern_test_entry, %struct.kern_test_entry* %56, i32 0, i32 0
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i32 (%struct.kern_test*)*, i32 (%struct.kern_test*)** %59, align 8
  store i32 (%struct.kern_test*)* %60, i32 (%struct.kern_test*)** %9, align 8
  br label %61

61:                                               ; preds = %55, %50
  br label %62

62:                                               ; preds = %61, %2
  %63 = call i32 (...) @KTFRWK_UNLOCK()
  %64 = load %struct.kern_test_entry*, %struct.kern_test_entry** %6, align 8
  %65 = icmp ne %struct.kern_test_entry* %64, null
  br i1 %65, label %66, label %73

66:                                               ; preds = %62
  %67 = load i32, i32* %7, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %66
  %70 = load %struct.kern_test_entry*, %struct.kern_test_entry** %6, align 8
  %71 = load i32, i32* @M_KTFRWK, align 4
  %72 = call i32 @free(%struct.kern_test_entry* %70, i32 %71)
  br label %73

73:                                               ; preds = %69, %66, %62
  %74 = load i32 (%struct.kern_test*)*, i32 (%struct.kern_test*)** %9, align 8
  %75 = icmp ne i32 (%struct.kern_test*)* %74, null
  br i1 %75, label %76, label %79

76:                                               ; preds = %73
  %77 = load i32 (%struct.kern_test*)*, i32 (%struct.kern_test*)** %9, align 8
  %78 = call i32 %77(%struct.kern_test* %8)
  br label %79

79:                                               ; preds = %76, %73
  %80 = load %struct.kern_totfrwk*, %struct.kern_totfrwk** %5, align 8
  %81 = getelementptr inbounds %struct.kern_totfrwk, %struct.kern_totfrwk* %80, i32 0, i32 0
  %82 = call i32 @atomic_add_int(i32* %81, i32 1)
  ret void
}

declare dso_local i32 @memset(%struct.kern_test*, i32, i32) #1

declare dso_local i32 @KTFRWK_LOCK(...) #1

declare dso_local %struct.kern_test_entry* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @memcpy(%struct.kern_test*, %struct.TYPE_4__*, i32) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.kern_test_entry*, i32) #1

declare dso_local i32 @taskqueue_enqueue(i32, i32*) #1

declare dso_local i32 @KTFRWK_UNLOCK(...) #1

declare dso_local i32 @free(%struct.kern_test_entry*, i32) #1

declare dso_local i32 @atomic_add_int(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
