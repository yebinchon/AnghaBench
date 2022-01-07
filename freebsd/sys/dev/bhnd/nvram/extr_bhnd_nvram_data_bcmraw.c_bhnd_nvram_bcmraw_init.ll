; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/nvram/extr_bhnd_nvram_data_bcmraw.c_bhnd_nvram_bcmraw_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/nvram/extr_bhnd_nvram_data_bcmraw.c_bhnd_nvram_bcmraw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bhnd_nvram_bcmraw = type { i64, i32*, i64 }
%struct.bhnd_nvram_io = type { i32 }

@SIZE_MAX = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"error parsing envp at offset %#zx: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"missing terminating NUL at offset %#zx\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"appending past end of buffer\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bhnd_nvram_bcmraw*, %struct.bhnd_nvram_io*)* @bhnd_nvram_bcmraw_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bhnd_nvram_bcmraw_init(%struct.bhnd_nvram_bcmraw* %0, %struct.bhnd_nvram_io* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bhnd_nvram_bcmraw*, align 8
  %5 = alloca %struct.bhnd_nvram_io*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store %struct.bhnd_nvram_bcmraw* %0, %struct.bhnd_nvram_bcmraw** %4, align 8
  store %struct.bhnd_nvram_io* %1, %struct.bhnd_nvram_io** %5, align 8
  %16 = load %struct.bhnd_nvram_io*, %struct.bhnd_nvram_io** %5, align 8
  %17 = call i64 @bhnd_nvram_io_getsize(%struct.bhnd_nvram_io* %16)
  store i64 %17, i64* %6, align 8
  %18 = load i64, i64* %6, align 8
  %19 = load i64, i64* @SIZE_MAX, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = load i32, i32* @ENOMEM, align 4
  store i32 %22, i32* %3, align 4
  br label %156

23:                                               ; preds = %2
  %24 = load i64, i64* %6, align 8
  %25 = add i64 %24, 1
  store i64 %25, i64* %7, align 8
  %26 = load i64, i64* %6, align 8
  %27 = load %struct.bhnd_nvram_bcmraw*, %struct.bhnd_nvram_bcmraw** %4, align 8
  %28 = getelementptr inbounds %struct.bhnd_nvram_bcmraw, %struct.bhnd_nvram_bcmraw* %27, i32 0, i32 0
  store i64 %26, i64* %28, align 8
  %29 = load i64, i64* %7, align 8
  %30 = call i32* @bhnd_nv_malloc(i64 %29)
  %31 = load %struct.bhnd_nvram_bcmraw*, %struct.bhnd_nvram_bcmraw** %4, align 8
  %32 = getelementptr inbounds %struct.bhnd_nvram_bcmraw, %struct.bhnd_nvram_bcmraw* %31, i32 0, i32 1
  store i32* %30, i32** %32, align 8
  %33 = icmp eq i32* %30, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %23
  %35 = load i32, i32* @ENOMEM, align 4
  store i32 %35, i32* %3, align 4
  br label %156

36:                                               ; preds = %23
  %37 = load %struct.bhnd_nvram_io*, %struct.bhnd_nvram_io** %5, align 8
  %38 = load %struct.bhnd_nvram_bcmraw*, %struct.bhnd_nvram_bcmraw** %4, align 8
  %39 = getelementptr inbounds %struct.bhnd_nvram_bcmraw, %struct.bhnd_nvram_bcmraw* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = load i64, i64* %6, align 8
  %42 = call i32 @bhnd_nvram_io_read(%struct.bhnd_nvram_io* %37, i32 0, i32* %40, i64 %41)
  store i32 %42, i32* %9, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %36
  %45 = load i32, i32* %9, align 4
  store i32 %45, i32* %3, align 4
  br label %156

46:                                               ; preds = %36
  %47 = load %struct.bhnd_nvram_bcmraw*, %struct.bhnd_nvram_bcmraw** %4, align 8
  %48 = getelementptr inbounds %struct.bhnd_nvram_bcmraw, %struct.bhnd_nvram_bcmraw* %47, i32 0, i32 2
  store i64 0, i64* %48, align 8
  store i64 0, i64* %8, align 8
  br label %49

