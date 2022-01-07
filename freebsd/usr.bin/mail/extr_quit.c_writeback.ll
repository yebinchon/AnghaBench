; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/mail/extr_quit.c_writeback.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/mail/extr_quit.c_writeback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.message = type { i32 }

@mailname = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [3 x i8] c"r+\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@EOF = common dso_local global i32 0, align 4
@message = common dso_local global %struct.message* null, align 8
@msgCount = common dso_local global i64 0, align 8
@MPRESERVE = common dso_local global i32 0, align 4
@MTOUCH = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"Held 1 message in %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"Held %d messages in %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @writeback(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.message*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store i32 0, i32* %5, align 4
  %8 = load i8*, i8** @mailname, align 8
  %9 = call i32* @Fopen(i8* %8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32* %9, i32** %7, align 8
  %10 = icmp eq i32* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load i8*, i8** @mailname, align 8
  %13 = call i32 @warn(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %12)
  store i32 -1, i32* %2, align 4
  br label %102

14:                                               ; preds = %1
  %15 = load i32*, i32** %3, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %28

17:                                               ; preds = %14
  br label %18

18:                                               ; preds = %23, %17
  %19 = load i32*, i32** %3, align 8
  %20 = call i32 @getc(i32* %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* @EOF, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %18
  %24 = load i32, i32* %6, align 4
  %25 = load i32*, i32** %7, align 8
  %26 = call i32 @putc(i32 %24, i32* %25)
  br label %18

27:                                               ; preds = %18
  br label %28

28:                                               ; preds = %27, %14
  %29 = load %struct.message*, %struct.message** @message, align 8
  %30 = getelementptr inbounds %struct.message, %struct.message* %29, i64 0
  store %struct.message* %30, %struct.message** %4, align 8
  br label %31

31:                                               ; preds = %65, %28
  %32 = load %struct.message*, %struct.message** %4, align 8
  %33 = load %struct.message*, %struct.message** @message, align 8
  %34 = load i64, i64* @msgCount, align 8
  %35 = getelementptr inbounds %struct.message, %struct.message* %33, i64 %34
  %36 = icmp ult %struct.message* %32, %35
  br i1 %36, label %37, label %68

37:                                               ; preds = %31
  %38 = load %struct.message*, %struct.message** %4, align 8
  %39 = getelementptr inbounds %struct.message, %struct.message* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @MPRESERVE, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %51, label %44

44:                                               ; preds = %37
  %45 = load %struct.message*, %struct.message** %4, align 8
  %46 = getelementptr inbounds %struct.message, %struct.message* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @MTOUCH, align 4
  %49 = and i32 %47, %48
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %64

51:                                               ; preds = %44, %37
  %52 = load i32, i32* %5, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %5, align 4
  %54 = load %struct.message*, %struct.message** %4, align 8
  %55 = load i32*, i32** %7, align 8
  %56 = call i64 @sendmessage(%struct.message* %54, i32* %55, i32* null, i32* null)
  %57 = icmp slt i64 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %51
  %59 = load i8*, i8** @mailname, align 8
  %60 = call i32 @warnx(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %59)
  %61 = load i32*, i32** %7, align 8
  %62 = call i32 @Fclose(i32* %61)
  store i32 -1, i32* %2, align 4
  br label %102

63:                                               ; preds = %51
  br label %64

64:                                               ; preds = %63, %44
  br label %65

65:                                               ; preds = %64
  %66 = load %struct.message*, %struct.message** %4, align 8
  %67 = getelementptr inbounds %struct.message, %struct.message* %66, i32 1
  store %struct.message* %67, %struct.message** %4, align 8
  br label %31

68:                                               ; preds = %31
  %69 = load i32*, i32** %7, align 8
  %70 = call i32 @fflush(i32* %69)
  %71 = load i32*, i32** %7, align 8
  %72 = call i32 @trunc(i32* %71)
  %73 = load i32*, i32** %7, align 8
  %74 = call i64 @ferror(i32* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %68
  %77 = load i8*, i8** @mailname, align 8
  %78 = call i32 @warn(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %77)
  %79 = load i32*, i32** %7, align 8
  %80 = call i32 @Fclose(i32* %79)
  store i32 -1, i32* %2, align 4
  br label %102

81:                                               ; preds = %68
  %82 = load i32*, i32** %3, align 8
  %83 = icmp ne i32* %82, null
  br i1 %83, label %84, label %87

84:                                               ; preds = %81
  %85 = load i32*, i32** %3, align 8
  %86 = call i32 @Fclose(i32* %85)
  br label %87

87:                                               ; preds = %84, %81
  %88 = load i32*, i32** %7, align 8
  %89 = call i32 @Fclose(i32* %88)
  %90 = load i8*, i8** @mailname, align 8
  %91 = call i32 @alter(i8* %90)
  %92 = load i32, i32* %5, align 4
  %93 = icmp eq i32 %92, 1
  br i1 %93, label %94, label %97

94:                                               ; preds = %87
  %95 = load i8*, i8** @mailname, align 8
  %96 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i8* %95)
  br label %101

97:                                               ; preds = %87
  %98 = load i32, i32* %5, align 4
  %99 = load i8*, i8** @mailname, align 8
  %100 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %98, i8* %99)
  br label %101

101:                                              ; preds = %97, %94
  store i32 0, i32* %2, align 4
  br label %102

102:                                              ; preds = %101, %76, %58, %11
  %103 = load i32, i32* %2, align 4
  ret i32 %103
}

declare dso_local i32* @Fopen(i8*, i8*) #1

declare dso_local i32 @warn(i8*, i8*) #1

declare dso_local i32 @getc(i32*) #1

declare dso_local i32 @putc(i32, i32*) #1

declare dso_local i64 @sendmessage(%struct.message*, i32*, i32*, i32*) #1

declare dso_local i32 @warnx(i8*, i8*) #1

declare dso_local i32 @Fclose(i32*) #1

declare dso_local i32 @fflush(i32*) #1

declare dso_local i32 @trunc(i32*) #1

declare dso_local i64 @ferror(i32*) #1

declare dso_local i32 @alter(i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
