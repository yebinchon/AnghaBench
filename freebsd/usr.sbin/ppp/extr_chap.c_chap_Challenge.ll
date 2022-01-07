; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_chap.c_chap_Challenge.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_chap.c_chap_Challenge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.authinfo = type { i32, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { %struct.TYPE_14__, %struct.TYPE_12__* }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.chap = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i64* }

@LogDEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"CHAP%02X: Challenge\0A\00", align 1
@CHAP_CHALLENGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.authinfo*)* @chap_Challenge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @chap_Challenge(%struct.authinfo* %0) #0 {
  %2 = alloca %struct.authinfo*, align 8
  %3 = alloca %struct.chap*, align 8
  %4 = alloca i32, align 4
  store %struct.authinfo* %0, %struct.authinfo** %2, align 8
  %5 = load %struct.authinfo*, %struct.authinfo** %2, align 8
  %6 = call %struct.chap* @auth2chap(%struct.authinfo* %5)
  store %struct.chap* %6, %struct.chap** %3, align 8
  %7 = load i32, i32* @LogDEBUG, align 4
  %8 = load %struct.authinfo*, %struct.authinfo** %2, align 8
  %9 = getelementptr inbounds %struct.authinfo, %struct.authinfo* %8, i32 0, i32 1
  %10 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @log_Printf(i32 %7, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load %struct.authinfo*, %struct.authinfo** %2, align 8
  %17 = getelementptr inbounds %struct.authinfo, %struct.authinfo* %16, i32 0, i32 1
  %18 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @strlen(i32 %26)
  store i32 %27, i32* %4, align 4
  %28 = load %struct.chap*, %struct.chap** %3, align 8
  %29 = getelementptr inbounds %struct.chap, %struct.chap* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %29, i32 0, i32 0
  %31 = load i64*, i64** %30, align 8
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %1
  %35 = load %struct.authinfo*, %struct.authinfo** %2, align 8
  %36 = call i32 @chap_ChallengeInit(%struct.authinfo* %35)
  br label %37

37:                                               ; preds = %34, %1
  %38 = load %struct.authinfo*, %struct.authinfo** %2, align 8
  %39 = getelementptr inbounds %struct.authinfo, %struct.authinfo* %38, i32 0, i32 1
  %40 = load %struct.TYPE_16__*, %struct.TYPE_16__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp eq i32 %44, 129
  br i1 %45, label %46, label %65

46:                                               ; preds = %37
  %47 = load %struct.authinfo*, %struct.authinfo** %2, align 8
  %48 = getelementptr inbounds %struct.authinfo, %struct.authinfo* %47, i32 0, i32 1
  %49 = load %struct.TYPE_16__*, %struct.TYPE_16__** %48, align 8
  %50 = load i32, i32* @CHAP_CHALLENGE, align 4
  %51 = load %struct.authinfo*, %struct.authinfo** %2, align 8
  %52 = getelementptr inbounds %struct.authinfo, %struct.authinfo* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.chap*, %struct.chap** %3, align 8
  %55 = getelementptr inbounds %struct.chap, %struct.chap* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %55, i32 0, i32 0
  %57 = load i64*, i64** %56, align 8
  %58 = load %struct.chap*, %struct.chap** %3, align 8
  %59 = getelementptr inbounds %struct.chap, %struct.chap* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %59, i32 0, i32 0
  %61 = load i64*, i64** %60, align 8
  %62 = load i64, i64* %61, align 8
  %63 = add nsw i64 1, %62
  %64 = call i32 @ChapOutput(%struct.TYPE_16__* %49, i32 %50, i32 %53, i64* %57, i64 %63, i32* null)
  br label %87

65:                                               ; preds = %37
  %66 = load %struct.authinfo*, %struct.authinfo** %2, align 8
  %67 = getelementptr inbounds %struct.authinfo, %struct.authinfo* %66, i32 0, i32 1
  %68 = load %struct.TYPE_16__*, %struct.TYPE_16__** %67, align 8
  %69 = load i32, i32* @CHAP_CHALLENGE, align 4
  %70 = load %struct.authinfo*, %struct.authinfo** %2, align 8
  %71 = getelementptr inbounds %struct.authinfo, %struct.authinfo* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.chap*, %struct.chap** %3, align 8
  %74 = getelementptr inbounds %struct.chap, %struct.chap* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %74, i32 0, i32 0
  %76 = load i64*, i64** %75, align 8
  %77 = load %struct.chap*, %struct.chap** %3, align 8
  %78 = getelementptr inbounds %struct.chap, %struct.chap* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %78, i32 0, i32 0
  %80 = load i64*, i64** %79, align 8
  %81 = load i64, i64* %80, align 8
  %82 = add nsw i64 1, %81
  %83 = load i32, i32* %4, align 4
  %84 = sext i32 %83 to i64
  %85 = add nsw i64 %82, %84
  %86 = call i32 @ChapOutput(%struct.TYPE_16__* %68, i32 %69, i32 %72, i64* %76, i64 %85, i32* null)
  br label %87

87:                                               ; preds = %65, %46
  ret void
}

declare dso_local %struct.chap* @auth2chap(%struct.authinfo*) #1

declare dso_local i32 @log_Printf(i32, i8*, i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @chap_ChallengeInit(%struct.authinfo*) #1

declare dso_local i32 @ChapOutput(%struct.TYPE_16__*, i32, i32, i64*, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
