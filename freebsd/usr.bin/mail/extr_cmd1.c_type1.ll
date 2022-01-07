; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/mail/extr_cmd1.c_type1.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/mail/extr_cmd1.c_type1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.message = type { i64 }

@stdout = common dso_local global i32* null, align 8
@pipestop = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"interactive\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"crt\00", align 1
@msgCount = common dso_local global i32 0, align 4
@message = common dso_local global %struct.message* null, align 8
@realscreenheight = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"PAGER\00", align 1
@_PATH_LESS = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@SIGPIPE = common dso_local global i32 0, align 4
@brokpipe = common dso_local global i32 0, align 4
@dot = common dso_local global %struct.message* null, align 8
@.str.5 = private unnamed_addr constant [6 x i8] c"quiet\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"Message %d:\0A\00", align 1
@ignore = common dso_local global i32 0, align 4
@SIG_IGN = common dso_local global i32 0, align 4
@SIG_DFL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @type1(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.message*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = load i32*, i32** @stdout, align 8
  store i32* %12, i32** %11, align 8
  %13 = load i32, i32* @pipestop, align 4
  %14 = call i64 @setjmp(i32 %13) #3
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  br label %157

17:                                               ; preds = %3
  %18 = call i8* @value(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %107

20:                                               ; preds = %17
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %20
  %24 = call i8* @value(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  store i8* %24, i8** %10, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %107

26:                                               ; preds = %23, %20
  store i32 0, i32* %7, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %64, label %29

29:                                               ; preds = %26
  %30 = load i32*, i32** %4, align 8
  store i32* %30, i32** %8, align 8
  br label %31

31:                                               ; preds = %60, %29
  %32 = load i32*, i32** %8, align 8
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %45

35:                                               ; preds = %31
  %36 = load i32*, i32** %8, align 8
  %37 = load i32*, i32** %4, align 8
  %38 = ptrtoint i32* %36 to i64
  %39 = ptrtoint i32* %37 to i64
  %40 = sub i64 %38, %39
  %41 = sdiv exact i64 %40, 4
  %42 = load i32, i32* @msgCount, align 4
  %43 = sext i32 %42 to i64
  %44 = icmp slt i64 %41, %43
  br label %45

45:                                               ; preds = %35, %31
  %46 = phi i1 [ false, %31 ], [ %44, %35 ]
  br i1 %46, label %47, label %63

47:                                               ; preds = %45
  %48 = load %struct.message*, %struct.message** @message, align 8
  %49 = load i32*, i32** %8, align 8
  %50 = load i32, i32* %49, align 4
  %51 = sub nsw i32 %50, 1
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.message, %struct.message* %48, i64 %52
  %54 = getelementptr inbounds %struct.message, %struct.message* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i32, i32* %7, align 4
  %57 = sext i32 %56 to i64
  %58 = add nsw i64 %57, %55
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %7, align 4
  br label %60

60:                                               ; preds = %47
  %61 = load i32*, i32** %8, align 8
  %62 = getelementptr inbounds i32, i32* %61, i32 1
  store i32* %62, i32** %8, align 8
  br label %31

63:                                               ; preds = %45
  br label %64

64:                                               ; preds = %63, %26
  %65 = load i32, i32* %6, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %81, label %67

67:                                               ; preds = %64
  %68 = load i32, i32* %7, align 4
  %69 = load i8*, i8** %10, align 8
  %70 = load i8, i8* %69, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %67
  %74 = load i8*, i8** %10, align 8
  %75 = call i32 @atoi(i8* %74)
  br label %78

76:                                               ; preds = %67
  %77 = load i32, i32* @realscreenheight, align 4
  br label %78

78:                                               ; preds = %76, %73
  %79 = phi i32 [ %75, %73 ], [ %77, %76 ]
  %80 = icmp sgt i32 %68, %79
  br i1 %80, label %81, label %106

81:                                               ; preds = %78, %64
  %82 = call i8* @value(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  store i8* %82, i8** %10, align 8
  %83 = load i8*, i8** %10, align 8
  %84 = icmp eq i8* %83, null
  br i1 %84, label %90, label %85

85:                                               ; preds = %81
  %86 = load i8*, i8** %10, align 8
  %87 = load i8, i8* %86, align 1
  %88 = sext i8 %87 to i32
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %85, %81
  %91 = load i8*, i8** @_PATH_LESS, align 8
  store i8* %91, i8** %10, align 8
  br label %92

92:                                               ; preds = %90, %85
  %93 = load i8*, i8** %10, align 8
  %94 = call i32* @Popen(i8* %93, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store i32* %94, i32** %11, align 8
  %95 = load i32*, i32** %11, align 8
  %96 = icmp eq i32* %95, null
  br i1 %96, label %97, label %101

97:                                               ; preds = %92
  %98 = load i8*, i8** %10, align 8
  %99 = call i32 @warnx(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* %98)
  %100 = load i32*, i32** @stdout, align 8
  store i32* %100, i32** %11, align 8
  br label %105

101:                                              ; preds = %92
  %102 = load i32, i32* @SIGPIPE, align 4
  %103 = load i32, i32* @brokpipe, align 4
  %104 = call i32 @signal(i32 %102, i32 %103)
  br label %105

105:                                              ; preds = %101, %97
  br label %106

106:                                              ; preds = %105, %78
  br label %107

107:                                              ; preds = %106, %23, %17
  %108 = load i32*, i32** %4, align 8
  store i32* %108, i32** %8, align 8
  br label %109

109:                                              ; preds = %153, %107
  %110 = load i32*, i32** %8, align 8
  %111 = load i32, i32* %110, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %123

113:                                              ; preds = %109
  %114 = load i32*, i32** %8, align 8
  %115 = load i32*, i32** %4, align 8
  %116 = ptrtoint i32* %114 to i64
  %117 = ptrtoint i32* %115 to i64
  %118 = sub i64 %116, %117
  %119 = sdiv exact i64 %118, 4
  %120 = load i32, i32* @msgCount, align 4
  %121 = sext i32 %120 to i64
  %122 = icmp slt i64 %119, %121
  br label %123

123:                                              ; preds = %113, %109
  %124 = phi i1 [ false, %109 ], [ %122, %113 ]
  br i1 %124, label %125, label %156

125:                                              ; preds = %123
  %126 = load %struct.message*, %struct.message** @message, align 8
  %127 = load i32*, i32** %8, align 8
  %128 = load i32, i32* %127, align 4
  %129 = sub nsw i32 %128, 1
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.message, %struct.message* %126, i64 %130
  store %struct.message* %131, %struct.message** %9, align 8
  %132 = load %struct.message*, %struct.message** %9, align 8
  %133 = call i32 @touch(%struct.message* %132)
  %134 = load %struct.message*, %struct.message** %9, align 8
  store %struct.message* %134, %struct.message** @dot, align 8
  %135 = call i8* @value(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %136 = icmp eq i8* %135, null
  br i1 %136, label %137, label %142

137:                                              ; preds = %125
  %138 = load i32*, i32** %11, align 8
  %139 = load i32*, i32** %8, align 8
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @fprintf(i32* %138, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i32 %140)
  br label %142

142:                                              ; preds = %137, %125
  %143 = load %struct.message*, %struct.message** %9, align 8
  %144 = load i32*, i32** %11, align 8
  %145 = load i32, i32* %5, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %149

147:                                              ; preds = %142
  %148 = load i32, i32* @ignore, align 4
  br label %150

149:                                              ; preds = %142
  br label %150

150:                                              ; preds = %149, %147
  %151 = phi i32 [ %148, %147 ], [ 0, %149 ]
  %152 = call i32 @sendmessage(%struct.message* %143, i32* %144, i32 %151, i32* null)
  br label %153

153:                                              ; preds = %150
  %154 = load i32*, i32** %8, align 8
  %155 = getelementptr inbounds i32, i32* %154, i32 1
  store i32* %155, i32** %8, align 8
  br label %109

156:                                              ; preds = %123
  br label %157

157:                                              ; preds = %156, %16
  %158 = load i32*, i32** %11, align 8
  %159 = load i32*, i32** @stdout, align 8
  %160 = icmp ne i32* %158, %159
  br i1 %160, label %161, label %170

161:                                              ; preds = %157
  %162 = load i32, i32* @SIGPIPE, align 4
  %163 = load i32, i32* @SIG_IGN, align 4
  %164 = call i32 @signal(i32 %162, i32 %163)
  %165 = load i32*, i32** %11, align 8
  %166 = call i32 @Pclose(i32* %165)
  %167 = load i32, i32* @SIGPIPE, align 4
  %168 = load i32, i32* @SIG_DFL, align 4
  %169 = call i32 @signal(i32 %167, i32 %168)
  br label %170

170:                                              ; preds = %161, %157
  ret i32 0
}

; Function Attrs: returns_twice
declare dso_local i64 @setjmp(i32) #1

declare dso_local i8* @value(i8*) #2

declare dso_local i32 @atoi(i8*) #2

declare dso_local i32* @Popen(i8*, i8*) #2

declare dso_local i32 @warnx(i8*, i8*) #2

declare dso_local i32 @signal(i32, i32) #2

declare dso_local i32 @touch(%struct.message*) #2

declare dso_local i32 @fprintf(i32*, i8*, i32) #2

declare dso_local i32 @sendmessage(%struct.message*, i32*, i32, i32*) #2

declare dso_local i32 @Pclose(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { returns_twice "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { returns_twice }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
