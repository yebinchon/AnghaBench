; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/nvram/extr_bhnd_nvram_store_subr.c_bhnd_nvstore_index_lookup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/nvram/extr_bhnd_nvram_store_subr.c_bhnd_nvstore_index_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bhnd_nvram_store = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i8** }

@MA_OWNED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"NULL index\00", align 1
@BHND_NVRAM_DATA_CAP_DEVPATHS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @bhnd_nvstore_index_lookup(%struct.bhnd_nvram_store* %0, %struct.TYPE_3__* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.bhnd_nvram_store*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  store %struct.bhnd_nvram_store* %0, %struct.bhnd_nvram_store** %5, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %6, align 8
  store i8* %2, i8** %7, align 8
  %18 = load %struct.bhnd_nvram_store*, %struct.bhnd_nvram_store** %5, align 8
  %19 = load i32, i32* @MA_OWNED, align 4
  %20 = call i32 @BHND_NVSTORE_LOCK_ASSERT(%struct.bhnd_nvram_store* %18, i32 %19)
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %22 = icmp ne %struct.TYPE_3__* %21, null
  %23 = zext i1 %22 to i32
  %24 = call i32 @BHND_NV_ASSERT(i32 %23, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %3
  store i8* null, i8** %4, align 8
  br label %130

30:                                               ; preds = %3
  %31 = load %struct.bhnd_nvram_store*, %struct.bhnd_nvram_store** %5, align 8
  %32 = getelementptr inbounds %struct.bhnd_nvram_store, %struct.bhnd_nvram_store* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %13, align 4
  store i64 0, i64* %10, align 8
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = sub nsw i32 %36, 1
  %38 = sext i32 %37 to i64
  store i64 %38, i64* %12, align 8
  br label %39

39:                                               ; preds = %128, %30
  %40 = load i64, i64* %12, align 8
  %41 = load i64, i64* %10, align 8
  %42 = icmp uge i64 %40, %41
  br i1 %42, label %43, label %129

43:                                               ; preds = %39
  %44 = load i64, i64* %10, align 8
  %45 = load i64, i64* %12, align 8
  %46 = add i64 %44, %45
  %47 = udiv i64 %46, 2
  store i64 %47, i64* %11, align 8
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 1
  %50 = load i8**, i8*** %49, align 8
  %51 = load i64, i64* %11, align 8
  %52 = getelementptr inbounds i8*, i8** %50, i64 %51
  %53 = load i8*, i8** %52, align 8
  store i8* %53, i8** %8, align 8
  %54 = load %struct.bhnd_nvram_store*, %struct.bhnd_nvram_store** %5, align 8
  %55 = getelementptr inbounds %struct.bhnd_nvram_store, %struct.bhnd_nvram_store* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i8*, i8** %8, align 8
  %58 = call i8* @bhnd_nvram_data_getvar_name(i32 %56, i8* %57)
  store i8* %58, i8** %9, align 8
  %59 = load i32, i32* %13, align 4
  %60 = load i32, i32* @BHND_NVRAM_DATA_CAP_DEVPATHS, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %43
  %64 = load i8*, i8** %9, align 8
  %65 = call i8* @bhnd_nvram_trim_path_name(i8* %64)
  store i8* %65, i8** %9, align 8
  br label %66

66:                                               ; preds = %63, %43
  %67 = load i8*, i8** %9, align 8
  %68 = load i8*, i8** %7, align 8
  %69 = call i64 @strcmp(i8* %67, i8* %68)
  %70 = trunc i64 %69 to i32
  store i32 %70, i32* %14, align 4
  %71 = load i32, i32* %14, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %66
  %74 = load i64, i64* %11, align 8
  %75 = add i64 %74, 1
  store i64 %75, i64* %10, align 8
  br label %128

76:                                               ; preds = %66
  %77 = load i32, i32* %14, align 4
  %78 = icmp sgt i32 %77, 0
  br i1 %78, label %79, label %86

79:                                               ; preds = %76
  %80 = load i64, i64* %11, align 8
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %79
  br label %129

83:                                               ; preds = %79
  %84 = load i64, i64* %11, align 8
  %85 = sub i64 %84, 1
  store i64 %85, i64* %12, align 8
  br label %127

86:                                               ; preds = %76
  %87 = load i32, i32* %14, align 4
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %126

89:                                               ; preds = %86
  %90 = load i64, i64* %11, align 8
  store i64 %90, i64* %15, align 8
  br label %91

91:                                               ; preds = %122, %89
  %92 = load i64, i64* %15, align 8
  %93 = icmp ugt i64 %92, 0
  br i1 %93, label %94, label %124

94:                                               ; preds = %91
  %95 = load i64, i64* %15, align 8
  %96 = add i64 %95, -1
  store i64 %96, i64* %15, align 8
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 1
  %99 = load i8**, i8*** %98, align 8
  %100 = load i64, i64* %15, align 8
  %101 = getelementptr inbounds i8*, i8** %99, i64 %100
  %102 = load i8*, i8** %101, align 8
  store i8* %102, i8** %16, align 8
  %103 = load %struct.bhnd_nvram_store*, %struct.bhnd_nvram_store** %5, align 8
  %104 = getelementptr inbounds %struct.bhnd_nvram_store, %struct.bhnd_nvram_store* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load i8*, i8** %16, align 8
  %107 = call i8* @bhnd_nvram_data_getvar_name(i32 %105, i8* %106)
  store i8* %107, i8** %17, align 8
  %108 = load i32, i32* %13, align 4
  %109 = load i32, i32* @BHND_NVRAM_DATA_CAP_DEVPATHS, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %94
  %113 = load i8*, i8** %17, align 8
  %114 = call i8* @bhnd_nvram_trim_path_name(i8* %113)
  store i8* %114, i8** %17, align 8
  br label %115

115:                                              ; preds = %112, %94
  %116 = load i8*, i8** %9, align 8
  %117 = load i8*, i8** %17, align 8
  %118 = call i64 @strcmp(i8* %116, i8* %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %115
  %121 = load i8*, i8** %8, align 8
  store i8* %121, i8** %4, align 8
  br label %130

122:                                              ; preds = %115
  %123 = load i8*, i8** %16, align 8
  store i8* %123, i8** %8, align 8
  br label %91

124:                                              ; preds = %91
  %125 = load i8*, i8** %8, align 8
  store i8* %125, i8** %4, align 8
  br label %130

126:                                              ; preds = %86
  br label %127

127:                                              ; preds = %126, %83
  br label %128

128:                                              ; preds = %127, %73
  br label %39

129:                                              ; preds = %82, %39
  store i8* null, i8** %4, align 8
  br label %130

130:                                              ; preds = %129, %124, %120, %29
  %131 = load i8*, i8** %4, align 8
  ret i8* %131
}

declare dso_local i32 @BHND_NVSTORE_LOCK_ASSERT(%struct.bhnd_nvram_store*, i32) #1

declare dso_local i32 @BHND_NV_ASSERT(i32, i8*) #1

declare dso_local i8* @bhnd_nvram_data_getvar_name(i32, i8*) #1

declare dso_local i8* @bhnd_nvram_trim_path_name(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
