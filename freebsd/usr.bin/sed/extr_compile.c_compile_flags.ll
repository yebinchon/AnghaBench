; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/sed/extr_compile.c_compile_flags.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/sed/extr_compile.c_compile_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s_subst = type { i32, i32, i32, i32, i32* }

@_POSIX2_LINE_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"%lu: %s: more than one number or 'g' in substitute flags\00", align 1
@linenum = common dso_local global i32 0, align 4
@fname = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [45 x i8] c"%lu: %s: overflow in the 'N' substitute flag\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"wfile too long\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"%lu: %s: no wfile specified\00", align 1
@aflag = common dso_local global i32 0, align 4
@O_WRONLY = common dso_local global i32 0, align 4
@O_APPEND = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@O_TRUNC = common dso_local global i32 0, align 4
@DEFFILEMODE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.5 = private unnamed_addr constant [46 x i8] c"%lu: %s: bad flag in substitute command: '%c'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, %struct.s_subst*)* @compile_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @compile_flags(i8* %0, %struct.s_subst* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.s_subst*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.s_subst* %1, %struct.s_subst** %5, align 8
  %13 = load i32, i32* @_POSIX2_LINE_MAX, align 4
  %14 = add nsw i32 %13, 1
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %8, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %9, align 8
  %18 = load %struct.s_subst*, %struct.s_subst** %5, align 8
  %19 = getelementptr inbounds %struct.s_subst, %struct.s_subst* %18, i32 0, i32 0
  store i32 1, i32* %19, align 8
  %20 = load %struct.s_subst*, %struct.s_subst** %5, align 8
  %21 = getelementptr inbounds %struct.s_subst, %struct.s_subst* %20, i32 0, i32 1
  store i32 0, i32* %21, align 4
  %22 = load %struct.s_subst*, %struct.s_subst** %5, align 8
  %23 = getelementptr inbounds %struct.s_subst, %struct.s_subst* %22, i32 0, i32 4
  store i32* null, i32** %23, align 8
  %24 = load %struct.s_subst*, %struct.s_subst** %5, align 8
  %25 = getelementptr inbounds %struct.s_subst, %struct.s_subst* %24, i32 0, i32 2
  store i32 -1, i32* %25, align 8
  %26 = load %struct.s_subst*, %struct.s_subst** %5, align 8
  %27 = getelementptr inbounds %struct.s_subst, %struct.s_subst* %26, i32 0, i32 3
  store i32 0, i32* %27, align 4
  store i32 0, i32* %6, align 4
  br label %28

28:                                               ; preds = %145, %2
  %29 = call i32 (...) @EATSPACE()
  %30 = load i8*, i8** %4, align 8
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  switch i32 %32, label %138 [
    i32 103, label %33
    i32 0, label %43
    i32 10, label %43
    i32 59, label %43
    i32 112, label %45
    i32 105, label %48
    i32 73, label %48
    i32 49, label %51
    i32 50, label %51
    i32 51, label %51
    i32 52, label %51
    i32 53, label %51
    i32 54, label %51
    i32 55, label %51
    i32 56, label %51
    i32 57, label %51
    i32 119, label %79
  ]

33:                                               ; preds = %28
  %34 = load i32, i32* %6, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %33
  %37 = load i32, i32* @linenum, align 4
  %38 = load i32, i32* @fname, align 4
  %39 = call i32 (i32, i8*, i32, i32, ...) @errx(i32 1, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %37, i32 %38)
  br label %40

40:                                               ; preds = %36, %33
  store i32 1, i32* %6, align 4
  %41 = load %struct.s_subst*, %struct.s_subst** %5, align 8
  %42 = getelementptr inbounds %struct.s_subst, %struct.s_subst* %41, i32 0, i32 0
  store i32 0, i32* %42, align 8
  br label %145

43:                                               ; preds = %28, %28, %28
  %44 = load i8*, i8** %4, align 8
  store i8* %44, i8** %3, align 8
  store i32 1, i32* %12, align 4
  br label %148

45:                                               ; preds = %28
  %46 = load %struct.s_subst*, %struct.s_subst** %5, align 8
  %47 = getelementptr inbounds %struct.s_subst, %struct.s_subst* %46, i32 0, i32 1
  store i32 1, i32* %47, align 4
  br label %145

48:                                               ; preds = %28, %28
  %49 = load %struct.s_subst*, %struct.s_subst** %5, align 8
  %50 = getelementptr inbounds %struct.s_subst, %struct.s_subst* %49, i32 0, i32 3
  store i32 1, i32* %50, align 4
  br label %145

51:                                               ; preds = %28, %28, %28, %28, %28, %28, %28, %28, %28
  %52 = load i32, i32* %6, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %51
  %55 = load i32, i32* @linenum, align 4
  %56 = load i32, i32* @fname, align 4
  %57 = call i32 (i32, i8*, i32, i32, ...) @errx(i32 1, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %55, i32 %56)
  br label %58

58:                                               ; preds = %54, %51
  store i32 1, i32* %6, align 4
  store i32 0, i32* @errno, align 4
  %59 = load i8*, i8** %4, align 8
  %60 = call i64 @strtol(i8* %59, i8** %4, i32 10)
  store i64 %60, i64* %7, align 8
  %61 = load i32, i32* @errno, align 4
  %62 = load i32, i32* @ERANGE, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %68, label %64

64:                                               ; preds = %58
  %65 = load i64, i64* %7, align 8
  %66 = load i64, i64* @INT_MAX, align 8
  %67 = icmp ugt i64 %65, %66
  br i1 %67, label %68, label %72

