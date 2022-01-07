; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/printf/extr_printf.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/printf/extr_printf.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LC_ALL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@optind = common dso_local global i64 0, align 8
@gargv = common dso_local global i8** null, align 8
@maxargv = common dso_local global i8** null, align 8
@myargv = common dso_local global i8** null, align 8
@myargc = common dso_local global i64 0, align 8
@stdout = common dso_local global i32 0, align 4
@end_fmt = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [25 x i8] c"missing format character\00", align 1
@INTOFF = common dso_local global i32 0, align 4
@INTON = common dso_local global i32 0, align 4
@argptr = common dso_local global i8** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %13 = load i32, i32* @LC_ALL, align 4
  %14 = call i32 @setlocale(i32 %13, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  br label %15

15:                                               ; preds = %2
  %16 = load i32, i32* %4, align 4
  %17 = load i8**, i8*** %5, align 8
  %18 = call i32 @getopt(i32 %16, i8** %17, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  store i32 %18, i32* %12, align 4
  %19 = icmp ne i32 %18, -1
  br i1 %19, label %20, label %25

20:                                               ; preds = %15
  %21 = load i32, i32* %12, align 4
  switch i32 %21, label %23 [
    i32 63, label %22
  ]

22:                                               ; preds = %20
  br label %23

23:                                               ; preds = %20, %22
  %24 = call i32 (...) @usage()
  store i32 1, i32* %3, align 4
  br label %144

25:                                               ; preds = %15
  %26 = load i64, i64* @optind, align 8
  %27 = load i32, i32* %4, align 4
  %28 = sext i32 %27 to i64
  %29 = sub nsw i64 %28, %26
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %4, align 4
  %31 = load i64, i64* @optind, align 8
  %32 = load i8**, i8*** %5, align 8
  %33 = getelementptr inbounds i8*, i8** %32, i64 %31
  store i8** %33, i8*** %5, align 8
  %34 = load i32, i32* %4, align 4
  %35 = icmp slt i32 %34, 1
  br i1 %35, label %36, label %38

36:                                               ; preds = %25
  %37 = call i32 (...) @usage()
  store i32 1, i32* %3, align 4
  br label %144

38:                                               ; preds = %25
  %39 = load i8**, i8*** %5, align 8
  %40 = load i8*, i8** %39, align 8
  store i8* %40, i8** %9, align 8
  store i8* %40, i8** %10, align 8
  %41 = load i8*, i8** %10, align 8
  %42 = call i32 @escape(i8* %41, i32 1, i64* %6)
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %43 = load i8**, i8*** %5, align 8
  %44 = getelementptr inbounds i8*, i8** %43, i32 1
  store i8** %44, i8*** %5, align 8
  store i8** %44, i8*** @gargv, align 8
  br label %45

45:                                               ; preds = %142, %38
  %46 = load i8**, i8*** @gargv, align 8
  store i8** %46, i8*** @maxargv, align 8
  %47 = load i8**, i8*** @gargv, align 8
  store i8** %47, i8*** @myargv, align 8
  store i64 0, i64* @myargc, align 8
  br label %48

48:                                               ; preds = %55, %45
  %49 = load i8**, i8*** @gargv, align 8
  %50 = load i64, i64* @myargc, align 8
  %51 = getelementptr inbounds i8*, i8** %49, i64 %50
  %52 = load i8*, i8** %51, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %54, label %58

54:                                               ; preds = %48
  br label %55

55:                                               ; preds = %54
  %56 = load i64, i64* @myargc, align 8
  %57 = add i64 %56, 1
  store i64 %57, i64* @myargc, align 8
  br label %48

58:                                               ; preds = %48
  %59 = load i8*, i8** %10, align 8
  store i8* %59, i8** %11, align 8
  br label %60

60:                                               ; preds = %120, %58
  %61 = load i8*, i8** %10, align 8
  %62 = load i8*, i8** %9, align 8
  %63 = load i64, i64* %6, align 8
  %64 = getelementptr inbounds i8, i8* %62, i64 %63
  %65 = icmp ult i8* %61, %64
  br i1 %65, label %66, label %121

66:                                               ; preds = %60
  %67 = load i8*, i8** %10, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 0
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp eq i32 %70, 37
  br i1 %71, label %72, label %111

72:                                               ; preds = %66
  %73 = load i8*, i8** %11, align 8
  %74 = load i8*, i8** %10, align 8
  %75 = load i8*, i8** %11, align 8
  %76 = ptrtoint i8* %74 to i64
  %77 = ptrtoint i8* %75 to i64
  %78 = sub i64 %76, %77
  %79 = trunc i64 %78 to i32
  %80 = load i32, i32* @stdout, align 4
  %81 = call i32 @fwrite(i8* %73, i32 1, i32 %79, i32 %80)
  %82 = load i8*, i8** %10, align 8
  %83 = getelementptr inbounds i8, i8* %82, i64 1
  %84 = load i8, i8* %83, align 1
  %85 = sext i8 %84 to i32
  %86 = icmp eq i32 %85, 37
  br i1 %86, label %87, label %91

87:                                               ; preds = %72
  %88 = call i32 @putchar(i8 signext 37)
  %89 = load i8*, i8** %10, align 8
  %90 = getelementptr inbounds i8, i8* %89, i64 2
  store i8* %90, i8** %10, align 8
  br label %109

91:                                               ; preds = %72
  %92 = load i8*, i8** %10, align 8
  %93 = call i8* @printf_doformat(i8* %92, i32* %8)
  store i8* %93, i8** %10, align 8
  %94 = load i8*, i8** %10, align 8
  %95 = icmp eq i8* %94, null
  br i1 %95, label %100, label %96

96:                                               ; preds = %91
  %97 = load i8*, i8** %10, align 8
  %98 = load i8*, i8** @end_fmt, align 8
  %99 = icmp eq i8* %97, %98
  br i1 %99, label %100, label %108

100:                                              ; preds = %96, %91
  %101 = load i8*, i8** %10, align 8
  %102 = icmp eq i8* %101, null
  br i1 %102, label %103, label %104

103:                                              ; preds = %100
  br label %106

104:                                              ; preds = %100
  %105 = load i32, i32* %8, align 4
  br label %106

106:                                              ; preds = %104, %103
  %107 = phi i32 [ 1, %103 ], [ %105, %104 ]
  store i32 %107, i32* %3, align 4
  br label %144

108:                                              ; preds = %96
  store i32 0, i32* %7, align 4
  br label %109

109:                                              ; preds = %108, %87
  %110 = load i8*, i8** %10, align 8
  store i8* %110, i8** %11, align 8
  br label %114

111:                                              ; preds = %66
  %112 = load i8*, i8** %10, align 8
  %113 = getelementptr inbounds i8, i8* %112, i32 1
  store i8* %113, i8** %10, align 8
  br label %114

114:                                              ; preds = %111, %109
  %115 = load i8**, i8*** @gargv, align 8
  %116 = load i8**, i8*** @maxargv, align 8
  %117 = icmp ugt i8** %115, %116
  br i1 %117, label %118, label %120

118:                                              ; preds = %114
  %119 = load i8**, i8*** @gargv, align 8
  store i8** %119, i8*** @maxargv, align 8
  br label %120

120:                                              ; preds = %118, %114
  br label %60

121:                                              ; preds = %60
  %122 = load i8**, i8*** @maxargv, align 8
  store i8** %122, i8*** @gargv, align 8
  %123 = load i32, i32* %7, align 4
  %124 = icmp eq i32 %123, 1
  br i1 %124, label %125, label %127

125:                                              ; preds = %121
  %126 = call i32 @warnx(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %144

127:                                              ; preds = %121
  %128 = load i8*, i8** %11, align 8
  %129 = load i8*, i8** %10, align 8
  %130 = load i8*, i8** %11, align 8
  %131 = ptrtoint i8* %129 to i64
  %132 = ptrtoint i8* %130 to i64
  %133 = sub i64 %131, %132
  %134 = trunc i64 %133 to i32
  %135 = load i32, i32* @stdout, align 4
  %136 = call i32 @fwrite(i8* %128, i32 1, i32 %134, i32 %135)
  %137 = load i8**, i8*** @gargv, align 8
  %138 = load i8*, i8** %137, align 8
  %139 = icmp ne i8* %138, null
  br i1 %139, label %142, label %140

140:                                              ; preds = %127
  %141 = load i32, i32* %8, align 4
  store i32 %141, i32* %3, align 4
  br label %144

142:                                              ; preds = %127
  %143 = load i8*, i8** %9, align 8
  store i8* %143, i8** %10, align 8
  store i32 1, i32* %7, align 4
  br label %45

144:                                              ; preds = %140, %125, %106, %36, %23
  %145 = load i32, i32* %3, align 4
  ret i32 %145
}

declare dso_local i32 @setlocale(i32, i8*) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @escape(i8*, i32, i64*) #1

declare dso_local i32 @fwrite(i8*, i32, i32, i32) #1

declare dso_local i32 @putchar(i8 signext) #1

declare dso_local i8* @printf_doformat(i8*, i32*) #1

declare dso_local i32 @warnx(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
