; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/nvram/extr_bhnd_nvram_value_subr.c_bhnd_nvram_value_size.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/nvram/extr_bhnd_nvram_value_subr.c_bhnd_nvram_value_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SIZE_MAX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"cannot represent size %s[%zu]\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"bhnd nvram type %u unknown\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @bhnd_nvram_value_size(i8* %0, i64 %1, i32 %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %16 = load i64, i64* %9, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %4
  store i64 0, i64* %5, align 8
  br label %126

19:                                               ; preds = %4
  %20 = load i32, i32* %8, align 4
  %21 = call i32 @bhnd_nvram_is_array_type(i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %19
  %24 = load i64, i64* %9, align 8
  %25 = icmp ne i64 %24, 1
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  store i64 0, i64* %5, align 8
  br label %126

27:                                               ; preds = %23, %19
  %28 = load i32, i32* %8, align 4
  switch i32 %28, label %123 [
    i32 128, label %29
    i32 134, label %29
    i32 132, label %29
    i32 130, label %29
    i32 139, label %29
    i32 145, label %29
    i32 143, label %29
    i32 141, label %29
    i32 148, label %29
    i32 150, label %29
    i32 136, label %47
    i32 137, label %95
    i32 138, label %111
    i32 147, label %112
    i32 151, label %118
    i32 140, label %119
    i32 129, label %119
    i32 149, label %119
    i32 146, label %120
    i32 135, label %120
    i32 144, label %121
    i32 133, label %121
    i32 131, label %122
    i32 142, label %122
  ]

29:                                               ; preds = %27, %27, %27, %27, %27, %27, %27, %27, %27, %27
  %30 = load i32, i32* %8, align 4
  %31 = call i64 @bhnd_nvram_type_width(i32 %30)
  store i64 %31, i64* %10, align 8
  %32 = load i64, i64* @SIZE_MAX, align 8
  %33 = load i64, i64* %9, align 8
  %34 = udiv i64 %32, %33
  %35 = load i64, i64* %10, align 8
  %36 = icmp ult i64 %34, %35
  br i1 %36, label %37, label %43

37:                                               ; preds = %29
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @bhnd_nvram_base_type(i32 %38)
  %40 = call i32 @bhnd_nvram_type_name(i32 %39)
  %41 = load i64, i64* %9, align 8
  %42 = call i32 @BHND_NV_LOG(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %40, i64 %41)
  store i64 0, i64* %5, align 8
  br label %126

43:                                               ; preds = %29
  %44 = load i64, i64* %9, align 8
  %45 = load i64, i64* %10, align 8
  %46 = mul i64 %44, %45
  store i64 %46, i64* %5, align 8
  br label %126

47:                                               ; preds = %27
  %48 = load i8*, i8** %6, align 8
  %49 = icmp eq i8* %48, null
  br i1 %49, label %50, label %51

50:                                               ; preds = %47
  store i64 0, i64* %5, align 8
  br label %126

51:                                               ; preds = %47
  %52 = load i8*, i8** %6, align 8
  store i8* %52, i8** %11, align 8
  store i64 0, i64* %12, align 8
  store i64 0, i64* %13, align 8
  br label %53

53:                                               ; preds = %90, %51
  %54 = load i64, i64* %13, align 8
  %55 = load i64, i64* %9, align 8
  %56 = icmp ult i64 %54, %55
  br i1 %56, label %57, label %93

57:                                               ; preds = %53
  %58 = load i8*, i8** %11, align 8
  %59 = load i64, i64* %7, align 8
  %60 = load i64, i64* %12, align 8
  %61 = sub i64 %59, %60
  %62 = call i64 @strnlen(i8* %58, i64 %61)
  store i64 %62, i64* %14, align 8
  %63 = load i64, i64* %14, align 8
  %64 = load i8*, i8** %11, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 %63
  store i8* %65, i8** %11, align 8
  %66 = load i64, i64* %12, align 8
  %67 = load i64, i64* %7, align 8
  %68 = icmp ult i64 %66, %67
  br i1 %68, label %69, label %79

69:                                               ; preds = %57
  %70 = load i8*, i8** %11, align 8
  %71 = load i8, i8* %70, align 1
  %72 = sext i8 %71 to i32
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %69
  %75 = load i64, i64* %14, align 8
  %76 = add i64 %75, 1
  store i64 %76, i64* %14, align 8
  %77 = load i8*, i8** %11, align 8
  %78 = getelementptr inbounds i8, i8* %77, i32 1
  store i8* %78, i8** %11, align 8
  br label %79

79:                                               ; preds = %74, %69, %57
  %80 = load i64, i64* @SIZE_MAX, align 8
  %81 = load i64, i64* %12, align 8
  %82 = sub i64 %80, %81
  %83 = load i64, i64* %14, align 8
  %84 = icmp ult i64 %82, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %79
  store i64 0, i64* %5, align 8
  br label %126

86:                                               ; preds = %79
  %87 = load i64, i64* %14, align 8
  %88 = load i64, i64* %12, align 8
  %89 = add i64 %88, %87
  store i64 %89, i64* %12, align 8
  br label %90

90:                                               ; preds = %86
  %91 = load i64, i64* %13, align 8
  %92 = add i64 %91, 1
  store i64 %92, i64* %13, align 8
  br label %53

93:                                               ; preds = %53
  %94 = load i64, i64* %12, align 8
  store i64 %94, i64* %5, align 8
  br label %126

95:                                               ; preds = %27
  %96 = load i8*, i8** %6, align 8
  %97 = icmp eq i8* %96, null
  br i1 %97, label %98, label %99

98:                                               ; preds = %95
  store i64 0, i64* %5, align 8
  br label %126

99:                                               ; preds = %95
  %100 = load i8*, i8** %6, align 8
  %101 = load i64, i64* %7, align 8
  %102 = call i64 @strnlen(i8* %100, i64 %101)
  store i64 %102, i64* %15, align 8
  %103 = load i64, i64* %15, align 8
  %104 = load i64, i64* %7, align 8
  %105 = icmp ult i64 %103, %104
  br i1 %105, label %106, label %109

106:                                              ; preds = %99
  %107 = load i64, i64* %15, align 8
  %108 = add i64 %107, 1
  store i64 %108, i64* %15, align 8
  br label %109

109:                                              ; preds = %106, %99
  %110 = load i64, i64* %15, align 8
  store i64 %110, i64* %5, align 8
  br label %126

111:                                              ; preds = %27
  store i64 0, i64* %5, align 8
  br label %126

112:                                              ; preds = %27
  %113 = load i8*, i8** %6, align 8
  %114 = icmp eq i8* %113, null
  br i1 %114, label %115, label %116

115:                                              ; preds = %112
  store i64 0, i64* %5, align 8
  br label %126

116:                                              ; preds = %112
  %117 = load i64, i64* %7, align 8
  store i64 %117, i64* %5, align 8
  br label %126

118:                                              ; preds = %27
  store i64 4, i64* %5, align 8
  br label %126

119:                                              ; preds = %27, %27, %27
  store i64 4, i64* %5, align 8
  br label %126

120:                                              ; preds = %27, %27
  store i64 4, i64* %5, align 8
  br label %126

121:                                              ; preds = %27, %27
  store i64 4, i64* %5, align 8
  br label %126

122:                                              ; preds = %27, %27
  store i64 4, i64* %5, align 8
  br label %126

123:                                              ; preds = %27
  %124 = load i32, i32* %8, align 4
  %125 = call i32 @BHND_NV_PANIC(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %124)
  br label %126

126:                                              ; preds = %123, %122, %121, %120, %119, %118, %116, %115, %111, %109, %98, %93, %85, %50, %43, %37, %26, %18
  %127 = load i64, i64* %5, align 8
  ret i64 %127
}

declare dso_local i32 @bhnd_nvram_is_array_type(i32) #1

declare dso_local i64 @bhnd_nvram_type_width(i32) #1

declare dso_local i32 @BHND_NV_LOG(i8*, i32, i64) #1

declare dso_local i32 @bhnd_nvram_type_name(i32) #1

declare dso_local i32 @bhnd_nvram_base_type(i32) #1

declare dso_local i64 @strnlen(i8*, i64) #1

declare dso_local i32 @BHND_NV_PANIC(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
