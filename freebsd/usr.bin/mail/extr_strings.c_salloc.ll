; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/mail/extr_strings.c_salloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/mail/extr_strings.c_salloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strings = type { i8*, i32, i8* }

@stringdope = common dso_local global %struct.strings* null, align 8
@NSPACE = common dso_local global i64 0, align 8
@STRINGSIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"String too large\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"No room for space %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @salloc(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.strings*, align 8
  store i32 %0, i32* %2, align 4
  %7 = load i32, i32* %2, align 4
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = sext i32 %8 to i64
  %10 = add i64 %9, 7
  %11 = trunc i64 %10 to i32
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = sext i32 %12 to i64
  %14 = and i64 %13, -8
  %15 = trunc i64 %14 to i32
  store i32 %15, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %16 = load %struct.strings*, %struct.strings** @stringdope, align 8
  %17 = getelementptr inbounds %struct.strings, %struct.strings* %16, i64 0
  store %struct.strings* %17, %struct.strings** %6, align 8
  br label %18

18:                                               ; preds = %46, %1
  %19 = load %struct.strings*, %struct.strings** %6, align 8
  %20 = load %struct.strings*, %struct.strings** @stringdope, align 8
  %21 = load i64, i64* @NSPACE, align 8
  %22 = getelementptr inbounds %struct.strings, %struct.strings* %20, i64 %21
  %23 = icmp ult %struct.strings* %19, %22
  br i1 %23, label %24, label %49

24:                                               ; preds = %18
  %25 = load %struct.strings*, %struct.strings** %6, align 8
  %26 = getelementptr inbounds %struct.strings, %struct.strings* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = icmp eq i8* %27, null
  br i1 %28, label %29, label %36

29:                                               ; preds = %24
  %30 = load i32, i32* @STRINGSIZE, align 4
  %31 = load i32, i32* %5, align 4
  %32 = shl i32 %30, %31
  %33 = load i32, i32* %4, align 4
  %34 = icmp sge i32 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  br label %49

36:                                               ; preds = %29, %24
  %37 = load %struct.strings*, %struct.strings** %6, align 8
  %38 = getelementptr inbounds %struct.strings, %struct.strings* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* %4, align 4
  %41 = icmp sge i32 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  br label %49

43:                                               ; preds = %36
  %44 = load i32, i32* %5, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %5, align 4
  br label %46

46:                                               ; preds = %43
  %47 = load %struct.strings*, %struct.strings** %6, align 8
  %48 = getelementptr inbounds %struct.strings, %struct.strings* %47, i32 1
  store %struct.strings* %48, %struct.strings** %6, align 8
  br label %18

49:                                               ; preds = %42, %35, %18
  %50 = load %struct.strings*, %struct.strings** %6, align 8
  %51 = load %struct.strings*, %struct.strings** @stringdope, align 8
  %52 = load i64, i64* @NSPACE, align 8
  %53 = getelementptr inbounds %struct.strings, %struct.strings* %51, i64 %52
  %54 = icmp uge %struct.strings* %50, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %49
  %56 = call i32 @errx(i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %57

57:                                               ; preds = %55, %49
  %58 = load %struct.strings*, %struct.strings** %6, align 8
  %59 = getelementptr inbounds %struct.strings, %struct.strings* %58, i32 0, i32 0
  %60 = load i8*, i8** %59, align 8
  %61 = icmp eq i8* %60, null
  br i1 %61, label %62, label %92

62:                                               ; preds = %57
  %63 = load %struct.strings*, %struct.strings** %6, align 8
  %64 = load %struct.strings*, %struct.strings** @stringdope, align 8
  %65 = getelementptr inbounds %struct.strings, %struct.strings* %64, i64 0
  %66 = ptrtoint %struct.strings* %63 to i64
  %67 = ptrtoint %struct.strings* %65 to i64
  %68 = sub i64 %66, %67
  %69 = sdiv exact i64 %68, 24
  %70 = trunc i64 %69 to i32
  store i32 %70, i32* %5, align 4
  %71 = load i32, i32* @STRINGSIZE, align 4
  %72 = load i32, i32* %5, align 4
  %73 = shl i32 %71, %72
  %74 = call i8* @malloc(i32 %73)
  %75 = load %struct.strings*, %struct.strings** %6, align 8
  %76 = getelementptr inbounds %struct.strings, %struct.strings* %75, i32 0, i32 0
  store i8* %74, i8** %76, align 8
  %77 = icmp eq i8* %74, null
  br i1 %77, label %78, label %81

78:                                               ; preds = %62
  %79 = load i32, i32* %5, align 4
  %80 = call i32 @err(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %79)
  br label %81

81:                                               ; preds = %78, %62
  %82 = load %struct.strings*, %struct.strings** %6, align 8
  %83 = getelementptr inbounds %struct.strings, %struct.strings* %82, i32 0, i32 0
  %84 = load i8*, i8** %83, align 8
  %85 = load %struct.strings*, %struct.strings** %6, align 8
  %86 = getelementptr inbounds %struct.strings, %struct.strings* %85, i32 0, i32 2
  store i8* %84, i8** %86, align 8
  %87 = load i32, i32* @STRINGSIZE, align 4
  %88 = load i32, i32* %5, align 4
  %89 = shl i32 %87, %88
  %90 = load %struct.strings*, %struct.strings** %6, align 8
  %91 = getelementptr inbounds %struct.strings, %struct.strings* %90, i32 0, i32 1
  store i32 %89, i32* %91, align 8
  br label %92

92:                                               ; preds = %81, %57
  %93 = load i32, i32* %4, align 4
  %94 = load %struct.strings*, %struct.strings** %6, align 8
  %95 = getelementptr inbounds %struct.strings, %struct.strings* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = sub nsw i32 %96, %93
  store i32 %97, i32* %95, align 8
  %98 = load %struct.strings*, %struct.strings** %6, align 8
  %99 = getelementptr inbounds %struct.strings, %struct.strings* %98, i32 0, i32 2
  %100 = load i8*, i8** %99, align 8
  store i8* %100, i8** %3, align 8
  %101 = load i32, i32* %4, align 4
  %102 = load %struct.strings*, %struct.strings** %6, align 8
  %103 = getelementptr inbounds %struct.strings, %struct.strings* %102, i32 0, i32 2
  %104 = load i8*, i8** %103, align 8
  %105 = sext i32 %101 to i64
  %106 = getelementptr inbounds i8, i8* %104, i64 %105
  store i8* %106, i8** %103, align 8
  %107 = load i8*, i8** %3, align 8
  ret i8* %107
}

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
