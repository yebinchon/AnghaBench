; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_kcov.c_trace_pc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_kcov.c_trace_pc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.kcov_info = type { i64, i64, i32 }

@curthread = common dso_local global %struct.thread* null, align 8
@KCOV_MODE_TRACE_PC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [49 x i8] c"__sanitizer_cov_trace_pc: NULL buf while running\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @trace_pc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @trace_pc(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.thread*, align 8
  %4 = alloca %struct.kcov_info*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %7 = load %struct.thread*, %struct.thread** @curthread, align 8
  store %struct.thread* %7, %struct.thread** %3, align 8
  %8 = load %struct.thread*, %struct.thread** %3, align 8
  %9 = call %struct.kcov_info* @get_kinfo(%struct.thread* %8)
  store %struct.kcov_info* %9, %struct.kcov_info** %4, align 8
  %10 = load %struct.kcov_info*, %struct.kcov_info** %4, align 8
  %11 = icmp eq %struct.kcov_info* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %53

13:                                               ; preds = %1
  %14 = load %struct.kcov_info*, %struct.kcov_info** %4, align 8
  %15 = getelementptr inbounds %struct.kcov_info, %struct.kcov_info* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @KCOV_MODE_TRACE_PC, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  br label %53

20:                                               ; preds = %13
  %21 = load %struct.kcov_info*, %struct.kcov_info** %4, align 8
  %22 = getelementptr inbounds %struct.kcov_info, %struct.kcov_info* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  %25 = zext i1 %24 to i32
  %26 = call i32 @KASSERT(i32 %25, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %27 = load %struct.kcov_info*, %struct.kcov_info** %4, align 8
  %28 = getelementptr inbounds %struct.kcov_info, %struct.kcov_info* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = inttoptr i64 %29 to i32*
  store i32* %30, i32** %5, align 8
  %31 = load i32*, i32** %5, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = add nsw i32 %34, 2
  %36 = load %struct.kcov_info*, %struct.kcov_info** %4, align 8
  %37 = getelementptr inbounds %struct.kcov_info, %struct.kcov_info* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = icmp sgt i32 %35, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %20
  br label %53

41:                                               ; preds = %20
  %42 = load i64, i64* %2, align 8
  %43 = trunc i64 %42 to i32
  %44 = load i32*, i32** %5, align 8
  %45 = load i32, i32* %6, align 4
  %46 = add nsw i32 %45, 1
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %44, i64 %47
  store i32 %43, i32* %48, align 4
  %49 = load i32, i32* %6, align 4
  %50 = add nsw i32 %49, 1
  %51 = load i32*, i32** %5, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 0
  store i32 %50, i32* %52, align 4
  br label %53

53:                                               ; preds = %41, %40, %19, %12
  ret void
}

declare dso_local %struct.kcov_info* @get_kinfo(%struct.thread*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