49:                                               ; preds = %129, %46
  %50 = load i64, i64* %8, align 8
  %51 = load %struct.bhnd_nvram_bcmraw*, %struct.bhnd_nvram_bcmraw** %4, align 8
  %52 = getelementptr inbounds %struct.bhnd_nvram_bcmraw, %struct.bhnd_nvram_bcmraw* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp ult i64 %50, %53
  br i1 %54, label %55, label %132

55:                                               ; preds = %49
  %56 = load %struct.bhnd_nvram_bcmraw*, %struct.bhnd_nvram_bcmraw** %4, align 8
  %57 = getelementptr inbounds %struct.bhnd_nvram_bcmraw, %struct.bhnd_nvram_bcmraw* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = load i64, i64* %8, align 8
  %60 = getelementptr inbounds i32, i32* %58, i64 %59
  %61 = bitcast i32* %60 to i8*
  store i8* %61, i8** %10, align 8
  %62 = load i8*, i8** %10, align 8
  %63 = load %struct.bhnd_nvram_bcmraw*, %struct.bhnd_nvram_bcmraw** %4, align 8
  %64 = getelementptr inbounds %struct.bhnd_nvram_bcmraw, %struct.bhnd_nvram_bcmraw* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* %8, align 8
  %67 = sub i64 %65, %66
  %68 = call i64 @strnlen(i8* %62, i64 %67)
  store i64 %68, i64* %13, align 8
  %69 = load i8*, i8** %10, align 8
  %70 = load i64, i64* %13, align 8
  %71 = call i32 @bhnd_nvram_parse_env(i8* %69, i64 %70, i8 signext 61, i8** %11, i64* %14, i8** %12, i64* %15)
  store i32 %71, i32* %9, align 4
  %72 = load i32, i32* %9, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %55
  %75 = load i64, i64* %8, align 8
  %76 = load i32, i32* %9, align 4
  %77 = call i32 (i8*, i64, ...) @BHND_NV_LOG(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i64 %75, i32 %76)
  %78 = load i32, i32* %9, align 4
  store i32 %78, i32* %3, align 4
  br label %156

79:                                               ; preds = %55
  %80 = load i8*, i8** %10, align 8
  %81 = load i64, i64* %14, align 8
  %82 = getelementptr inbounds i8, i8* %80, i64 %81
  store i8 0, i8* %82, align 1
  %83 = load %struct.bhnd_nvram_bcmraw*, %struct.bhnd_nvram_bcmraw** %4, align 8
  %84 = getelementptr inbounds %struct.bhnd_nvram_bcmraw, %struct.bhnd_nvram_bcmraw* %83, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = add nsw i64 %85, 1
  store i64 %86, i64* %84, align 8
  %87 = load i64, i64* %13, align 8
  %88 = load i64, i64* %8, align 8
  %89 = add i64 %88, %87
  store i64 %89, i64* %8, align 8
  %90 = load i64, i64* %8, align 8
  %91 = load i64, i64* %6, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %97

93:                                               ; preds = %79
  %94 = load i64, i64* %8, align 8
  %95 = call i32 (i8*, i64, ...) @BHND_NV_LOG(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i64 %94)
  %96 = load i32, i32* @EINVAL, align 4
  store i32 %96, i32* %3, align 4
  br label %156

97:                                               ; preds = %79
  %98 = load i64, i64* %8, align 8
  %99 = add i64 %98, 1
  store i64 %99, i64* %8, align 8
  %100 = load %struct.bhnd_nvram_bcmraw*, %struct.bhnd_nvram_bcmraw** %4, align 8
  %101 = getelementptr inbounds %struct.bhnd_nvram_bcmraw, %struct.bhnd_nvram_bcmraw* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = icmp eq i64 %99, %102
  br i1 %103, label %104, label %119

