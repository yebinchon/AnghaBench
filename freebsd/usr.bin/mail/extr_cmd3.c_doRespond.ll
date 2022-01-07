; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/mail/extr_cmd3.c_doRespond.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/mail/extr_cmd3.c_doRespond.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.message = type { i32 }
%struct.header = type { i8*, i32, i32*, i32*, i32*, i32*, i32* }

@message = common dso_local global %struct.message* null, align 8
@dot = common dso_local global %struct.message* null, align 8
@.str = private unnamed_addr constant [5 x i8] c"from\00", align 1
@GTO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"message-id\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"subject\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"subj\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"REPLYTO\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @doRespond(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.header, align 8
  %5 = alloca %struct.message*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  %9 = getelementptr inbounds %struct.header, %struct.header* %4, i32 0, i32 6
  store i32* null, i32** %9, align 8
  %10 = load i32*, i32** %3, align 8
  store i32* %10, i32** %6, align 8
  br label %11

11:                                               ; preds = %44, %1
  %12 = load i32*, i32** %6, align 8
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %47

15:                                               ; preds = %11
  %16 = load %struct.message*, %struct.message** @message, align 8
  %17 = load i32*, i32** %6, align 8
  %18 = load i32, i32* %17, align 4
  %19 = sub nsw i32 %18, 1
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.message, %struct.message* %16, i64 %20
  store %struct.message* %21, %struct.message** %5, align 8
  %22 = load %struct.message*, %struct.message** %5, align 8
  %23 = call i32 @touch(%struct.message* %22)
  %24 = load %struct.message*, %struct.message** %5, align 8
  store %struct.message* %24, %struct.message** @dot, align 8
  %25 = load %struct.message*, %struct.message** %5, align 8
  %26 = call i8* @hfield(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), %struct.message* %25)
  %27 = call i8* @skin(i8* %26)
  store i8* %27, i8** %7, align 8
  %28 = icmp eq i8* %27, null
  br i1 %28, label %29, label %33

29:                                               ; preds = %15
  %30 = load %struct.message*, %struct.message** %5, align 8
  %31 = call i8* @nameof(%struct.message* %30, i32 2)
  %32 = call i8* @skin(i8* %31)
  store i8* %32, i8** %7, align 8
  br label %33

33:                                               ; preds = %29, %15
  %34 = getelementptr inbounds %struct.header, %struct.header* %4, i32 0, i32 6
  %35 = load i32*, i32** %34, align 8
  %36 = load i8*, i8** %7, align 8
  %37 = load i32, i32* @GTO, align 4
  %38 = call i32 @extract(i8* %36, i32 %37)
  %39 = call i32* @cat(i32* %35, i32 %38)
  %40 = getelementptr inbounds %struct.header, %struct.header* %4, i32 0, i32 6
  store i32* %39, i32** %40, align 8
  %41 = load %struct.message*, %struct.message** %5, align 8
  %42 = call i8* @hfield(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), %struct.message* %41)
  %43 = call i8* @skin(i8* %42)
  store i8* %43, i8** %8, align 8
  br label %44

44:                                               ; preds = %33
  %45 = load i32*, i32** %6, align 8
  %46 = getelementptr inbounds i32, i32* %45, i32 1
  store i32* %46, i32** %6, align 8
  br label %11

47:                                               ; preds = %11
  %48 = getelementptr inbounds %struct.header, %struct.header* %4, i32 0, i32 6
  %49 = load i32*, i32** %48, align 8
  %50 = icmp eq i32* %49, null
  br i1 %50, label %51, label %52

51:                                               ; preds = %47
  store i32 0, i32* %2, align 4
  br label %83

52:                                               ; preds = %47
  %53 = load %struct.message*, %struct.message** @message, align 8
  %54 = load i32*, i32** %3, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 0
  %56 = load i32, i32* %55, align 4
  %57 = sub nsw i32 %56, 1
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.message, %struct.message* %53, i64 %58
  store %struct.message* %59, %struct.message** %5, align 8
  %60 = load %struct.message*, %struct.message** %5, align 8
  %61 = call i8* @hfield(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), %struct.message* %60)
  %62 = bitcast i8* %61 to i32*
  %63 = getelementptr inbounds %struct.header, %struct.header* %4, i32 0, i32 5
  store i32* %62, i32** %63, align 8
  %64 = icmp eq i32* %62, null
  br i1 %64, label %65, label %70

65:                                               ; preds = %52
  %66 = load %struct.message*, %struct.message** %5, align 8
  %67 = call i8* @hfield(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), %struct.message* %66)
  %68 = bitcast i8* %67 to i32*
  %69 = getelementptr inbounds %struct.header, %struct.header* %4, i32 0, i32 5
  store i32* %68, i32** %69, align 8
  br label %70

70:                                               ; preds = %65, %52
  %71 = getelementptr inbounds %struct.header, %struct.header* %4, i32 0, i32 5
  %72 = load i32*, i32** %71, align 8
  %73 = call i32* @reedit(i32* %72)
  %74 = getelementptr inbounds %struct.header, %struct.header* %4, i32 0, i32 5
  store i32* %73, i32** %74, align 8
  %75 = getelementptr inbounds %struct.header, %struct.header* %4, i32 0, i32 4
  store i32* null, i32** %75, align 8
  %76 = getelementptr inbounds %struct.header, %struct.header* %4, i32 0, i32 3
  store i32* null, i32** %76, align 8
  %77 = getelementptr inbounds %struct.header, %struct.header* %4, i32 0, i32 2
  store i32* null, i32** %77, align 8
  %78 = call i32 @value(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %79 = getelementptr inbounds %struct.header, %struct.header* %4, i32 0, i32 1
  store i32 %78, i32* %79, align 8
  %80 = load i8*, i8** %8, align 8
  %81 = getelementptr inbounds %struct.header, %struct.header* %4, i32 0, i32 0
  store i8* %80, i8** %81, align 8
  %82 = call i32 @mail1(%struct.header* %4, i32 1)
  store i32 0, i32* %2, align 4
  br label %83

83:                                               ; preds = %70, %51
  %84 = load i32, i32* %2, align 4
  ret i32 %84
}

declare dso_local i32 @touch(%struct.message*) #1

declare dso_local i8* @skin(i8*) #1

declare dso_local i8* @hfield(i8*, %struct.message*) #1

declare dso_local i8* @nameof(%struct.message*, i32) #1

declare dso_local i32* @cat(i32*, i32) #1

declare dso_local i32 @extract(i8*, i32) #1

declare dso_local i32* @reedit(i32*) #1

declare dso_local i32 @value(i8*) #1

declare dso_local i32 @mail1(%struct.header*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
