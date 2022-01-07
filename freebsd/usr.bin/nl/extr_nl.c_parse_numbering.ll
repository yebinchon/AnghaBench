; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/nl/extr_nl.c_parse_numbering.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/nl/extr_nl.c_parse_numbering.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }

@NL_TEXTMAX = common dso_local global i32 0, align 4
@number_all = common dso_local global i32 0, align 4
@numbering_properties = common dso_local global %struct.TYPE_2__* null, align 8
@number_none = common dso_local global i32 0, align 4
@number_nonempty = common dso_local global i32 0, align 4
@number_regex = common dso_local global i32 0, align 4
@REG_NEWLINE = common dso_local global i32 0, align 4
@REG_NOSUB = common dso_local global i32 0, align 4
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"%s expr: %s -- %s\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"illegal %s line numbering type -- %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @parse_numbering to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_numbering(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* @NL_TEXTMAX, align 4
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %6, align 8
  %11 = alloca i8, i64 %9, align 16
  store i64 %9, i64* %7, align 8
  %12 = load i8*, i8** %3, align 8
  %13 = getelementptr inbounds i8, i8* %12, i64 0
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  switch i32 %15, label %93 [
    i32 97, label %16
    i32 110, label %23
    i32 116, label %30
    i32 112, label %37
  ]

16:                                               ; preds = %2
  %17 = load i32, i32* @number_all, align 4
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** @numbering_properties, align 8
  %19 = load i32, i32* %4, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 2
  store i32 %17, i32* %22, align 4
  br label %103

23:                                               ; preds = %2
  %24 = load i32, i32* @number_none, align 4
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** @numbering_properties, align 8
  %26 = load i32, i32* %4, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 2
  store i32 %24, i32* %29, align 4
  br label %103

30:                                               ; preds = %2
  %31 = load i32, i32* @number_nonempty, align 4
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** @numbering_properties, align 8
  %33 = load i32, i32* %4, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 2
  store i32 %31, i32* %36, align 4
  br label %103

37:                                               ; preds = %2
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** @numbering_properties, align 8
  %39 = load i32, i32* %4, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @number_regex, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %53

46:                                               ; preds = %37
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** @numbering_properties, align 8
  %48 = load i32, i32* %4, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  %52 = call i32 @regfree(i32* %51)
  br label %60

53:                                               ; preds = %37
  %54 = load i32, i32* @number_regex, align 4
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** @numbering_properties, align 8
  %56 = load i32, i32* %4, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 2
  store i32 %54, i32* %59, align 4
  br label %60

60:                                               ; preds = %53, %46
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** @numbering_properties, align 8
  %62 = load i32, i32* %4, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 1
  %66 = load i8*, i8** %3, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 1
  %68 = load i32, i32* @REG_NEWLINE, align 4
  %69 = load i32, i32* @REG_NOSUB, align 4
  %70 = or i32 %68, %69
  %71 = call i32 @regcomp(i32* %65, i8* %67, i32 %70)
  store i32 %71, i32* %5, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %92

73:                                               ; preds = %60
  %74 = load i32, i32* %5, align 4
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** @numbering_properties, align 8
  %76 = load i32, i32* %4, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 1
  %80 = trunc i64 %9 to i32
  %81 = call i32 @regerror(i32 %74, i32* %79, i8* %11, i32 %80)
  %82 = load i32, i32* @EXIT_FAILURE, align 4
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** @numbering_properties, align 8
  %84 = load i32, i32* %4, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i8*, i8** %3, align 8
  %90 = getelementptr inbounds i8, i8* %89, i64 1
  %91 = call i32 (i32, i8*, i32, i8*, ...) @errx(i32 %82, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %88, i8* %11, i8* %90)
  br label %92

92:                                               ; preds = %73, %60
  br label %103

93:                                               ; preds = %2
  %94 = load i32, i32* @EXIT_FAILURE, align 4
  %95 = load %struct.TYPE_2__*, %struct.TYPE_2__** @numbering_properties, align 8
  %96 = load i32, i32* %4, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load i8*, i8** %3, align 8
  %102 = call i32 (i32, i8*, i32, i8*, ...) @errx(i32 %94, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %100, i8* %101)
  br label %103

103:                                              ; preds = %93, %92, %30, %23, %16
  %104 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %104)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @regfree(i32*) #2

declare dso_local i32 @regcomp(i32*, i8*, i32) #2

declare dso_local i32 @regerror(i32, i32*, i8*, i32) #2

declare dso_local i32 @errx(i32, i8*, i32, i8*, ...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