104:                                              ; preds = %97
  %105 = load i64, i64* %8, align 8
  %106 = load i64, i64* %7, align 8
  %107 = icmp ult i64 %105, %106
  %108 = zext i1 %107 to i32
  %109 = call i32 @BHND_NV_ASSERT(i32 %108, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %110 = load %struct.bhnd_nvram_bcmraw*, %struct.bhnd_nvram_bcmraw** %4, align 8
  %111 = getelementptr inbounds %struct.bhnd_nvram_bcmraw, %struct.bhnd_nvram_bcmraw* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = add i64 %112, 1
  store i64 %113, i64* %111, align 8
  %114 = load %struct.bhnd_nvram_bcmraw*, %struct.bhnd_nvram_bcmraw** %4, align 8
  %115 = getelementptr inbounds %struct.bhnd_nvram_bcmraw, %struct.bhnd_nvram_bcmraw* %114, i32 0, i32 1
  %116 = load i32*, i32** %115, align 8
  %117 = load i64, i64* %8, align 8
  %118 = getelementptr inbounds i32, i32* %116, i64 %117
  store i32 0, i32* %118, align 4
  br label %119

119:                                              ; preds = %104, %97
  %120 = load %struct.bhnd_nvram_bcmraw*, %struct.bhnd_nvram_bcmraw** %4, align 8
  %121 = getelementptr inbounds %struct.bhnd_nvram_bcmraw, %struct.bhnd_nvram_bcmraw* %120, i32 0, i32 1
  %122 = load i32*, i32** %121, align 8
  %123 = load i64, i64* %8, align 8
  %124 = getelementptr inbounds i32, i32* %122, i64 %123
  %125 = load i32, i32* %124, align 4
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %119
  br label %132

128:                                              ; preds = %119
  br label %129

129:                                              ; preds = %128
  %130 = load i64, i64* %8, align 8
  %131 = add i64 %130, 1
  store i64 %131, i64* %8, align 8
  br label %49

132:                                              ; preds = %127, %49
  %133 = load i64, i64* %8, align 8
  %134 = load %struct.bhnd_nvram_bcmraw*, %struct.bhnd_nvram_bcmraw** %4, align 8
  %135 = getelementptr inbounds %struct.bhnd_nvram_bcmraw, %struct.bhnd_nvram_bcmraw* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = icmp ult i64 %133, %136
  br i1 %137, label %138, label %155

138:                                              ; preds = %132
  %139 = load %struct.bhnd_nvram_bcmraw*, %struct.bhnd_nvram_bcmraw** %4, align 8
  %140 = getelementptr inbounds %struct.bhnd_nvram_bcmraw, %struct.bhnd_nvram_bcmraw* %139, i32 0, i32 1
  %141 = load i32*, i32** %140, align 8
  %142 = load %struct.bhnd_nvram_bcmraw*, %struct.bhnd_nvram_bcmraw** %4, align 8
  %143 = getelementptr inbounds %struct.bhnd_nvram_bcmraw, %struct.bhnd_nvram_bcmraw* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = call i32* @bhnd_nv_reallocf(i32* %141, i64 %144)
  %146 = load %struct.bhnd_nvram_bcmraw*, %struct.bhnd_nvram_bcmraw** %4, align 8
  %147 = getelementptr inbounds %struct.bhnd_nvram_bcmraw, %struct.bhnd_nvram_bcmraw* %146, i32 0, i32 1
  store i32* %145, i32** %147, align 8
  %148 = load %struct.bhnd_nvram_bcmraw*, %struct.bhnd_nvram_bcmraw** %4, align 8
  %149 = getelementptr inbounds %struct.bhnd_nvram_bcmraw, %struct.bhnd_nvram_bcmraw* %148, i32 0, i32 1
  %150 = load i32*, i32** %149, align 8
  %151 = icmp eq i32* %150, null
  br i1 %151, label %152, label %154

152:                                              ; preds = %138
  %153 = load i32, i32* @ENOMEM, align 4
  store i32 %153, i32* %3, align 4
  br label %156

154:                                              ; preds = %138
  br label %155

155:                                              ; preds = %154, %132
  store i32 0, i32* %3, align 4
  br label %156

156:                                              ; preds = %155, %152, %93, %74, %44, %34, %21
  %157 = load i32, i32* %3, align 4
  ret i32 %157
}

declare dso_local i64 @bhnd_nvram_io_getsize(%struct.bhnd_nvram_io*) #1

declare dso_local i32* @bhnd_nv_malloc(i64) #1

declare dso_local i32 @bhnd_nvram_io_read(%struct.bhnd_nvram_io*, i32, i32*, i64) #1

declare dso_local i64 @strnlen(i8*, i64) #1

declare dso_local i32 @bhnd_nvram_parse_env(i8*, i64, i8 signext, i8**, i64*, i8**, i64*) #1

declare dso_local i32 @BHND_NV_LOG(i8*, i64, ...) #1

declare dso_local i32 @BHND_NV_ASSERT(i32, i8*) #1

declare dso_local i32* @bhnd_nv_reallocf(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