68:                                               ; preds = %64, %58
  %69 = load i32, i32* @linenum, align 4
  %70 = load i32, i32* @fname, align 4
  %71 = call i32 (i32, i8*, i32, i32, ...) @errx(i32 1, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %69, i32 %70)
  br label %72

72:                                               ; preds = %68, %64
  %73 = load i64, i64* %7, align 8
  %74 = trunc i64 %73 to i32
  %75 = load %struct.s_subst*, %struct.s_subst** %5, align 8
  %76 = getelementptr inbounds %struct.s_subst, %struct.s_subst* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 8
  %77 = load i8*, i8** %4, align 8
  %78 = getelementptr inbounds i8, i8* %77, i32 -1
  store i8* %78, i8** %4, align 8
  br label %145

79:                                               ; preds = %28
  %80 = load i8*, i8** %4, align 8
  %81 = getelementptr inbounds i8, i8* %80, i32 1
  store i8* %81, i8** %4, align 8
  %82 = call i32 (...) @EATSPACE()
  store i8* %17, i8** %10, align 8
  %83 = getelementptr inbounds i8, i8* %17, i64 %15
  %84 = getelementptr inbounds i8, i8* %83, i64 -1
  store i8* %84, i8** %11, align 8
  br label %85

85:                                               ; preds = %101, %79
  %86 = load i8*, i8** %4, align 8
  %87 = load i8, i8* %86, align 1
  %88 = icmp ne i8 %87, 0
  br i1 %88, label %89, label %107

89:                                               ; preds = %85
  %90 = load i8*, i8** %4, align 8
  %91 = load i8, i8* %90, align 1
  %92 = sext i8 %91 to i32
  %93 = icmp eq i32 %92, 10
  br i1 %93, label %94, label %95

94:                                               ; preds = %89
  br label %107

95:                                               ; preds = %89
  %96 = load i8*, i8** %10, align 8
  %97 = load i8*, i8** %11, align 8
  %98 = icmp uge i8* %96, %97
  br i1 %98, label %99, label %101

99:                                               ; preds = %95
  %100 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  br label %101

101:                                              ; preds = %99, %95
  %102 = load i8*, i8** %4, align 8
  %103 = getelementptr inbounds i8, i8* %102, i32 1
  store i8* %103, i8** %4, align 8
  %104 = load i8, i8* %102, align 1
  %105 = load i8*, i8** %10, align 8
  %106 = getelementptr inbounds i8, i8* %105, i32 1
  store i8* %106, i8** %10, align 8
  store i8 %104, i8* %105, align 1
  br label %85

107:                                              ; preds = %94, %85
  %108 = load i8*, i8** %10, align 8
  store i8 0, i8* %108, align 1
  %109 = load i8*, i8** %10, align 8
  %110 = icmp eq i8* %109, %17
  br i1 %110, label %111, label %115

111:                                              ; preds = %107
  %112 = load i32, i32* @linenum, align 4
  %113 = load i32, i32* @fname, align 4
  %114 = call i32 (i32, i8*, i32, i32, ...) @errx(i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %112, i32 %113)
  br label %115

115:                                              ; preds = %111, %107
  %116 = call i32* @strdup(i8* %17)
  %117 = load %struct.s_subst*, %struct.s_subst** %5, align 8
  %118 = getelementptr inbounds %struct.s_subst, %struct.s_subst* %117, i32 0, i32 4
  store i32* %116, i32** %118, align 8
  %119 = load i32, i32* @aflag, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %136, label %121

121:                                              ; preds = %115
  %122 = load i32, i32* @O_WRONLY, align 4
  %123 = load i32, i32* @O_APPEND, align 4
  %124 = or i32 %122, %123
  %125 = load i32, i32* @O_CREAT, align 4
  %126 = or i32 %124, %125
  %127 = load i32, i32* @O_TRUNC, align 4
  %128 = or i32 %126, %127
  %129 = load i32, i32* @DEFFILEMODE, align 4
  %130 = call i32 @open(i8* %17, i32 %128, i32 %129)
  %131 = load %struct.s_subst*, %struct.s_subst** %5, align 8
  %132 = getelementptr inbounds %struct.s_subst, %struct.s_subst* %131, i32 0, i32 2
  store i32 %130, i32* %132, align 8
  %133 = icmp eq i32 %130, -1
  br i1 %133, label %134, label %136

134:                                              ; preds = %121
  %135 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* %17)
  br label %136

136:                                              ; preds = %134, %121, %115
  %137 = load i8*, i8** %4, align 8
  store i8* %137, i8** %3, align 8
  store i32 1, i32* %12, align 4
  br label %148

138:                                              ; preds = %28
  %139 = load i32, i32* @linenum, align 4
  %140 = load i32, i32* @fname, align 4
  %141 = load i8*, i8** %4, align 8
  %142 = load i8, i8* %141, align 1
  %143 = sext i8 %142 to i32
  %144 = call i32 (i32, i8*, i32, i32, ...) @errx(i32 1, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.5, i64 0, i64 0), i32 %139, i32 %140, i32 %143)
  br label %145

145:                                              ; preds = %138, %72, %48, %45, %40
  %146 = load i8*, i8** %4, align 8
  %147 = getelementptr inbounds i8, i8* %146, i32 1
  store i8* %147, i8** %4, align 8
  br label %28

148:                                              ; preds = %136, %43
  %149 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %149)
  %150 = load i8*, i8** %3, align 8
  ret i8* %150
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @EATSPACE(...) #2

declare dso_local i32 @errx(i32, i8*, i32, i32, ...) #2

declare dso_local i64 @strtol(i8*, i8**, i32) #2

declare dso_local i32 @err(i32, i8*, ...) #2

declare dso_local i32* @strdup(i8*) #2

declare dso_local i32 @open(i8*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
