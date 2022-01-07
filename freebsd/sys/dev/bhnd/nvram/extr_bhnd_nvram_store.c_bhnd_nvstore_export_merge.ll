; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/nvram/extr_bhnd_nvram_store.c_bhnd_nvstore_export_merge.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/nvram/extr_bhnd_nvram_store.c_bhnd_nvstore_export_merge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bhnd_nvram_store = type { i32, i32 }
%struct.TYPE_4__ = type { i32* }

@EXPORT_UNCOMMITTED = common dso_local global i32 0, align 4
@EXPORT_DELETED = common dso_local global i32 0, align 4
@EXPORT_COMMITTED = common dso_local global i32 0, align 4
@BHND_NVRAM_DATA_CAP_DEVPATHS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bhnd_nvram_store*, %struct.TYPE_4__*, i32*, i32)* @bhnd_nvstore_export_merge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bhnd_nvstore_export_merge(%struct.bhnd_nvram_store* %0, %struct.TYPE_4__* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.bhnd_nvram_store*, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32*, align 8
  store %struct.bhnd_nvram_store* %0, %struct.bhnd_nvram_store** %6, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* @EXPORT_UNCOMMITTED, align 4
  %18 = call i64 @BHND_NVSTORE_GET_FLAG(i32 %16, i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %49

20:                                               ; preds = %4
  store i32* null, i32** %13, align 8
  br label %21

21:                                               ; preds = %47, %37, %20
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = load i32*, i32** %13, align 8
  %26 = call i32* @bhnd_nvram_plist_next(i32* %24, i32* %25)
  store i32* %26, i32** %13, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %48

28:                                               ; preds = %21
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* @EXPORT_DELETED, align 4
  %31 = call i64 @BHND_NVSTORE_GET_FLAG(i32 %29, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %39, label %33

33:                                               ; preds = %28
  %34 = load i32*, i32** %13, align 8
  %35 = call i64 @bhnd_nvram_prop_is_null(i32* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  br label %21

38:                                               ; preds = %33
  br label %39

39:                                               ; preds = %38, %28
  %40 = load i32*, i32** %8, align 8
  %41 = load i32*, i32** %13, align 8
  %42 = call i32 @bhnd_nvram_plist_append(i32* %40, i32* %41)
  store i32 %42, i32* %12, align 4
  %43 = load i32, i32* %12, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %39
  %46 = load i32, i32* %12, align 4
  store i32 %46, i32* %5, align 4
  br label %118

47:                                               ; preds = %39
  br label %21

48:                                               ; preds = %21
  br label %49

49:                                               ; preds = %48, %4
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* @EXPORT_COMMITTED, align 4
  %52 = call i64 @BHND_NVSTORE_GET_FLAG(i32 %50, i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %49
  store i32 0, i32* %5, align 4
  br label %118

55:                                               ; preds = %49
  store i8* null, i8** %11, align 8
  br label %56

56:                                               ; preds = %116, %95, %88, %55
  %57 = load %struct.bhnd_nvram_store*, %struct.bhnd_nvram_store** %6, align 8
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %59 = call i8* @bhnd_nvstore_path_data_next(%struct.bhnd_nvram_store* %57, %struct.TYPE_4__* %58, i8** %11)
  store i8* %59, i8** %10, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %61, label %117

61:                                               ; preds = %56
  %62 = load %struct.bhnd_nvram_store*, %struct.bhnd_nvram_store** %6, align 8
  %63 = getelementptr inbounds %struct.bhnd_nvram_store, %struct.bhnd_nvram_store* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load i8*, i8** %10, align 8
  %66 = call i8* @bhnd_nvram_data_getvar_name(i32 %64, i8* %65)
  store i8* %66, i8** %14, align 8
  %67 = load %struct.bhnd_nvram_store*, %struct.bhnd_nvram_store** %6, align 8
  %68 = getelementptr inbounds %struct.bhnd_nvram_store, %struct.bhnd_nvram_store* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @BHND_NVRAM_DATA_CAP_DEVPATHS, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %61
  %74 = load i8*, i8** %14, align 8
  %75 = call i8* @bhnd_nvram_trim_path_name(i8* %74)
  store i8* %75, i8** %14, align 8
  br label %76

76:                                               ; preds = %73, %61
  %77 = load i32, i32* %9, align 4
  %78 = load i32, i32* @EXPORT_UNCOMMITTED, align 4
  %79 = call i64 @BHND_NVSTORE_GET_FLAG(i32 %77, i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %90

81:                                               ; preds = %76
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = load i8*, i8** %14, align 8
  %86 = call i64 @bhnd_nvram_plist_contains(i32* %84, i8* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %81
  br label %56

89:                                               ; preds = %81
  br label %90

90:                                               ; preds = %89, %76
  %91 = load i32*, i32** %8, align 8
  %92 = load i8*, i8** %14, align 8
  %93 = call i64 @bhnd_nvram_plist_contains(i32* %91, i8* %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %90
  br label %56

96:                                               ; preds = %90
  %97 = load %struct.bhnd_nvram_store*, %struct.bhnd_nvram_store** %6, align 8
  %98 = getelementptr inbounds %struct.bhnd_nvram_store, %struct.bhnd_nvram_store* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load i8*, i8** %10, align 8
  %101 = call i32 @bhnd_nvram_data_copy_val(i32 %99, i8* %100, i32** %15)
  store i32 %101, i32* %12, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %96
  %104 = load i32, i32* %12, align 4
  store i32 %104, i32* %5, align 4
  br label %118

105:                                              ; preds = %96
  %106 = load i32*, i32** %8, align 8
  %107 = load i8*, i8** %14, align 8
  %108 = load i32*, i32** %15, align 8
  %109 = call i32 @bhnd_nvram_plist_append_val(i32* %106, i8* %107, i32* %108)
  store i32 %109, i32* %12, align 4
  %110 = load i32*, i32** %15, align 8
  %111 = call i32 @bhnd_nvram_val_release(i32* %110)
  %112 = load i32, i32* %12, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %105
  %115 = load i32, i32* %12, align 4
  store i32 %115, i32* %5, align 4
  br label %118

116:                                              ; preds = %105
  br label %56

117:                                              ; preds = %56
  store i32 0, i32* %5, align 4
  br label %118

118:                                              ; preds = %117, %114, %103, %54, %45
  %119 = load i32, i32* %5, align 4
  ret i32 %119
}

declare dso_local i64 @BHND_NVSTORE_GET_FLAG(i32, i32) #1

declare dso_local i32* @bhnd_nvram_plist_next(i32*, i32*) #1

declare dso_local i64 @bhnd_nvram_prop_is_null(i32*) #1

declare dso_local i32 @bhnd_nvram_plist_append(i32*, i32*) #1

declare dso_local i8* @bhnd_nvstore_path_data_next(%struct.bhnd_nvram_store*, %struct.TYPE_4__*, i8**) #1

declare dso_local i8* @bhnd_nvram_data_getvar_name(i32, i8*) #1

declare dso_local i8* @bhnd_nvram_trim_path_name(i8*) #1

declare dso_local i64 @bhnd_nvram_plist_contains(i32*, i8*) #1

declare dso_local i32 @bhnd_nvram_data_copy_val(i32, i8*, i32**) #1

declare dso_local i32 @bhnd_nvram_plist_append_val(i32*, i8*, i32*) #1

declare dso_local i32 @bhnd_nvram_val_release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
