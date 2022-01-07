; ModuleID = '/home/carl/AnghaBench/freebsd/sys/gnu/gcov/extr_gcc_4_7.c_gcov_iter_new.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/gnu/gcov/extr_gcc_4_7.c_gcov_iter_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gcov_iterator = type { i32, i32*, %struct.gcov_info* }
%struct.gcov_info = type { i32 }

@M_GCOV = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.gcov_iterator* @gcov_iter_new(%struct.gcov_info* %0) #0 {
  %2 = alloca %struct.gcov_iterator*, align 8
  %3 = alloca %struct.gcov_info*, align 8
  %4 = alloca %struct.gcov_iterator*, align 8
  store %struct.gcov_info* %0, %struct.gcov_info** %3, align 8
  %5 = load i32, i32* @M_GCOV, align 4
  %6 = load i32, i32* @M_NOWAIT, align 4
  %7 = load i32, i32* @M_ZERO, align 4
  %8 = or i32 %6, %7
  %9 = call i8* @malloc(i32 24, i32 %5, i32 %8)
  %10 = bitcast i8* %9 to %struct.gcov_iterator*
  store %struct.gcov_iterator* %10, %struct.gcov_iterator** %4, align 8
  %11 = load %struct.gcov_iterator*, %struct.gcov_iterator** %4, align 8
  %12 = icmp eq %struct.gcov_iterator* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %43

14:                                               ; preds = %1
  %15 = load %struct.gcov_info*, %struct.gcov_info** %3, align 8
  %16 = load %struct.gcov_iterator*, %struct.gcov_iterator** %4, align 8
  %17 = getelementptr inbounds %struct.gcov_iterator, %struct.gcov_iterator* %16, i32 0, i32 2
  store %struct.gcov_info* %15, %struct.gcov_info** %17, align 8
  %18 = load %struct.gcov_info*, %struct.gcov_info** %3, align 8
  %19 = call i32 @convert_to_gcda(i32* null, %struct.gcov_info* %18)
  %20 = load %struct.gcov_iterator*, %struct.gcov_iterator** %4, align 8
  %21 = getelementptr inbounds %struct.gcov_iterator, %struct.gcov_iterator* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 8
  %22 = load %struct.gcov_iterator*, %struct.gcov_iterator** %4, align 8
  %23 = getelementptr inbounds %struct.gcov_iterator, %struct.gcov_iterator* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @M_GCOV, align 4
  %26 = load i32, i32* @M_NOWAIT, align 4
  %27 = call i8* @malloc(i32 %24, i32 %25, i32 %26)
  %28 = bitcast i8* %27 to i32*
  %29 = load %struct.gcov_iterator*, %struct.gcov_iterator** %4, align 8
  %30 = getelementptr inbounds %struct.gcov_iterator, %struct.gcov_iterator* %29, i32 0, i32 1
  store i32* %28, i32** %30, align 8
  %31 = load %struct.gcov_iterator*, %struct.gcov_iterator** %4, align 8
  %32 = getelementptr inbounds %struct.gcov_iterator, %struct.gcov_iterator* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %14
  br label %43

36:                                               ; preds = %14
  %37 = load %struct.gcov_iterator*, %struct.gcov_iterator** %4, align 8
  %38 = getelementptr inbounds %struct.gcov_iterator, %struct.gcov_iterator* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = load %struct.gcov_info*, %struct.gcov_info** %3, align 8
  %41 = call i32 @convert_to_gcda(i32* %39, %struct.gcov_info* %40)
  %42 = load %struct.gcov_iterator*, %struct.gcov_iterator** %4, align 8
  store %struct.gcov_iterator* %42, %struct.gcov_iterator** %2, align 8
  br label %47

43:                                               ; preds = %35, %13
  %44 = load %struct.gcov_iterator*, %struct.gcov_iterator** %4, align 8
  %45 = load i32, i32* @M_GCOV, align 4
  %46 = call i32 @free(%struct.gcov_iterator* %44, i32 %45)
  store %struct.gcov_iterator* null, %struct.gcov_iterator** %2, align 8
  br label %47

47:                                               ; preds = %43, %36
  %48 = load %struct.gcov_iterator*, %struct.gcov_iterator** %2, align 8
  ret %struct.gcov_iterator* %48
}

declare dso_local i8* @malloc(i32, i32, i32) #1

declare dso_local i32 @convert_to_gcda(i32*, %struct.gcov_info*) #1

declare dso_local i32 @free(%struct.gcov_iterator*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
