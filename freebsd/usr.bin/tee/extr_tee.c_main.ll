; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/tee/extr_tee.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/tee/extr_tee.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i32, %struct.TYPE_3__* }

@.str = private unnamed_addr constant [3 x i8] c"ai\00", align 1
@SIGINT = common dso_local global i32 0, align 4
@SIG_IGN = common dso_local global i32 0, align 4
@optind = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"malloc\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"unable to limit stdio\00", align 1
@STDOUT_FILENO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"stdout\00", align 1
@O_WRONLY = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@O_APPEND = common dso_local global i32 0, align 4
@O_TRUNC = common dso_local global i32 0, align 4
@DEFFILEMODE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"unable to enter capability mode\00", align 1
@STDIN_FILENO = common dso_local global i32 0, align 4
@head = common dso_local global %struct.TYPE_3__* null, align 8
@.str.6 = private unnamed_addr constant [5 x i8] c"read\00", align 1
@BSIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %12, align 4
  br label %16

16:                                               ; preds = %33, %2
  %17 = load i32, i32* %4, align 4
  %18 = load i8**, i8*** %5, align 8
  %19 = call i32 @getopt(i32 %17, i8** %18, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32 %19, i32* %13, align 4
  %20 = icmp ne i32 %19, -1
  br i1 %20, label %21, label %34

21:                                               ; preds = %16
  %22 = load i32, i32* %13, align 4
  %23 = trunc i32 %22 to i8
  %24 = sext i8 %23 to i32
  switch i32 %24, label %31 [
    i32 97, label %25
    i32 105, label %26
    i32 63, label %30
  ]

25:                                               ; preds = %21
  store i32 1, i32* %12, align 4
  br label %33

26:                                               ; preds = %21
  %27 = load i32, i32* @SIGINT, align 4
  %28 = load i32, i32* @SIG_IGN, align 4
  %29 = call i32 @signal(i32 %27, i32 %28)
  br label %33

30:                                               ; preds = %21
  br label %31

31:                                               ; preds = %21, %30
  %32 = call i32 (...) @usage()
  br label %33

33:                                               ; preds = %31, %26, %25
  br label %16

34:                                               ; preds = %16
  %35 = load i64, i64* @optind, align 8
  %36 = load i8**, i8*** %5, align 8
  %37 = getelementptr inbounds i8*, i8** %36, i64 %35
  store i8** %37, i8*** %5, align 8
  %38 = load i64, i64* @optind, align 8
  %39 = load i32, i32* %4, align 4
  %40 = sext i32 %39 to i64
  %41 = sub nsw i64 %40, %38
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %4, align 4
  %43 = call i8* @malloc(i32 8192)
  store i8* %43, i8** %15, align 8
  %44 = icmp eq i8* %43, null
  br i1 %44, label %45, label %47

45:                                               ; preds = %34
  %46 = call i32 @err(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  br label %47

47:                                               ; preds = %45, %34
  %48 = call i32 (...) @caph_limit_stdin()
  %49 = icmp eq i32 %48, -1
  br i1 %49, label %53, label %50

50:                                               ; preds = %47
  %51 = call i32 (...) @caph_limit_stderr()
  %52 = icmp eq i32 %51, -1
  br i1 %52, label %53, label %56

53:                                               ; preds = %50, %47
  %54 = load i32, i32* @EXIT_FAILURE, align 4
  %55 = call i32 @err(i32 %54, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  br label %56

56:                                               ; preds = %53, %50
  %57 = load i32, i32* @STDOUT_FILENO, align 4
  %58 = call i32 @add(i32 %57, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %14, align 4
  br label %59

59:                                               ; preds = %95, %56
  %60 = load i8**, i8*** %5, align 8
  %61 = load i8*, i8** %60, align 8
  %62 = icmp ne i8* %61, null
  br i1 %62, label %63, label %98

63:                                               ; preds = %59
  %64 = load i8**, i8*** %5, align 8
  %65 = load i8*, i8** %64, align 8
  %66 = load i32, i32* %12, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %63
  %69 = load i32, i32* @O_WRONLY, align 4
  %70 = load i32, i32* @O_CREAT, align 4
  %71 = or i32 %69, %70
  %72 = load i32, i32* @O_APPEND, align 4
  %73 = or i32 %71, %72
  br label %80

74:                                               ; preds = %63
  %75 = load i32, i32* @O_WRONLY, align 4
  %76 = load i32, i32* @O_CREAT, align 4
  %77 = or i32 %75, %76
  %78 = load i32, i32* @O_TRUNC, align 4
  %79 = or i32 %77, %78
  br label %80

80:                                               ; preds = %74, %68
  %81 = phi i32 [ %73, %68 ], [ %79, %74 ]
  %82 = load i32, i32* @DEFFILEMODE, align 4
  %83 = call i32 @open(i8* %65, i32 %81, i32 %82)
  store i32 %83, i32* %8, align 4
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %80
  %86 = load i8**, i8*** %5, align 8
  %87 = load i8*, i8** %86, align 8
  %88 = call i32 @warn(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* %87)
  store i32 1, i32* %14, align 4
  br label %94

89:                                               ; preds = %80
  %90 = load i32, i32* %8, align 4
  %91 = load i8**, i8*** %5, align 8
  %92 = load i8*, i8** %91, align 8
  %93 = call i32 @add(i32 %90, i8* %92)
  br label %94

94:                                               ; preds = %89, %85
  br label %95

95:                                               ; preds = %94
  %96 = load i8**, i8*** %5, align 8
  %97 = getelementptr inbounds i8*, i8** %96, i32 1
  store i8** %97, i8*** %5, align 8
  br label %59

98:                                               ; preds = %59
  %99 = call i64 (...) @caph_enter()
  %100 = icmp slt i64 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %98
  %102 = load i32, i32* @EXIT_FAILURE, align 4
  %103 = call i32 @err(i32 %102, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0))
  br label %104

104:                                              ; preds = %101, %98
  br label %105

105:                                              ; preds = %146, %104
  %106 = load i32, i32* @STDIN_FILENO, align 4
  %107 = load i8*, i8** %15, align 8
  %108 = call i32 @read(i32 %106, i8* %107, i32 8192)
  store i32 %108, i32* %9, align 4
  %109 = icmp sgt i32 %108, 0
  br i1 %109, label %110, label %147

110:                                              ; preds = %105
  %111 = load %struct.TYPE_3__*, %struct.TYPE_3__** @head, align 8
  store %struct.TYPE_3__* %111, %struct.TYPE_3__** %6, align 8
  br label %112

112:                                              ; preds = %142, %110
  %113 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %114 = icmp ne %struct.TYPE_3__* %113, null
  br i1 %114, label %115, label %146

115:                                              ; preds = %112
  %116 = load i32, i32* %9, align 4
  store i32 %116, i32* %7, align 4
  %117 = load i8*, i8** %15, align 8
  store i8* %117, i8** %11, align 8
  br label %118

118:                                              ; preds = %136, %115
  %119 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  %122 = load i8*, i8** %11, align 8
  %123 = load i32, i32* %7, align 4
  %124 = call i32 @write(i32 %121, i8* %122, i32 %123)
  store i32 %124, i32* %10, align 4
  %125 = icmp eq i32 %124, -1
  br i1 %125, label %126, label %131

126:                                              ; preds = %118
  %127 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %127, i32 0, i32 0
  %129 = load i8*, i8** %128, align 8
  %130 = call i32 @warn(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* %129)
  store i32 1, i32* %14, align 4
  br label %141

131:                                              ; preds = %118
  %132 = load i32, i32* %10, align 4
  %133 = load i8*, i8** %11, align 8
  %134 = sext i32 %132 to i64
  %135 = getelementptr inbounds i8, i8* %133, i64 %134
  store i8* %135, i8** %11, align 8
  br label %136

136:                                              ; preds = %131
  %137 = load i32, i32* %10, align 4
  %138 = load i32, i32* %7, align 4
  %139 = sub nsw i32 %138, %137
  store i32 %139, i32* %7, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %118, label %141

141:                                              ; preds = %136, %126
  br label %142

142:                                              ; preds = %141
  %143 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %144 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %143, i32 0, i32 2
  %145 = load %struct.TYPE_3__*, %struct.TYPE_3__** %144, align 8
  store %struct.TYPE_3__* %145, %struct.TYPE_3__** %6, align 8
  br label %112

146:                                              ; preds = %112
  br label %105

147:                                              ; preds = %105
  %148 = load i32, i32* %9, align 4
  %149 = icmp slt i32 %148, 0
  br i1 %149, label %150, label %152

150:                                              ; preds = %147
  %151 = call i32 @err(i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  br label %152

152:                                              ; preds = %150, %147
  %153 = load i32, i32* %14, align 4
  %154 = call i32 @exit(i32 %153) #3
  unreachable
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @signal(i32, i32) #1

declare dso_local i32 @usage(...) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @caph_limit_stdin(...) #1

declare dso_local i32 @caph_limit_stderr(...) #1

declare dso_local i32 @add(i32, i8*) #1

declare dso_local i32 @open(i8*, i32, i32) #1

declare dso_local i32 @warn(i8*, i8*) #1

declare dso_local i64 @caph_enter(...) #1

declare dso_local i32 @read(i32, i8*, i32) #1

declare dso_local i32 @write(i32, i8*, i32) #1

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
