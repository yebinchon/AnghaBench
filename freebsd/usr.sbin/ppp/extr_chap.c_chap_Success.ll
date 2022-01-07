; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_chap.c_chap_Success.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_chap.c_chap_Success.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.authinfo = type { %struct.TYPE_16__*, %struct.TYPE_13__, i32 }
%struct.TYPE_16__ = type { %struct.TYPE_17__*, %struct.TYPE_15__ }
%struct.TYPE_17__ = type { %struct.bundle* }
%struct.bundle = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i8*, i8*, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64* }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32, i64, i64 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_18__ = type { i8* }

@MPPE_MasterKeyValid = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"Welcome!!\00", align 1
@CHAP_SUCCESS = common dso_local global i32 0, align 4
@OPT_UTMP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.authinfo*)* @chap_Success to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @chap_Success(%struct.authinfo* %0) #0 {
  %2 = alloca %struct.authinfo*, align 8
  %3 = alloca %struct.bundle*, align 8
  %4 = alloca i8*, align 8
  store %struct.authinfo* %0, %struct.authinfo** %2, align 8
  %5 = load %struct.authinfo*, %struct.authinfo** %2, align 8
  %6 = getelementptr inbounds %struct.authinfo, %struct.authinfo* %5, i32 0, i32 0
  %7 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %9, i32 0, i32 0
  %11 = load %struct.bundle*, %struct.bundle** %10, align 8
  store %struct.bundle* %11, %struct.bundle** %3, align 8
  %12 = load %struct.authinfo*, %struct.authinfo** %2, align 8
  %13 = getelementptr inbounds %struct.authinfo, %struct.authinfo* %12, i32 0, i32 0
  %14 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %17 = load %struct.authinfo*, %struct.authinfo** %2, align 8
  %18 = getelementptr inbounds %struct.authinfo, %struct.authinfo* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @datalink_GotAuthname(%struct.TYPE_17__* %16, i32 %20)
  %22 = load %struct.authinfo*, %struct.authinfo** %2, align 8
  %23 = getelementptr inbounds %struct.authinfo, %struct.authinfo* %22, i32 0, i32 0
  %24 = load %struct.TYPE_16__*, %struct.TYPE_16__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp eq i32 %28, 129
  br i1 %29, label %30, label %55

30:                                               ; preds = %1
  %31 = load %struct.bundle*, %struct.bundle** %3, align 8
  %32 = getelementptr inbounds %struct.bundle, %struct.bundle* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 0
  %35 = load i64*, i64** %34, align 8
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %49

38:                                               ; preds = %30
  %39 = load %struct.bundle*, %struct.bundle** %3, align 8
  %40 = getelementptr inbounds %struct.bundle, %struct.bundle* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %44, label %49

44:                                               ; preds = %38
  %45 = load %struct.bundle*, %struct.bundle** %3, align 8
  %46 = getelementptr inbounds %struct.bundle, %struct.bundle* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  store i8* %48, i8** %4, align 8
  br label %54

49:                                               ; preds = %38, %30
  %50 = load %struct.authinfo*, %struct.authinfo** %2, align 8
  %51 = call %struct.TYPE_18__* @auth2chap(%struct.authinfo* %50)
  %52 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %51, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  store i8* %53, i8** %4, align 8
  br label %54

54:                                               ; preds = %49, %44
  store i32 1, i32* @MPPE_MasterKeyValid, align 4
  br label %76

55:                                               ; preds = %1
  %56 = load %struct.bundle*, %struct.bundle** %3, align 8
  %57 = getelementptr inbounds %struct.bundle, %struct.bundle* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 0
  %60 = load i64*, i64** %59, align 8
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %74

63:                                               ; preds = %55
  %64 = load %struct.bundle*, %struct.bundle** %3, align 8
  %65 = getelementptr inbounds %struct.bundle, %struct.bundle* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 1
  %67 = load i8*, i8** %66, align 8
  %68 = icmp ne i8* %67, null
  br i1 %68, label %69, label %74

