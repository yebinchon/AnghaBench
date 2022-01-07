; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_prompt.c_prompt_Create.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_prompt.c_prompt_Create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.prompt = type { i32, i32, i32, i32, %struct.bundle*, i64, i32*, %struct.TYPE_6__, i8*, %struct.server*, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i8*, i8* }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32 }
%struct.server = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64* }
%struct.bundle = type { i32 }

@PROMPT_DESCRIPTOR = common dso_local global i32 0, align 4
@prompt_UpdateSet = common dso_local global i32 0, align 4
@prompt_IsSet = common dso_local global i32 0, align 4
@prompt_Read = common dso_local global i32 0, align 4
@prompt_Write = common dso_local global i32 0, align 4
@PROMPT_STD = common dso_local global i32 0, align 4
@STDIN_FILENO = common dso_local global i32 0, align 4
@STDOUT_FILENO = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4
@LOCAL_AUTH = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [11 x i8] c"Controller\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"a+\00", align 1
@LOCAL_NO_AUTH = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.prompt* @prompt_Create(%struct.server* %0, %struct.bundle* %1, i32 %2) #0 {
  %4 = alloca %struct.prompt*, align 8
  %5 = alloca %struct.server*, align 8
  %6 = alloca %struct.bundle*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.prompt*, align 8
  %9 = alloca i8*, align 8
  store %struct.server* %0, %struct.server** %5, align 8
  store %struct.bundle* %1, %struct.bundle** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = call i64 @malloc(i32 104)
  %11 = inttoptr i64 %10 to %struct.prompt*
  store %struct.prompt* %11, %struct.prompt** %8, align 8
  %12 = load %struct.prompt*, %struct.prompt** %8, align 8
  %13 = icmp ne %struct.prompt* %12, null
  br i1 %13, label %14, label %129

14:                                               ; preds = %3
  %15 = load i32, i32* @PROMPT_DESCRIPTOR, align 4
  %16 = load %struct.prompt*, %struct.prompt** %8, align 8
  %17 = getelementptr inbounds %struct.prompt, %struct.prompt* %16, i32 0, i32 12
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 4
  store i32 %15, i32* %18, align 8
  %19 = load i32, i32* @prompt_UpdateSet, align 4
  %20 = load %struct.prompt*, %struct.prompt** %8, align 8
  %21 = getelementptr inbounds %struct.prompt, %struct.prompt* %20, i32 0, i32 12
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 3
  store i32 %19, i32* %22, align 4
  %23 = load i32, i32* @prompt_IsSet, align 4
  %24 = load %struct.prompt*, %struct.prompt** %8, align 8
  %25 = getelementptr inbounds %struct.prompt, %struct.prompt* %24, i32 0, i32 12
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 2
  store i32 %23, i32* %26, align 8
  %27 = load i32, i32* @prompt_Read, align 4
  %28 = load %struct.prompt*, %struct.prompt** %8, align 8
  %29 = getelementptr inbounds %struct.prompt, %struct.prompt* %28, i32 0, i32 12
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  store i32 %27, i32* %30, align 4
  %31 = load i32, i32* @prompt_Write, align 4
  %32 = load %struct.prompt*, %struct.prompt** %8, align 8
  %33 = getelementptr inbounds %struct.prompt, %struct.prompt* %32, i32 0, i32 12
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  store i32 %31, i32* %34, align 8
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* @PROMPT_STD, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %81

38:                                               ; preds = %14
  %39 = load i32, i32* @STDIN_FILENO, align 4
  %40 = call i8* @ttyname(i32 %39)
  store i8* %40, i8** %9, align 8
  %41 = load i8*, i8** %9, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %38
  %44 = load %struct.prompt*, %struct.prompt** %8, align 8
  %45 = call i32 @free(%struct.prompt* %44)
  store %struct.prompt* null, %struct.prompt** %4, align 8
  br label %131

46:                                               ; preds = %38
  %47 = load i32, i32* @STDIN_FILENO, align 4
  %48 = load %struct.prompt*, %struct.prompt** %8, align 8
  %49 = getelementptr inbounds %struct.prompt, %struct.prompt* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 8
  %50 = load i32, i32* @STDOUT_FILENO, align 4
  %51 = load %struct.prompt*, %struct.prompt** %8, align 8
  %52 = getelementptr inbounds %struct.prompt, %struct.prompt* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  %53 = load i32, i32* @stdout, align 4
  %54 = load %struct.prompt*, %struct.prompt** %8, align 8
  %55 = getelementptr inbounds %struct.prompt, %struct.prompt* %54, i32 0, i32 10
  store i32 %53, i32* %55, align 8
  %56 = load %struct.prompt*, %struct.prompt** %8, align 8
  %57 = getelementptr inbounds %struct.prompt, %struct.prompt* %56, i32 0, i32 9
  store %struct.server* null, %struct.server** %57, align 8
  %58 = load i8*, i8** @LOCAL_AUTH, align 8
  %59 = load %struct.prompt*, %struct.prompt** %8, align 8
  %60 = getelementptr inbounds %struct.prompt, %struct.prompt* %59, i32 0, i32 8
  store i8* %58, i8** %60, align 8
  %61 = load %struct.prompt*, %struct.prompt** %8, align 8
  %62 = getelementptr inbounds %struct.prompt, %struct.prompt* %61, i32 0, i32 7
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8** %63, align 8
  %64 = load %struct.prompt*, %struct.prompt** %8, align 8
  %65 = getelementptr inbounds %struct.prompt, %struct.prompt* %64, i32 0, i32 7
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 1
  %67 = load i8*, i8** %66, align 8
  %68 = load i8*, i8** %9, align 8
  %69 = call i32 @strncpy(i8* %67, i8* %68, i32 7)
  %70 = load %struct.prompt*, %struct.prompt** %8, align 8
  %71 = getelementptr inbounds %struct.prompt, %struct.prompt* %70, i32 0, i32 7
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 1
  %73 = load i8*, i8** %72, align 8
  %74 = getelementptr inbounds i8, i8* %73, i64 7
  store i8 0, i8* %74, align 1
  %75 = load %struct.prompt*, %struct.prompt** %8, align 8
  %76 = getelementptr inbounds %struct.prompt, %struct.prompt* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.prompt*, %struct.prompt** %8, align 8
  %79 = getelementptr inbounds %struct.prompt, %struct.prompt* %78, i32 0, i32 11
  %80 = call i32 @tcgetattr(i32 %77, i32* %79)
  br label %115

