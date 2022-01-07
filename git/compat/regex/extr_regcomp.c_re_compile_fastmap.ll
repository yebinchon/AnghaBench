; ModuleID = '/home/carl/AnghaBench/git/compat/regex/extr_regcomp.c_re_compile_fastmap.c'
source_filename = "/home/carl/AnghaBench/git/compat/regex/extr_regcomp.c_re_compile_fastmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.re_pattern_buffer = type { i8*, i32, i64 }
%struct.TYPE_2__ = type { i64, i64, i64, i64 }

@SBC_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @re_compile_fastmap(%struct.re_pattern_buffer* %0) #0 {
  %2 = alloca %struct.re_pattern_buffer*, align 8
  %3 = alloca %struct.TYPE_2__*, align 8
  %4 = alloca i8*, align 8
  store %struct.re_pattern_buffer* %0, %struct.re_pattern_buffer** %2, align 8
  %5 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %2, align 8
  %6 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %5, i32 0, i32 2
  %7 = load i64, i64* %6, align 8
  %8 = inttoptr i64 %7 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %8, %struct.TYPE_2__** %3, align 8
  %9 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %2, align 8
  %10 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %9, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8
  store i8* %11, i8** %4, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = load i32, i32* @SBC_MAX, align 4
  %14 = sext i32 %13 to i64
  %15 = mul i64 1, %14
  %16 = trunc i64 %15 to i32
  %17 = call i32 @memset(i8* %12, i8 signext 0, i32 %16)
  %18 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %2, align 8
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i8*, i8** %4, align 8
  %23 = call i32 @re_compile_fastmap_iter(%struct.re_pattern_buffer* %18, i64 %21, i8* %22)
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %26, %29
  br i1 %30, label %31, label %38

31:                                               ; preds = %1
  %32 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %2, align 8
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i8*, i8** %4, align 8
  %37 = call i32 @re_compile_fastmap_iter(%struct.re_pattern_buffer* %32, i64 %35, i8* %36)
  br label %38

38:                                               ; preds = %31, %1
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %41, %44
  br i1 %45, label %46, label %53

46:                                               ; preds = %38
  %47 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %2, align 8
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = load i8*, i8** %4, align 8
  %52 = call i32 @re_compile_fastmap_iter(%struct.re_pattern_buffer* %47, i64 %50, i8* %51)
  br label %53

53:                                               ; preds = %46, %38
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 3
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %56, %59
  br i1 %60, label %61, label %68

61:                                               ; preds = %53
  %62 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %2, align 8
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 3
  %65 = load i64, i64* %64, align 8
  %66 = load i8*, i8** %4, align 8
  %67 = call i32 @re_compile_fastmap_iter(%struct.re_pattern_buffer* %62, i64 %65, i8* %66)
  br label %68

68:                                               ; preds = %61, %53
  %69 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %2, align 8
  %70 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %69, i32 0, i32 1
  store i32 1, i32* %70, align 8
  ret i32 0
}

declare dso_local i32 @memset(i8*, i8 signext, i32) #1

declare dso_local i32 @re_compile_fastmap_iter(%struct.re_pattern_buffer*, i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
