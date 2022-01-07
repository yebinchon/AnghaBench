; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/nvram/extr_bhnd_nvram_value.c_bhnd_nvram_val_encode_bool.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/nvram/extr_bhnd_nvram_value.c_bhnd_nvram_val_encode_bool.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BHND_NVRAM_TYPE_BOOL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"unsupported type: %d\00", align 1
@EFTYPE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@BHND_NVRAM_TYPE_UINT8 = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, i64, i8*, i64*, i64)* @bhnd_nvram_val_encode_bool to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bhnd_nvram_val_encode_bool(i8* %0, i64 %1, i64 %2, i8* %3, i64* %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store i8* %3, i8** %11, align 8
  store i64* %4, i64** %12, align 8
  store i64 %5, i64* %13, align 8
  %21 = load i64, i64* %10, align 8
  %22 = load i64, i64* @BHND_NVRAM_TYPE_BOOL, align 8
  %23 = icmp eq i64 %21, %22
  %24 = zext i1 %23 to i32
  %25 = load i64, i64* %10, align 8
  %26 = inttoptr i64 %25 to i8*
  %27 = call i32 @BHND_NV_ASSERT(i32 %24, i8* %26)
  %28 = load i8*, i8** %11, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %6
  %31 = load i64*, i64** %12, align 8
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %15, align 8
  br label %34

33:                                               ; preds = %6
  store i64 0, i64* %15, align 8
  br label %34

34:                                               ; preds = %33, %30
  %35 = load i8*, i8** %8, align 8
  %36 = load i64, i64* %9, align 8
  %37 = load i64, i64* %10, align 8
  %38 = call i32 @bhnd_nvram_value_nelem(i8* %35, i64 %36, i64 %37, i64* %17)
  store i32 %38, i32* %18, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %34
  %41 = load i32, i32* %18, align 4
  store i32 %41, i32* %7, align 4
  br label %109

42:                                               ; preds = %34
  %43 = load i64, i64* %17, align 8
  %44 = icmp ne i64 %43, 1
  br i1 %44, label %45, label %47

45:                                               ; preds = %42
  %46 = load i32, i32* @EFTYPE, align 4
  store i32 %46, i32* %7, align 4
  br label %109

47:                                               ; preds = %42
  %48 = load i8*, i8** %8, align 8
  %49 = bitcast i8* %48 to i64*
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  %52 = zext i1 %51 to i64
  %53 = select i1 %51, i32 1, i32 0
  %54 = sext i32 %53 to i64
  store i64 %54, i64* %14, align 8
  %55 = load i64, i64* %13, align 8
  switch i64 %55, label %79 [
    i64 130, label %56
    i64 129, label %62
    i64 128, label %62
  ]

56:                                               ; preds = %47
  %57 = load i64, i64* %14, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %56
  %60 = load i32, i32* @EFTYPE, align 4
  store i32 %60, i32* %7, align 4
  br label %109

61:                                               ; preds = %56
  store i64 0, i64* %16, align 8
  br label %95

62:                                               ; preds = %47, %47
  %63 = load i64, i64* %14, align 8
  %64 = icmp ne i64 %63, 0
  %65 = zext i1 %64 to i64
  %66 = select i1 %64, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)
  store i8* %66, i8** %19, align 8
  %67 = load i8*, i8** %19, align 8
  %68 = call i32 @strlen(i8* %67)
  %69 = add nsw i32 %68, 1
  %70 = sext i32 %69 to i64
  store i64 %70, i64* %16, align 8
  %71 = load i64, i64* %15, align 8
  %72 = load i64, i64* %16, align 8
  %73 = icmp ugt i64 %71, %72
  br i1 %73, label %74, label %78

74:                                               ; preds = %62
  %75 = load i8*, i8** %11, align 8
  %76 = load i8*, i8** %19, align 8
  %77 = call i32 @strcpy(i8* %75, i8* %76)
  br label %78

78:                                               ; preds = %74, %62
  br label %95

79:                                               ; preds = %47
  %80 = load i64, i64* %13, align 8
  %81 = call i32 @bhnd_nvram_is_int_type(i64 %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %93

83:                                               ; preds = %79
  %84 = load i64, i64* %14, align 8
  %85 = icmp ne i64 %84, 0
  %86 = zext i1 %85 to i64
  %87 = select i1 %85, i32 1, i32 0
  store i32 %87, i32* %20, align 4
  %88 = load i32, i32* @BHND_NVRAM_TYPE_UINT8, align 4
  %89 = load i8*, i8** %11, align 8
  %90 = load i64*, i64** %12, align 8
  %91 = load i64, i64* %13, align 8
  %92 = call i32 @bhnd_nvram_val_encode_int(i32* %20, i32 4, i32 %88, i8* %89, i64* %90, i64 %91)
  store i32 %92, i32* %7, align 4
  br label %109

93:                                               ; preds = %79
  %94 = load i32, i32* @EFTYPE, align 4
  store i32 %94, i32* %7, align 4
  br label %109

95:                                               ; preds = %78, %61
  %96 = load i64, i64* %16, align 8
  %97 = load i64*, i64** %12, align 8
  store i64 %96, i64* %97, align 8
  %98 = load i64, i64* %15, align 8
  %99 = load i64*, i64** %12, align 8
  %100 = load i64, i64* %99, align 8
  %101 = icmp ult i64 %98, %100
  br i1 %101, label %102, label %108

102:                                              ; preds = %95
  %103 = load i8*, i8** %11, align 8
  %104 = icmp eq i8* %103, null
  br i1 %104, label %105, label %106

105:                                              ; preds = %102
  store i32 0, i32* %7, align 4
  br label %109

106:                                              ; preds = %102
  %107 = load i32, i32* @ENOMEM, align 4
  store i32 %107, i32* %7, align 4
  br label %109

108:                                              ; preds = %95
  store i32 0, i32* %7, align 4
  br label %109

109:                                              ; preds = %108, %106, %105, %93, %83, %59, %45, %40
  %110 = load i32, i32* %7, align 4
  ret i32 %110
}

declare dso_local i32 @BHND_NV_ASSERT(i32, i8*) #1

declare dso_local i32 @bhnd_nvram_value_nelem(i8*, i64, i64, i64*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @bhnd_nvram_is_int_type(i64) #1

declare dso_local i32 @bhnd_nvram_val_encode_int(i32*, i32, i32, i8*, i64*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
