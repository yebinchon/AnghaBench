; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/crunch/crunchgen/extr_crunchgen.c_gen_specials_cache.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/crunch/crunchgen/extr_crunchgen.c_gen_specials_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i8*, i8*, i64, i64, %struct.TYPE_3__* }

@MAXLINELEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"generating %s\00", align 1
@cachename = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@goterror = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [55 x i8] c"# %s - parm cache generated from %s by crunchgen  %s\0A\0A\00", align 1
@infilename = common dso_local global i8* null, align 8
@CRUNCH_VERSION = common dso_local global i8* null, align 8
@progs = common dso_local global %struct.TYPE_3__* null, align 8
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"special %s srcdir %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"special %s objdir %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"special %s objs\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"special %s objpaths\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gen_specials_cache() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = load i32, i32* @MAXLINELEN, align 4
  %7 = zext i32 %6 to i64
  %8 = call i8* @llvm.stacksave()
  store i8* %8, i8** %3, align 8
  %9 = alloca i8, i64 %7, align 16
  store i64 %7, i64* %4, align 8
  %10 = load i32, i32* @MAXLINELEN, align 4
  %11 = load i8*, i8** @cachename, align 8
  %12 = call i32 @snprintf(i8* %9, i32 %10, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %11)
  %13 = call i32 @status(i8* %9)
  %14 = load i8*, i8** @cachename, align 8
  %15 = call i32* @fopen(i8* %14, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %15, i32** %1, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %0
  %18 = load i8*, i8** @cachename, align 8
  %19 = call i32 @warn(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %18)
  store i32 1, i32* @goterror, align 4
  store i32 1, i32* %5, align 4
  br label %100

20:                                               ; preds = %0
  %21 = load i32*, i32** %1, align 8
  %22 = load i8*, i8** @cachename, align 8
  %23 = load i8*, i8** @infilename, align 8
  %24 = load i8*, i8** @CRUNCH_VERSION, align 8
  %25 = call i32 (i32*, i8*, ...) @fprintf(i32* %21, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i64 0, i64 0), i8* %22, i8* %23, i8* %24)
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** @progs, align 8
  store %struct.TYPE_3__* %26, %struct.TYPE_3__** %2, align 8
  br label %27

27:                                               ; preds = %93, %20
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %29 = icmp ne %struct.TYPE_3__* %28, null
  br i1 %29, label %30, label %97

30:                                               ; preds = %27
  %31 = load i32*, i32** %1, align 8
  %32 = call i32 (i32*, i8*, ...) @fprintf(i32* %31, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %46

37:                                               ; preds = %30
  %38 = load i32*, i32** %1, align 8
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  %41 = load i8*, i8** %40, align 8
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = call i32 (i32*, i8*, ...) @fprintf(i32* %38, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i8* %41, i8* %44)
  br label %46

46:                                               ; preds = %37, %30
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 2
  %49 = load i8*, i8** %48, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %51, label %60

51:                                               ; preds = %46
  %52 = load i32*, i32** %1, align 8
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 1
  %55 = load i8*, i8** %54, align 8
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 2
  %58 = load i8*, i8** %57, align 8
  %59 = call i32 (i32*, i8*, ...) @fprintf(i32* %52, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), i8* %55, i8* %58)
  br label %60

60:                                               ; preds = %51, %46
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 4
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %76

65:                                               ; preds = %60
  %66 = load i32*, i32** %1, align 8
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 1
  %69 = load i8*, i8** %68, align 8
  %70 = call i32 (i32*, i8*, ...) @fprintf(i32* %66, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i8* %69)
  %71 = load i32*, i32** %1, align 8
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 4
  %74 = load i64, i64* %73, align 8
  %75 = call i32 @output_strlst(i32* %71, i64 %74)
  br label %76

76:                                               ; preds = %65, %60
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 3
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %92

81:                                               ; preds = %76
  %82 = load i32*, i32** %1, align 8
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 1
  %85 = load i8*, i8** %84, align 8
  %86 = call i32 (i32*, i8*, ...) @fprintf(i32* %82, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0), i8* %85)
  %87 = load i32*, i32** %1, align 8
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 3
  %90 = load i64, i64* %89, align 8
  %91 = call i32 @output_strlst(i32* %87, i64 %90)
  br label %92

92:                                               ; preds = %81, %76
  br label %93

93:                                               ; preds = %92
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 5
  %96 = load %struct.TYPE_3__*, %struct.TYPE_3__** %95, align 8
  store %struct.TYPE_3__* %96, %struct.TYPE_3__** %2, align 8
  br label %27

97:                                               ; preds = %27
  %98 = load i32*, i32** %1, align 8
  %99 = call i32 @fclose(i32* %98)
  store i32 0, i32* %5, align 4
  br label %100

100:                                              ; preds = %97, %17
  %101 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %101)
  %102 = load i32, i32* %5, align 4
  switch i32 %102, label %104 [
    i32 0, label %103
    i32 1, label %103
  ]

103:                                              ; preds = %100, %100
  ret void

104:                                              ; preds = %100
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #2

declare dso_local i32 @status(i8*) #2

declare dso_local i32* @fopen(i8*, i8*) #2

declare dso_local i32 @warn(i8*, i8*) #2

declare dso_local i32 @fprintf(i32*, i8*, ...) #2

declare dso_local i32 @output_strlst(i32*, i64) #2

declare dso_local i32 @fclose(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
