; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/cxgbetool/extr_cxgbetool.c_parse_val_mask.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/cxgbetool/extr_cxgbetool.c_parse_val_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4
@UINT32_MAX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [56 x i8] c"param %s: mask not allowed for hashfilter or nat params\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"parameter \22%s\22 has bad \22value[:mask]\22 %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8**, i64*, i64*, i32)* @parse_val_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_val_mask(i8* %0, i8** %1, i64* %2, i64* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  store i8* %0, i8** %7, align 8
  store i8** %1, i8*** %8, align 8
  store i64* %2, i64** %9, align 8
  store i64* %3, i64** %10, align 8
  store i32 %4, i32* %11, align 4
  %14 = load i8*, i8** %7, align 8
  %15 = load i8**, i8*** %8, align 8
  %16 = getelementptr inbounds i8*, i8** %15, i64 0
  %17 = load i8*, i8** %16, align 8
  %18 = call i64 @strcmp(i8* %14, i8* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %5
  %21 = load i32, i32* @EINVAL, align 4
  store i32 %21, i32* %6, align 4
  br label %99

22:                                               ; preds = %5
  %23 = load i8**, i8*** %8, align 8
  %24 = getelementptr inbounds i8*, i8** %23, i64 1
  %25 = load i8*, i8** %24, align 8
  %26 = call i8* @str_to_number(i8* %25, i64* %12, i32* null)
  store i8* %26, i8** %13, align 8
  %27 = load i64, i64* %12, align 8
  %28 = icmp sge i64 %27, 0
  br i1 %28, label %29, label %90

29:                                               ; preds = %22
  %30 = load i64, i64* %12, align 8
  %31 = load i64, i64* @UINT32_MAX, align 8
  %32 = icmp sle i64 %30, %31
  br i1 %32, label %33, label %90

33:                                               ; preds = %29
  %34 = load i64, i64* %12, align 8
  %35 = load i64*, i64** %9, align 8
  store i64 %34, i64* %35, align 8
  %36 = load i8*, i8** %13, align 8
  %37 = load i8**, i8*** %8, align 8
  %38 = getelementptr inbounds i8*, i8** %37, i64 1
  %39 = load i8*, i8** %38, align 8
  %40 = icmp ugt i8* %36, %39
  br i1 %40, label %41, label %89

41:                                               ; preds = %33
  %42 = load i8*, i8** %13, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 0
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %41
  %48 = load i64*, i64** %10, align 8
  store i64 -1, i64* %48, align 8
  store i32 0, i32* %6, align 4
  br label %99

49:                                               ; preds = %41
  %50 = load i8*, i8** %13, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 0
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp eq i32 %53, 58
  br i1 %54, label %55, label %88

55:                                               ; preds = %49
  %56 = load i8*, i8** %13, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 1
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %88

61:                                               ; preds = %55
  %62 = load i32, i32* %11, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %61
  %65 = load i8*, i8** %7, align 8
  %66 = call i32 (i8*, i8*, ...) @warnx(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i8* %65)
  %67 = load i32, i32* @EINVAL, align 4
  store i32 %67, i32* %6, align 4
  br label %99

68:                                               ; preds = %61
  %69 = load i8*, i8** %13, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 1
  %71 = call i8* @str_to_number(i8* %70, i64* %12, i32* null)
  store i8* %71, i8** %13, align 8
  %72 = load i64, i64* %12, align 8
  %73 = icmp sge i64 %72, 0
  br i1 %73, label %74, label %87

74:                                               ; preds = %68
  %75 = load i64, i64* %12, align 8
  %76 = load i64, i64* @UINT32_MAX, align 8
  %77 = icmp sle i64 %75, %76
  br i1 %77, label %78, label %87

78:                                               ; preds = %74
  %79 = load i8*, i8** %13, align 8
  %80 = getelementptr inbounds i8, i8* %79, i64 0
  %81 = load i8, i8* %80, align 1
  %82 = sext i8 %81 to i32
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %78
  %85 = load i64, i64* %12, align 8
  %86 = load i64*, i64** %10, align 8
  store i64 %85, i64* %86, align 8
  store i32 0, i32* %6, align 4
  br label %99

87:                                               ; preds = %78, %74, %68
  br label %88

88:                                               ; preds = %87, %55, %49
  br label %89

89:                                               ; preds = %88, %33
  br label %90

90:                                               ; preds = %89, %29, %22
  %91 = load i8**, i8*** %8, align 8
  %92 = getelementptr inbounds i8*, i8** %91, i64 0
  %93 = load i8*, i8** %92, align 8
  %94 = load i8**, i8*** %8, align 8
  %95 = getelementptr inbounds i8*, i8** %94, i64 1
  %96 = load i8*, i8** %95, align 8
  %97 = call i32 (i8*, i8*, ...) @warnx(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i8* %93, i8* %96)
  %98 = load i32, i32* @EINVAL, align 4
  store i32 %98, i32* %6, align 4
  br label %99

99:                                               ; preds = %90, %84, %64, %47, %20
  %100 = load i32, i32* %6, align 4
  ret i32 %100
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i8* @str_to_number(i8*, i64*, i32*) #1

declare dso_local i32 @warnx(i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
