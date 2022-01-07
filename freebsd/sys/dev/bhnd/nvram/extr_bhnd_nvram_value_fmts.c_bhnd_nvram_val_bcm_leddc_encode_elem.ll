; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/nvram/extr_bhnd_nvram_value_fmts.c_bhnd_nvram_val_bcm_leddc_encode_elem.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/nvram/extr_bhnd_nvram_value_fmts.c_bhnd_nvram_val_bcm_leddc_encode_elem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.anon = type { i32 }

@EFTYPE = common dso_local global i32 0, align 4
@UINT16_MAX = common dso_local global i32 0, align 4
@UINT32_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"unsupported backing data type: %s\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"0x%04hX\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"0x%04X\00", align 1
@ERANGE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i64, i8*, i64*, i32)* @bhnd_nvram_val_bcm_leddc_encode_elem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bhnd_nvram_val_bcm_leddc_encode_elem(i32* %0, i8* %1, i64 %2, i8* %3, i64* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %union.anon, align 4
  %22 = alloca i8*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  store i32* %0, i32** %8, align 8
  store i8* %1, i8** %9, align 8
  store i64 %2, i64* %10, align 8
  store i8* %3, i8** %11, align 8
  store i64* %4, i64** %12, align 8
  store i32 %5, i32* %13, align 4
  %26 = load i32*, i32** %8, align 8
  %27 = call i32 @bhnd_nvram_val_elem_type(i32* %26)
  store i32 %27, i32* %14, align 4
  store i64 0, i64* %16, align 8
  store i32 0, i32* %20, align 4
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
  %35 = load i32, i32* %13, align 4
  %36 = load i32, i32* %14, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %46

38:                                               ; preds = %34
  %39 = load i8*, i8** %9, align 8
  %40 = load i64, i64* %10, align 8
  %41 = load i32, i32* %14, align 4
  %42 = load i8*, i8** %11, align 8
  %43 = load i64*, i64** %12, align 8
  %44 = load i32, i32* %13, align 4
  %45 = call i32 @bhnd_nvram_value_coerce(i8* %39, i64 %40, i32 %41, i8* %42, i64* %43, i32 %44)
  store i32 %45, i32* %7, align 4
  br label %180

46:                                               ; preds = %34
  %47 = load i32, i32* %14, align 4
  %48 = icmp eq i32 %47, 130
  br i1 %48, label %49, label %83

49:                                               ; preds = %46
  %50 = load i8*, i8** %9, align 8
  store i8* %50, i8** %22, align 8
  store i64 4, i64* %24, align 8
  %51 = load i8*, i8** %22, align 8
  %52 = load i64, i64* %10, align 8
  %53 = call i32 @bhnd_nvram_parse_int(i8* %51, i64 %52, i32 0, i64* %25, i32* %23, i64* %24, i32 128)
  store i32 %53, i32* %17, align 4
  %54 = load i32, i32* %17, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %49
  %57 = load i32, i32* %17, align 4
  store i32 %57, i32* %7, align 4
  br label %180

58:                                               ; preds = %49
  %59 = load i64, i64* %25, align 8
  %60 = load i64, i64* %10, align 8
  %61 = icmp ult i64 %59, %60
  br i1 %61, label %62, label %71

62:                                               ; preds = %58
  %63 = load i8*, i8** %22, align 8
  %64 = load i64, i64* %25, align 8
  %65 = getelementptr inbounds i8, i8* %63, i64 %64
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %62
  %70 = load i32, i32* @EFTYPE, align 4
  store i32 %70, i32* %7, align 4
  br label %180

71:                                               ; preds = %62, %58
  %72 = bitcast %union.anon* %21 to i8*
  store i8* %72, i8** %9, align 8
  %73 = load i32, i32* %23, align 4
  %74 = and i32 %73, -65536
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %71
  %77 = load i32, i32* %23, align 4
  %78 = bitcast %union.anon* %21 to i32*
  store i32 %77, i32* %78, align 4
  store i32 128, i32* %14, align 4
  br label %82

79:                                               ; preds = %71
  %80 = load i32, i32* %23, align 4
  %81 = bitcast %union.anon* %21 to i32*
  store i32 %80, i32* %81, align 4
  store i32 129, i32* %14, align 4
  br label %82

82:                                               ; preds = %79, %76
  br label %83

83:                                               ; preds = %82, %46
  %84 = load i32, i32* %14, align 4
  switch i32 %84, label %122 [
    i32 129, label %85
    i32 128, label %102
  ]

85:                                               ; preds = %83
  %86 = load i8*, i8** %9, align 8
  %87 = bitcast i8* %86 to i32*
  %88 = load i32, i32* %87, align 4
  store i32 %88, i32* %18, align 4
  %89 = load i32, i32* %18, align 4
  %90 = and i32 %89, 65280
  %91 = shl i32 %90, 16
  %92 = load i32, i32* %18, align 4
  %93 = and i32 %92, 255
  %94 = shl i32 %93, 8
  %95 = or i32 %91, %94
  store i32 %95, i32* %19, align 4
  %96 = load i32, i32* %18, align 4
  %97 = load i32, i32* @UINT16_MAX, align 4
  %98 = icmp eq i32 %96, %97
  br i1 %98, label %99, label %101

99:                                               ; preds = %85
  %100 = load i32, i32* @UINT32_MAX, align 4
  store i32 %100, i32* %19, align 4
  br label %101

101:                                              ; preds = %99, %85
  br label %126

102:                                              ; preds = %83
  %103 = load i8*, i8** %9, align 8
  %104 = bitcast i8* %103 to i32*
  %105 = load i32, i32* %104, align 4
  store i32 %105, i32* %19, align 4
  %106 = load i32, i32* %19, align 4
  %107 = ashr i32 %106, 16
  %108 = and i32 %107, 65280
  %109 = load i32, i32* %19, align 4
  %110 = ashr i32 %109, 8
  %111 = and i32 %110, 255
  %112 = or i32 %108, %111
  store i32 %112, i32* %18, align 4
  %113 = load i32, i32* %19, align 4
  %114 = and i32 %113, 16711935
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %121

116:                                              ; preds = %102
  %117 = load i32, i32* %19, align 4
  %118 = load i32, i32* @UINT32_MAX, align 4
  %119 = icmp ne i32 %117, %118
  br i1 %119, label %120, label %121

120:                                              ; preds = %116
  store i32 1, i32* %20, align 4
  br label %121

121:                                              ; preds = %120, %116, %102
  br label %126

122:                                              ; preds = %83
  %123 = load i32, i32* %14, align 4
  %124 = call i32 @bhnd_nvram_type_name(i32 %123)
  %125 = call i32 @BHND_NV_PANIC(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %124)
  br label %126

126:                                              ; preds = %122, %121, %101
  %127 = load i32, i32* %13, align 4
  switch i32 %127, label %166 [
    i32 130, label %128
    i32 129, label %139
    i32 128, label %155
  ]

128:                                              ; preds = %126
  %129 = load i32, i32* %20, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %135, label %131

131:                                              ; preds = %128
  %132 = load i8*, i8** %11, align 8
  %133 = load i64*, i64** %12, align 8
  %134 = call i32 @bhnd_nvram_value_printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32* %18, i32 4, i32 129, i8* %132, i64* %133)
  store i32 %134, i32* %7, align 4
  br label %180

