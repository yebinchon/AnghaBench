; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/m4/extr_gnum4.c_dopatsubst.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/m4/extr_gnum4.c_dopatsubst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }

@.str = private unnamed_addr constant [30 x i8] c"Too few arguments to patsubst\00", align 1
@REG_EXTENDED = common dso_local global i32 0, align 4
@mimic_gnu = common dso_local global i64 0, align 8
@REG_NEWLINE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dopatsubst(i8** %0, i32 %1) #0 {
  %3 = alloca i8**, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_6__, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  store i8** %0, i8*** %3, align 8
  store i32 %1, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp sle i32 %13, 3
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = call i32 @m4_warnx(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %148

17:                                               ; preds = %2
  %18 = load i8**, i8*** %3, align 8
  %19 = getelementptr inbounds i8*, i8** %18, i64 3
  %20 = load i8*, i8** %19, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 0
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %61

25:                                               ; preds = %17
  %26 = load i32, i32* %4, align 4
  %27 = icmp sgt i32 %26, 4
  br i1 %27, label %28, label %38

28:                                               ; preds = %25
  %29 = load i8**, i8*** %3, align 8
  %30 = getelementptr inbounds i8*, i8** %29, i64 4
  %31 = load i8*, i8** %30, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %38

33:                                               ; preds = %28
  %34 = load i8**, i8*** %3, align 8
  %35 = getelementptr inbounds i8*, i8** %34, i64 4
  %36 = load i8*, i8** %35, align 8
  %37 = call i64 @strlen(i8* %36)
  store i64 %37, i64* %6, align 8
  br label %39

38:                                               ; preds = %28, %25
  store i64 0, i64* %6, align 8
  br label %39

39:                                               ; preds = %38, %33
  %40 = load i8**, i8*** %3, align 8
  %41 = getelementptr inbounds i8*, i8** %40, i64 2
  %42 = load i8*, i8** %41, align 8
  store i8* %42, i8** %5, align 8
  br label %43

43:                                               ; preds = %57, %39
  %44 = load i8*, i8** %5, align 8
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %60

48:                                               ; preds = %43
  %49 = load i8**, i8*** %3, align 8
  %50 = getelementptr inbounds i8*, i8** %49, i64 4
  %51 = load i8*, i8** %50, align 8
  %52 = load i64, i64* %6, align 8
  %53 = call i32 @addchars(i8* %51, i64 %52)
  %54 = load i8*, i8** %5, align 8
  %55 = load i8, i8* %54, align 1
  %56 = call i32 @addchar(i8 signext %55)
  br label %57

57:                                               ; preds = %48
  %58 = load i8*, i8** %5, align 8
  %59 = getelementptr inbounds i8, i8* %58, i32 1
  store i8* %59, i8** %5, align 8
  br label %43

60:                                               ; preds = %43
  br label %145

61:                                               ; preds = %17
  %62 = load i32, i32* @REG_EXTENDED, align 4
  store i32 %62, i32* %10, align 4
  %63 = load i8**, i8*** %3, align 8
  %64 = getelementptr inbounds i8*, i8** %63, i64 3
  %65 = load i8*, i8** %64, align 8
  %66 = call i64 @strlen(i8* %65)
  store i64 %66, i64* %12, align 8
  %67 = load i64, i64* @mimic_gnu, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %90

69:                                               ; preds = %61
  %70 = load i8**, i8*** %3, align 8
  %71 = getelementptr inbounds i8*, i8** %70, i64 3
  %72 = load i8*, i8** %71, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 0
  %74 = load i8, i8* %73, align 1
  %75 = sext i8 %74 to i32
  %76 = icmp eq i32 %75, 94
  br i1 %76, label %90, label %77

77:                                               ; preds = %69
  %78 = load i64, i64* %12, align 8
  %79 = icmp ugt i64 %78, 0
  br i1 %79, label %80, label %94

80:                                               ; preds = %77
  %81 = load i8**, i8*** %3, align 8
  %82 = getelementptr inbounds i8*, i8** %81, i64 3
  %83 = load i8*, i8** %82, align 8
  %84 = load i64, i64* %12, align 8
  %85 = sub i64 %84, 1
  %86 = getelementptr inbounds i8, i8* %83, i64 %85
  %87 = load i8, i8* %86, align 1
  %88 = sext i8 %87 to i32
  %89 = icmp eq i32 %88, 36
  br i1 %89, label %90, label %94

90:                                               ; preds = %80, %69, %61
  %91 = load i32, i32* @REG_NEWLINE, align 4
  %92 = load i32, i32* %10, align 4
  %93 = or i32 %92, %91
  store i32 %93, i32* %10, align 4
  br label %94

94:                                               ; preds = %90, %80, %77
  %95 = load i64, i64* @mimic_gnu, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %102

97:                                               ; preds = %94
  %98 = load i8**, i8*** %3, align 8
  %99 = getelementptr inbounds i8*, i8** %98, i64 3
  %100 = load i8*, i8** %99, align 8
  %101 = call i8* @twiddle(i8* %100)
  br label %106

102:                                              ; preds = %94
  %103 = load i8**, i8*** %3, align 8
  %104 = getelementptr inbounds i8*, i8** %103, i64 3
  %105 = load i8*, i8** %104, align 8
  br label %106

106:                                              ; preds = %102, %97
  %107 = phi i8* [ %101, %97 ], [ %105, %102 ]
  store i8* %107, i8** %11, align 8
  %108 = load i8*, i8** %11, align 8
  %109 = load i32, i32* %10, align 4
  %110 = call i32 @regcomp(%struct.TYPE_6__* %8, i8* %108, i32 %109)
  store i32 %110, i32* %7, align 4
  %111 = load i32, i32* %7, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %117

113:                                              ; preds = %106
  %114 = load i32, i32* %7, align 4
  %115 = load i8*, i8** %11, align 8
  %116 = call i32 @exit_regerror(i32 %114, %struct.TYPE_6__* %8, i8* %115)
  br label %117

117:                                              ; preds = %113, %106
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = add nsw i64 %119, 1
  %121 = call i32* @xreallocarray(i32* null, i64 %120, i32 4, i32* null)
  store i32* %121, i32** %9, align 8
  %122 = load i8**, i8*** %3, align 8
  %123 = getelementptr inbounds i8*, i8** %122, i64 2
  %124 = load i8*, i8** %123, align 8
  %125 = load i8*, i8** %11, align 8
  %126 = load i32, i32* %4, align 4
  %127 = icmp sgt i32 %126, 4
  br i1 %127, label %128, label %137

128:                                              ; preds = %117
  %129 = load i8**, i8*** %3, align 8
  %130 = getelementptr inbounds i8*, i8** %129, i64 4
  %131 = load i8*, i8** %130, align 8
  %132 = icmp ne i8* %131, null
  br i1 %132, label %133, label %137

133:                                              ; preds = %128
  %134 = load i8**, i8*** %3, align 8
  %135 = getelementptr inbounds i8*, i8** %134, i64 4
  %136 = load i8*, i8** %135, align 8
  br label %138

137:                                              ; preds = %128, %117
  br label %138

138:                                              ; preds = %137, %133
  %139 = phi i8* [ %136, %133 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %137 ]
  %140 = load i32*, i32** %9, align 8
  %141 = call i32 @do_subst(i8* %124, %struct.TYPE_6__* %8, i8* %125, i8* %139, i32* %140)
  %142 = load i32*, i32** %9, align 8
  %143 = call i32 @free(i32* %142)
  %144 = call i32 @regfree(%struct.TYPE_6__* %8)
  br label %145

145:                                              ; preds = %138, %60
  %146 = call i32 (...) @getstring()
  %147 = call i32 @pbstr(i32 %146)
  br label %148

148:                                              ; preds = %145, %15
  ret void
}

declare dso_local i32 @m4_warnx(i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @addchars(i8*, i64) #1

declare dso_local i32 @addchar(i8 signext) #1

declare dso_local i8* @twiddle(i8*) #1

declare dso_local i32 @regcomp(%struct.TYPE_6__*, i8*, i32) #1

declare dso_local i32 @exit_regerror(i32, %struct.TYPE_6__*, i8*) #1

declare dso_local i32* @xreallocarray(i32*, i64, i32, i32*) #1

declare dso_local i32 @do_subst(i8*, %struct.TYPE_6__*, i8*, i8*, i32*) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @regfree(%struct.TYPE_6__*) #1

declare dso_local i32 @pbstr(i32) #1

declare dso_local i32 @getstring(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
