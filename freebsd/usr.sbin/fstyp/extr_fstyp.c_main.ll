; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/fstyp/extr_fstyp.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/fstyp/extr_fstyp.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 (i32*, i8*, i32)*, i8* }

@LABEL_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"lsu\00", align 1
@optind = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"cap_enter\00", align 1
@fstypes = common dso_local global %struct.TYPE_2__* null, align 8
@.str.4 = private unnamed_addr constant [30 x i8] c"%s: filesystem not recognized\00", align 1
@VIS_GLOB = common dso_local global i32 0, align 4
@VIS_NL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [4 x i8] c"\22'$\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"strsnvis\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32 (i32*, i8*, i32)*, align 8
  %19 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %20 = load i32, i32* @LABEL_LEN, align 4
  %21 = add nsw i32 %20, 1
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %13, align 8
  %24 = alloca i8, i64 %22, align 16
  store i64 %22, i64* %14, align 8
  %25 = load i32, i32* @LABEL_LEN, align 4
  %26 = mul nsw i32 %25, 4
  %27 = add nsw i32 %26, 1
  %28 = zext i32 %27 to i64
  %29 = alloca i8, i64 %28, align 16
  store i64 %28, i64* %15, align 8
  br label %30

30:                                               ; preds = %42, %2
  %31 = load i32, i32* %4, align 4
  %32 = load i8**, i8*** %5, align 8
  %33 = call i32 @getopt(i32 %31, i8** %32, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i32 %33, i32* %6, align 4
  %34 = icmp ne i32 %33, -1
  br i1 %34, label %35, label %43

35:                                               ; preds = %30
  %36 = load i32, i32* %6, align 4
  switch i32 %36, label %40 [
    i32 108, label %37
    i32 115, label %38
    i32 117, label %39
  ]

37:                                               ; preds = %35
  store i32 1, i32* %11, align 4
  br label %42

38:                                               ; preds = %35
  store i32 1, i32* %10, align 4
  br label %42

39:                                               ; preds = %35
  store i32 1, i32* %12, align 4
  br label %42

40:                                               ; preds = %35
  %41 = call i32 (...) @usage()
  br label %42

42:                                               ; preds = %40, %39, %38, %37
  br label %30

43:                                               ; preds = %30
  %44 = load i64, i64* @optind, align 8
  %45 = load i32, i32* %4, align 4
  %46 = sext i32 %45 to i64
  %47 = sub nsw i64 %46, %44
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %4, align 4
  %49 = load i64, i64* @optind, align 8
  %50 = load i8**, i8*** %5, align 8
  %51 = getelementptr inbounds i8*, i8** %50, i64 %49
  store i8** %51, i8*** %5, align 8
  %52 = load i32, i32* %4, align 4
  %53 = icmp ne i32 %52, 1
  br i1 %53, label %54, label %56

54:                                               ; preds = %43
  %55 = call i32 (...) @usage()
  br label %56

56:                                               ; preds = %54, %43
  %57 = load i8**, i8*** %5, align 8
  %58 = getelementptr inbounds i8*, i8** %57, i64 0
  %59 = load i8*, i8** %58, align 8
  store i8* %59, i8** %16, align 8
  %60 = load i8*, i8** %16, align 8
  %61 = call i32* @fopen(i8* %60, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %61, i32** %17, align 8
  %62 = load i32*, i32** %17, align 8
  %63 = icmp eq i32* %62, null
  br i1 %63, label %64, label %67

64:                                               ; preds = %56
  %65 = load i8*, i8** %16, align 8
  %66 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %65)
  br label %67

67:                                               ; preds = %64, %56
  %68 = call i64 (...) @caph_enter()
  %69 = icmp slt i64 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %67
  %71 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  br label %72

72:                                               ; preds = %70, %67
  %73 = load i32, i32* %10, align 4
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %72
  %76 = load i8*, i8** %16, align 8
  %77 = load i32*, i32** %17, align 8
  %78 = call i32 @type_check(i8* %76, i32* %77)
  br label %79

79:                                               ; preds = %75, %72
  %80 = trunc i64 %22 to i32
  %81 = call i32 @memset(i8* %24, i8 signext 0, i32 %80)
  store i32 0, i32* %8, align 4
  br label %82

82:                                               ; preds = %113, %79
  %83 = load i32, i32* %12, align 4
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %94

85:                                               ; preds = %82
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** @fstypes, align 8
  %87 = load i32, i32* %8, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = icmp eq i32 %91, 1
  br i1 %92, label %93, label %94

93:                                               ; preds = %85
  br label %113

94:                                               ; preds = %85, %82
  %95 = load %struct.TYPE_2__*, %struct.TYPE_2__** @fstypes, align 8
  %96 = load i32, i32* %8, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 1
  %100 = load i32 (i32*, i8*, i32)*, i32 (i32*, i8*, i32)** %99, align 8
  store i32 (i32*, i8*, i32)* %100, i32 (i32*, i8*, i32)** %18, align 8
  %101 = load i32 (i32*, i8*, i32)*, i32 (i32*, i8*, i32)** %18, align 8
  %102 = icmp eq i32 (i32*, i8*, i32)* %101, null
  br i1 %102, label %103, label %104

103:                                              ; preds = %94
  br label %116

104:                                              ; preds = %94
  %105 = load i32 (i32*, i8*, i32)*, i32 (i32*, i8*, i32)** %18, align 8
  %106 = load i32*, i32** %17, align 8
  %107 = trunc i64 %22 to i32
  %108 = call i32 %105(i32* %106, i8* %24, i32 %107)
  store i32 %108, i32* %7, align 4
  %109 = load i32, i32* %7, align 4
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %104
  br label %116

112:                                              ; preds = %104
  br label %113

113:                                              ; preds = %112, %93
  %114 = load i32, i32* %8, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %8, align 4
  br label %82

116:                                              ; preds = %111, %103
  %117 = load %struct.TYPE_2__*, %struct.TYPE_2__** @fstypes, align 8
  %118 = load i32, i32* %8, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 2
  %122 = load i8*, i8** %121, align 8
  %123 = icmp eq i8* %122, null
  br i1 %123, label %124, label %127

124:                                              ; preds = %116
  %125 = load i8*, i8** %16, align 8
  %126 = call i32 @warnx(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i8* %125)
  store i32 1, i32* %3, align 4
  store i32 1, i32* %19, align 4
  br label %162

127:                                              ; preds = %116
  %128 = load i32, i32* %11, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %153

130:                                              ; preds = %127
  %131 = getelementptr inbounds i8, i8* %24, i64 0
  %132 = load i8, i8* %131, align 16
  %133 = sext i8 %132 to i32
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %153

135:                                              ; preds = %130
  %136 = trunc i64 %28 to i32
  %137 = load i32, i32* @VIS_GLOB, align 4
  %138 = load i32, i32* @VIS_NL, align 4
  %139 = or i32 %137, %138
  %140 = call i32 @strsnvis(i8* %29, i32 %136, i8* %24, i32 %139, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  store i32 %140, i32* %9, align 4
  %141 = load i32, i32* %9, align 4
  %142 = icmp eq i32 %141, -1
  br i1 %142, label %143, label %145

143:                                              ; preds = %135
  %144 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  br label %145

145:                                              ; preds = %143, %135
  %146 = load %struct.TYPE_2__*, %struct.TYPE_2__** @fstypes, align 8
  %147 = load i32, i32* %8, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %146, i64 %148
  %150 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %149, i32 0, i32 2
  %151 = load i8*, i8** %150, align 8
  %152 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8* %151, i8* %29)
  br label %161

153:                                              ; preds = %130, %127
  %154 = load %struct.TYPE_2__*, %struct.TYPE_2__** @fstypes, align 8
  %155 = load i32, i32* %8, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %154, i64 %156
  %158 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %157, i32 0, i32 2
  %159 = load i8*, i8** %158, align 8
  %160 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8* %159)
  br label %161

161:                                              ; preds = %153, %145
  store i32 0, i32* %3, align 4
  store i32 1, i32* %19, align 4
  br label %162

162:                                              ; preds = %161, %124
  %163 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %163)
  %164 = load i32, i32* %3, align 4
  ret i32 %164
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @getopt(i32, i8**, i8*) #2

declare dso_local i32 @usage(...) #2

declare dso_local i32* @fopen(i8*, i8*) #2

declare dso_local i32 @err(i32, i8*, ...) #2

declare dso_local i64 @caph_enter(...) #2

declare dso_local i32 @type_check(i8*, i32*) #2

declare dso_local i32 @memset(i8*, i8 signext, i32) #2

declare dso_local i32 @warnx(i8*, i8*) #2

declare dso_local i32 @strsnvis(i8*, i32, i8*, i32, i8*) #2

declare dso_local i32 @printf(i8*, i8*, ...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
