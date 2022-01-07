; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/nvram/extr_bhnd_nvram_data_btxt.c_bhnd_nvram_btxt_serialize.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/nvram/extr_bhnd_nvram_data_btxt.c_bhnd_nvram_btxt_serialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SIZE_MAX = common dso_local global i64 0, align 8
@EFTYPE = common dso_local global i32 0, align 4
@BHND_NVRAM_TYPE_STRING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"string length missing minimum required trailing NUL\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"error serializing %s to required type %s: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*, i8*, i64*)* @bhnd_nvram_btxt_serialize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bhnd_nvram_btxt_serialize(i32* %0, i32* %1, i32* %2, i8* %3, i64* %4) #0 {
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

28:                                               ; preds = %129, %27
  %29 = load i32*, i32** %8, align 8
  %30 = load i32*, i32** %12, align 8
  %31 = call i32* @bhnd_nvram_plist_next(i32* %29, i32* %30)
  store i32* %31, i32** %12, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %133

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
  br label %147

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
  %92 = load i8*, i8** %17, align 8
  %93 = icmp ne i8* %92, null
  br i1 %93, label %94, label %106

94:                                               ; preds = %83
  %95 = load i32, i32* %15, align 4
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %106

97:                                               ; preds = %94
  %98 = load i64, i64* %20, align 8
  %99 = icmp ugt i64 %98, 0
  %100 = zext i1 %99 to i32
  %101 = call i32 @BHND_NV_ASSERT(i32 %100, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  %102 = load i8*, i8** %17, align 8
  %103 = load i64, i64* %20, align 8
  %104 = sub i64 %103, 1
  %105 = getelementptr inbounds i8, i8* %102, i64 %104
  store i8 10, i8* %105, align 1
  br label %121

106:                                              ; preds = %94, %83
  %107 = load i32, i32* %15, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %120

109:                                              ; preds = %106
  %110 = load i32, i32* %15, align 4
  %111 = load i32, i32* @ENOMEM, align 4
  %112 = icmp ne i32 %110, %111
  br i1 %112, label %113, label %120

113:                                              ; preds = %109
  %114 = load i8*, i8** %16, align 8
  %115 = load i32, i32* @BHND_NVRAM_TYPE_STRING, align 4
  %116 = call i32 @bhnd_nvram_type_name(i32 %115)
  %117 = load i32, i32* %15, align 4
  %118 = call i32 @BHND_NV_LOG(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i8* %114, i32 %116, i32 %117)
  %119 = load i32, i32* %15, align 4
  store i32 %119, i32* %6, align 4
  br label %147

120:                                              ; preds = %109, %106
  br label %121

121:                                              ; preds = %120, %97
  %122 = load i64, i64* @SIZE_MAX, align 8
  %123 = load i64, i64* %14, align 8
  %124 = sub i64 %122, %123
  %125 = load i64, i64* %20, align 8
  %126 = icmp ult i64 %124, %125
  br i1 %126, label %127, label %129

127:                                              ; preds = %121
  %128 = load i32, i32* @EFTYPE, align 4
  store i32 %128, i32* %6, align 4
  br label %147

129:                                              ; preds = %121
  %130 = load i64, i64* %20, align 8
  %131 = load i64, i64* %14, align 8
  %132 = add i64 %131, %130
  store i64 %132, i64* %14, align 8
  br label %28

133:                                              ; preds = %28
  %134 = load i64, i64* %14, align 8
  %135 = load i64*, i64** %11, align 8
  store i64 %134, i64* %135, align 8
  %136 = load i64, i64* %13, align 8
  %137 = load i64*, i64** %11, align 8
  %138 = load i64, i64* %137, align 8
  %139 = icmp ult i64 %136, %138
  br i1 %139, label %140, label %146

140:                                              ; preds = %133
  %141 = load i8*, i8** %10, align 8
  %142 = icmp eq i8* %141, null
  br i1 %142, label %143, label %144

143:                                              ; preds = %140
  store i32 0, i32* %6, align 4
  br label %147

144:                                              ; preds = %140
  %145 = load i32, i32* @ENOMEM, align 4
  store i32 %145, i32* %6, align 4
  br label %147

146:                                              ; preds = %133
  store i32 0, i32* %6, align 4
  br label %147

147:                                              ; preds = %146, %144, %143, %127, %113, %81
  %148 = load i32, i32* %6, align 4
  ret i32 %148
}

declare dso_local i32* @bhnd_nvram_plist_next(i32*, i32*) #1

declare dso_local i8* @bhnd_nvram_prop_name(i32*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @bhnd_nvram_prop_encode(i32*, i8*, i64*, i32) #1

declare dso_local i32 @BHND_NV_ASSERT(i32, i8*) #1

declare dso_local i32 @BHND_NV_LOG(i8*, i8*, i32, i32) #1

declare dso_local i32 @bhnd_nvram_type_name(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
