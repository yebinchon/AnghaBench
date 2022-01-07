; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/ath/athdecode/extr_main.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/ath/athdecode/extr_main.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.stat = type { i32 }
%struct.athregrec = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"/tmp/ath_hal.log\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"open: %s\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"fstat\00", align 1
@PROT_READ = common dso_local global i32 0, align 4
@MAP_PRIVATE = common dso_local global i32 0, align 4
@MAP_NOCORE = common dso_local global i32 0, align 4
@MAP_FAILED = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [5 x i8] c"mmap\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"%u records\00", align 1
@state = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str.5 = private unnamed_addr constant [13 x i8] c"\09\09+%u time%s\00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@stdout = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.stat, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.athregrec*, align 8
  %14 = alloca %struct.athregrec*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8** %12, align 8
  %15 = load i32, i32* %4, align 4
  %16 = icmp sgt i32 %15, 1
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = load i8**, i8*** %5, align 8
  %19 = getelementptr inbounds i8*, i8** %18, i64 1
  %20 = load i8*, i8** %19, align 8
  store i8* %20, i8** %12, align 8
  br label %21

21:                                               ; preds = %17, %2
  %22 = load i8*, i8** %12, align 8
  %23 = load i32, i32* @O_RDONLY, align 4
  %24 = call i32 @open(i8* %22, i32 %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %21
  %28 = load i8*, i8** %12, align 8
  %29 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* %28)
  br label %30

30:                                               ; preds = %27, %21
  %31 = load i32, i32* %6, align 4
  %32 = call i64 @fstat(i32 %31, %struct.stat* %10)
  %33 = icmp slt i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  br label %36

36:                                               ; preds = %34, %30
  %37 = getelementptr inbounds %struct.stat, %struct.stat* %10, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @PROT_READ, align 4
  %40 = load i32, i32* @MAP_PRIVATE, align 4
  %41 = load i32, i32* @MAP_NOCORE, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* %6, align 4
  %44 = call i8* @mmap(i32 0, i32 %38, i32 %39, i32 %42, i32 %43, i32 0)
  store i8* %44, i8** %11, align 8
  %45 = load i8*, i8** %11, align 8
  %46 = load i8*, i8** @MAP_FAILED, align 8
  %47 = icmp eq i8* %45, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %36
  %49 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  br label %50

50:                                               ; preds = %48, %36
  %51 = getelementptr inbounds %struct.stat, %struct.stat* %10, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = sext i32 %52 to i64
  %54 = udiv i64 %53, 4
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %8, align 4
  %56 = load i32, i32* %8, align 4
  %57 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32 %56)
  store %struct.athregrec* null, %struct.athregrec** %13, align 8
  store i32 0, i32* %9, align 4
  store i32 5210, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @state, i32 0, i32 0), align 4
  store i32 0, i32* %7, align 4
  br label %58

58:                                               ; preds = %107, %50
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* %8, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %110

62:                                               ; preds = %58
  %63 = load i8*, i8** %11, align 8
  %64 = bitcast i8* %63 to %struct.athregrec*
  %65 = load i32, i32* %7, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.athregrec, %struct.athregrec* %64, i64 %66
  store %struct.athregrec* %67, %struct.athregrec** %14, align 8
  %68 = load %struct.athregrec*, %struct.athregrec** %13, align 8
  %69 = icmp ne %struct.athregrec* %68, null
  br i1 %69, label %70, label %78

70:                                               ; preds = %62
  %71 = load %struct.athregrec*, %struct.athregrec** %14, align 8
  %72 = load %struct.athregrec*, %struct.athregrec** %13, align 8
  %73 = call i64 @bcmp(%struct.athregrec* %71, %struct.athregrec* %72, i32 4)
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %70
  %76 = load i32, i32* %9, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %9, align 4
  br label %107

78:                                               ; preds = %70, %62
  %79 = load i32, i32* %9, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %88

81:                                               ; preds = %78
  %82 = load i32, i32* %9, align 4
  %83 = load i32, i32* %9, align 4
  %84 = icmp eq i32 %83, 1
  %85 = zext i1 %84 to i64
  %86 = select i1 %84, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0)
  %87 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i32 %82, i8* %86)
  br label %88

88:                                               ; preds = %81, %78
  %89 = load %struct.athregrec*, %struct.athregrec** %14, align 8
  %90 = getelementptr inbounds %struct.athregrec, %struct.athregrec* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  switch i32 %91, label %105 [
    i32 131, label %92
    i32 129, label %95
    i32 128, label %95
    i32 130, label %100
  ]

92:                                               ; preds = %88
  %93 = load %struct.athregrec*, %struct.athregrec** %14, align 8
  %94 = call i32 @opdevice(%struct.athregrec* %93)
  br label %105

95:                                               ; preds = %88, %88
  %96 = load i32, i32* @stdout, align 4
  %97 = load i32, i32* %7, align 4
  %98 = load %struct.athregrec*, %struct.athregrec** %14, align 8
  %99 = call i32 @oprw(i32 %96, i32 %97, %struct.athregrec* %98)
  br label %105

100:                                              ; preds = %88
  %101 = load i32, i32* @stdout, align 4
  %102 = load i32, i32* %7, align 4
  %103 = load %struct.athregrec*, %struct.athregrec** %14, align 8
  %104 = call i32 @opmark(i32 %101, i32 %102, %struct.athregrec* %103)
  br label %105

105:                                              ; preds = %88, %100, %95, %92
  %106 = load %struct.athregrec*, %struct.athregrec** %14, align 8
  store %struct.athregrec* %106, %struct.athregrec** %13, align 8
  store i32 0, i32* %9, align 4
  br label %107

107:                                              ; preds = %105, %75
  %108 = load i32, i32* %7, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %7, align 4
  br label %58

110:                                              ; preds = %58
  %111 = call i32 @putchar(i8 signext 10)
  ret i32 0
}

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @err(i32, i8*, ...) #1

declare dso_local i64 @fstat(i32, %struct.stat*) #1

declare dso_local i8* @mmap(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @printf(i8*, i32, ...) #1

declare dso_local i64 @bcmp(%struct.athregrec*, %struct.athregrec*, i32) #1

declare dso_local i32 @opdevice(%struct.athregrec*) #1

declare dso_local i32 @oprw(i32, i32, %struct.athregrec*) #1

declare dso_local i32 @opmark(i32, i32, %struct.athregrec*) #1

declare dso_local i32 @putchar(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
