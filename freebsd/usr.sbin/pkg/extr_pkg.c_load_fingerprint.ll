; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/pkg/extr_pkg.c_load_fingerprint.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/pkg/extr_pkg.c_load_fingerprint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fingerprint = type { i32 }
%struct.TYPE_5__ = type { i64 }
%struct.ucl_parser = type { i32 }

@MAXPATHLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@UCL_OBJECT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.fingerprint* (i8*, i8*)* @load_fingerprint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.fingerprint* @load_fingerprint(i8* %0, i8* %1) #0 {
  %3 = alloca %struct.fingerprint*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca %struct.ucl_parser*, align 8
  %8 = alloca %struct.fingerprint*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %6, align 8
  store %struct.ucl_parser* null, %struct.ucl_parser** %7, align 8
  %12 = load i32, i32* @MAXPATHLEN, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %9, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %10, align 8
  store %struct.fingerprint* null, %struct.fingerprint** %8, align 8
  %16 = load i32, i32* @MAXPATHLEN, align 4
  %17 = load i8*, i8** %4, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = call i32 @snprintf(i8* %15, i32 %16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %17, i8* %18)
  %20 = call %struct.ucl_parser* @ucl_parser_new(i32 0)
  store %struct.ucl_parser* %20, %struct.ucl_parser** %7, align 8
  %21 = load %struct.ucl_parser*, %struct.ucl_parser** %7, align 8
  %22 = call i32 @ucl_parser_add_file(%struct.ucl_parser* %21, i8* %15)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %30, label %24

24:                                               ; preds = %2
  %25 = load %struct.ucl_parser*, %struct.ucl_parser** %7, align 8
  %26 = call i32 @ucl_parser_get_error(%struct.ucl_parser* %25)
  %27 = call i32 @warnx(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %15, i32 %26)
  %28 = load %struct.ucl_parser*, %struct.ucl_parser** %7, align 8
  %29 = call i32 @ucl_parser_free(%struct.ucl_parser* %28)
  store %struct.fingerprint* null, %struct.fingerprint** %3, align 8
  store i32 1, i32* %11, align 4
  br label %55

30:                                               ; preds = %2
  %31 = load %struct.ucl_parser*, %struct.ucl_parser** %7, align 8
  %32 = call %struct.TYPE_5__* @ucl_parser_get_object(%struct.ucl_parser* %31)
  store %struct.TYPE_5__* %32, %struct.TYPE_5__** %6, align 8
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @UCL_OBJECT, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %30
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %40 = call %struct.fingerprint* @parse_fingerprint(%struct.TYPE_5__* %39)
  store %struct.fingerprint* %40, %struct.fingerprint** %8, align 8
  br label %41

41:                                               ; preds = %38, %30
  %42 = load %struct.fingerprint*, %struct.fingerprint** %8, align 8
  %43 = icmp ne %struct.fingerprint* %42, null
  br i1 %43, label %44, label %49

44:                                               ; preds = %41
  %45 = load i8*, i8** %5, align 8
  %46 = call i32 @strdup(i8* %45)
  %47 = load %struct.fingerprint*, %struct.fingerprint** %8, align 8
  %48 = getelementptr inbounds %struct.fingerprint, %struct.fingerprint* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 4
  br label %49

49:                                               ; preds = %44, %41
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %51 = call i32 @ucl_object_unref(%struct.TYPE_5__* %50)
  %52 = load %struct.ucl_parser*, %struct.ucl_parser** %7, align 8
  %53 = call i32 @ucl_parser_free(%struct.ucl_parser* %52)
  %54 = load %struct.fingerprint*, %struct.fingerprint** %8, align 8
  store %struct.fingerprint* %54, %struct.fingerprint** %3, align 8
  store i32 1, i32* %11, align 4
  br label %55

55:                                               ; preds = %49, %24
  %56 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %56)
  %57 = load %struct.fingerprint*, %struct.fingerprint** %3, align 8
  ret %struct.fingerprint* %57
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #2

declare dso_local %struct.ucl_parser* @ucl_parser_new(i32) #2

declare dso_local i32 @ucl_parser_add_file(%struct.ucl_parser*, i8*) #2

declare dso_local i32 @warnx(i8*, i8*, i32) #2

declare dso_local i32 @ucl_parser_get_error(%struct.ucl_parser*) #2

declare dso_local i32 @ucl_parser_free(%struct.ucl_parser*) #2

declare dso_local %struct.TYPE_5__* @ucl_parser_get_object(%struct.ucl_parser*) #2

declare dso_local %struct.fingerprint* @parse_fingerprint(%struct.TYPE_5__*) #2

declare dso_local i32 @strdup(i8*) #2

declare dso_local i32 @ucl_object_unref(%struct.TYPE_5__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
