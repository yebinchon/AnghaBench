; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/iovctl/extr_parse.c_add_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/iovctl/extr_parse.c_add_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TYPE_SCHEMA_NAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"bool\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"string\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"uint8_t\00", align 1
@UINT8_MAX = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"uint16_t\00", align 1
@UINT16_MAX = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [9 x i8] c"uint32_t\00", align 1
@UINT32_MAX = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [9 x i8] c"uint64_t\00", align 1
@UINT64_MAX = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [12 x i8] c"unicast-mac\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"Unexpected type '%s' in schema\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*, i32*, i32*)* @add_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_config(i8* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %10 = load i32*, i32** %8, align 8
  %11 = load i32, i32* @TYPE_SCHEMA_NAME, align 4
  %12 = call i8* @nvlist_get_string(i32* %10, i32 %11)
  store i8* %12, i8** %9, align 8
  %13 = load i8*, i8** %9, align 8
  %14 = call i64 @strcasecmp(i8* %13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %4
  %17 = load i8*, i8** %5, align 8
  %18 = load i32*, i32** %6, align 8
  %19 = load i32*, i32** %7, align 8
  %20 = call i32 @add_bool_config(i8* %17, i32* %18, i32* %19)
  br label %92

21:                                               ; preds = %4
  %22 = load i8*, i8** %9, align 8
  %23 = call i64 @strcasecmp(i8* %22, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %21
  %26 = load i8*, i8** %5, align 8
  %27 = load i32*, i32** %6, align 8
  %28 = load i32*, i32** %7, align 8
  %29 = call i32 @add_string_config(i8* %26, i32* %27, i32* %28)
  br label %91

30:                                               ; preds = %21
  %31 = load i8*, i8** %9, align 8
  %32 = call i64 @strcasecmp(i8* %31, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %30
  %35 = load i8*, i8** %5, align 8
  %36 = load i32*, i32** %6, align 8
  %37 = load i32*, i32** %7, align 8
  %38 = load i8*, i8** %9, align 8
  %39 = load i32, i32* @UINT8_MAX, align 4
  %40 = call i32 @add_uint_config(i8* %35, i32* %36, i32* %37, i8* %38, i32 %39)
  br label %90

41:                                               ; preds = %30
  %42 = load i8*, i8** %9, align 8
  %43 = call i64 @strcasecmp(i8* %42, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %41
  %46 = load i8*, i8** %5, align 8
  %47 = load i32*, i32** %6, align 8
  %48 = load i32*, i32** %7, align 8
  %49 = load i8*, i8** %9, align 8
  %50 = load i32, i32* @UINT16_MAX, align 4
  %51 = call i32 @add_uint_config(i8* %46, i32* %47, i32* %48, i8* %49, i32 %50)
  br label %89

52:                                               ; preds = %41
  %53 = load i8*, i8** %9, align 8
  %54 = call i64 @strcasecmp(i8* %53, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %52
  %57 = load i8*, i8** %5, align 8
  %58 = load i32*, i32** %6, align 8
  %59 = load i32*, i32** %7, align 8
  %60 = load i8*, i8** %9, align 8
  %61 = load i32, i32* @UINT32_MAX, align 4
  %62 = call i32 @add_uint_config(i8* %57, i32* %58, i32* %59, i8* %60, i32 %61)
  br label %88

63:                                               ; preds = %52
  %64 = load i8*, i8** %9, align 8
  %65 = call i64 @strcasecmp(i8* %64, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %63
  %68 = load i8*, i8** %5, align 8
  %69 = load i32*, i32** %6, align 8
  %70 = load i32*, i32** %7, align 8
  %71 = load i8*, i8** %9, align 8
  %72 = load i32, i32* @UINT64_MAX, align 4
  %73 = call i32 @add_uint_config(i8* %68, i32* %69, i32* %70, i8* %71, i32 %72)
  br label %87

74:                                               ; preds = %63
  %75 = load i8*, i8** %9, align 8
  %76 = call i64 @strcasecmp(i8* %75, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0))
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %74
  %79 = load i8*, i8** %5, align 8
  %80 = load i32*, i32** %6, align 8
  %81 = load i32*, i32** %7, align 8
  %82 = call i32 @add_unicast_mac_config(i8* %79, i32* %80, i32* %81)
  br label %86

83:                                               ; preds = %74
  %84 = load i8*, i8** %9, align 8
  %85 = call i32 @errx(i32 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0), i8* %84)
  br label %86

86:                                               ; preds = %83, %78
  br label %87

87:                                               ; preds = %86, %67
  br label %88

88:                                               ; preds = %87, %56
  br label %89

89:                                               ; preds = %88, %45
  br label %90

90:                                               ; preds = %89, %34
  br label %91

91:                                               ; preds = %90, %25
  br label %92

92:                                               ; preds = %91, %16
  ret void
}

declare dso_local i8* @nvlist_get_string(i32*, i32) #1

declare dso_local i64 @strcasecmp(i8*, i8*) #1

declare dso_local i32 @add_bool_config(i8*, i32*, i32*) #1

declare dso_local i32 @add_string_config(i8*, i32*, i32*) #1

declare dso_local i32 @add_uint_config(i8*, i32*, i32*, i8*, i32) #1

declare dso_local i32 @add_unicast_mac_config(i8*, i32*, i32*) #1

declare dso_local i32 @errx(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
