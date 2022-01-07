; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/calendar/extr_io.c_closecal.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/calendar/extr_io.c_closecal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8* }
%struct.stat = type { i32 }

@doall = common dso_local global i32 0, align 4
@STDIN_FILENO = common dso_local global i32 0, align 4
@_PATH_SENDMAIL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"sendmail\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"-i\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"-t\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"-F\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"\22Reminder Service\22\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"From: \22Reminder Service\22 <\00", align 1
@pw = common dso_local global %struct.TYPE_2__* null, align 8
@.str.6 = private unnamed_addr constant [8 x i8] c">\0ATo: <\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c">\0ASubject: \00", align 1
@dayname = common dso_local global i8* null, align 8
@.str.8 = private unnamed_addr constant [31 x i8] c"'s Calendar\0APrecedence: bulk\0A\0A\00", align 1
@path = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @closecal(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.stat, align 4
  %4 = alloca i32, align 4
  %5 = alloca [2 x i32], align 4
  %6 = alloca i32, align 4
  %7 = alloca [1024 x i8], align 16
  store i32* %0, i32** %2, align 8
  %8 = load i32, i32* @doall, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %126

11:                                               ; preds = %1
  %12 = load i32*, i32** %2, align 8
  %13 = call i32 @rewind(i32* %12)
  %14 = load i32*, i32** %2, align 8
  %15 = call i32 @fileno(i32* %14)
  %16 = call i64 @fstat(i32 %15, %struct.stat* %3)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct.stat, %struct.stat* %3, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %18, %11
  br label %117

23:                                               ; preds = %18
  %24 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %25 = call i64 @pipe(i32* %24)
  %26 = icmp slt i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  br label %117

28:                                               ; preds = %23
  %29 = call i32 (...) @fork()
  switch i32 %29, label %59 [
    i32 -1, label %30
    i32 0, label %37
  ]

30:                                               ; preds = %28
  %31 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @close(i32 %32)
  %34 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @close(i32 %35)
  br label %117

37:                                               ; preds = %28
  %38 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @STDIN_FILENO, align 4
  %41 = icmp ne i32 %39, %40
  br i1 %41, label %42, label %50

42:                                               ; preds = %37
  %43 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @STDIN_FILENO, align 4
  %46 = call i32 @dup2(i32 %44, i32 %45)
  %47 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @close(i32 %48)
  br label %50

50:                                               ; preds = %42, %37
  %51 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @close(i32 %52)
  %54 = load i32, i32* @_PATH_SENDMAIL, align 4
  %55 = call i32 @execl(i32 %54, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i8* null)
  %56 = load i32, i32* @_PATH_SENDMAIL, align 4
  %57 = call i32 @warn(i32 %56)
  %58 = call i32 @_exit(i32 1) #3
  unreachable

59:                                               ; preds = %28
  %60 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @close(i32 %61)
  %63 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 1
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @write(i32 %64, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i32 26)
  %66 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 1
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pw, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i8*, i8** %69, align 8
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pw, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i8*, i8** %72, align 8
  %74 = call i32 @strlen(i8* %73)
  %75 = call i32 @write(i32 %67, i8* %70, i32 %74)
  %76 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 1
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @write(i32 %77, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32 7)
  %79 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 1
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pw, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load i8*, i8** %82, align 8
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pw, align 8
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  %86 = load i8*, i8** %85, align 8
  %87 = call i32 @strlen(i8* %86)
  %88 = call i32 @write(i32 %80, i8* %83, i32 %87)
  %89 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 1
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @write(i32 %90, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i32 11)
  %92 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 1
  %93 = load i32, i32* %92, align 4
  %94 = load i8*, i8** @dayname, align 8
  %95 = load i8*, i8** @dayname, align 8
  %96 = call i32 @strlen(i8* %95)
  %97 = call i32 @write(i32 %93, i8* %94, i32 %96)
  %98 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 1
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @write(i32 %99, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0), i32 30)
  br label %101

101:                                              ; preds = %107, %59
  %102 = load i32*, i32** %2, align 8
  %103 = call i32 @fileno(i32* %102)
  %104 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 0
  %105 = call i32 @read(i32 %103, i8* %104, i32 1024)
  store i32 %105, i32* %4, align 4
  %106 = icmp sgt i32 %105, 0
  br i1 %106, label %107, label %113

107:                                              ; preds = %101
  %108 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 1
  %109 = load i32, i32* %108, align 4
  %110 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 0
  %111 = load i32, i32* %4, align 4
  %112 = call i32 @write(i32 %109, i8* %110, i32 %111)
  br label %101

113:                                              ; preds = %101
  %114 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 1
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @close(i32 %115)
  br label %117

117:                                              ; preds = %113, %30, %27, %22
  %118 = load i32*, i32** %2, align 8
  %119 = call i32 @fclose(i32* %118)
  %120 = load i32, i32* @path, align 4
  %121 = call i32 @unlink(i32 %120)
  br label %122

122:                                              ; preds = %125, %117
  %123 = call i64 @wait(i32* %6)
  %124 = icmp sge i64 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %122
  br label %122

126:                                              ; preds = %10, %122
  ret void
}

declare dso_local i32 @rewind(i32*) #1

declare dso_local i64 @fstat(i32, %struct.stat*) #1

declare dso_local i32 @fileno(i32*) #1

declare dso_local i64 @pipe(i32*) #1

declare dso_local i32 @fork(...) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @dup2(i32, i32) #1

declare dso_local i32 @execl(i32, i8*, i8*, i8*, i8*, i8*, i8*) #1

declare dso_local i32 @warn(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @_exit(i32) #2

declare dso_local i32 @write(i32, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @read(i32, i8*, i32) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @unlink(i32) #1

declare dso_local i64 @wait(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
