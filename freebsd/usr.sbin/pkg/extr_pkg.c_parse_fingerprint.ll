; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/pkg/extr_pkg.c_parse_fingerprint.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/pkg/extr_pkg.c_parse_fingerprint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fingerprint = type { i32, i64 }
%struct.TYPE_7__ = type { i64 }

@HASH_UNKNOWN = common dso_local global i64 0, align 8
@UCL_STRING = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [9 x i8] c"function\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"fingerprint\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"sha256\00", align 1
@HASH_SHA256 = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [33 x i8] c"Unsupported hashing function: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.fingerprint* (%struct.TYPE_7__*)* @parse_fingerprint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.fingerprint* @parse_fingerprint(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.fingerprint*, align 8
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.fingerprint*, align 8
  %10 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store i32* null, i32** %5, align 8
  %11 = load i64, i64* @HASH_UNKNOWN, align 8
  store i64 %11, i64* %10, align 8
  store i8* null, i8** %7, align 8
  store i8* null, i8** %6, align 8
  br label %12

12:                                               ; preds = %39, %36, %29, %24, %1
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %14 = call %struct.TYPE_7__* @ucl_iterate_object(%struct.TYPE_7__* %13, i32** %5, i32 1)
  store %struct.TYPE_7__* %14, %struct.TYPE_7__** %4, align 8
  %15 = icmp ne %struct.TYPE_7__* %14, null
  br i1 %15, label %16, label %40

16:                                               ; preds = %12
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %18 = call i8* @ucl_object_key(%struct.TYPE_7__* %17)
  store i8* %18, i8** %8, align 8
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @UCL_STRING, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %16
  br label %12

25:                                               ; preds = %16
  %26 = load i8*, i8** %8, align 8
  %27 = call i64 @strcasecmp(i8* %26, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %25
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %31 = call i8* @ucl_object_tostring(%struct.TYPE_7__* %30)
  store i8* %31, i8** %6, align 8
  br label %12

32:                                               ; preds = %25
  %33 = load i8*, i8** %8, align 8
  %34 = call i64 @strcasecmp(i8* %33, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %32
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %38 = call i8* @ucl_object_tostring(%struct.TYPE_7__* %37)
  store i8* %38, i8** %7, align 8
  br label %12

39:                                               ; preds = %32
  br label %12

40:                                               ; preds = %12
  %41 = load i8*, i8** %7, align 8
  %42 = icmp eq i8* %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %40
  %44 = load i8*, i8** %6, align 8
  %45 = icmp eq i8* %44, null
  br i1 %45, label %46, label %47

46:                                               ; preds = %43, %40
  store %struct.fingerprint* null, %struct.fingerprint** %2, align 8
  br label %71

47:                                               ; preds = %43
  %48 = load i8*, i8** %6, align 8
  %49 = call i64 @strcasecmp(i8* %48, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %47
  %52 = load i64, i64* @HASH_SHA256, align 8
  store i64 %52, i64* %10, align 8
  br label %53

53:                                               ; preds = %51, %47
  %54 = load i64, i64* %10, align 8
  %55 = load i64, i64* @HASH_UNKNOWN, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %53
  %58 = load i8*, i8** %6, align 8
  %59 = call i32 @warnx(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i8* %58)
  store %struct.fingerprint* null, %struct.fingerprint** %2, align 8
  br label %71

60:                                               ; preds = %53
  %61 = call %struct.fingerprint* @calloc(i32 1, i32 16)
  store %struct.fingerprint* %61, %struct.fingerprint** %9, align 8
  %62 = load i64, i64* %10, align 8
  %63 = load %struct.fingerprint*, %struct.fingerprint** %9, align 8
  %64 = getelementptr inbounds %struct.fingerprint, %struct.fingerprint* %63, i32 0, i32 1
  store i64 %62, i64* %64, align 8
  %65 = load %struct.fingerprint*, %struct.fingerprint** %9, align 8
  %66 = getelementptr inbounds %struct.fingerprint, %struct.fingerprint* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i8*, i8** %7, align 8
  %69 = call i32 @strlcpy(i32 %67, i8* %68, i32 4)
  %70 = load %struct.fingerprint*, %struct.fingerprint** %9, align 8
  store %struct.fingerprint* %70, %struct.fingerprint** %2, align 8
  br label %71

71:                                               ; preds = %60, %57, %46
  %72 = load %struct.fingerprint*, %struct.fingerprint** %2, align 8
  ret %struct.fingerprint* %72
}

declare dso_local %struct.TYPE_7__* @ucl_iterate_object(%struct.TYPE_7__*, i32**, i32) #1

declare dso_local i8* @ucl_object_key(%struct.TYPE_7__*) #1

declare dso_local i64 @strcasecmp(i8*, i8*) #1

declare dso_local i8* @ucl_object_tostring(%struct.TYPE_7__*) #1

declare dso_local i32 @warnx(i8*, i8*) #1

declare dso_local %struct.fingerprint* @calloc(i32, i32) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
