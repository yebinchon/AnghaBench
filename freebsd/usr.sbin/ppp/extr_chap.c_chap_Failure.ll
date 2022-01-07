; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_chap.c_chap_Failure.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_chap.c_chap_Failure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.authinfo = type { %struct.TYPE_16__*, i32 }
%struct.TYPE_16__ = type { i32, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.bundle* }
%struct.bundle = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i8*, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64* }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32* }

@.str = private unnamed_addr constant [21 x i8] c"E=691 R=1 M=Invalid!\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"E=691 R=0 C=\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"%02X\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c" V=3 M=Invalid!\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"Invalid!!\00", align 1
@CHAP_FAILURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.authinfo*)* @chap_Failure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @chap_Failure(%struct.authinfo* %0) #0 {
  %2 = alloca %struct.authinfo*, align 8
  %3 = alloca [1024 x i8], align 16
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.bundle*, align 8
  %7 = alloca i32, align 4
  store %struct.authinfo* %0, %struct.authinfo** %2, align 8
  %8 = load %struct.authinfo*, %struct.authinfo** %2, align 8
  %9 = getelementptr inbounds %struct.authinfo, %struct.authinfo* %8, i32 0, i32 0
  %10 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  %15 = load %struct.bundle*, %struct.bundle** %14, align 8
  store %struct.bundle* %15, %struct.bundle** %6, align 8
  %16 = load %struct.bundle*, %struct.bundle** %6, align 8
  %17 = getelementptr inbounds %struct.bundle, %struct.bundle* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  %20 = load i64*, i64** %19, align 8
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %34

23:                                               ; preds = %1
  %24 = load %struct.bundle*, %struct.bundle** %6, align 8
  %25 = getelementptr inbounds %struct.bundle, %struct.bundle* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %34

29:                                               ; preds = %23
  %30 = load %struct.bundle*, %struct.bundle** %6, align 8
  %31 = getelementptr inbounds %struct.bundle, %struct.bundle* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  store i8* %33, i8** %5, align 8
  br label %92

34:                                               ; preds = %23, %1
  %35 = load %struct.authinfo*, %struct.authinfo** %2, align 8
  %36 = getelementptr inbounds %struct.authinfo, %struct.authinfo* %35, i32 0, i32 0
  %37 = load %struct.TYPE_16__*, %struct.TYPE_16__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp eq i32 %41, 128
  br i1 %42, label %43, label %47

43:                                               ; preds = %34
  %44 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %45 = call i32 (i8*, i8*, ...) @sprintf(i8* %44, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %46 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  store i8* %46, i8** %5, align 8
  br label %91

47:                                               ; preds = %34
  %48 = load %struct.authinfo*, %struct.authinfo** %2, align 8
  %49 = getelementptr inbounds %struct.authinfo, %struct.authinfo* %48, i32 0, i32 0
  %50 = load %struct.TYPE_16__*, %struct.TYPE_16__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp eq i32 %54, 129
  br i1 %55, label %56, label %89

56:                                               ; preds = %47
  %57 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  store i8* %57, i8** %4, align 8
  %58 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %59 = call i32 (i8*, i8*, ...) @sprintf(i8* %58, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %60 = load i8*, i8** %4, align 8
  %61 = sext i32 %59 to i64
  %62 = getelementptr inbounds i8, i8* %60, i64 %61
  store i8* %62, i8** %4, align 8
  store i32 0, i32* %7, align 4
  br label %63

63:                                               ; preds = %82, %56
  %64 = load i32, i32* %7, align 4
  %65 = icmp slt i32 %64, 16
  br i1 %65, label %66, label %85

66:                                               ; preds = %63
  %67 = load i8*, i8** %4, align 8
  %68 = load %struct.authinfo*, %struct.authinfo** %2, align 8
  %69 = call %struct.TYPE_15__* @auth2chap(%struct.authinfo* %68)
  %70 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 1
  %74 = load i32, i32* %7, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = call i32 (i8*, i8*, ...) @sprintf(i8* %67, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %77)
  %79 = load i8*, i8** %4, align 8
  %80 = sext i32 %78 to i64
  %81 = getelementptr inbounds i8, i8* %79, i64 %80
  store i8* %81, i8** %4, align 8
  br label %82

82:                                               ; preds = %66
  %83 = load i32, i32* %7, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %7, align 4
  br label %63

85:                                               ; preds = %63
  %86 = load i8*, i8** %4, align 8
  %87 = call i32 (i8*, i8*, ...) @sprintf(i8* %86, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  %88 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  store i8* %88, i8** %5, align 8
  br label %90

89:                                               ; preds = %47
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8** %5, align 8
  br label %90

90:                                               ; preds = %89, %85
  br label %91

91:                                               ; preds = %90, %43
  br label %92

92:                                               ; preds = %91, %29
  %93 = load %struct.authinfo*, %struct.authinfo** %2, align 8
  %94 = getelementptr inbounds %struct.authinfo, %struct.authinfo* %93, i32 0, i32 0
  %95 = load %struct.TYPE_16__*, %struct.TYPE_16__** %94, align 8
  %96 = load i32, i32* @CHAP_FAILURE, align 4
  %97 = load %struct.authinfo*, %struct.authinfo** %2, align 8
  %98 = getelementptr inbounds %struct.authinfo, %struct.authinfo* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = load i8*, i8** %5, align 8
  %101 = load i8*, i8** %5, align 8
  %102 = call i64 @strlen(i8* %101)
  %103 = add nsw i64 %102, 1
  %104 = call i32 @ChapOutput(%struct.TYPE_16__* %95, i32 %96, i32 %99, i8* %100, i64 %103, i32* null)
  %105 = load %struct.authinfo*, %struct.authinfo** %2, align 8
  %106 = getelementptr inbounds %struct.authinfo, %struct.authinfo* %105, i32 0, i32 0
  %107 = load %struct.TYPE_16__*, %struct.TYPE_16__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @datalink_AuthNotOk(i32 %109)
  ret void
}

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

declare dso_local %struct.TYPE_15__* @auth2chap(%struct.authinfo*) #1

declare dso_local i32 @ChapOutput(%struct.TYPE_16__*, i32, i32, i8*, i64, i32*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @datalink_AuthNotOk(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