69:                                               ; preds = %63
  %70 = load %struct.bundle*, %struct.bundle** %3, align 8
  %71 = getelementptr inbounds %struct.bundle, %struct.bundle* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 1
  %73 = load i8*, i8** %72, align 8
  store i8* %73, i8** %4, align 8
  br label %75

74:                                               ; preds = %63, %55
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  br label %75

75:                                               ; preds = %74, %69
  br label %76

76:                                               ; preds = %75, %54
  %77 = load %struct.authinfo*, %struct.authinfo** %2, align 8
  %78 = getelementptr inbounds %struct.authinfo, %struct.authinfo* %77, i32 0, i32 0
  %79 = load %struct.TYPE_16__*, %struct.TYPE_16__** %78, align 8
  %80 = load i32, i32* @CHAP_SUCCESS, align 4
  %81 = load %struct.authinfo*, %struct.authinfo** %2, align 8
  %82 = getelementptr inbounds %struct.authinfo, %struct.authinfo* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = load i8*, i8** %4, align 8
  %85 = load i8*, i8** %4, align 8
  %86 = call i32 @strlen(i8* %85)
  %87 = call i32 @ChapOutput(%struct.TYPE_16__* %79, i32 %80, i32 %83, i8* %84, i32 %86, i32* null)
  %88 = load %struct.authinfo*, %struct.authinfo** %2, align 8
  %89 = getelementptr inbounds %struct.authinfo, %struct.authinfo* %88, i32 0, i32 0
  %90 = load %struct.TYPE_16__*, %struct.TYPE_16__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %92, i32 0, i32 2
  store i64 0, i64* %93, align 8
  %94 = load %struct.bundle*, %struct.bundle** %3, align 8
  %95 = load i32, i32* @OPT_UTMP, align 4
  %96 = call i64 @Enabled(%struct.bundle* %94, i32 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %107

98:                                               ; preds = %76
  %99 = load %struct.authinfo*, %struct.authinfo** %2, align 8
  %100 = getelementptr inbounds %struct.authinfo, %struct.authinfo* %99, i32 0, i32 0
  %101 = load %struct.TYPE_16__*, %struct.TYPE_16__** %100, align 8
  %102 = load %struct.authinfo*, %struct.authinfo** %2, align 8
  %103 = getelementptr inbounds %struct.authinfo, %struct.authinfo* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @physical_Login(%struct.TYPE_16__* %101, i32 %105)
  br label %107

107:                                              ; preds = %98, %76
  %108 = load %struct.authinfo*, %struct.authinfo** %2, align 8
  %109 = getelementptr inbounds %struct.authinfo, %struct.authinfo* %108, i32 0, i32 0
  %110 = load %struct.TYPE_16__*, %struct.TYPE_16__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = icmp eq i64 %114, 0
  br i1 %115, label %116, label %123

116:                                              ; preds = %107
  %117 = load %struct.authinfo*, %struct.authinfo** %2, align 8
  %118 = getelementptr inbounds %struct.authinfo, %struct.authinfo* %117, i32 0, i32 0
  %119 = load %struct.TYPE_16__*, %struct.TYPE_16__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %119, i32 0, i32 0
  %121 = load %struct.TYPE_17__*, %struct.TYPE_17__** %120, align 8
  %122 = call i32 @datalink_AuthOk(%struct.TYPE_17__* %121)
  br label %123

123:                                              ; preds = %116, %107
  ret void
}

declare dso_local i32 @datalink_GotAuthname(%struct.TYPE_17__*, i32) #1

declare dso_local %struct.TYPE_18__* @auth2chap(%struct.authinfo*) #1

declare dso_local i32 @ChapOutput(%struct.TYPE_16__*, i32, i32, i8*, i32, i32*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @Enabled(%struct.bundle*, i32) #1

declare dso_local i32 @physical_Login(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @datalink_AuthOk(%struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
