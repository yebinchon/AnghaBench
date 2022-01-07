; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/tsort/extr_tsort.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/tsort/extr_tsort.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32*, i32 }

@.str = private unnamed_addr constant [4 x i8] c"dlq\00", align 1
@debug = common dso_local global i32 0, align 4
@longest = common dso_local global i32 0, align 4
@quiet = common dso_local global i32 0, align 4
@optind = common dso_local global i64 0, align 8
@stdin = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@EOF = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"odd data count\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.TYPE_2__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [2 x %struct.TYPE_2__], align 16
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32* null, i32** %9, align 8
  br label %14

14:                                               ; preds = %27, %2
  %15 = load i32, i32* %4, align 4
  %16 = load i8**, i8*** %5, align 8
  %17 = call i32 @getopt(i32 %15, i8** %16, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i32 %17, i32* %11, align 4
  %18 = icmp ne i32 %17, -1
  br i1 %18, label %19, label %28

19:                                               ; preds = %14
  %20 = load i32, i32* %11, align 4
  switch i32 %20, label %25 [
    i32 100, label %21
    i32 108, label %22
    i32 113, label %23
    i32 63, label %24
  ]

21:                                               ; preds = %19
  store i32 1, i32* @debug, align 4
  br label %27

22:                                               ; preds = %19
  store i32 1, i32* @longest, align 4
  br label %27

23:                                               ; preds = %19
  store i32 1, i32* @quiet, align 4
  br label %27

24:                                               ; preds = %19
  br label %25

25:                                               ; preds = %19, %24
  %26 = call i32 (...) @usage()
  br label %27

27:                                               ; preds = %25, %23, %22, %21
  br label %14

28:                                               ; preds = %14
  %29 = load i64, i64* @optind, align 8
  %30 = load i32, i32* %4, align 4
  %31 = sext i32 %30 to i64
  %32 = sub nsw i64 %31, %29
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %4, align 4
  %34 = load i64, i64* @optind, align 8
  %35 = load i8**, i8*** %5, align 8
  %36 = getelementptr inbounds i8*, i8** %35, i64 %34
  store i8** %36, i8*** %5, align 8
  %37 = load i32, i32* %4, align 4
  switch i32 %37, label %50 [
    i32 0, label %38
    i32 1, label %40
  ]

38:                                               ; preds = %28
  %39 = load i32*, i32** @stdin, align 8
  store i32* %39, i32** %9, align 8
  br label %52

40:                                               ; preds = %28
  %41 = load i8**, i8*** %5, align 8
  %42 = load i8*, i8** %41, align 8
  %43 = call i32* @fopen(i8* %42, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %43, i32** %9, align 8
  %44 = icmp eq i32* %43, null
  br i1 %44, label %45, label %49

45:                                               ; preds = %40
  %46 = load i8**, i8*** %5, align 8
  %47 = load i8*, i8** %46, align 8
  %48 = call i32 @err(i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %47)
  br label %49

49:                                               ; preds = %45, %40
  br label %52

50:                                               ; preds = %28
  %51 = call i32 (...) @usage()
  br label %52

52:                                               ; preds = %50, %49, %38
  %53 = getelementptr inbounds [2 x %struct.TYPE_2__], [2 x %struct.TYPE_2__]* %13, i64 0, i64 0
  store %struct.TYPE_2__* %53, %struct.TYPE_2__** %6, align 8
  store i32 2, i32* %8, align 4
  br label %54

54:                                               ; preds = %65, %52
  %55 = load i32, i32* %8, align 4
  %56 = add nsw i32 %55, -1
  store i32 %56, i32* %8, align 4
  %57 = icmp sge i32 %56, 0
  br i1 %57, label %58, label %68

58:                                               ; preds = %54
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 1
  store i32 1024, i32* %60, align 8
  %61 = call i8* @grow_buf(i32* null, i32 1024)
  %62 = bitcast i8* %61 to i32*
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  store i32* %62, i32** %64, align 8
  br label %65

65:                                               ; preds = %58
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 1
  store %struct.TYPE_2__* %67, %struct.TYPE_2__** %6, align 8
  br label %54

68:                                               ; preds = %54
  store i32 0, i32* %8, align 4
  %69 = load i32*, i32** %9, align 8
  %70 = call i32 @getc(i32* %69)
  store i32 %70, i32* %7, align 4
  br label %71

71:                                               ; preds = %155, %68
  br label %72

72:                                               ; preds = %82, %71
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* @EOF, align 4
  %75 = icmp ne i32 %73, %74
  br i1 %75, label %76, label %80

76:                                               ; preds = %72
  %77 = load i32, i32* %7, align 4
  %78 = call i64 @isspace(i32 %77)
  %79 = icmp ne i64 %78, 0
  br label %80

80:                                               ; preds = %76, %72
  %81 = phi i1 [ false, %72 ], [ %79, %76 ]
  br i1 %81, label %82, label %85

82:                                               ; preds = %80
  %83 = load i32*, i32** %9, align 8
  %84 = call i32 @getc(i32* %83)
  store i32 %84, i32* %7, align 4
  br label %72

85:                                               ; preds = %80
  %86 = load i32, i32* %7, align 4
  %87 = load i32, i32* @EOF, align 4
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %85
  br label %160

90:                                               ; preds = %85
  store i32 0, i32* %12, align 4
  %91 = load i32, i32* %8, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds [2 x %struct.TYPE_2__], [2 x %struct.TYPE_2__]* %13, i64 0, i64 %92
  store %struct.TYPE_2__* %93, %struct.TYPE_2__** %6, align 8
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  store i32 %96, i32* %10, align 4
  br label %97

97:                                               ; preds = %131, %90
  %98 = load i32, i32* %7, align 4
  %99 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 0
  %101 = load i32*, i32** %100, align 8
  %102 = load i32, i32* %12, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %12, align 4
  %104 = sext i32 %102 to i64
  %105 = getelementptr inbounds i32, i32* %101, i64 %104
  store i32 %98, i32* %105, align 4
  %106 = load i32, i32* %12, align 4
  %107 = load i32, i32* %10, align 4
  %108 = icmp eq i32 %106, %107
  br i1 %108, label %109, label %119

109:                                              ; preds = %97
  %110 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 0
  %112 = load i32*, i32** %111, align 8
  %113 = load i32, i32* %10, align 4
  %114 = mul nsw i32 %113, 2
  store i32 %114, i32* %10, align 4
  %115 = call i8* @grow_buf(i32* %112, i32 %114)
  %116 = bitcast i8* %115 to i32*
  %117 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 0
  store i32* %116, i32** %118, align 8
  br label %119

119:                                              ; preds = %109, %97
  %120 = load i32*, i32** %9, align 8
  %121 = call i32 @getc(i32* %120)
  store i32 %121, i32* %7, align 4
  br label %122

122:                                              ; preds = %119
  %123 = load i32, i32* %7, align 4
  %124 = load i32, i32* @EOF, align 4
  %125 = icmp ne i32 %123, %124
  br i1 %125, label %126, label %131

126:                                              ; preds = %122
  %127 = load i32, i32* %7, align 4
  %128 = call i64 @isspace(i32 %127)
  %129 = icmp ne i64 %128, 0
  %130 = xor i1 %129, true
  br label %131

131:                                              ; preds = %126, %122
  %132 = phi i1 [ false, %122 ], [ %130, %126 ]
  br i1 %132, label %97, label %133

133:                                              ; preds = %131
  %134 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i32 0, i32 0
  %136 = load i32*, i32** %135, align 8
  %137 = load i32, i32* %12, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i32, i32* %136, i64 %138
  store i32 0, i32* %139, align 4
  %140 = load i32, i32* %10, align 4
  %141 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %142 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %141, i32 0, i32 1
  store i32 %140, i32* %142, align 8
  %143 = load i32, i32* %8, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %155

145:                                              ; preds = %133
  %146 = getelementptr inbounds [2 x %struct.TYPE_2__], [2 x %struct.TYPE_2__]* %13, i64 0, i64 0
  %147 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %146, i32 0, i32 0
  %148 = load i32*, i32** %147, align 16
  %149 = bitcast i32* %148 to i8*
  %150 = getelementptr inbounds [2 x %struct.TYPE_2__], [2 x %struct.TYPE_2__]* %13, i64 0, i64 1
  %151 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %150, i32 0, i32 0
  %152 = load i32*, i32** %151, align 16
  %153 = bitcast i32* %152 to i8*
  %154 = call i32 @add_arc(i8* %149, i8* %153)
  br label %155

155:                                              ; preds = %145, %133
  %156 = load i32, i32* %8, align 4
  %157 = icmp ne i32 %156, 0
  %158 = xor i1 %157, true
  %159 = zext i1 %158 to i32
  store i32 %159, i32* %8, align 4
  br label %71

160:                                              ; preds = %89
  %161 = load i32*, i32** %9, align 8
  %162 = call i32 @fclose(i32* %161)
  %163 = load i32, i32* %8, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %167

165:                                              ; preds = %160
  %166 = call i32 @errx(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  br label %167

167:                                              ; preds = %165, %160
  %168 = call i32 (...) @tsort()
  %169 = call i32 @exit(i32 0) #3
  unreachable
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @err(i32, i8*, i8*) #1

declare dso_local i8* @grow_buf(i32*, i32) #1

declare dso_local i32 @getc(i32*) #1

declare dso_local i64 @isspace(i32) #1

declare dso_local i32 @add_arc(i8*, i8*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i32 @tsort(...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
