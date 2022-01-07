; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/pkg/extr_config.c_read_conf_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/pkg/extr_config.c_read_conf_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucl_parser = type { i32 }
%struct.TYPE_6__ = type { i64 }

@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Unable to parse configuration file %s: %s\00", align 1
@UCL_OBJECT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [65 x i8] c"Invalid configuration format, ignoring the configuration file %s\00", align 1
@CONFFILE_PKG = common dso_local global i32 0, align 4
@CONFFILE_REPO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @read_conf_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_conf_file(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ucl_parser*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %7, align 8
  %8 = call %struct.ucl_parser* @ucl_parser_new(i32 0)
  store %struct.ucl_parser* %8, %struct.ucl_parser** %6, align 8
  %9 = load %struct.ucl_parser*, %struct.ucl_parser** %6, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = call i32 @ucl_parser_add_file(%struct.ucl_parser* %9, i8* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %26, label %13

13:                                               ; preds = %2
  %14 = load i64, i64* @errno, align 8
  %15 = load i64, i64* @ENOENT, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %23

17:                                               ; preds = %13
  %18 = load i32, i32* @EXIT_FAILURE, align 4
  %19 = load i8*, i8** %4, align 8
  %20 = load %struct.ucl_parser*, %struct.ucl_parser** %6, align 8
  %21 = call i32 @ucl_parser_get_error(%struct.ucl_parser* %20)
  %22 = call i32 @errx(i32 %18, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i8* %19, i32 %21)
  br label %23

23:                                               ; preds = %17, %13
  %24 = load %struct.ucl_parser*, %struct.ucl_parser** %6, align 8
  %25 = call i32 @ucl_parser_free(%struct.ucl_parser* %24)
  store i32 1, i32* %3, align 4
  br label %59

26:                                               ; preds = %2
  %27 = load %struct.ucl_parser*, %struct.ucl_parser** %6, align 8
  %28 = call %struct.TYPE_6__* @ucl_parser_get_object(%struct.ucl_parser* %27)
  store %struct.TYPE_6__* %28, %struct.TYPE_6__** %7, align 8
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @UCL_OBJECT, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %26
  %35 = load i8*, i8** %4, align 8
  %36 = call i32 @warnx(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.1, i64 0, i64 0), i8* %35)
  br label %54

37:                                               ; preds = %26
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @CONFFILE_PKG, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %37
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @config_parse(%struct.TYPE_6__* %42, i32 %43)
  br label %53

45:                                               ; preds = %37
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* @CONFFILE_REPO, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %45
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %51 = call i32 @parse_repo_file(%struct.TYPE_6__* %50)
  br label %52

52:                                               ; preds = %49, %45
  br label %53

53:                                               ; preds = %52, %41
  br label %54

54:                                               ; preds = %53, %34
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %56 = call i32 @ucl_object_unref(%struct.TYPE_6__* %55)
  %57 = load %struct.ucl_parser*, %struct.ucl_parser** %6, align 8
  %58 = call i32 @ucl_parser_free(%struct.ucl_parser* %57)
  store i32 0, i32* %3, align 4
  br label %59

59:                                               ; preds = %54, %23
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local %struct.ucl_parser* @ucl_parser_new(i32) #1

declare dso_local i32 @ucl_parser_add_file(%struct.ucl_parser*, i8*) #1

declare dso_local i32 @errx(i32, i8*, i8*, i32) #1

declare dso_local i32 @ucl_parser_get_error(%struct.ucl_parser*) #1

declare dso_local i32 @ucl_parser_free(%struct.ucl_parser*) #1

declare dso_local %struct.TYPE_6__* @ucl_parser_get_object(%struct.ucl_parser*) #1

declare dso_local i32 @warnx(i8*, i8*) #1

declare dso_local i32 @config_parse(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @parse_repo_file(%struct.TYPE_6__*) #1

declare dso_local i32 @ucl_object_unref(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
