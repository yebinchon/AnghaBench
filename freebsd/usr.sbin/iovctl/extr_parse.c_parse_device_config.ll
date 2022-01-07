; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/iovctl/extr_parse.c_parse_device_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/iovctl/extr_parse.c_parse_device_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [44 x i8] c"Multiple definitions of '%s' in config file\00", align 1
@DRIVER_CONFIG_NAME = common dso_local global i8* null, align 8
@IOV_CONFIG_NAME = common dso_local global i8* null, align 8
@NV_FLAG_IGNORE_CASE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Could not allocate config nvlist\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"%s: Invalid config key '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i8*, i32*)* @parse_device_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_device_config(i32* %0, i32* %1, i8* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32* %3, i32** %8, align 8
  %17 = load i32*, i32** %6, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = call i64 @nvlist_exists(i32* %17, i8* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %4
  %22 = load i8*, i8** %7, align 8
  %23 = call i32 (i32, i8*, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i8* %22)
  br label %24

24:                                               ; preds = %21, %4
  %25 = load i32*, i32** %8, align 8
  %26 = load i8*, i8** @DRIVER_CONFIG_NAME, align 8
  %27 = call i32* @nvlist_get_nvlist(i32* %25, i8* %26)
  store i32* %27, i32** %14, align 8
  %28 = load i32*, i32** %8, align 8
  %29 = load i8*, i8** @IOV_CONFIG_NAME, align 8
  %30 = call i32* @nvlist_get_nvlist(i32* %28, i8* %29)
  store i32* %30, i32** %15, align 8
  %31 = load i32, i32* @NV_FLAG_IGNORE_CASE, align 4
  %32 = call i32* @nvlist_create(i32 %31)
  store i32* %32, i32** %12, align 8
  %33 = load i32*, i32** %12, align 8
  %34 = icmp eq i32* %33, null
  br i1 %34, label %35, label %37

35:                                               ; preds = %24
  %36 = call i32 @err(i32 1, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %37

37:                                               ; preds = %35, %24
  %38 = load i32, i32* @NV_FLAG_IGNORE_CASE, align 4
  %39 = call i32* @nvlist_create(i32 %38)
  store i32* %39, i32** %13, align 8
  %40 = load i32*, i32** %13, align 8
  %41 = icmp eq i32* %40, null
  br i1 %41, label %42, label %44

42:                                               ; preds = %37
  %43 = call i32 @err(i32 1, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %44

44:                                               ; preds = %42, %37
  %45 = load i32, i32* @NV_FLAG_IGNORE_CASE, align 4
  %46 = call i32* @nvlist_create(i32 %45)
  store i32* %46, i32** %11, align 8
  %47 = load i32*, i32** %11, align 8
  %48 = icmp eq i32* %47, null
  br i1 %48, label %49, label %51

49:                                               ; preds = %44
  %50 = call i32 @err(i32 1, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %51

51:                                               ; preds = %49, %44
  store i32* null, i32** %9, align 8
  br label %52

52:                                               ; preds = %89, %51
  %53 = load i32*, i32** %5, align 8
  %54 = call i32* @ucl_iterate_object(i32* %53, i32** %9, i32 1)
  store i32* %54, i32** %10, align 8
  %55 = icmp ne i32* %54, null
  br i1 %55, label %56, label %90

56:                                               ; preds = %52
  %57 = load i32*, i32** %10, align 8
  %58 = call i8* @ucl_object_key(i32* %57)
  store i8* %58, i8** %16, align 8
  %59 = load i32*, i32** %15, align 8
  %60 = load i8*, i8** %16, align 8
  %61 = call i64 @nvlist_exists_nvlist(i32* %59, i8* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %71

63:                                               ; preds = %56
  %64 = load i8*, i8** %16, align 8
  %65 = load i32*, i32** %10, align 8
  %66 = load i32*, i32** %13, align 8
  %67 = load i32*, i32** %15, align 8
  %68 = load i8*, i8** %16, align 8
  %69 = call i32* @nvlist_get_nvlist(i32* %67, i8* %68)
  %70 = call i32 @add_config(i8* %64, i32* %65, i32* %66, i32* %69)
  br label %89

71:                                               ; preds = %56
  %72 = load i32*, i32** %14, align 8
  %73 = load i8*, i8** %16, align 8
  %74 = call i64 @nvlist_exists_nvlist(i32* %72, i8* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %84

76:                                               ; preds = %71
  %77 = load i8*, i8** %16, align 8
  %78 = load i32*, i32** %10, align 8
  %79 = load i32*, i32** %12, align 8
  %80 = load i32*, i32** %14, align 8
  %81 = load i8*, i8** %16, align 8
  %82 = call i32* @nvlist_get_nvlist(i32* %80, i8* %81)
  %83 = call i32 @add_config(i8* %77, i32* %78, i32* %79, i32* %82)
  br label %88

84:                                               ; preds = %71
  %85 = load i8*, i8** %7, align 8
  %86 = load i8*, i8** %16, align 8
  %87 = call i32 (i32, i8*, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i8* %85, i8* %86)
  br label %88

88:                                               ; preds = %84, %76
  br label %89

89:                                               ; preds = %88, %63
  br label %52

90:                                               ; preds = %52
  %91 = load i32*, i32** %11, align 8
  %92 = load i8*, i8** @DRIVER_CONFIG_NAME, align 8
  %93 = load i32*, i32** %12, align 8
  %94 = call i32 @nvlist_move_nvlist(i32* %91, i8* %92, i32* %93)
  %95 = load i32*, i32** %11, align 8
  %96 = load i8*, i8** @IOV_CONFIG_NAME, align 8
  %97 = load i32*, i32** %13, align 8
  %98 = call i32 @nvlist_move_nvlist(i32* %95, i8* %96, i32* %97)
  %99 = load i32*, i32** %6, align 8
  %100 = load i8*, i8** %7, align 8
  %101 = load i32*, i32** %11, align 8
  %102 = call i32 @nvlist_move_nvlist(i32* %99, i8* %100, i32* %101)
  ret void
}

declare dso_local i64 @nvlist_exists(i32*, i8*) #1

declare dso_local i32 @errx(i32, i8*, i8*, ...) #1

declare dso_local i32* @nvlist_get_nvlist(i32*, i8*) #1

declare dso_local i32* @nvlist_create(i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32* @ucl_iterate_object(i32*, i32**, i32) #1

declare dso_local i8* @ucl_object_key(i32*) #1

declare dso_local i64 @nvlist_exists_nvlist(i32*, i8*) #1

declare dso_local i32 @add_config(i8*, i32*, i32*, i32*) #1

declare dso_local i32 @nvlist_move_nvlist(i32*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
