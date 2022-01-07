; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/mt/extr_mt.c_mt_param.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/mt/extr_mt.c_mt_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt_status_data = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"lp:qs:x\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"Only one parameter name may be specified\00", align 1
@optarg = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"Only one parameter value may be specified\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"You must specify only one of -s, -l or -x\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"You must specify -p with -s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**, i32, i8*, %struct.mt_status_data*)* @mt_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt_param(i32 %0, i8** %1, i32 %2, i8* %3, %struct.mt_status_data* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.mt_status_data*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i8** %1, i8*** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store %struct.mt_status_data* %4, %struct.mt_status_data** %10, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i8* null, i8** %14, align 8
  store i8* null, i8** %15, align 8
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  br label %19

19:                                               ; preds = %46, %5
  %20 = load i32, i32* %6, align 4
  %21 = load i8**, i8*** %7, align 8
  %22 = call i32 @getopt(i32 %20, i8** %21, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i32 %22, i32* %18, align 4
  %23 = icmp ne i32 %22, -1
  br i1 %23, label %24, label %47

24:                                               ; preds = %19
  %25 = load i32, i32* %18, align 4
  switch i32 %25, label %45 [
    i32 108, label %26
    i32 112, label %27
    i32 113, label %35
    i32 115, label %36
    i32 120, label %44
  ]

26:                                               ; preds = %24
  store i32 1, i32* %11, align 4
  br label %46

27:                                               ; preds = %24
  %28 = load i8*, i8** %14, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  %31 = call i32 @warnx(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %16, align 4
  br label %86

32:                                               ; preds = %27
  %33 = load i32, i32* @optarg, align 4
  %34 = call i8* @strdup(i32 %33)
  store i8* %34, i8** %14, align 8
  br label %46

35:                                               ; preds = %24
  store i32 1, i32* %17, align 4
  br label %46

36:                                               ; preds = %24
  %37 = load i8*, i8** %15, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %39, label %41

39:                                               ; preds = %36
  %40 = call i32 @warnx(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %16, align 4
  br label %86

41:                                               ; preds = %36
  %42 = load i32, i32* @optarg, align 4
  %43 = call i8* @strdup(i32 %42)
  store i8* %43, i8** %15, align 8
  store i32 1, i32* %12, align 4
  br label %46

44:                                               ; preds = %24
  store i32 1, i32* %13, align 4
  br label %46

45:                                               ; preds = %24
  br label %46

46:                                               ; preds = %45, %44, %41, %35, %32, %26
  br label %19

47:                                               ; preds = %19
  %48 = load i32, i32* %11, align 4
  %49 = load i32, i32* %12, align 4
  %50 = add nsw i32 %48, %49
  %51 = load i32, i32* %13, align 4
  %52 = add nsw i32 %50, %51
  %53 = icmp ne i32 %52, 1
  br i1 %53, label %54, label %56

54:                                               ; preds = %47
  %55 = call i32 @warnx(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %16, align 4
  br label %86

56:                                               ; preds = %47
  %57 = load i32, i32* %13, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %56
  %60 = load i8*, i8** %9, align 8
  %61 = call i32 @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* %60)
  store i32 0, i32* %16, align 4
  br label %86

62:                                               ; preds = %56
  %63 = load i32, i32* %12, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %76

65:                                               ; preds = %62
  %66 = load i8*, i8** %14, align 8
  %67 = icmp eq i8* %66, null
  br i1 %67, label %68, label %70

68:                                               ; preds = %65
  %69 = call i32 @errx(i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  br label %70

70:                                               ; preds = %68, %65
  %71 = load i32, i32* %8, align 4
  %72 = load %struct.mt_status_data*, %struct.mt_status_data** %10, align 8
  %73 = load i8*, i8** %14, align 8
  %74 = load i8*, i8** %15, align 8
  %75 = call i32 @mt_set_param(i32 %71, %struct.mt_status_data* %72, i8* %73, i8* %74)
  store i32 %75, i32* %16, align 4
  br label %85

76:                                               ; preds = %62
  %77 = load i32, i32* %11, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %76
  %80 = load %struct.mt_status_data*, %struct.mt_status_data** %10, align 8
  %81 = load i8*, i8** %14, align 8
  %82 = load i32, i32* %17, align 4
  %83 = call i32 @mt_param_list(%struct.mt_status_data* %80, i8* %81, i32 %82)
  store i32 %83, i32* %16, align 4
  br label %84

84:                                               ; preds = %79, %76
  br label %85

85:                                               ; preds = %84, %70
  br label %86

86:                                               ; preds = %85, %59, %54, %39, %30
  %87 = load i8*, i8** %14, align 8
  %88 = call i32 @free(i8* %87)
  %89 = load i8*, i8** %15, align 8
  %90 = call i32 @free(i8* %89)
  %91 = load i32, i32* %16, align 4
  ret i32 %91
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @warnx(i8*) #1

declare dso_local i8* @strdup(i32) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i32 @mt_set_param(i32, %struct.mt_status_data*, i8*, i8*) #1

declare dso_local i32 @mt_param_list(%struct.mt_status_data*, i8*, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