135:                                              ; preds = %128
  %136 = load i8*, i8** %11, align 8
  %137 = load i64*, i64** %12, align 8
  %138 = call i32 @bhnd_nvram_value_printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32* %19, i32 4, i32 128, i8* %136, i64* %137)
  store i32 %138, i32* %7, align 4
  br label %180

139:                                              ; preds = %126
  %140 = load i32, i32* %20, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %144

142:                                              ; preds = %139
  %143 = load i32, i32* @ERANGE, align 4
  store i32 %143, i32* %7, align 4
  br label %180

144:                                              ; preds = %139
  %145 = load i64, i64* %16, align 8
  %146 = add i64 %145, 4
  store i64 %146, i64* %16, align 8
  %147 = load i64, i64* %15, align 8
  %148 = load i64, i64* %16, align 8
  %149 = icmp uge i64 %147, %148
  br i1 %149, label %150, label %154

150:                                              ; preds = %144
  %151 = load i32, i32* %18, align 4
  %152 = load i8*, i8** %11, align 8
  %153 = bitcast i8* %152 to i32*
  store i32 %151, i32* %153, align 4
  br label %154

154:                                              ; preds = %150, %144
  br label %168

155:                                              ; preds = %126
  %156 = load i64, i64* %16, align 8
  %157 = add i64 %156, 4
  store i64 %157, i64* %16, align 8
  %158 = load i64, i64* %15, align 8
  %159 = load i64, i64* %16, align 8
  %160 = icmp uge i64 %158, %159
  br i1 %160, label %161, label %165

161:                                              ; preds = %155
  %162 = load i32, i32* %19, align 4
  %163 = load i8*, i8** %11, align 8
  %164 = bitcast i8* %163 to i32*
  store i32 %162, i32* %164, align 4
  br label %165

165:                                              ; preds = %161, %155
  br label %168

166:                                              ; preds = %126
  %167 = load i32, i32* @EFTYPE, align 4
  store i32 %167, i32* %7, align 4
  br label %180

168:                                              ; preds = %165, %154
  %169 = load i64, i64* %16, align 8
  %170 = load i64*, i64** %12, align 8
  store i64 %169, i64* %170, align 8
  %171 = load i64, i64* %15, align 8
  %172 = load i64, i64* %16, align 8
  %173 = icmp ult i64 %171, %172
  br i1 %173, label %174, label %179

174:                                              ; preds = %168
  %175 = load i8*, i8** %11, align 8
  %176 = icmp ne i8* %175, null
  br i1 %176, label %177, label %179

177:                                              ; preds = %174
  %178 = load i32, i32* @ENOMEM, align 4
  store i32 %178, i32* %7, align 4
  br label %180

179:                                              ; preds = %174, %168
  store i32 0, i32* %7, align 4
  br label %180

180:                                              ; preds = %179, %177, %166, %142, %135, %131, %69, %56, %38
  %181 = load i32, i32* %7, align 4
  ret i32 %181
}

declare dso_local i32 @bhnd_nvram_val_elem_type(i32*) #1

declare dso_local i32 @bhnd_nvram_value_coerce(i8*, i64, i32, i8*, i64*, i32) #1

declare dso_local i32 @bhnd_nvram_parse_int(i8*, i64, i32, i64*, i32*, i64*, i32) #1

declare dso_local i32 @BHND_NV_PANIC(i8*, i32) #1

declare dso_local i32 @bhnd_nvram_type_name(i32) #1

declare dso_local i32 @bhnd_nvram_value_printf(i8*, i32*, i32, i32, i8*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
