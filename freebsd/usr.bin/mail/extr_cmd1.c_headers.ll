; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/mail/extr_cmd1.c_headers.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/mail/extr_cmd1.c_headers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.message = type { i32 }

@screen = common dso_local global i32 0, align 4
@message = common dso_local global %struct.message* null, align 8
@msgCount = common dso_local global i64 0, align 8
@dot = common dso_local global %struct.message* null, align 8
@MDELETED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"No more mail.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @headers(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.message*, align 8
  store i8* %0, i8** %3, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = bitcast i8* %10 to i32*
  store i32* %11, i32** %4, align 8
  %12 = call i32 (...) @screensize()
  store i32 %12, i32* %8, align 4
  %13 = load i32*, i32** %4, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %1
  %19 = load i32, i32* %5, align 4
  %20 = sub nsw i32 %19, 1
  %21 = load i32, i32* %8, align 4
  %22 = sdiv i32 %20, %21
  store i32 %22, i32* @screen, align 4
  br label %23

23:                                               ; preds = %18, %1
  %24 = load i32, i32* @screen, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  store i32 0, i32* @screen, align 4
  br label %27

27:                                               ; preds = %26, %23
  %28 = load %struct.message*, %struct.message** @message, align 8
  %29 = load i32, i32* @screen, align 4
  %30 = load i32, i32* %8, align 4
  %31 = mul nsw i32 %29, %30
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.message, %struct.message* %28, i64 %32
  store %struct.message* %33, %struct.message** %9, align 8
  %34 = load %struct.message*, %struct.message** %9, align 8
  %35 = load %struct.message*, %struct.message** @message, align 8
  %36 = load i64, i64* @msgCount, align 8
  %37 = getelementptr inbounds %struct.message, %struct.message* %35, i64 %36
  %38 = icmp uge %struct.message* %34, %37
  br i1 %38, label %39, label %46

39:                                               ; preds = %27
  %40 = load %struct.message*, %struct.message** @message, align 8
  %41 = load i64, i64* @msgCount, align 8
  %42 = load i32, i32* %8, align 4
  %43 = sext i32 %42 to i64
  %44 = sub i64 %41, %43
  %45 = getelementptr inbounds %struct.message, %struct.message* %40, i64 %44
  store %struct.message* %45, %struct.message** %9, align 8
  br label %46

46:                                               ; preds = %39, %27
  %47 = load %struct.message*, %struct.message** %9, align 8
  %48 = load %struct.message*, %struct.message** @message, align 8
  %49 = getelementptr inbounds %struct.message, %struct.message* %48, i64 0
  %50 = icmp ult %struct.message* %47, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %46
  %52 = load %struct.message*, %struct.message** @message, align 8
  %53 = getelementptr inbounds %struct.message, %struct.message* %52, i64 0
  store %struct.message* %53, %struct.message** %9, align 8
  br label %54

54:                                               ; preds = %51, %46
  store i32 0, i32* %7, align 4
  %55 = load %struct.message*, %struct.message** %9, align 8
  %56 = load %struct.message*, %struct.message** @message, align 8
  %57 = getelementptr inbounds %struct.message, %struct.message* %56, i64 0
  %58 = ptrtoint %struct.message* %55 to i64
  %59 = ptrtoint %struct.message* %57 to i64
  %60 = sub i64 %58, %59
  %61 = sdiv exact i64 %60, 4
  %62 = trunc i64 %61 to i32
  store i32 %62, i32* %6, align 4
  %63 = load %struct.message*, %struct.message** @dot, align 8
  %64 = load %struct.message*, %struct.message** @message, align 8
  %65 = load i32, i32* %5, align 4
  %66 = sub nsw i32 %65, 1
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.message, %struct.message* %64, i64 %67
  %69 = icmp ne %struct.message* %63, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %54
  %71 = load %struct.message*, %struct.message** %9, align 8
  store %struct.message* %71, %struct.message** @dot, align 8
  br label %72

72:                                               ; preds = %70, %54
  br label %73

73:                                               ; preds = %98, %72
  %74 = load %struct.message*, %struct.message** %9, align 8
  %75 = load %struct.message*, %struct.message** @message, align 8
  %76 = load i64, i64* @msgCount, align 8
  %77 = getelementptr inbounds %struct.message, %struct.message* %75, i64 %76
  %78 = icmp ult %struct.message* %74, %77
  br i1 %78, label %79, label %101

79:                                               ; preds = %73
  %80 = load i32, i32* %6, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %6, align 4
  %82 = load %struct.message*, %struct.message** %9, align 8
  %83 = getelementptr inbounds %struct.message, %struct.message* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @MDELETED, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %79
  br label %98

89:                                               ; preds = %79
  %90 = load i32, i32* %7, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %7, align 4
  %92 = load i32, i32* %8, align 4
  %93 = icmp sge i32 %90, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %89
  br label %101

95:                                               ; preds = %89
  %96 = load i32, i32* %6, align 4
  %97 = call i32 @printhead(i32 %96)
  br label %98

98:                                               ; preds = %95, %88
  %99 = load %struct.message*, %struct.message** %9, align 8
  %100 = getelementptr inbounds %struct.message, %struct.message* %99, i32 1
  store %struct.message* %100, %struct.message** %9, align 8
  br label %73

101:                                              ; preds = %94, %73
  %102 = load i32, i32* %7, align 4
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %101
  %105 = call i32 @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %107

106:                                              ; preds = %101
  store i32 0, i32* %2, align 4
  br label %107

107:                                              ; preds = %106, %104
  %108 = load i32, i32* %2, align 4
  ret i32 %108
}

declare dso_local i32 @screensize(...) #1

declare dso_local i32 @printhead(i32) #1

declare dso_local i32 @printf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
