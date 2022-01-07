; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/nvram/extr_bhnd_nvram_data_bcmraw.c_bhnd_nvram_bcmraw_serialize.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/nvram/extr_bhnd_nvram_data_bcmraw.c_bhnd_nvram_bcmraw_serialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SIZE_MAX = common dso_local global i64 0, align 8
@EFTYPE = common dso_local global i32 0, align 4
@BHND_NVRAM_TYPE_STRING = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"error serializing %s to required type %s: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*, i8*, i64*)* @bhnd_nvram_bcmraw_serialize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bhnd_nvram_bcmraw_serialize(i32* %0, i32* %1, i32* %2, i8* %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i8* %3, i8** %10, align 8
  store i64* %4, i64** %11, align 8
  %21 = load i8*, i8** %10, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %5
  %24 = load i64*, i64** %11, align 8
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %13, align 8
  br label %27

26:                                               ; preds = %5
  store i64 0, i64* %13, align 8
  br label %27

27:                                               ; preds = %26, %23
  store i64 0, i64* %14, align 8
  store i32* null, i32** %12, align 8
  br label %28

28:                                               ; preds = %113, %27
  %29 = load i32*, i32** %8, align 8
  %30 = load i32*, i32** %12, align 8
  %31 = call i32* @bhnd_nvram_plist_next(i32* %29, i32* %30)
  store i32* %31, i32** %12, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %117

33:                                               ; preds = %28
  %34 = load i8*, i8** %10, align 8
  %35 = icmp eq i8* %34, null
  br i1 %35, label %40, label %36

36:                                               ; preds = %33
  %37 = load i64, i64* %13, align 8
  %38 = load i64, i64* %14, align 8
  %39 = icmp ult i64 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %36, %33
  store i8* null, i8** %17, align 8
  store i64 0, i64* %18, align 8
  br label %48

41:                                               ; preds = %36
  %42 = load i8*, i8** %10, align 8
  %43 = load i64, i64* %14, align 8
  %44 = getelementptr inbounds i8, i8* %42, i64 %43
  store i8* %44, i8** %17, align 8
  %45 = load i64, i64* %13, align 8
  %46 = load i64, i64* %14, align 8
  %47 = sub i64 %45, %46
  store i64 %47, i64* %18, align 8
  br label %48

48:                                               ; preds = %41, %40
  %49 = load i32*, i32** %12, align 8
  %50 = call i8* @bhnd_nvram_prop_name(i32* %49)
  store i8* %50, i8** %16, align 8
  %51 = load i8*, i8** %16, align 8
  %52 = call i32 @strlen(i8* %51)
  %53 = add nsw i32 %52, 1
  %54 = sext i32 %53 to i64
  store i64 %54, i64* %19, align 8
  %55 = load i64, i64* %18, align 8
  %56 = load i64, i64* %19, align 8
  %57 = icmp ugt i64 %55, %56
  br i1 %57, label %58, label %74

58:                                               ; preds = %48
  %59 = load i8*, i8** %17, align 8
  %60 = load i8*, i8** %16, align 8
  %61 = load i64, i64* %19, align 8
  %62 = sub i64 %61, 1
  %63 = call i32 @memcpy(i8* %59, i8* %60, i64 %62)
  %64 = load i8*, i8** %17, align 8
  %65 = load i64, i64* %19, align 8
  %66 = sub i64 %65, 1
  %67 = getelementptr inbounds i8, i8* %64, i64 %66
  store i8 61, i8* %67, align 1
  %68 = load i64, i64* %19, align 8
  %69 = load i64, i64* %18, align 8
  %70 = sub i64 %69, %68
  store i64 %70, i64* %18, align 8
  %71 = load i64, i64* %19, align 8
  %72 = load i8*, i8** %17, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 %71
  store i8* %73, i8** %17, align 8
  br label %75

74:                                               ; preds = %48
  store i64 0, i64* %18, align 8
  store i8* null, i8** %17, align 8
  br label %75

75:                                               ; preds = %74, %58
  %76 = load i64, i64* @SIZE_MAX, align 8
  %77 = load i64, i64* %14, align 8
  %78 = sub i64 %76, %77
  %79 = load i64, i64* %19, align 8
  %80 = icmp ult i64 %78, %79
  br i1 %80, label %81, label %83

81:                                               ; preds = %75
  %82 = load i32, i32* @EFTYPE, align 4
  store i32 %82, i32* %6, align 4
  br label %148

