; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/sed/extr_main.c_cu_fgets.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/sed/extr_main.c_cu_fgets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, %struct.TYPE_2__*, i32 }

@cu_fgets.state = internal global i32 0, align 4
@cu_fgets.f = internal global i32* null, align 8
@cu_fgets.s = internal global i8* null, align 8
@cu_fgets.string_ident = internal global [30 x i8] zeroinitializer, align 16
@script = common dso_local global %struct.TYPE_2__* null, align 8
@linenum = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@fname = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"\22%s\22\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c" ...\22\00", align 1
@nflag = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @cu_fgets(i8* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  br label %9

9:                                                ; preds = %139, %91, %48, %35, %3
  %10 = load i32, i32* @cu_fgets.state, align 4
  switch i32 %10, label %177 [
    i32 0, label %11
    i32 1, label %55
    i32 2, label %97
  ]

11:                                               ; preds = %9
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** @script, align 8
  %13 = icmp eq %struct.TYPE_2__* %12, null
  br i1 %13, label %14, label %20

14:                                               ; preds = %11
  %15 = load i32*, i32** %7, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %14
  %18 = load i32*, i32** %7, align 8
  store i32 0, i32* %18, align 4
  br label %19

19:                                               ; preds = %17, %14
  store i8* null, i8** %4, align 8
  br label %178

20:                                               ; preds = %11
  store i32 0, i32* @linenum, align 4
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** @script, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  switch i32 %23, label %52 [
    i32 129, label %24
    i32 128, label %39
  ]

24:                                               ; preds = %20
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** @script, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = call i32* @fopen(i8* %27, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %28, i32** @cu_fgets.f, align 8
  %29 = icmp eq i32* %28, null
  br i1 %29, label %30, label %35

30:                                               ; preds = %24
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** @script, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = call i32 @err(i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %33)
  br label %35

35:                                               ; preds = %30, %24
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** @script, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  store i8* %38, i8** @fname, align 8
  store i32 1, i32* @cu_fgets.state, align 4
  br label %9

39:                                               ; preds = %20
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** @script, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = call i32 @snprintf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @cu_fgets.string_ident, i64 0, i64 0), i32 30, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* %42)
  %44 = sext i32 %43 to i64
  %45 = icmp uge i64 %44, 29
  br i1 %45, label %46, label %48

