; ModuleID = '/home/carl/AnghaBench/freebsd/sys/tests/callout_test/extr_callout_test.c_test_callout.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/tests/callout_test/extr_callout_test.c_test_callout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.callout_run = type { i32, i32, i32, i32*, i32 }

@curcpu = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @test_callout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_callout(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.callout_run*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %5 = call i32 (...) @critical_enter()
  %6 = load i32, i32* @curcpu, align 4
  store i32 %6, i32* %4, align 4
  %7 = call i32 (...) @critical_exit()
  %8 = load i8*, i8** %2, align 8
  %9 = bitcast i8* %8 to %struct.callout_run*
  store %struct.callout_run* %9, %struct.callout_run** %3, align 8
  %10 = load %struct.callout_run*, %struct.callout_run** %3, align 8
  %11 = getelementptr inbounds %struct.callout_run, %struct.callout_run* %10, i32 0, i32 0
  %12 = call i32 @atomic_add_int(i32* %11, i32 1)
  %13 = load %struct.callout_run*, %struct.callout_run** %3, align 8
  %14 = getelementptr inbounds %struct.callout_run, %struct.callout_run* %13, i32 0, i32 1
  %15 = call i32 @mtx_lock(i32* %14)
  %16 = load %struct.callout_run*, %struct.callout_run** %3, align 8
  %17 = getelementptr inbounds %struct.callout_run, %struct.callout_run* %16, i32 0, i32 3
  %18 = load i32*, i32** %17, align 8
  %19 = load i32, i32* %4, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = call i64 @callout_pending(i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %33, label %24

24:                                               ; preds = %1
  %25 = load %struct.callout_run*, %struct.callout_run** %3, align 8
  %26 = getelementptr inbounds %struct.callout_run, %struct.callout_run* %25, i32 0, i32 3
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %4, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = call i32 @callout_active(i32* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %44, label %33

33:                                               ; preds = %24, %1
  %34 = load %struct.callout_run*, %struct.callout_run** %3, align 8
  %35 = getelementptr inbounds %struct.callout_run, %struct.callout_run* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 8
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %35, align 8
  %38 = load %struct.callout_run*, %struct.callout_run** %3, align 8
  %39 = getelementptr inbounds %struct.callout_run, %struct.callout_run* %38, i32 0, i32 0
  %40 = call i32 @atomic_subtract_int(i32* %39, i32 1)
  %41 = load %struct.callout_run*, %struct.callout_run** %3, align 8
  %42 = getelementptr inbounds %struct.callout_run, %struct.callout_run* %41, i32 0, i32 1
  %43 = call i32 @mtx_unlock(i32* %42)
  br label %62

44:                                               ; preds = %24
  %45 = load %struct.callout_run*, %struct.callout_run** %3, align 8
  %46 = getelementptr inbounds %struct.callout_run, %struct.callout_run* %45, i32 0, i32 3
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %4, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = call i32 @callout_deactivate(i32* %50)
  %52 = load %struct.callout_run*, %struct.callout_run** %3, align 8
  %53 = getelementptr inbounds %struct.callout_run, %struct.callout_run* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %53, align 8
  %56 = load %struct.callout_run*, %struct.callout_run** %3, align 8
  %57 = getelementptr inbounds %struct.callout_run, %struct.callout_run* %56, i32 0, i32 1
  %58 = call i32 @mtx_unlock(i32* %57)
  %59 = load %struct.callout_run*, %struct.callout_run** %3, align 8
  %60 = getelementptr inbounds %struct.callout_run, %struct.callout_run* %59, i32 0, i32 0
  %61 = call i32 @atomic_subtract_int(i32* %60, i32 1)
  br label %62

62:                                               ; preds = %44, %33
  ret void
}

declare dso_local i32 @critical_enter(...) #1

declare dso_local i32 @critical_exit(...) #1

declare dso_local i32 @atomic_add_int(i32*, i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i64 @callout_pending(i32*) #1

declare dso_local i32 @callout_active(i32*) #1

declare dso_local i32 @atomic_subtract_int(i32*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @callout_deactivate(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
