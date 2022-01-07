; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/find/extr_find.c_find_execute.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/find/extr_find.c_find_execute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_8__*, i64 (%struct.TYPE_8__*, %struct.TYPE_9__*)* }
%struct.TYPE_9__ = type { i32, i32, i32, i32 }

@ftsoptions = common dso_local global i32 0, align 4
@issort = common dso_local global i64 0, align 8
@find_compare = common dso_local global i32* null, align 8
@tree = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [8 x i8] c"ftsopen\00", align 1
@exitstatus = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@maxdepth = common dso_local global i32 0, align 4
@FTS_SKIP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@isdepth = common dso_local global i32 0, align 4
@ignore_readdir_race = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@isxargs = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [7 x i8] c" \09\0A\\'\22\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"%s: illegal path\00", align 1
@mindepth = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [9 x i8] c"fts_read\00", align 1
@BADCH = common dso_local global i32 0, align 4
@FTS_WHITEOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @find_execute(%struct.TYPE_8__* %0, i8** %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  store i8** %1, i8*** %4, align 8
  %8 = load i8**, i8*** %4, align 8
  %9 = load i32, i32* @ftsoptions, align 4
  %10 = load i64, i64* @issort, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32*, i32** @find_compare, align 8
  br label %15

14:                                               ; preds = %2
  br label %15

15:                                               ; preds = %14, %12
  %16 = phi i32* [ %13, %12 ], [ null, %14 ]
  %17 = call i32* @fts_open(i8** %8, i32 %9, i32* %16)
  store i32* %17, i32** @tree, align 8
  %18 = load i32*, i32** @tree, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  %21 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  br label %22

22:                                               ; preds = %20, %15
  store i32 0, i32* @exitstatus, align 4
  br label %23

23:                                               ; preds = %135, %114, %98, %78, %76, %60, %55, %22
  store i32 0, i32* @errno, align 4
  %24 = load i32*, i32** @tree, align 8
  %25 = call %struct.TYPE_9__* @fts_read(i32* %24)
  store %struct.TYPE_9__* %25, %struct.TYPE_9__** %5, align 8
  %26 = icmp ne %struct.TYPE_9__* %25, null
  br i1 %26, label %27, label %136

27:                                               ; preds = %23
  %28 = load i32, i32* @maxdepth, align 4
  %29 = icmp ne i32 %28, -1
  br i1 %29, label %30, label %48

30:                                               ; preds = %27
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @maxdepth, align 4
  %35 = icmp sge i32 %33, %34
  br i1 %35, label %36, label %48

36:                                               ; preds = %30
  %37 = load i32*, i32** @tree, align 8
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %39 = load i32, i32* @FTS_SKIP, align 4
  %40 = call i64 @fts_set(i32* %37, %struct.TYPE_9__* %38, i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %36
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %45)
  br label %47

47:                                               ; preds = %42, %36
  br label %48

48:                                               ; preds = %47, %30, %27
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  switch i32 %51, label %89 [
    i32 133, label %52
    i32 131, label %57
    i32 132, label %62
    i32 129, label %62
    i32 130, label %78
  ]

52:                                               ; preds = %48
  %53 = load i32, i32* @isdepth, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %52
  br label %23

56:                                               ; preds = %52
  br label %89

57:                                               ; preds = %48
  %58 = load i32, i32* @isdepth, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %57
  br label %23

61:                                               ; preds = %57
  br label %89

62:                                               ; preds = %48, %48
  %63 = load i64, i64* @ignore_readdir_race, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %77

65:                                               ; preds = %62
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @ENOENT, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %77

71:                                               ; preds = %65
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = icmp sgt i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %71
  br label %23

77:                                               ; preds = %71, %65, %62
  br label %78

78:                                               ; preds = %48, %77
  %79 = load i32, i32* @stdout, align 4
  %80 = call i32 @fflush(i32 %79)
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @strerror(i32 %86)
  %88 = call i32 (i8*, i32, ...) @warnx(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %83, i32 %87)
  store i32 1, i32* @exitstatus, align 4
  br label %23

89:                                               ; preds = %48, %61, %56
  %90 = load i64, i64* @isxargs, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %105

92:                                               ; preds = %89
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 4
  %96 = call i64 @strpbrk(i32 %95, i32 ptrtoint ([7 x i8]* @.str.3 to i32))
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %105

98:                                               ; preds = %92
  %99 = load i32, i32* @stdout, align 4
  %100 = call i32 @fflush(i32 %99)
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 4
  %104 = call i32 (i8*, i32, ...) @warnx(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32 %103)
  store i32 1, i32* @exitstatus, align 4
  br label %23

105:                                              ; preds = %92, %89
  %106 = load i32, i32* @mindepth, align 4
  %107 = icmp ne i32 %106, -1
  br i1 %107, label %108, label %115

108:                                              ; preds = %105
  %109 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @mindepth, align 4
  %113 = icmp slt i32 %111, %112
  br i1 %113, label %114, label %115

114:                                              ; preds = %108
  br label %23

115:                                              ; preds = %108, %105
  %116 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  store %struct.TYPE_8__* %116, %struct.TYPE_8__** %6, align 8
  br label %117

117:                                              ; preds = %131, %115
  %118 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %119 = icmp ne %struct.TYPE_8__* %118, null
  br i1 %119, label %120, label %128

120:                                              ; preds = %117
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 1
  %123 = load i64 (%struct.TYPE_8__*, %struct.TYPE_9__*)*, i64 (%struct.TYPE_8__*, %struct.TYPE_9__*)** %122, align 8
  %124 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %125 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %126 = call i64 %123(%struct.TYPE_8__* %124, %struct.TYPE_9__* %125)
  %127 = icmp ne i64 %126, 0
  br label %128

128:                                              ; preds = %120, %117
  %129 = phi i1 [ false, %117 ], [ %127, %120 ]
  br i1 %129, label %130, label %135

130:                                              ; preds = %128
  br label %131

131:                                              ; preds = %130
  %132 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i32 0, i32 0
  %134 = load %struct.TYPE_8__*, %struct.TYPE_8__** %133, align 8
  store %struct.TYPE_8__* %134, %struct.TYPE_8__** %6, align 8
  br label %117

135:                                              ; preds = %128
  br label %23

136:                                              ; preds = %23
  %137 = load i32, i32* @errno, align 4
  store i32 %137, i32* %7, align 4
  %138 = call i32 (...) @finish_execplus()
  %139 = load i32, i32* %7, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %151

141:                                              ; preds = %136
  %142 = load i64, i64* @ignore_readdir_race, align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %148

144:                                              ; preds = %141
  %145 = load i32, i32* %7, align 4
  %146 = load i32, i32* @ENOENT, align 4
  %147 = icmp ne i32 %145, %146
  br i1 %147, label %148, label %151

148:                                              ; preds = %144, %141
  %149 = load i32, i32* %7, align 4
  %150 = call i32 @errc(i32 1, i32 %149, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  br label %151

151:                                              ; preds = %148, %144, %136
  %152 = load i32, i32* @exitstatus, align 4
  ret i32 %152
}

declare dso_local i32* @fts_open(i8**, i32, i32*) #1

declare dso_local i32 @err(i32, i8*, ...) #1

declare dso_local %struct.TYPE_9__* @fts_read(i32*) #1

declare dso_local i64 @fts_set(i32*, %struct.TYPE_9__*, i32) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i32 @warnx(i8*, i32, ...) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i64 @strpbrk(i32, i32) #1

declare dso_local i32 @finish_execplus(...) #1

declare dso_local i32 @errc(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
