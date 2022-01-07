; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_chap.c_chap_ChallengeInit.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_chap.c_chap_ChallengeInit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.authinfo = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_20__*, %struct.TYPE_15__ }
%struct.TYPE_20__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { %struct.TYPE_18__, %struct.TYPE_13__ }
%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i64* }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32 }
%struct.chap = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i8* }

@CHAPCHALLENGELEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.authinfo*)* @chap_ChallengeInit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @chap_ChallengeInit(%struct.authinfo* %0) #0 {
  %2 = alloca %struct.authinfo*, align 8
  %3 = alloca %struct.chap*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store %struct.authinfo* %0, %struct.authinfo** %2, align 8
  %7 = load %struct.authinfo*, %struct.authinfo** %2, align 8
  %8 = call %struct.chap* @auth2chap(%struct.authinfo* %7)
  store %struct.chap* %8, %struct.chap** %3, align 8
  %9 = load %struct.authinfo*, %struct.authinfo** %2, align 8
  %10 = getelementptr inbounds %struct.authinfo, %struct.authinfo* %9, i32 0, i32 0
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @strlen(i32 %19)
  store i32 %20, i32* %4, align 4
  %21 = load %struct.chap*, %struct.chap** %3, align 8
  %22 = getelementptr inbounds %struct.chap, %struct.chap* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = load i8, i8* %24, align 1
  %26 = icmp ne i8 %25, 0
  br i1 %26, label %132, label %27

27:                                               ; preds = %1
  %28 = call i32 (...) @randinit()
  %29 = load %struct.chap*, %struct.chap** %3, align 8
  %30 = getelementptr inbounds %struct.chap, %struct.chap* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  store i8* %32, i8** %6, align 8
  %33 = load %struct.authinfo*, %struct.authinfo** %2, align 8
  %34 = getelementptr inbounds %struct.authinfo, %struct.authinfo* %33, i32 0, i32 0
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_20__*, %struct.TYPE_20__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_19__*, %struct.TYPE_19__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 0
  %43 = load i64*, i64** %42, align 8
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %63

46:                                               ; preds = %27
  %47 = load i8*, i8** %6, align 8
  %48 = getelementptr inbounds i8, i8* %47, i32 1
  store i8* %48, i8** %6, align 8
  store i8 16, i8* %47, align 1
  store i32 0, i32* %5, align 4
  br label %49

49:                                               ; preds = %59, %46
  %50 = load i32, i32* %5, align 4
  %51 = icmp slt i32 %50, 16
  br i1 %51, label %52, label %62

52:                                               ; preds = %49
  %53 = call i32 (...) @random()
  %54 = srem i32 %53, 10
  %55 = add nsw i32 %54, 48
  %56 = trunc i32 %55 to i8
  %57 = load i8*, i8** %6, align 8
  %58 = getelementptr inbounds i8, i8* %57, i32 1
  store i8* %58, i8** %6, align 8
  store i8 %56, i8* %57, align 1
  br label %59

59:                                               ; preds = %52
  %60 = load i32, i32* %5, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %5, align 4
  br label %49

62:                                               ; preds = %49
  br label %117

63:                                               ; preds = %27
  %64 = load %struct.authinfo*, %struct.authinfo** %2, align 8
  %65 = getelementptr inbounds %struct.authinfo, %struct.authinfo* %64, i32 0, i32 0
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = icmp eq i32 %70, 128
  br i1 %71, label %72, label %75

72:                                               ; preds = %63
  %73 = load i8*, i8** %6, align 8
  %74 = getelementptr inbounds i8, i8* %73, i32 1
  store i8* %74, i8** %6, align 8
  store i8 8, i8* %73, align 1
  br label %97

75:                                               ; preds = %63
  %76 = load %struct.authinfo*, %struct.authinfo** %2, align 8
  %77 = getelementptr inbounds %struct.authinfo, %struct.authinfo* %76, i32 0, i32 0
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = icmp eq i32 %82, 129
  br i1 %83, label %84, label %87

84:                                               ; preds = %75
  %85 = load i8*, i8** %6, align 8
  %86 = getelementptr inbounds i8, i8* %85, i32 1
  store i8* %86, i8** %6, align 8
  store i8 16, i8* %85, align 1
  br label %96

87:                                               ; preds = %75
  %88 = call i32 (...) @random()
  %89 = load i32, i32* @CHAPCHALLENGELEN, align 4
  %90 = sub nsw i32 %89, 16
  %91 = srem i32 %88, %90
  %92 = add nsw i32 %91, 16
  %93 = trunc i32 %92 to i8
  %94 = load i8*, i8** %6, align 8
  %95 = getelementptr inbounds i8, i8* %94, i32 1
  store i8* %95, i8** %6, align 8
  store i8 %93, i8* %94, align 1
  br label %96

96:                                               ; preds = %87, %84
  br label %97

97:                                               ; preds = %96, %72
  store i32 0, i32* %5, align 4
  br label %98

98:                                               ; preds = %113, %97
  %99 = load i32, i32* %5, align 4
  %100 = load %struct.chap*, %struct.chap** %3, align 8
  %101 = getelementptr inbounds %struct.chap, %struct.chap* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %101, i32 0, i32 0
  %103 = load i8*, i8** %102, align 8
  %104 = load i8, i8* %103, align 1
  %105 = sext i8 %104 to i32
  %106 = icmp slt i32 %99, %105
  br i1 %106, label %107, label %116

107:                                              ; preds = %98
  %108 = call i32 (...) @random()
  %109 = and i32 %108, 255
  %110 = trunc i32 %109 to i8
  %111 = load i8*, i8** %6, align 8
  %112 = getelementptr inbounds i8, i8* %111, i32 1
  store i8* %112, i8** %6, align 8
  store i8 %110, i8* %111, align 1
  br label %113

113:                                              ; preds = %107
  %114 = load i32, i32* %5, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %5, align 4
  br label %98

116:                                              ; preds = %98
  br label %117

117:                                              ; preds = %116, %62
  %118 = load i8*, i8** %6, align 8
  %119 = load %struct.authinfo*, %struct.authinfo** %2, align 8
  %120 = getelementptr inbounds %struct.authinfo, %struct.authinfo* %119, i32 0, i32 0
  %121 = load %struct.TYPE_11__*, %struct.TYPE_11__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %121, i32 0, i32 0
  %123 = load %struct.TYPE_20__*, %struct.TYPE_20__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %123, i32 0, i32 0
  %125 = load %struct.TYPE_19__*, %struct.TYPE_19__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = load i32, i32* %4, align 4
  %131 = call i32 @memcpy(i8* %118, i32 %129, i32 %130)
  br label %132

132:                                              ; preds = %117, %1
  ret void
}

declare dso_local %struct.chap* @auth2chap(%struct.authinfo*) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @randinit(...) #1

declare dso_local i32 @random(...) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
