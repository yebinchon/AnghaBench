; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/mail/extr_cmd2.c_save1.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/mail/extr_cmd2.c_save1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.message = type { i32 }
%struct.ignoretab = type { i32 }

@msgCount = common dso_local global i32 0, align 4
@MMNORM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"No messages to %s.\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"\22%s\22 \00", align 1
@stdout = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [11 x i8] c"[Appended]\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"[New file]\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@message = common dso_local global %struct.message* null, align 8
@.str.5 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@MSAVED = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @save1(i8* %0, i32 %1, i8* %2, %struct.ignoretab* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.ignoretab*, align 8
  %10 = alloca %struct.message*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store %struct.ignoretab* %3, %struct.ignoretab** %9, align 8
  %17 = load i32, i32* @msgCount, align 4
  %18 = add nsw i32 %17, 2
  %19 = sext i32 %18 to i64
  %20 = mul i64 %19, 4
  %21 = trunc i64 %20 to i32
  %22 = call i64 @salloc(i32 %21)
  %23 = inttoptr i64 %22 to i32*
  store i32* %23, i32** %14, align 8
  %24 = load i8*, i8** %6, align 8
  %25 = call i8* @snarf(i8* %24, i32* %13)
  store i8* %25, i8** %11, align 8
  %26 = icmp eq i8* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %4
  store i32 1, i32* %5, align 4
  br label %138

28:                                               ; preds = %4
  %29 = load i32, i32* %13, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %44, label %31

31:                                               ; preds = %28
  %32 = load i32, i32* @MMNORM, align 4
  %33 = call i32 @first(i32 0, i32 %32)
  %34 = load i32*, i32** %14, align 8
  store i32 %33, i32* %34, align 4
  %35 = load i32*, i32** %14, align 8
  %36 = load i32, i32* %35, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %31
  %39 = load i8*, i8** %8, align 8
  %40 = call i32 @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* %39)
  store i32 1, i32* %5, align 4
  br label %138

41:                                               ; preds = %31
  %42 = load i32*, i32** %14, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 1
  store i32 0, i32* %43, align 4
  br label %44

44:                                               ; preds = %41, %28
  %45 = load i32, i32* %13, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %44
  %48 = load i8*, i8** %6, align 8
  %49 = load i32*, i32** %14, align 8
  %50 = call i64 @getmsglist(i8* %48, i32* %49, i32 0)
  %51 = icmp slt i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %47
  store i32 1, i32* %5, align 4
  br label %138

53:                                               ; preds = %47, %44
  %54 = load i8*, i8** %11, align 8
  %55 = call i8* @expand(i8* %54)
  store i8* %55, i8** %11, align 8
  %56 = icmp eq i8* %55, null
  br i1 %56, label %57, label %58

57:                                               ; preds = %53
  store i32 1, i32* %5, align 4
  br label %138

58:                                               ; preds = %53
  %59 = load i8*, i8** %11, align 8
  %60 = call i32 @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %59)
  %61 = load i32*, i32** @stdout, align 8
  %62 = call i32 @fflush(i32* %61)
  %63 = load i8*, i8** %11, align 8
  %64 = call i64 @access(i8* %63, i32 0)
  %65 = icmp sge i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %58
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8** %12, align 8
  br label %68

67:                                               ; preds = %58
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8** %12, align 8
  br label %68

