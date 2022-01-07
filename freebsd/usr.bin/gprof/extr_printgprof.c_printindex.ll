; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/gprof/extr_printgprof.c_printindex.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/gprof/extr_printgprof.c_printindex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64, i32, i8*, i32, i64 }

@BUFSIZ = common dso_local global i32 0, align 4
@nname = common dso_local global i32 0, align 4
@ncycle = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"ran out of memory for sorting\00", align 1
@zflag = common dso_local global i64 0, align 8
@nl = common dso_local global %struct.TYPE_6__* null, align 8
@namecmp = common dso_local global i32 0, align 4
@cyclenl = common dso_local global %struct.TYPE_6__* null, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"\0C\0AIndex by function name\0A\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"[%d]\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"(%d)\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"%6.6s %-19.19s\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"%6.6s \00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"<cycle %d>\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"%-19.19s\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printindex() #0 {
  %1 = alloca %struct.TYPE_6__**, align 8
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = load i32, i32* @BUFSIZ, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %8, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %9, align 8
  %14 = load i32, i32* @nname, align 4
  %15 = load i32, i32* @ncycle, align 4
  %16 = add nsw i32 %14, %15
  %17 = call i64 @calloc(i32 %16, i32 8)
  %18 = inttoptr i64 %17 to %struct.TYPE_6__**
  store %struct.TYPE_6__** %18, %struct.TYPE_6__*** %1, align 8
  %19 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %1, align 8
  %20 = icmp eq %struct.TYPE_6__** %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %0
  %22 = call i32 @errx(i32 1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %23

23:                                               ; preds = %21, %0
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %24

24:                                               ; preds = %58, %23
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* @nname, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %61

28:                                               ; preds = %24
  %29 = load i64, i64* @zflag, align 8
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %48

31:                                               ; preds = %28
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** @nl, align 8
  %33 = load i32, i32* %3, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %48

39:                                               ; preds = %31
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** @nl, align 8
  %41 = load i32, i32* %3, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %39
  br label %58

48:                                               ; preds = %39, %31, %28
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** @nl, align 8
  %50 = load i32, i32* %3, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i64 %51
  %53 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %1, align 8
  %54 = load i32, i32* %4, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %4, align 4
  %56 = sext i32 %54 to i64
  %57 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %53, i64 %56
  store %struct.TYPE_6__* %52, %struct.TYPE_6__** %57, align 8
  br label %58

58:                                               ; preds = %48, %47
  %59 = load i32, i32* %3, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %3, align 4
  br label %24

61:                                               ; preds = %24
  %62 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %1, align 8
  %63 = load i32, i32* %4, align 4
  %64 = load i32, i32* @namecmp, align 4
  %65 = call i32 @qsort(%struct.TYPE_6__** %62, i32 %63, i32 8, i32 %64)
  store i32 1, i32* %3, align 4
  %66 = load i32, i32* %4, align 4
  store i32 %66, i32* %5, align 4
  br label %67

67:                                               ; preds = %81, %61
  %68 = load i32, i32* %3, align 4
  %69 = load i32, i32* @ncycle, align 4
  %70 = icmp sle i32 %68, %69
  br i1 %70, label %71, label %84

71:                                               ; preds = %67
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cyclenl, align 8
  %73 = load i32, i32* %3, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i64 %74
  %76 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %1, align 8
  %77 = load i32, i32* %5, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %5, align 4
  %79 = sext i32 %77 to i64
  %80 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %76, i64 %79
  store %struct.TYPE_6__* %75, %struct.TYPE_6__** %80, align 8
  br label %81

81:                                               ; preds = %71
  %82 = load i32, i32* %3, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %3, align 4
  br label %67

84:                                               ; preds = %67
  %85 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %86 = load i32, i32* %5, align 4
  %87 = add nsw i32 %86, 2
  %88 = sdiv i32 %87, 3
  store i32 %88, i32* %3, align 4
  store i32 0, i32* %6, align 4
  br label %89

89:                                               ; preds = %142, %84
  %90 = load i32, i32* %6, align 4
  %91 = load i32, i32* %3, align 4
  %92 = icmp slt i32 %90, %91
  br i1 %92, label %93, label %145

93:                                               ; preds = %89
  %94 = load i32, i32* %6, align 4
  store i32 %94, i32* %7, align 4
  br label %95

95:                                               ; preds = %136, %93
  %96 = load i32, i32* %7, align 4
  %97 = load i32, i32* %5, align 4
  %98 = icmp slt i32 %96, %97
  br i1 %98, label %99, label %140

99:                                               ; preds = %95
  %100 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %1, align 8
  %101 = load i32, i32* %7, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %100, i64 %102
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %103, align 8
  store %struct.TYPE_6__* %104, %struct.TYPE_6__** %2, align 8
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 5
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %114

109:                                              ; preds = %99
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = call i32 @sprintf(i8* %13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %112)
  br label %119

114:                                              ; preds = %99
  %115 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = call i32 @sprintf(i8* %13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %117)
  br label %119

119:                                              ; preds = %114, %109
  %120 = load i32, i32* %7, align 4
  %121 = load i32, i32* %4, align 4
  %122 = icmp slt i32 %120, %121
  br i1 %122, label %123, label %128

123:                                              ; preds = %119
  %124 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 3
  %126 = load i8*, i8** %125, align 8
  %127 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i8* %13, i8* %126)
  br label %135

128:                                              ; preds = %119
  %129 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* %13)
  %130 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 4
  %132 = load i32, i32* %131, align 8
  %133 = call i32 @sprintf(i8* %13, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i32 %132)
  %134 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i8* %13)
  br label %135

135:                                              ; preds = %128, %123
  br label %136

136:                                              ; preds = %135
  %137 = load i32, i32* %3, align 4
  %138 = load i32, i32* %7, align 4
  %139 = add nsw i32 %138, %137
  store i32 %139, i32* %7, align 4
  br label %95

140:                                              ; preds = %95
  %141 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  br label %142

142:                                              ; preds = %140
  %143 = load i32, i32* %6, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %6, align 4
  br label %89

145:                                              ; preds = %89
  %146 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %1, align 8
  %147 = call i32 @free(%struct.TYPE_6__** %146)
  %148 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %148)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @calloc(i32, i32) #2

declare dso_local i32 @errx(i32, i8*) #2

declare dso_local i32 @qsort(%struct.TYPE_6__**, i32, i32, i32) #2

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i32 @sprintf(i8*, i8*, i32) #2

declare dso_local i32 @free(%struct.TYPE_6__**) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
