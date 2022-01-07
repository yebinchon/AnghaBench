; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/touch/extr_touch.c_stime_darg.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/touch/extr_touch.c_stime_darg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i32, i64 }
%struct.tm = type { i32, i32 }

@.str = private unnamed_addr constant [18 x i8] c"%Y-%m-%dT%H:%M:%S\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"%Y-%m-%d %H:%M:%S\00", align 1
@.str.2 = private unnamed_addr constant [75 x i8] c"out of range or illegal time specification: YYYY-MM-DDThh:mm:SS[.frac][tz]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.timespec*)* @stime_darg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stime_darg(i8* %0, %struct.timespec* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.timespec*, align 8
  %5 = alloca %struct.tm, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store %struct.timespec* %1, %struct.timespec** %4, align 8
  %11 = bitcast %struct.tm* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %11, i8 0, i64 8, i1 false)
  store i32 0, i32* %10, align 4
  %12 = load %struct.timespec*, %struct.timespec** %4, align 8
  %13 = getelementptr inbounds %struct.timespec, %struct.timespec* %12, i64 0
  %14 = getelementptr inbounds %struct.timespec, %struct.timespec* %13, i32 0, i32 1
  store i64 0, i64* %14, align 8
  %15 = getelementptr inbounds %struct.tm, %struct.tm* %5, i32 0, i32 0
  store i32 -1, i32* %15, align 4
  %16 = load i8*, i8** %3, align 8
  %17 = call i8* @strchr(i8* %16, i8 signext 58)
  store i8* %17, i8** %7, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = icmp eq i8* %18, null
  br i1 %19, label %25, label %20

20:                                               ; preds = %2
  %21 = load i8*, i8** %7, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 1
  %23 = call i8* @strchr(i8* %22, i8 signext 58)
  %24 = icmp eq i8* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %20, %2
  br label %112

26:                                               ; preds = %20
  %27 = load i8*, i8** %3, align 8
  %28 = call i8* @strchr(i8* %27, i8 signext 84)
  %29 = icmp ne i8* %28, null
  %30 = zext i1 %29 to i64
  %31 = select i1 %29, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0)
  store i8* %31, i8** %6, align 8
  %32 = load i8*, i8** %3, align 8
  %33 = load i8*, i8** %6, align 8
  %34 = call i8* @strptime(i8* %32, i8* %33, %struct.tm* %5)
  store i8* %34, i8** %8, align 8
  %35 = load i8*, i8** %8, align 8
  %36 = icmp eq i8* %35, null
  br i1 %36, label %37, label %38

37:                                               ; preds = %26
  br label %112

38:                                               ; preds = %26
  %39 = load i8*, i8** %8, align 8
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp eq i32 %41, 46
  br i1 %42, label %48, label %43

43:                                               ; preds = %38
  %44 = load i8*, i8** %8, align 8
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp eq i32 %46, 44
  br i1 %47, label %48, label %80

48:                                               ; preds = %43, %38
  %49 = load i8*, i8** %8, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 1
  %51 = load i8, i8* %50, align 1
  %52 = call i64 @isdigit(i8 zeroext %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %80

54:                                               ; preds = %48
  %55 = load i8*, i8** %8, align 8
  %56 = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %56, i8** %8, align 8
  store i32 100000000, i32* %9, align 4
  br label %57

57:                                               ; preds = %62, %54
  %58 = load i8*, i8** %8, align 8
  %59 = load i8, i8* %58, align 1
  %60 = call i64 @isdigit(i8 zeroext %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %79

62:                                               ; preds = %57
  %63 = load i32, i32* %9, align 4
  %64 = load i8*, i8** %8, align 8
  %65 = load i8, i8* %64, align 1
  %66 = sext i8 %65 to i32
  %67 = sub nsw i32 %66, 48
  %68 = mul nsw i32 %63, %67
  %69 = sext i32 %68 to i64
  %70 = load %struct.timespec*, %struct.timespec** %4, align 8
  %71 = getelementptr inbounds %struct.timespec, %struct.timespec* %70, i64 0
  %72 = getelementptr inbounds %struct.timespec, %struct.timespec* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = add nsw i64 %73, %69
  store i64 %74, i64* %72, align 8
  %75 = load i8*, i8** %8, align 8
  %76 = getelementptr inbounds i8, i8* %75, i32 1
  store i8* %76, i8** %8, align 8
  %77 = load i32, i32* %9, align 4
  %78 = sdiv i32 %77, 10
  store i32 %78, i32* %9, align 4
  br label %57

79:                                               ; preds = %57
  br label %80

80:                                               ; preds = %79, %48, %43
  %81 = load i8*, i8** %8, align 8
  %82 = load i8, i8* %81, align 1
  %83 = sext i8 %82 to i32
  %84 = icmp eq i32 %83, 90
  br i1 %84, label %85, label %88

85:                                               ; preds = %80
  store i32 1, i32* %10, align 4
  %86 = load i8*, i8** %8, align 8
  %87 = getelementptr inbounds i8, i8* %86, i32 1
  store i8* %87, i8** %8, align 8
  br label %88

88:                                               ; preds = %85, %80
  %89 = load i8*, i8** %8, align 8
  %90 = load i8, i8* %89, align 1
  %91 = sext i8 %90 to i32
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %88
  br label %112

94:                                               ; preds = %88
  %95 = load i32, i32* %10, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %94
  %98 = call i32 @timegm(%struct.tm* %5)
  br label %101

99:                                               ; preds = %94
  %100 = call i32 @mktime(%struct.tm* %5)
  br label %101

101:                                              ; preds = %99, %97
  %102 = phi i32 [ %98, %97 ], [ %100, %99 ]
  %103 = load %struct.timespec*, %struct.timespec** %4, align 8
  %104 = getelementptr inbounds %struct.timespec, %struct.timespec* %103, i64 0
  %105 = getelementptr inbounds %struct.timespec, %struct.timespec* %104, i32 0, i32 0
  store i32 %102, i32* %105, align 8
  %106 = load %struct.timespec*, %struct.timespec** %4, align 8
  %107 = getelementptr inbounds %struct.timespec, %struct.timespec* %106, i64 1
  %108 = load %struct.timespec*, %struct.timespec** %4, align 8
  %109 = getelementptr inbounds %struct.timespec, %struct.timespec* %108, i64 0
  %110 = bitcast %struct.timespec* %107 to i8*
  %111 = bitcast %struct.timespec* %109 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %110, i8* align 8 %111, i64 16, i1 false)
  br label %114

112:                                              ; preds = %93, %37, %25
  %113 = call i32 @errx(i32 1, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.2, i64 0, i64 0))
  br label %114

114:                                              ; preds = %112, %101
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i8* @strchr(i8*, i8 signext) #2

declare dso_local i8* @strptime(i8*, i8*, %struct.tm*) #2

declare dso_local i64 @isdigit(i8 zeroext) #2

declare dso_local i32 @timegm(%struct.tm*) #2

declare dso_local i32 @mktime(%struct.tm*) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @errx(i32, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
