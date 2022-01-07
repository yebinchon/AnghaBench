; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mpt/extr_mpt.c_mpt_modevent.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mpt/extr_mpt.c_mpt_modevent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpt_personality = type { i32, i32 (%struct.mpt_personality*)*, i32 (%struct.mpt_personality*)* }

@MPT_MAX_PERSONALITIES = common dso_local global i32 0, align 4
@mpt_personalities = common dso_local global %struct.mpt_personality** null, align 8
@ENOMEM = common dso_local global i32 0, align 4
@mpt_default_personality = common dso_local global %struct.mpt_personality zeroinitializer, align 8
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mpt_modevent(i32 %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.mpt_personality*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32**, align 8
  %10 = alloca i32**, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to %struct.mpt_personality*
  store %struct.mpt_personality* %13, %struct.mpt_personality** %7, align 8
  store i32 0, i32* %8, align 4
  %14 = load i32, i32* %5, align 4
  switch i32 %14, label %96 [
    i32 131, label %15
    i32 129, label %82
    i32 130, label %83
    i32 128, label %84
  ]

15:                                               ; preds = %3
  store i32 0, i32* %11, align 4
  br label %16

16:                                               ; preds = %29, %15
  %17 = load i32, i32* %11, align 4
  %18 = load i32, i32* @MPT_MAX_PERSONALITIES, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %32

20:                                               ; preds = %16
  %21 = load %struct.mpt_personality**, %struct.mpt_personality*** @mpt_personalities, align 8
  %22 = load i32, i32* %11, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.mpt_personality*, %struct.mpt_personality** %21, i64 %23
  %25 = load %struct.mpt_personality*, %struct.mpt_personality** %24, align 8
  %26 = icmp eq %struct.mpt_personality* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %20
  br label %32

28:                                               ; preds = %20
  br label %29

29:                                               ; preds = %28
  %30 = load i32, i32* %11, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %11, align 4
  br label %16

32:                                               ; preds = %27, %16
  %33 = load i32, i32* %11, align 4
  %34 = load i32, i32* @MPT_MAX_PERSONALITIES, align 4
  %35 = icmp sge i32 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %32
  %37 = load i32, i32* @ENOMEM, align 4
  store i32 %37, i32* %8, align 4
  br label %98

38:                                               ; preds = %32
  %39 = load i32, i32* %11, align 4
  %40 = load %struct.mpt_personality*, %struct.mpt_personality** %7, align 8
  %41 = getelementptr inbounds %struct.mpt_personality, %struct.mpt_personality* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  %42 = load %struct.mpt_personality*, %struct.mpt_personality** %7, align 8
  %43 = load %struct.mpt_personality**, %struct.mpt_personality*** @mpt_personalities, align 8
  %44 = load i32, i32* %11, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.mpt_personality*, %struct.mpt_personality** %43, i64 %45
  store %struct.mpt_personality* %42, %struct.mpt_personality** %46, align 8
  %47 = call i32** @MPT_PERS_FIRST_HANDLER(%struct.mpt_personality* @mpt_default_personality)
  store i32** %47, i32*** %9, align 8
  %48 = load %struct.mpt_personality*, %struct.mpt_personality** %7, align 8
  %49 = call i32** @MPT_PERS_FIRST_HANDLER(%struct.mpt_personality* %48)
  store i32** %49, i32*** %10, align 8
  br label %50

50:                                               ; preds = %63, %38
  %51 = load i32**, i32*** %10, align 8
  %52 = load %struct.mpt_personality*, %struct.mpt_personality** %7, align 8
  %53 = call i32** @MPT_PERS_LAST_HANDLER(%struct.mpt_personality* %52)
  %54 = icmp ule i32** %51, %53
  br i1 %54, label %55, label %68

55:                                               ; preds = %50
  %56 = load i32**, i32*** %10, align 8
  %57 = load i32*, i32** %56, align 8
  %58 = icmp eq i32* %57, null
  br i1 %58, label %59, label %63

59:                                               ; preds = %55
  %60 = load i32**, i32*** %9, align 8
  %61 = load i32*, i32** %60, align 8
  %62 = load i32**, i32*** %10, align 8
  store i32* %61, i32** %62, align 8
  br label %63

63:                                               ; preds = %59, %55
  %64 = load i32**, i32*** %10, align 8
  %65 = getelementptr inbounds i32*, i32** %64, i32 1
  store i32** %65, i32*** %10, align 8
  %66 = load i32**, i32*** %9, align 8
  %67 = getelementptr inbounds i32*, i32** %66, i32 1
  store i32** %67, i32*** %9, align 8
  br label %50

68:                                               ; preds = %50
  %69 = load %struct.mpt_personality*, %struct.mpt_personality** %7, align 8
  %70 = getelementptr inbounds %struct.mpt_personality, %struct.mpt_personality* %69, i32 0, i32 1
  %71 = load i32 (%struct.mpt_personality*)*, i32 (%struct.mpt_personality*)** %70, align 8
  %72 = load %struct.mpt_personality*, %struct.mpt_personality** %7, align 8
  %73 = call i32 %71(%struct.mpt_personality* %72)
  store i32 %73, i32* %8, align 4
  %74 = load i32, i32* %8, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %68
  %77 = load %struct.mpt_personality**, %struct.mpt_personality*** @mpt_personalities, align 8
  %78 = load i32, i32* %11, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.mpt_personality*, %struct.mpt_personality** %77, i64 %79
  store %struct.mpt_personality* null, %struct.mpt_personality** %80, align 8
  br label %81

81:                                               ; preds = %76, %68
  br label %98

82:                                               ; preds = %3
  br label %98

83:                                               ; preds = %3
  br label %98

84:                                               ; preds = %3
  %85 = load %struct.mpt_personality*, %struct.mpt_personality** %7, align 8
  %86 = getelementptr inbounds %struct.mpt_personality, %struct.mpt_personality* %85, i32 0, i32 2
  %87 = load i32 (%struct.mpt_personality*)*, i32 (%struct.mpt_personality*)** %86, align 8
  %88 = load %struct.mpt_personality*, %struct.mpt_personality** %7, align 8
  %89 = call i32 %87(%struct.mpt_personality* %88)
  store i32 %89, i32* %8, align 4
  %90 = load %struct.mpt_personality**, %struct.mpt_personality*** @mpt_personalities, align 8
  %91 = load %struct.mpt_personality*, %struct.mpt_personality** %7, align 8
  %92 = getelementptr inbounds %struct.mpt_personality, %struct.mpt_personality* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.mpt_personality*, %struct.mpt_personality** %90, i64 %94
  store %struct.mpt_personality* null, %struct.mpt_personality** %95, align 8
  br label %98

96:                                               ; preds = %3
  %97 = load i32, i32* @EINVAL, align 4
  store i32 %97, i32* %8, align 4
  br label %98

98:                                               ; preds = %96, %84, %83, %82, %81, %36
  %99 = load i32, i32* %8, align 4
  ret i32 %99
}

declare dso_local i32** @MPT_PERS_FIRST_HANDLER(%struct.mpt_personality*) #1

declare dso_local i32** @MPT_PERS_LAST_HANDLER(%struct.mpt_personality*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