81:                                               ; preds = %14
  %82 = load i32, i32* %7, align 4
  %83 = load %struct.prompt*, %struct.prompt** %8, align 8
  %84 = getelementptr inbounds %struct.prompt, %struct.prompt* %83, i32 0, i32 1
  store i32 %82, i32* %84, align 4
  %85 = load %struct.prompt*, %struct.prompt** %8, align 8
  %86 = getelementptr inbounds %struct.prompt, %struct.prompt* %85, i32 0, i32 0
  store i32 %82, i32* %86, align 8
  %87 = load i32, i32* %7, align 4
  %88 = call i32 @fdopen(i32 %87, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %89 = load %struct.prompt*, %struct.prompt** %8, align 8
  %90 = getelementptr inbounds %struct.prompt, %struct.prompt* %89, i32 0, i32 10
  store i32 %88, i32* %90, align 8
  %91 = load %struct.server*, %struct.server** %5, align 8
  %92 = load %struct.prompt*, %struct.prompt** %8, align 8
  %93 = getelementptr inbounds %struct.prompt, %struct.prompt* %92, i32 0, i32 9
  store %struct.server* %91, %struct.server** %93, align 8
  %94 = load %struct.server*, %struct.server** %5, align 8
  %95 = getelementptr inbounds %struct.server, %struct.server* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 0
  %97 = load i64*, i64** %96, align 8
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %81
  %101 = load i8*, i8** @LOCAL_NO_AUTH, align 8
  br label %104

102:                                              ; preds = %81
  %103 = load i8*, i8** @LOCAL_AUTH, align 8
  br label %104

104:                                              ; preds = %102, %100
  %105 = phi i8* [ %101, %100 ], [ %103, %102 ]
  %106 = load %struct.prompt*, %struct.prompt** %8, align 8
  %107 = getelementptr inbounds %struct.prompt, %struct.prompt* %106, i32 0, i32 8
  store i8* %105, i8** %107, align 8
  %108 = load %struct.prompt*, %struct.prompt** %8, align 8
  %109 = getelementptr inbounds %struct.prompt, %struct.prompt* %108, i32 0, i32 7
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8** %110, align 8
  %111 = load %struct.prompt*, %struct.prompt** %8, align 8
  %112 = getelementptr inbounds %struct.prompt, %struct.prompt* %111, i32 0, i32 7
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 1
  %114 = load i8*, i8** %113, align 8
  store i8 0, i8* %114, align 1
  br label %115

115:                                              ; preds = %104, %46
  %116 = load %struct.prompt*, %struct.prompt** %8, align 8
  %117 = getelementptr inbounds %struct.prompt, %struct.prompt* %116, i32 0, i32 6
  store i32* null, i32** %117, align 8
  %118 = load %struct.prompt*, %struct.prompt** %8, align 8
  %119 = getelementptr inbounds %struct.prompt, %struct.prompt* %118, i32 0, i32 2
  store i32 1, i32* %119, align 8
  %120 = load %struct.prompt*, %struct.prompt** %8, align 8
  %121 = getelementptr inbounds %struct.prompt, %struct.prompt* %120, i32 0, i32 3
  store i32 1, i32* %121, align 4
  %122 = load %struct.prompt*, %struct.prompt** %8, align 8
  %123 = getelementptr inbounds %struct.prompt, %struct.prompt* %122, i32 0, i32 5
  store i64 0, i64* %123, align 8
  %124 = load %struct.bundle*, %struct.bundle** %6, align 8
  %125 = load %struct.prompt*, %struct.prompt** %8, align 8
  %126 = getelementptr inbounds %struct.prompt, %struct.prompt* %125, i32 0, i32 4
  store %struct.bundle* %124, %struct.bundle** %126, align 8
  %127 = load %struct.prompt*, %struct.prompt** %8, align 8
  %128 = call i32 @log_RegisterPrompt(%struct.prompt* %127)
  br label %129

129:                                              ; preds = %115, %3
  %130 = load %struct.prompt*, %struct.prompt** %8, align 8
  store %struct.prompt* %130, %struct.prompt** %4, align 8
  br label %131

131:                                              ; preds = %129, %43
  %132 = load %struct.prompt*, %struct.prompt** %4, align 8
  ret %struct.prompt* %132
}

declare dso_local i64 @malloc(i32) #1

declare dso_local i8* @ttyname(i32) #1

declare dso_local i32 @free(%struct.prompt*) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i32 @tcgetattr(i32, i32*) #1

declare dso_local i32 @fdopen(i32, i8*) #1

declare dso_local i32 @log_RegisterPrompt(%struct.prompt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
