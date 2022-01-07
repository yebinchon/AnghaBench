; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/enigma/extr_enigma.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/enigma/extr_enigma.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MINUSKVAR = common dso_local global i8* null, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"%s not set\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"Enter key:\00", align 1
@deck = common dso_local global i32* null, align 8
@MASK = common dso_local global i32 0, align 4
@t2 = common dso_local global i32* null, align 8
@t3 = common dso_local global i32* null, align 8
@t1 = common dso_local global i32* null, align 8
@ROTORSZ = common dso_local global i32 0, align 4

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
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp sgt i32 %14, 1
  br i1 %15, label %16, label %52

16:                                               ; preds = %2
  %17 = load i8**, i8*** %5, align 8
  %18 = getelementptr inbounds i8*, i8** %17, i64 1
  %19 = load i8*, i8** %18, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 0
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp eq i32 %22, 45
  br i1 %23, label %24, label %52

24:                                               ; preds = %16
  %25 = load i8**, i8*** %5, align 8
  %26 = getelementptr inbounds i8*, i8** %25, i64 1
  %27 = load i8*, i8** %26, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 1
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp eq i32 %30, 115
  br i1 %31, label %32, label %37

32:                                               ; preds = %24
  %33 = load i32, i32* %4, align 4
  %34 = add nsw i32 %33, -1
  store i32 %34, i32* %4, align 4
  %35 = load i8**, i8*** %5, align 8
  %36 = getelementptr inbounds i8*, i8** %35, i32 1
  store i8** %36, i8*** %5, align 8
  store i32 1, i32* %11, align 4
  br label %51

37:                                               ; preds = %24
  %38 = load i8**, i8*** %5, align 8
  %39 = getelementptr inbounds i8*, i8** %38, i64 1
  %40 = load i8*, i8** %39, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 1
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp eq i32 %43, 107
  br i1 %44, label %45, label %50

45:                                               ; preds = %37
  %46 = load i32, i32* %4, align 4
  %47 = add nsw i32 %46, -1
  store i32 %47, i32* %4, align 4
  %48 = load i8**, i8*** %5, align 8
  %49 = getelementptr inbounds i8*, i8** %48, i32 1
  store i8** %49, i8*** %5, align 8
  store i32 1, i32* %12, align 4
  br label %50

50:                                               ; preds = %45, %37
  br label %51

51:                                               ; preds = %50, %32
  br label %52

52:                                               ; preds = %51, %16, %2
  %53 = load i32, i32* %12, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %67

55:                                               ; preds = %52
  %56 = load i8*, i8** @MINUSKVAR, align 8
  %57 = call i8* @getenv(i8* %56)
  store i8* %57, i8** %13, align 8
  %58 = icmp eq i8* %57, null
  br i1 %58, label %59, label %64

59:                                               ; preds = %55
  %60 = load i32, i32* @stderr, align 4
  %61 = load i8*, i8** @MINUSKVAR, align 8
  %62 = call i32 @fprintf(i32 %60, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %61)
  %63 = call i32 @exit(i32 1) #3
  unreachable

64:                                               ; preds = %55
  %65 = load i8*, i8** %13, align 8
  %66 = call i32 @setup(i8* %65)
  br label %79

67:                                               ; preds = %52
  %68 = load i32, i32* %4, align 4
  %69 = icmp ne i32 %68, 2
  br i1 %69, label %70, label %73

70:                                               ; preds = %67
  %71 = call i8* @getpass(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %72 = call i32 @setup(i8* %71)
  br label %78

73:                                               ; preds = %67
  %74 = load i8**, i8*** %5, align 8
  %75 = getelementptr inbounds i8*, i8** %74, i64 1
  %76 = load i8*, i8** %75, align 8
  %77 = call i32 @setup(i8* %76)
  br label %78

78:                                               ; preds = %73, %70
  br label %79

79:                                               ; preds = %78, %64
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %10, align 4
  br label %80

80:                                               ; preds = %154, %79
  %81 = call i32 (...) @getchar()
  store i32 %81, i32* %6, align 4
  %82 = icmp ne i32 %81, -1
  br i1 %82, label %83, label %155

83:                                               ; preds = %80
  %84 = load i32, i32* %11, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %101

86:                                               ; preds = %83
  %87 = load i32*, i32** @deck, align 8
  %88 = load i32, i32* %7, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @MASK, align 4
  %93 = and i32 %91, %92
  store i32 %93, i32* %9, align 4
  %94 = load i32*, i32** @deck, align 8
  %95 = load i32, i32* %9, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @MASK, align 4
  %100 = and i32 %98, %99
  store i32 %100, i32* %10, align 4
  br label %103

101:                                              ; preds = %83
  %102 = load i32, i32* %7, align 4
  store i32 %102, i32* %9, align 4
  br label %103

103:                                              ; preds = %101, %86
  %104 = load i32*, i32** @t2, align 8
  %105 = load i32*, i32** @t3, align 8
  %106 = load i32*, i32** @t1, align 8
  %107 = load i32, i32* %6, align 4
  %108 = load i32, i32* %9, align 4
  %109 = add nsw i32 %107, %108
  %110 = load i32, i32* @MASK, align 4
  %111 = and i32 %109, %110
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %106, i64 %112
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* %10, align 4
  %116 = add nsw i32 %114, %115
  %117 = load i32, i32* @MASK, align 4
  %118 = and i32 %116, %117
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %105, i64 %119
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* %10, align 4
  %123 = sub nsw i32 %121, %122
  %124 = load i32, i32* @MASK, align 4
  %125 = and i32 %123, %124
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %104, i64 %126
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* %9, align 4
  %130 = sub nsw i32 %128, %129
  store i32 %130, i32* %6, align 4
  %131 = load i32, i32* %6, align 4
  %132 = call i32 @putchar(i32 %131)
  %133 = load i32, i32* %7, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %7, align 4
  %135 = load i32, i32* %7, align 4
  %136 = load i32, i32* @ROTORSZ, align 4
  %137 = icmp eq i32 %135, %136
  br i1 %137, label %138, label %154

138:                                              ; preds = %103
  store i32 0, i32* %7, align 4
  %139 = load i32, i32* %8, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %8, align 4
  %141 = load i32, i32* %8, align 4
  %142 = load i32, i32* @ROTORSZ, align 4
  %143 = icmp eq i32 %141, %142
  br i1 %143, label %144, label %145

144:                                              ; preds = %138
  store i32 0, i32* %8, align 4
  br label %145

145:                                              ; preds = %144, %138
  %146 = load i32, i32* %11, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %151

148:                                              ; preds = %145
  %149 = load i32*, i32** @deck, align 8
  %150 = call i32 @shuffle(i32* %149)
  br label %153

151:                                              ; preds = %145
  %152 = load i32, i32* %8, align 4
  store i32 %152, i32* %10, align 4
  br label %153

153:                                              ; preds = %151, %148
  br label %154

154:                                              ; preds = %153, %103
  br label %80

155:                                              ; preds = %80
  ret i32 0
}

declare dso_local i8* @getenv(i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @setup(i8*) #1

declare dso_local i8* @getpass(i8*) #1

declare dso_local i32 @getchar(...) #1

declare dso_local i32 @putchar(i32) #1

declare dso_local i32 @shuffle(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
