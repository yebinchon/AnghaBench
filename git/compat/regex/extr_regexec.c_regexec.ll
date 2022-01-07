; ModuleID = '/home/carl/AnghaBench/git/compat/regex/extr_regexec.c_regexec.c'
source_filename = "/home/carl/AnghaBench/git/compat/regex/extr_regexec.c_regexec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { i32, i32 }

@REG_NOTBOL = common dso_local global i32 0, align 4
@REG_NOTEOL = common dso_local global i32 0, align 4
@REG_STARTEND = common dso_local global i32 0, align 4
@REG_BADPAT = common dso_local global i32 0, align 4
@dfa = common dso_local global %struct.TYPE_10__* null, align 8
@REG_NOERROR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @regexec(%struct.TYPE_9__* noalias %0, i8* noalias %1, i64 %2, %struct.TYPE_8__* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_8__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store %struct.TYPE_8__* %3, %struct.TYPE_8__** %10, align 8
  store i32 %4, i32* %11, align 4
  %15 = load i32, i32* %11, align 4
  %16 = load i32, i32* @REG_NOTBOL, align 4
  %17 = load i32, i32* @REG_NOTEOL, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @REG_STARTEND, align 4
  %20 = or i32 %18, %19
  %21 = xor i32 %20, -1
  %22 = and i32 %15, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %5
  %25 = load i32, i32* @REG_BADPAT, align 4
  store i32 %25, i32* %6, align 4
  br label %85

26:                                               ; preds = %5
  %27 = load i32, i32* %11, align 4
  %28 = load i32, i32* @REG_STARTEND, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %26
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i64 0
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %13, align 4
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i64 0
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %14, align 4
  br label %43

40:                                               ; preds = %26
  store i32 0, i32* %13, align 4
  %41 = load i8*, i8** %8, align 8
  %42 = call i32 @strlen(i8* %41)
  store i32 %42, i32* %14, align 4
  br label %43

43:                                               ; preds = %40, %31
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** @dfa, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @__libc_lock_lock(i32 %46)
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %63

52:                                               ; preds = %43
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %54 = load i8*, i8** %8, align 8
  %55 = load i32, i32* %14, align 4
  %56 = load i32, i32* %13, align 4
  %57 = load i32, i32* %14, align 4
  %58 = load i32, i32* %13, align 4
  %59 = sub nsw i32 %57, %58
  %60 = load i32, i32* %14, align 4
  %61 = load i32, i32* %11, align 4
  %62 = call i64 @re_search_internal(%struct.TYPE_9__* %53, i8* %54, i32 %55, i32 %56, i32 %59, i32 %60, i64 0, %struct.TYPE_8__* null, i32 %61)
  store i64 %62, i64* %12, align 8
  br label %76

63:                                               ; preds = %43
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %65 = load i8*, i8** %8, align 8
  %66 = load i32, i32* %14, align 4
  %67 = load i32, i32* %13, align 4
  %68 = load i32, i32* %14, align 4
  %69 = load i32, i32* %13, align 4
  %70 = sub nsw i32 %68, %69
  %71 = load i32, i32* %14, align 4
  %72 = load i64, i64* %9, align 8
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %74 = load i32, i32* %11, align 4
  %75 = call i64 @re_search_internal(%struct.TYPE_9__* %64, i8* %65, i32 %66, i32 %67, i32 %70, i32 %71, i64 %72, %struct.TYPE_8__* %73, i32 %74)
  store i64 %75, i64* %12, align 8
  br label %76

76:                                               ; preds = %63, %52
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** @dfa, align 8
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @__libc_lock_unlock(i32 %79)
  %81 = load i64, i64* %12, align 8
  %82 = load i64, i64* @REG_NOERROR, align 8
  %83 = icmp ne i64 %81, %82
  %84 = zext i1 %83 to i32
  store i32 %84, i32* %6, align 4
  br label %85

85:                                               ; preds = %76, %24
  %86 = load i32, i32* %6, align 4
  ret i32 %86
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @__libc_lock_lock(i32) #1

declare dso_local i64 @re_search_internal(%struct.TYPE_9__*, i8*, i32, i32, i32, i32, i64, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @__libc_lock_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
