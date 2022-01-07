; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/nvram/extr_bhnd_nvram_value_fmts.c_bhnd_nvram_ident_octet_string.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/nvram/extr_bhnd_nvram_value_fmts.c_bhnd_nvram_ident_octet_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c":-\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, i8*, i64*)* @bhnd_nvram_ident_octet_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bhnd_nvram_ident_octet_string(i8* %0, i64 %1, i8* %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8, align 1
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8* %2, i8** %8, align 8
  store i64* %3, i64** %9, align 8
  store i64 0, i64* %13, align 8
  store i64 2, i64* %12, align 8
  store i64 2, i64* %11, align 8
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8** %15, align 8
  br label %18

18:                                               ; preds = %35, %4
  %19 = load i8*, i8** %15, align 8
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  store i32 0, i32* %5, align 4
  br label %109

24:                                               ; preds = %18
  %25 = load i8*, i8** %6, align 8
  %26 = load i8*, i8** %15, align 8
  %27 = load i8, i8* %26, align 1
  %28 = load i64, i64* %7, align 8
  %29 = call i8* @memchr(i8* %25, i8 signext %27, i64 %28)
  store i8* %29, i8** %16, align 8
  %30 = icmp eq i8* %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %24
  br label %35

32:                                               ; preds = %24
  %33 = load i8*, i8** %16, align 8
  %34 = load i8, i8* %33, align 1
  store i8 %34, i8* %14, align 1
  br label %38

35:                                               ; preds = %31
  %36 = load i8*, i8** %15, align 8
  %37 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %37, i8** %15, align 8
  br label %18

38:                                               ; preds = %32
  %39 = load i8, i8* %14, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp eq i32 %40, 45
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  store i64 2, i64* %12, align 8
  br label %43

43:                                               ; preds = %42, %38
  store i64 0, i64* %10, align 8
  %44 = load i8*, i8** %6, align 8
  store i8* %44, i8** %17, align 8
  br label %45

45:                                               ; preds = %93, %43
  %46 = load i8*, i8** %17, align 8
  %47 = load i8*, i8** %6, align 8
  %48 = ptrtoint i8* %46 to i64
  %49 = ptrtoint i8* %47 to i64
  %50 = sub i64 %48, %49
  %51 = load i64, i64* %7, align 8
  %52 = icmp ult i64 %50, %51
  br i1 %52, label %53, label %96

53:                                               ; preds = %45
  %54 = load i8*, i8** %17, align 8
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  switch i32 %56, label %78 [
    i32 58, label %57
    i32 45, label %57
    i32 0, label %57
  ]

57:                                               ; preds = %53, %53, %53
  %58 = load i8*, i8** %17, align 8
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %70

62:                                               ; preds = %57
  %63 = load i8*, i8** %17, align 8
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i32
  %66 = load i8, i8* %14, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp ne i32 %65, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %62
  store i32 0, i32* %5, align 4
  br label %109

70:                                               ; preds = %62, %57
  %71 = load i64, i64* %10, align 8
  %72 = load i64, i64* %12, align 8
  %73 = icmp ult i64 %71, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %70
  store i32 0, i32* %5, align 4
  br label %109

75:                                               ; preds = %70
  store i64 0, i64* %10, align 8
  %76 = load i64, i64* %13, align 8
  %77 = add i64 %76, 1
  store i64 %77, i64* %13, align 8
  br label %92

78:                                               ; preds = %53
  %79 = load i64, i64* %10, align 8
  %80 = load i64, i64* %11, align 8
  %81 = icmp uge i64 %79, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %78
  store i32 0, i32* %5, align 4
  br label %109

83:                                               ; preds = %78
  %84 = load i8*, i8** %17, align 8
  %85 = load i8, i8* %84, align 1
  %86 = call i32 @bhnd_nv_isxdigit(i8 signext %85)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %89, label %88

88:                                               ; preds = %83
  store i32 0, i32* %5, align 4
  br label %109

89:                                               ; preds = %83
  %90 = load i64, i64* %10, align 8
  %91 = add i64 %90, 1
  store i64 %91, i64* %10, align 8
  br label %92

92:                                               ; preds = %89, %75
  br label %93

93:                                               ; preds = %92
  %94 = load i8*, i8** %17, align 8
  %95 = getelementptr inbounds i8, i8* %94, i32 1
  store i8* %95, i8** %17, align 8
  br label %45

96:                                               ; preds = %45
  %97 = load i8*, i8** %8, align 8
  %98 = icmp ne i8* %97, null
  br i1 %98, label %99, label %102

99:                                               ; preds = %96
  %100 = load i8, i8* %14, align 1
  %101 = load i8*, i8** %8, align 8
  store i8 %100, i8* %101, align 1
  br label %102

102:                                              ; preds = %99, %96
  %103 = load i64*, i64** %9, align 8
  %104 = icmp ne i64* %103, null
  br i1 %104, label %105, label %108

105:                                              ; preds = %102
  %106 = load i64, i64* %13, align 8
  %107 = load i64*, i64** %9, align 8
  store i64 %106, i64* %107, align 8
  br label %108

108:                                              ; preds = %105, %102
  store i32 1, i32* %5, align 4
  br label %109

109:                                              ; preds = %108, %88, %82, %74, %69, %23
  %110 = load i32, i32* %5, align 4
  ret i32 %110
}

declare dso_local i8* @memchr(i8*, i8 signext, i64) #1

declare dso_local i32 @bhnd_nv_isxdigit(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
