; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/iovctl/extr_parse.c_find_device.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/iovctl/extr_parse.c_find_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucl_parser = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"Could not allocate parser\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Could not open '%s' for reading\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"Could not parse '%s': %s\00", align 1
@PF_CONFIG_NAME = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"Config file does not specify device\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"/dev/iov/%s\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"Could not allocate memory for device\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @find_device(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.ucl_parser*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store i8* null, i8** %3, align 8
  store i8* null, i8** %4, align 8
  %12 = call %struct.ucl_parser* @ucl_parser_new(i32 0)
  store %struct.ucl_parser* %12, %struct.ucl_parser** %6, align 8
  %13 = load %struct.ucl_parser*, %struct.ucl_parser** %6, align 8
  %14 = icmp eq %struct.ucl_parser* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %17

17:                                               ; preds = %15, %1
  %18 = load %struct.ucl_parser*, %struct.ucl_parser** %6, align 8
  %19 = load i8*, i8** %2, align 8
  %20 = call i32 @ucl_parser_add_file(%struct.ucl_parser* %18, i8* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %17
  %23 = load i8*, i8** %2, align 8
  %24 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i8* %23)
  br label %25

25:                                               ; preds = %22, %17
  %26 = load %struct.ucl_parser*, %struct.ucl_parser** %6, align 8
  %27 = call i8* @ucl_parser_get_error(%struct.ucl_parser* %26)
  store i8* %27, i8** %9, align 8
  %28 = load i8*, i8** %9, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %34

30:                                               ; preds = %25
  %31 = load i8*, i8** %2, align 8
  %32 = load i8*, i8** %9, align 8
  %33 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i8* %31, i8* %32)
  br label %34

34:                                               ; preds = %30, %25
  %35 = load %struct.ucl_parser*, %struct.ucl_parser** %6, align 8
  %36 = call i32* @ucl_parser_get_object(%struct.ucl_parser* %35)
  store i32* %36, i32** %7, align 8
  store i32* null, i32** %5, align 8
  br label %37

37:                                               ; preds = %51, %34
  %38 = load i32*, i32** %7, align 8
  %39 = call i32* @ucl_iterate_object(i32* %38, i32** %5, i32 1)
  store i32* %39, i32** %8, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %52

41:                                               ; preds = %37
  %42 = load i32*, i32** %8, align 8
  %43 = call i8* @ucl_object_key(i32* %42)
  store i8* %43, i8** %10, align 8
  %44 = load i8*, i8** %10, align 8
  %45 = load i32, i32* @PF_CONFIG_NAME, align 4
  %46 = call i64 @strcasecmp(i8* %44, i32 %45)
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %41
  %49 = load i32*, i32** %8, align 8
  %50 = call i8* @find_pf_device(i32* %49)
  store i8* %50, i8** %4, align 8
  br label %52

51:                                               ; preds = %41
  br label %37

52:                                               ; preds = %48, %37
  %53 = load i8*, i8** %4, align 8
  %54 = icmp eq i8* %53, null
  br i1 %54, label %55, label %57

55:                                               ; preds = %52
  %56 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  br label %57

57:                                               ; preds = %55, %52
  %58 = load i8*, i8** %4, align 8
  %59 = call i32 @asprintf(i8** %3, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i8* %58)
  store i32 %59, i32* %11, align 4
  %60 = load i32, i32* %11, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %57
  %63 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0))
  br label %64

64:                                               ; preds = %62, %57
  %65 = load i32*, i32** %7, align 8
  %66 = call i32 @ucl_object_unref(i32* %65)
  %67 = load %struct.ucl_parser*, %struct.ucl_parser** %6, align 8
  %68 = call i32 @ucl_parser_free(%struct.ucl_parser* %67)
  %69 = load i8*, i8** %3, align 8
  ret i8* %69
}

declare dso_local %struct.ucl_parser* @ucl_parser_new(i32) #1

declare dso_local i32 @err(i32, i8*, ...) #1

declare dso_local i32 @ucl_parser_add_file(%struct.ucl_parser*, i8*) #1

declare dso_local i8* @ucl_parser_get_error(%struct.ucl_parser*) #1

declare dso_local i32 @errx(i32, i8*, ...) #1

declare dso_local i32* @ucl_parser_get_object(%struct.ucl_parser*) #1

declare dso_local i32* @ucl_iterate_object(i32*, i32**, i32) #1

declare dso_local i8* @ucl_object_key(i32*) #1

declare dso_local i64 @strcasecmp(i8*, i32) #1

declare dso_local i8* @find_pf_device(i32*) #1

declare dso_local i32 @asprintf(i8**, i8*, i8*) #1

declare dso_local i32 @ucl_object_unref(i32*) #1

declare dso_local i32 @ucl_parser_free(%struct.ucl_parser*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