68:                                               ; preds = %67, %66
  %69 = load i8*, i8** %11, align 8
  %70 = call i32* @Fopen(i8* %69, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  store i32* %70, i32** %16, align 8
  %71 = icmp eq i32* %70, null
  br i1 %71, label %72, label %74

72:                                               ; preds = %68
  %73 = call i32 (i8*, ...) @warn(i8* null)
  store i32 1, i32* %5, align 4
  br label %138

74:                                               ; preds = %68
  %75 = load i32*, i32** %14, align 8
  store i32* %75, i32** %15, align 8
  br label %76

76:                                               ; preds = %121, %74
  %77 = load i32*, i32** %15, align 8
  %78 = load i32, i32* %77, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %90

80:                                               ; preds = %76
  %81 = load i32*, i32** %15, align 8
  %82 = load i32*, i32** %14, align 8
  %83 = ptrtoint i32* %81 to i64
  %84 = ptrtoint i32* %82 to i64
  %85 = sub i64 %83, %84
  %86 = sdiv exact i64 %85, 4
  %87 = load i32, i32* @msgCount, align 4
  %88 = sext i32 %87 to i64
  %89 = icmp slt i64 %86, %88
  br label %90

90:                                               ; preds = %80, %76
  %91 = phi i1 [ false, %76 ], [ %89, %80 ]
  br i1 %91, label %92, label %124

92:                                               ; preds = %90
  %93 = load %struct.message*, %struct.message** @message, align 8
  %94 = load i32*, i32** %15, align 8
  %95 = load i32, i32* %94, align 4
  %96 = sub nsw i32 %95, 1
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.message, %struct.message* %93, i64 %97
  store %struct.message* %98, %struct.message** %10, align 8
  %99 = load %struct.message*, %struct.message** %10, align 8
  %100 = call i32 @touch(%struct.message* %99)
  %101 = load %struct.message*, %struct.message** %10, align 8
  %102 = load i32*, i32** %16, align 8
  %103 = load %struct.ignoretab*, %struct.ignoretab** %9, align 8
  %104 = call i64 @sendmessage(%struct.message* %101, i32* %102, %struct.ignoretab* %103, i32* null)
  %105 = icmp slt i64 %104, 0
  br i1 %105, label %106, label %111

106:                                              ; preds = %92
  %107 = load i8*, i8** %11, align 8
  %108 = call i32 @warnx(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* %107)
  %109 = load i32*, i32** %16, align 8
  %110 = call i32 @Fclose(i32* %109)
  store i32 1, i32* %5, align 4
  br label %138

111:                                              ; preds = %92
  %112 = load i32, i32* %7, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %120

114:                                              ; preds = %111
  %115 = load i32, i32* @MSAVED, align 4
  %116 = load %struct.message*, %struct.message** %10, align 8
  %117 = getelementptr inbounds %struct.message, %struct.message* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = or i32 %118, %115
  store i32 %119, i32* %117, align 4
  br label %120

120:                                              ; preds = %114, %111
  br label %121

121:                                              ; preds = %120
  %122 = load i32*, i32** %15, align 8
  %123 = getelementptr inbounds i32, i32* %122, i32 1
  store i32* %123, i32** %15, align 8
  br label %76

124:                                              ; preds = %90
  %125 = load i32*, i32** %16, align 8
  %126 = call i32 @fflush(i32* %125)
  %127 = load i32*, i32** %16, align 8
  %128 = call i64 @ferror(i32* %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %133

130:                                              ; preds = %124
  %131 = load i8*, i8** %11, align 8
  %132 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* %131)
  br label %133

133:                                              ; preds = %130, %124
  %134 = load i32*, i32** %16, align 8
  %135 = call i32 @Fclose(i32* %134)
  %136 = load i8*, i8** %12, align 8
  %137 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8* %136)
  store i32 0, i32* %5, align 4
  br label %138

138:                                              ; preds = %133, %106, %72, %57, %52, %38, %27
  %139 = load i32, i32* %5, align 4
  ret i32 %139
}

declare dso_local i64 @salloc(i32) #1

declare dso_local i8* @snarf(i8*, i32*) #1

declare dso_local i32 @first(i32, i32) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i64 @getmsglist(i8*, i32*, i32) #1

declare dso_local i8* @expand(i8*) #1

declare dso_local i32 @fflush(i32*) #1

declare dso_local i64 @access(i8*, i32) #1

declare dso_local i32* @Fopen(i8*, i8*) #1

declare dso_local i32 @warn(i8*, ...) #1

declare dso_local i32 @touch(%struct.message*) #1

declare dso_local i64 @sendmessage(%struct.message*, i32*, %struct.ignoretab*, i32*) #1

declare dso_local i32 @warnx(i8*, i8*) #1

declare dso_local i32 @Fclose(i32*) #1

declare dso_local i64 @ferror(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