46:                                               ; preds = %39
  %47 = call i32 @strcpy(i32 ptrtoint (i8* getelementptr inbounds ([30 x i8], [30 x i8]* @cu_fgets.string_ident, i64 0, i64 24) to i32), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  br label %48

48:                                               ; preds = %46, %39
  store i8* getelementptr inbounds ([30 x i8], [30 x i8]* @cu_fgets.string_ident, i64 0, i64 0), i8** @fname, align 8
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** @script, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  store i8* %51, i8** @cu_fgets.s, align 8
  store i32 2, i32* @cu_fgets.state, align 4
  br label %9

52:                                               ; preds = %20
  %53 = call i32 (...) @__unreachable()
  br label %54

54:                                               ; preds = %52
  br label %55

55:                                               ; preds = %9, %54
  %56 = load i8*, i8** %5, align 8
  %57 = load i32, i32* %6, align 4
  %58 = load i32*, i32** @cu_fgets.f, align 8
  %59 = call i8* @fgets(i8* %56, i32 %57, i32* %58)
  store i8* %59, i8** %8, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %61, label %91

61:                                               ; preds = %55
  %62 = load i32, i32* @linenum, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* @linenum, align 4
  %64 = load i32, i32* @linenum, align 4
  %65 = icmp eq i32 %64, 1
  br i1 %65, label %66, label %79

66:                                               ; preds = %61
  %67 = load i8*, i8** %5, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 0
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp eq i32 %70, 35
  br i1 %71, label %72, label %79

72:                                               ; preds = %66
  %73 = load i8*, i8** %5, align 8
  %74 = getelementptr inbounds i8, i8* %73, i64 1
  %75 = load i8, i8* %74, align 1
  %76 = sext i8 %75 to i32
  %77 = icmp eq i32 %76, 110
  br i1 %77, label %78, label %79

78:                                               ; preds = %72
  store i32 1, i32* @nflag, align 4
  br label %79

79:                                               ; preds = %78, %72, %66, %61
  %80 = load i32*, i32** %7, align 8
  %81 = icmp ne i32* %80, null
  br i1 %81, label %82, label %89

82:                                               ; preds = %79
  %83 = load i32*, i32** @cu_fgets.f, align 8
  %84 = call i32 @feof(i32* %83)
  %85 = icmp ne i32 %84, 0
  %86 = xor i1 %85, true
  %87 = zext i1 %86 to i32
  %88 = load i32*, i32** %7, align 8
  store i32 %87, i32* %88, align 4
  br label %89

89:                                               ; preds = %82, %79
  %90 = load i8*, i8** %8, align 8
  store i8* %90, i8** %4, align 8
  br label %178

91:                                               ; preds = %55
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** @script, align 8
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 1
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** %93, align 8
  store %struct.TYPE_2__* %94, %struct.TYPE_2__** @script, align 8
  %95 = load i32*, i32** @cu_fgets.f, align 8
  %96 = call i32 @fclose(i32* %95)
  store i32 0, i32* @cu_fgets.state, align 4
  br label %9

97:                                               ; preds = %9
  %98 = load i32, i32* @linenum, align 4
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %113

100:                                              ; preds = %97
  %101 = load i8*, i8** @cu_fgets.s, align 8
  %102 = getelementptr inbounds i8, i8* %101, i64 0
  %103 = load i8, i8* %102, align 1
  %104 = sext i8 %103 to i32
  %105 = icmp eq i32 %104, 35
  br i1 %105, label %106, label %113

106:                                              ; preds = %100
  %107 = load i8*, i8** @cu_fgets.s, align 8
  %108 = getelementptr inbounds i8, i8* %107, i64 1
  %109 = load i8, i8* %108, align 1
  %110 = sext i8 %109 to i32
  %111 = icmp eq i32 %110, 110
  br i1 %111, label %112, label %113

112:                                              ; preds = %106
  store i32 1, i32* @nflag, align 4
  br label %113

113:                                              ; preds = %112, %106, %100, %97
  %114 = load i8*, i8** %5, align 8
  store i8* %114, i8** %8, align 8
  br label %115

115:                                              ; preds = %176, %113
  %116 = load i32, i32* %6, align 4
  %117 = add nsw i32 %116, -1
  store i32 %117, i32* %6, align 4
  %118 = icmp sle i32 %116, 1
  br i1 %118, label %119, label %129

119:                                              ; preds = %115
  %120 = load i8*, i8** %8, align 8
  store i8 0, i8* %120, align 1
  %121 = load i32, i32* @linenum, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* @linenum, align 4
  %123 = load i32*, i32** %7, align 8
  %124 = icmp ne i32* %123, null
  br i1 %124, label %125, label %127

125:                                              ; preds = %119
  %126 = load i32*, i32** %7, align 8
  store i32 1, i32* %126, align 4
  br label %127

127:                                              ; preds = %125, %119
  %128 = load i8*, i8** %5, align 8
  store i8* %128, i8** %4, align 8
  br label %178

129:                                              ; preds = %115
  %130 = load i8*, i8** @cu_fgets.s, align 8
  %131 = load i8, i8* %130, align 1
  %132 = sext i8 %131 to i32
  switch i32 %132, label %170 [
    i32 0, label %133
    i32 10, label %156
  ]

133:                                              ; preds = %129
  store i32 0, i32* @cu_fgets.state, align 4
  %134 = load i8*, i8** @cu_fgets.s, align 8
  %135 = load %struct.TYPE_2__*, %struct.TYPE_2__** @script, align 8
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i32 0, i32 0
  %137 = load i8*, i8** %136, align 8
  %138 = icmp eq i8* %134, %137
  br i1 %138, label %139, label %143

139:                                              ; preds = %133
  %140 = load %struct.TYPE_2__*, %struct.TYPE_2__** @script, align 8
  %141 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %140, i32 0, i32 1
  %142 = load %struct.TYPE_2__*, %struct.TYPE_2__** %141, align 8
  store %struct.TYPE_2__* %142, %struct.TYPE_2__** @script, align 8
  br label %9

143:                                              ; preds = %133
  %144 = load %struct.TYPE_2__*, %struct.TYPE_2__** @script, align 8
  %145 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %144, i32 0, i32 1
  %146 = load %struct.TYPE_2__*, %struct.TYPE_2__** %145, align 8
  store %struct.TYPE_2__* %146, %struct.TYPE_2__** @script, align 8
  %147 = load i8*, i8** %8, align 8
  store i8 0, i8* %147, align 1
  %148 = load i32, i32* @linenum, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* @linenum, align 4
  %150 = load i32*, i32** %7, align 8
  %151 = icmp ne i32* %150, null
  br i1 %151, label %152, label %154

152:                                              ; preds = %143
  %153 = load i32*, i32** %7, align 8
  store i32 0, i32* %153, align 4
  br label %154

154:                                              ; preds = %152, %143
  %155 = load i8*, i8** %5, align 8
  store i8* %155, i8** %4, align 8
  br label %178

156:                                              ; preds = %129
  %157 = load i8*, i8** %8, align 8
  %158 = getelementptr inbounds i8, i8* %157, i32 1
  store i8* %158, i8** %8, align 8
  store i8 10, i8* %157, align 1
  %159 = load i8*, i8** %8, align 8
  store i8 0, i8* %159, align 1
  %160 = load i8*, i8** @cu_fgets.s, align 8
  %161 = getelementptr inbounds i8, i8* %160, i32 1
  store i8* %161, i8** @cu_fgets.s, align 8
  %162 = load i32, i32* @linenum, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* @linenum, align 4
  %164 = load i32*, i32** %7, align 8
  %165 = icmp ne i32* %164, null
  br i1 %165, label %166, label %168

166:                                              ; preds = %156
  %167 = load i32*, i32** %7, align 8
  store i32 0, i32* %167, align 4
  br label %168

168:                                              ; preds = %166, %156
  %169 = load i8*, i8** %5, align 8
  store i8* %169, i8** %4, align 8
  br label %178

170:                                              ; preds = %129
  %171 = load i8*, i8** @cu_fgets.s, align 8
  %172 = getelementptr inbounds i8, i8* %171, i32 1
  store i8* %172, i8** @cu_fgets.s, align 8
  %173 = load i8, i8* %171, align 1
  %174 = load i8*, i8** %8, align 8
  %175 = getelementptr inbounds i8, i8* %174, i32 1
  store i8* %175, i8** %8, align 8
  store i8 %173, i8* %174, align 1
  br label %176

176:                                              ; preds = %170
  br label %115

177:                                              ; preds = %9
  store i8* null, i8** %4, align 8
  br label %178

178:                                              ; preds = %177, %168, %154, %127, %89, %19
  %179 = load i8*, i8** %4, align 8
  ret i8* %179
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @err(i32, i8*, i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @__unreachable(...) #1

declare dso_local i8* @fgets(i8*, i32, i32*) #1

declare dso_local i32 @feof(i32*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
