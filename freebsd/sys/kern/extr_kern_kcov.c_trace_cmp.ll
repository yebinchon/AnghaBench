; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_kcov.c_trace_cmp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_kcov.c_trace_cmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.kcov_info = type { i64, i64, i32 }

@curthread = common dso_local global %struct.thread* null, align 8
@KCOV_MODE_TRACE_CMP = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [49 x i8] c"__sanitizer_cov_trace_pc: NULL buf while running\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32)* @trace_cmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @trace_cmp(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.thread*, align 8
  %11 = alloca %struct.kcov_info*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load %struct.thread*, %struct.thread** @curthread, align 8
  store %struct.thread* %14, %struct.thread** %10, align 8
  %15 = load %struct.thread*, %struct.thread** %10, align 8
  %16 = call %struct.kcov_info* @get_kinfo(%struct.thread* %15)
  store %struct.kcov_info* %16, %struct.kcov_info** %11, align 8
  %17 = load %struct.kcov_info*, %struct.kcov_info** %11, align 8
  %18 = icmp eq %struct.kcov_info* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %93

20:                                               ; preds = %4
  %21 = load %struct.kcov_info*, %struct.kcov_info** %11, align 8
  %22 = getelementptr inbounds %struct.kcov_info, %struct.kcov_info* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @KCOV_MODE_TRACE_CMP, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  store i32 0, i32* %5, align 4
  br label %93

27:                                               ; preds = %20
  %28 = load %struct.kcov_info*, %struct.kcov_info** %11, align 8
  %29 = getelementptr inbounds %struct.kcov_info, %struct.kcov_info* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  %32 = zext i1 %31 to i32
  %33 = call i32 @KASSERT(i32 %32, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %34 = load %struct.kcov_info*, %struct.kcov_info** %11, align 8
  %35 = getelementptr inbounds %struct.kcov_info, %struct.kcov_info* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = inttoptr i64 %36 to i32*
  store i32* %37, i32** %12, align 8
  %38 = load i32*, i32** %12, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %13, align 4
  %41 = load i32, i32* %13, align 4
  %42 = mul nsw i32 %41, 4
  %43 = add nsw i32 %42, 4
  %44 = add nsw i32 %43, 1
  %45 = load %struct.kcov_info*, %struct.kcov_info** %11, align 8
  %46 = getelementptr inbounds %struct.kcov_info, %struct.kcov_info* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = icmp sgt i32 %44, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %27
  store i32 0, i32* %5, align 4
  br label %93

50:                                               ; preds = %27
  br label %51

51:                                               ; preds = %50, %88
  %52 = load i32, i32* %6, align 4
  %53 = load i32*, i32** %12, align 8
  %54 = load i32, i32* %13, align 4
  %55 = mul nsw i32 %54, 4
  %56 = add nsw i32 %55, 1
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %53, i64 %57
  store i32 %52, i32* %58, align 4
  %59 = load i32, i32* %7, align 4
  %60 = load i32*, i32** %12, align 8
  %61 = load i32, i32* %13, align 4
  %62 = mul nsw i32 %61, 4
  %63 = add nsw i32 %62, 2
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %60, i64 %64
  store i32 %59, i32* %65, align 4
  %66 = load i32, i32* %8, align 4
  %67 = load i32*, i32** %12, align 8
  %68 = load i32, i32* %13, align 4
  %69 = mul nsw i32 %68, 4
  %70 = add nsw i32 %69, 3
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %67, i64 %71
  store i32 %66, i32* %72, align 4
  %73 = load i32, i32* %9, align 4
  %74 = load i32*, i32** %12, align 8
  %75 = load i32, i32* %13, align 4
  %76 = mul nsw i32 %75, 4
  %77 = add nsw i32 %76, 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %74, i64 %78
  store i32 %73, i32* %79, align 4
  %80 = load i32*, i32** %12, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 0
  %82 = load i32, i32* %13, align 4
  %83 = load i32, i32* %13, align 4
  %84 = add nsw i32 %83, 1
  %85 = call i64 @atomic_cmpset_64(i32* %81, i32 %82, i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %51
  br label %92

88:                                               ; preds = %51
  %89 = load i32, i32* %13, align 4
  %90 = load i32*, i32** %12, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 0
  store i32 %89, i32* %91, align 4
  br label %51

92:                                               ; preds = %87
  store i32 1, i32* %5, align 4
  br label %93

93:                                               ; preds = %92, %49, %26, %19
  %94 = load i32, i32* %5, align 4
  ret i32 %94
}

declare dso_local %struct.kcov_info* @get_kinfo(%struct.thread*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i64 @atomic_cmpset_64(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