83:                                               ; preds = %75
  %84 = load i64, i64* %19, align 8
  %85 = load i64, i64* %14, align 8
  %86 = add i64 %85, %84
  store i64 %86, i64* %14, align 8
  %87 = load i64, i64* %18, align 8
  store i64 %87, i64* %20, align 8
  %88 = load i32*, i32** %12, align 8
  %89 = load i8*, i8** %17, align 8
  %90 = load i32, i32* @BHND_NVRAM_TYPE_STRING, align 4
  %91 = call i32 @bhnd_nvram_prop_encode(i32* %88, i8* %89, i64* %20, i32 %90)
  store i32 %91, i32* %15, align 4
  %92 = load i32, i32* %15, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %105

94:                                               ; preds = %83
  %95 = load i32, i32* %15, align 4
  %96 = load i32, i32* @ENOMEM, align 4
  %97 = icmp ne i32 %95, %96
  br i1 %97, label %98, label %105

98:                                               ; preds = %94
  %99 = load i8*, i8** %16, align 8
  %100 = load i32, i32* @BHND_NVRAM_TYPE_STRING, align 4
  %101 = call i32 @bhnd_nvram_type_name(i32 %100)
  %102 = load i32, i32* %15, align 4
  %103 = call i32 @BHND_NV_LOG(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i8* %99, i32 %101, i32 %102)
  %104 = load i32, i32* %15, align 4
  store i32 %104, i32* %6, align 4
  br label %148

105:                                              ; preds = %94, %83
  %106 = load i64, i64* @SIZE_MAX, align 8
  %107 = load i64, i64* %14, align 8
  %108 = sub i64 %106, %107
  %109 = load i64, i64* %20, align 8
  %110 = icmp ult i64 %108, %109
  br i1 %110, label %111, label %113

111:                                              ; preds = %105
  %112 = load i32, i32* @EFTYPE, align 4
  store i32 %112, i32* %6, align 4
  br label %148

113:                                              ; preds = %105
  %114 = load i64, i64* %20, align 8
  %115 = load i64, i64* %14, align 8
  %116 = add i64 %115, %114
  store i64 %116, i64* %14, align 8
  br label %28

117:                                              ; preds = %28
  %118 = load i64, i64* %13, align 8
  %119 = load i64, i64* %14, align 8
  %120 = icmp ugt i64 %118, %119
  br i1 %120, label %121, label %125

121:                                              ; preds = %117
  %122 = load i8*, i8** %10, align 8
  %123 = load i64, i64* %14, align 8
  %124 = getelementptr inbounds i8, i8* %122, i64 %123
  store i8 0, i8* %124, align 1
  br label %125

125:                                              ; preds = %121, %117
  %126 = load i64, i64* %14, align 8
  %127 = load i64, i64* @SIZE_MAX, align 8
  %128 = icmp eq i64 %126, %127
  br i1 %128, label %129, label %131

129:                                              ; preds = %125
  %130 = load i32, i32* @EFTYPE, align 4
  store i32 %130, i32* %6, align 4
  br label %148

131:                                              ; preds = %125
  %132 = load i64, i64* %14, align 8
  %133 = add i64 %132, 1
  store i64 %133, i64* %14, align 8
  br label %134

134:                                              ; preds = %131
  %135 = load i64, i64* %14, align 8
  %136 = load i64*, i64** %11, align 8
  store i64 %135, i64* %136, align 8
  %137 = load i64, i64* %13, align 8
  %138 = load i64*, i64** %11, align 8
  %139 = load i64, i64* %138, align 8
  %140 = icmp ult i64 %137, %139
  br i1 %140, label %141, label %147

141:                                              ; preds = %134
  %142 = load i8*, i8** %10, align 8
  %143 = icmp eq i8* %142, null
  br i1 %143, label %144, label %145

144:                                              ; preds = %141
  store i32 0, i32* %6, align 4
  br label %148

145:                                              ; preds = %141
  %146 = load i32, i32* @ENOMEM, align 4
  store i32 %146, i32* %6, align 4
  br label %148

147:                                              ; preds = %134
  store i32 0, i32* %6, align 4
  br label %148

148:                                              ; preds = %147, %145, %144, %129, %111, %98, %81
  %149 = load i32, i32* %6, align 4
  ret i32 %149
}

declare dso_local i32* @bhnd_nvram_plist_next(i32*, i32*) #1

declare dso_local i8* @bhnd_nvram_prop_name(i32*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @bhnd_nvram_prop_encode(i32*, i8*, i64*, i32) #1

declare dso_local i32 @BHND_NV_LOG(i8*, i8*, i32, i32) #1

declare dso_local i32 @bhnd_nvram_type_name(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
