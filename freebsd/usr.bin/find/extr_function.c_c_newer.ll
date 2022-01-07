; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/find/extr_function.c_c_newer.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/find/extr_function.c_c_newer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.stat = type { %struct.TYPE_9__, %struct.TYPE_9__, %struct.TYPE_9__, %struct.TYPE_9__ }

@FTS_NOSTAT = common dso_local global i32 0, align 4
@ftsoptions = common dso_local global i32 0, align 4
@F_TIME2_T = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Can't parse date/time: %s\00", align 1
@FTS_PHYSICAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@F_TIME2_C = common dso_local global i32 0, align 4
@F_TIME2_A = common dso_local global i32 0, align 4
@F_TIME2_B = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_10__* @c_newer(%struct.TYPE_11__* %0, i8*** %1) #0 {
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca i8***, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca %struct.stat, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  store i8*** %1, i8**** %4, align 8
  %9 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %10 = load i8***, i8**** %4, align 8
  %11 = call i8* @nextarg(%struct.TYPE_11__* %9, i8*** %10)
  store i8* %11, i8** %5, align 8
  %12 = load i32, i32* @FTS_NOSTAT, align 4
  %13 = xor i32 %12, -1
  %14 = load i32, i32* @ftsoptions, align 4
  %15 = and i32 %14, %13
  store i32 %15, i32* @ftsoptions, align 4
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %17 = call %struct.TYPE_10__* @palloc(%struct.TYPE_11__* %16)
  store %struct.TYPE_10__* %17, %struct.TYPE_10__** %6, align 8
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @F_TIME2_T, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %42

24:                                               ; preds = %2
  %25 = load i8*, i8** %5, align 8
  %26 = call i64 @get_date(i8* %25)
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  store i64 %26, i64* %29, align 8
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %33, -1
  br i1 %34, label %35, label %38

35:                                               ; preds = %24
  %36 = load i8*, i8** %5, align 8
  %37 = call i32 @errx(i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* %36)
  br label %38

38:                                               ; preds = %35, %24
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 1
  store i32 999999999, i32* %41, align 8
  br label %93

42:                                               ; preds = %2
  %43 = load i32, i32* @ftsoptions, align 4
  %44 = load i32, i32* @FTS_PHYSICAL, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %42
  %48 = load i8*, i8** %5, align 8
  %49 = call i32 @lstat(i8* %48, %struct.stat* %7)
  store i32 %49, i32* %8, align 4
  br label %53

50:                                               ; preds = %42
  %51 = load i8*, i8** %5, align 8
  %52 = call i32 @stat(i8* %51, %struct.stat* %7)
  store i32 %52, i32* %8, align 4
  br label %53

53:                                               ; preds = %50, %47
  %54 = load i32, i32* %8, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %53
  %57 = load i8*, i8** %5, align 8
  %58 = call i32 @err(i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %57)
  br label %59

59:                                               ; preds = %56, %53
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @F_TIME2_C, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %59
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 3
  %70 = bitcast %struct.TYPE_9__* %68 to i8*
  %71 = bitcast %struct.TYPE_9__* %69 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %70, i8* align 8 %71, i64 16, i1 false)
  br label %92

72:                                               ; preds = %59
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @F_TIME2_A, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %72
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 2
  %83 = bitcast %struct.TYPE_9__* %81 to i8*
  %84 = bitcast %struct.TYPE_9__* %82 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %83, i8* align 8 %84, i64 16, i1 false)
  br label %91

85:                                               ; preds = %72
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 0
  %89 = bitcast %struct.TYPE_9__* %87 to i8*
  %90 = bitcast %struct.TYPE_9__* %88 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %89, i8* align 8 %90, i64 16, i1 false)
  br label %91

91:                                               ; preds = %85, %79
  br label %92

92:                                               ; preds = %91, %66
  br label %93

93:                                               ; preds = %92, %38
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  ret %struct.TYPE_10__* %94
}

declare dso_local i8* @nextarg(%struct.TYPE_11__*, i8***) #1

declare dso_local %struct.TYPE_10__* @palloc(%struct.TYPE_11__*) #1

declare dso_local i64 @get_date(i8*) #1

declare dso_local i32 @errx(i32, i8*, i8*) #1

declare dso_local i32 @lstat(i8*, %struct.stat*) #1

declare dso_local i32 @stat(i8*, %struct.stat*) #1

declare dso_local i32 @err(i32, i8*, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
