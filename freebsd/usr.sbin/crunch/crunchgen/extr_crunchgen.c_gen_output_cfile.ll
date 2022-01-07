; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/crunch/crunchgen/extr_crunchgen.c_gen_output_cfile.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/crunch/crunchgen/extr_crunchgen.c_gen_output_cfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, i8*, %struct.TYPE_4__*, %struct.TYPE_5__* }
%struct.TYPE_4__ = type { i8*, %struct.TYPE_4__* }

@MAXLINELEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"generating %s\00", align 1
@outcfname = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@goterror = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [46 x i8] c"/* %s - generated from %s by crunchgen %s */\0A\00", align 1
@infilename = common dso_local global i8* null, align 8
@CRUNCH_VERSION = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [23 x i8] c"#define EXECNAME \22%s\22\0A\00", align 1
@execfname = common dso_local global i8* null, align 8
@crunched_skel = common dso_local global i8** null, align 8
@.str.5 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@progs = common dso_local global %struct.TYPE_5__* null, align 8
@.str.6 = private unnamed_addr constant [33 x i8] c"extern int _crunched_%s_stub();\0A\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"\0Astruct stub entry_points[] = {\0A\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"\09{ \22%s\22, _crunched_%s_stub },\0A\00", align 1
@.str.9 = private unnamed_addr constant [31 x i8] c"\09{ EXECNAME, crunched_main },\0A\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"\09{ NULL, NULL }\0A};\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gen_output_cfile() #0 {
  %1 = alloca i8**, align 8
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = load i32, i32* @MAXLINELEN, align 4
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %5, align 8
  %11 = alloca i8, i64 %9, align 16
  store i64 %9, i64* %6, align 8
  %12 = load i32, i32* @MAXLINELEN, align 4
  %13 = load i8*, i8** @outcfname, align 8
  %14 = call i32 @snprintf(i8* %11, i32 %12, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %13)
  %15 = call i32 @status(i8* %11)
  %16 = load i8*, i8** @outcfname, align 8
  %17 = call i32* @fopen(i8* %16, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %17, i32** %2, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %0
  %20 = load i8*, i8** @outcfname, align 8
  %21 = call i32 @warn(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %20)
  store i32 1, i32* @goterror, align 4
  store i32 1, i32* %7, align 4
  br label %106

22:                                               ; preds = %0
  %23 = load i32*, i32** %2, align 8
  %24 = load i8*, i8** @outcfname, align 8
  %25 = load i8*, i8** @infilename, align 8
  %26 = load i8*, i8** @CRUNCH_VERSION, align 8
  %27 = call i32 (i32*, i8*, ...) @fprintf(i32* %23, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0), i8* %24, i8* %25, i8* %26)
  %28 = load i32*, i32** %2, align 8
  %29 = load i8*, i8** @execfname, align 8
  %30 = call i32 (i32*, i8*, ...) @fprintf(i32* %28, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i8* %29)
  %31 = load i8**, i8*** @crunched_skel, align 8
  store i8** %31, i8*** %1, align 8
  br label %32

32:                                               ; preds = %41, %22
  %33 = load i8**, i8*** %1, align 8
  %34 = load i8*, i8** %33, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %36, label %44

36:                                               ; preds = %32
  %37 = load i32*, i32** %2, align 8
  %38 = load i8**, i8*** %1, align 8
  %39 = load i8*, i8** %38, align 8
  %40 = call i32 (i32*, i8*, ...) @fprintf(i32* %37, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* %39)
  br label %41

41:                                               ; preds = %36
  %42 = load i8**, i8*** %1, align 8
  %43 = getelementptr inbounds i8*, i8** %42, i32 1
  store i8** %43, i8*** %1, align 8
  br label %32

44:                                               ; preds = %32
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** @progs, align 8
  store %struct.TYPE_5__* %45, %struct.TYPE_5__** %3, align 8
  br label %46

46:                                               ; preds = %55, %44
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %48 = icmp ne %struct.TYPE_5__* %47, null
  br i1 %48, label %49, label %59

49:                                               ; preds = %46
  %50 = load i32*, i32** %2, align 8
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  %54 = call i32 (i32*, i8*, ...) @fprintf(i32* %50, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0), i8* %53)
  br label %55

55:                                               ; preds = %49
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 3
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %57, align 8
  store %struct.TYPE_5__* %58, %struct.TYPE_5__** %3, align 8
  br label %46

59:                                               ; preds = %46
  %60 = load i32*, i32** %2, align 8
  %61 = call i32 (i32*, i8*, ...) @fprintf(i32* %60, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0))
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** @progs, align 8
  store %struct.TYPE_5__* %62, %struct.TYPE_5__** %3, align 8
  br label %63

63:                                               ; preds = %95, %59
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %65 = icmp ne %struct.TYPE_5__* %64, null
  br i1 %65, label %66, label %99

66:                                               ; preds = %63
  %67 = load i32*, i32** %2, align 8
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 1
  %70 = load i8*, i8** %69, align 8
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = load i8*, i8** %72, align 8
  %74 = call i32 (i32*, i8*, ...) @fprintf(i32* %67, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0), i8* %70, i8* %73)
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 2
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %76, align 8
  store %struct.TYPE_4__* %77, %struct.TYPE_4__** %4, align 8
  br label %78

78:                                               ; preds = %90, %66
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %80 = icmp ne %struct.TYPE_4__* %79, null
  br i1 %80, label %81, label %94

81:                                               ; preds = %78
  %82 = load i32*, i32** %2, align 8
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = load i8*, i8** %84, align 8
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 0
  %88 = load i8*, i8** %87, align 8
  %89 = call i32 (i32*, i8*, ...) @fprintf(i32* %82, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0), i8* %85, i8* %88)
  br label %90

90:                                               ; preds = %81
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 1
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %92, align 8
  store %struct.TYPE_4__* %93, %struct.TYPE_4__** %4, align 8
  br label %78

94:                                               ; preds = %78
  br label %95

95:                                               ; preds = %94
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 3
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %97, align 8
  store %struct.TYPE_5__* %98, %struct.TYPE_5__** %3, align 8
  br label %63

99:                                               ; preds = %63
  %100 = load i32*, i32** %2, align 8
  %101 = call i32 (i32*, i8*, ...) @fprintf(i32* %100, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i64 0, i64 0))
  %102 = load i32*, i32** %2, align 8
  %103 = call i32 (i32*, i8*, ...) @fprintf(i32* %102, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i64 0, i64 0))
  %104 = load i32*, i32** %2, align 8
  %105 = call i32 @fclose(i32* %104)
  store i32 0, i32* %7, align 4
  br label %106

106:                                              ; preds = %99, %19
  %107 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %107)
  %108 = load i32, i32* %7, align 4
  switch i32 %108, label %110 [
    i32 0, label %109
    i32 1, label %109
  ]

109:                                              ; preds = %106, %106
  ret void

110:                                              ; preds = %106
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #2

declare dso_local i32 @status(i8*) #2

declare dso_local i32* @fopen(i8*, i8*) #2

declare dso_local i32 @warn(i8*, i8*) #2

declare dso_local i32 @fprintf(i32*, i8*, ...) #2

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
