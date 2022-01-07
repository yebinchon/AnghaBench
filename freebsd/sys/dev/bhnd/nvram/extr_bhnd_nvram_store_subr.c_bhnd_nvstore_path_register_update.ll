; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/nvram/extr_bhnd_nvram_store_subr.c_bhnd_nvstore_path_register_update.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/nvram/extr_bhnd_nvram_store_subr.c_bhnd_nvstore_path_register_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bhnd_nvram_store = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"%lu:%s\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@BHND_NVRAM_TYPE_NULL = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [30 x i8] c"cannot unset property %s: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"cannot set property %s: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bhnd_nvstore_path_register_update(%struct.bhnd_nvram_store* %0, %struct.TYPE_6__* %1, i8* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.bhnd_nvram_store*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_7__*, align 8
  %17 = alloca i32, align 4
  store %struct.bhnd_nvram_store* %0, %struct.bhnd_nvram_store** %6, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32* %3, i32** %9, align 8
  store i8* null, i8** %13, align 8
  store i32* null, i32** %10, align 8
  store i32 0, i32* %15, align 4
  %18 = load %struct.bhnd_nvram_store*, %struct.bhnd_nvram_store** %6, align 8
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %20 = load i8*, i8** %8, align 8
  %21 = call i8* @bhnd_nvstore_path_data_lookup(%struct.bhnd_nvram_store* %18, %struct.TYPE_6__* %19, i8* %20)
  store i8* %21, i8** %12, align 8
  %22 = load i8*, i8** %12, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %30

24:                                               ; preds = %4
  store i32 1, i32* %15, align 4
  %25 = load %struct.bhnd_nvram_store*, %struct.bhnd_nvram_store** %6, align 8
  %26 = getelementptr inbounds %struct.bhnd_nvram_store, %struct.bhnd_nvram_store* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i8*, i8** %12, align 8
  %29 = call i8* @bhnd_nvram_data_getvar_name(i32 %27, i8* %28)
  store i8* %29, i8** %11, align 8
  br label %66

30:                                               ; preds = %4
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %32 = load %struct.bhnd_nvram_store*, %struct.bhnd_nvram_store** %6, align 8
  %33 = getelementptr inbounds %struct.bhnd_nvram_store, %struct.bhnd_nvram_store* %32, i32 0, i32 1
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %35 = icmp eq %struct.TYPE_6__* %31, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %30
  %37 = load i8*, i8** %8, align 8
  store i8* %37, i8** %11, align 8
  br label %65

38:                                               ; preds = %30
  %39 = load %struct.bhnd_nvram_store*, %struct.bhnd_nvram_store** %6, align 8
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call %struct.TYPE_7__* @bhnd_nvstore_find_alias(%struct.bhnd_nvram_store* %39, i32 %42)
  store %struct.TYPE_7__* %43, %struct.TYPE_7__** %16, align 8
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %45 = icmp ne %struct.TYPE_7__* %44, null
  br i1 %45, label %46, label %52

46:                                               ; preds = %38
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i8*, i8** %8, align 8
  %51 = call i32 @bhnd_nv_asprintf(i8** %13, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %49, i8* %50)
  store i32 %51, i32* %17, align 4
  br label %58

52:                                               ; preds = %38
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load i8*, i8** %8, align 8
  %57 = call i32 @bhnd_nv_asprintf(i8** %13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %55, i8* %56)
  store i32 %57, i32* %17, align 4
  br label %58

58:                                               ; preds = %52, %46
  %59 = load i32, i32* %17, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %58
  %62 = load i32, i32* @ENOMEM, align 4
  store i32 %62, i32* %5, align 4
  br label %144

63:                                               ; preds = %58
  %64 = load i8*, i8** %13, align 8
  store i8* %64, i8** %11, align 8
  br label %65

65:                                               ; preds = %63, %36
  br label %66

66:                                               ; preds = %65, %24
  %67 = load i32*, i32** %9, align 8
  %68 = call i64 @bhnd_nvram_val_type(i32* %67)
  %69 = load i64, i64* @BHND_NVRAM_TYPE_NULL, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %90

71:                                               ; preds = %66
  %72 = load %struct.bhnd_nvram_store*, %struct.bhnd_nvram_store** %6, align 8
  %73 = getelementptr inbounds %struct.bhnd_nvram_store, %struct.bhnd_nvram_store* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i8*, i8** %11, align 8
  %76 = call i32 @bhnd_nvram_data_filter_unsetvar(i32 %74, i8* %75)
  store i32 %76, i32* %14, align 4
  %77 = load i32, i32* %14, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %71
  %80 = load i8*, i8** %11, align 8
  %81 = load i32, i32* %14, align 4
  %82 = call i32 @BHND_NV_LOG(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i8* %80, i32 %81)
  br label %130

83:                                               ; preds = %71
  %84 = load i32*, i32** %9, align 8
  %85 = call i32* @bhnd_nvram_val_copy(i32* %84)
  store i32* %85, i32** %10, align 8
  %86 = icmp eq i32* %85, null
  br i1 %86, label %87, label %89

87:                                               ; preds = %83
  %88 = load i32, i32* @ENOMEM, align 4
  store i32 %88, i32* %14, align 4
  br label %130

89:                                               ; preds = %83
  br label %104

90:                                               ; preds = %66
  %91 = load %struct.bhnd_nvram_store*, %struct.bhnd_nvram_store** %6, align 8
  %92 = getelementptr inbounds %struct.bhnd_nvram_store, %struct.bhnd_nvram_store* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load i8*, i8** %11, align 8
  %95 = load i32*, i32** %9, align 8
  %96 = call i32 @bhnd_nvram_data_filter_setvar(i32 %93, i8* %94, i32* %95, i32** %10)
  store i32 %96, i32* %14, align 4
  %97 = load i32, i32* %14, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %90
  %100 = load i8*, i8** %11, align 8
  %101 = load i32, i32* %14, align 4
  %102 = call i32 @BHND_NV_LOG(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i8* %100, i32 %101)
  br label %130

103:                                              ; preds = %90
  br label %104

104:                                              ; preds = %103, %89
  %105 = load i32*, i32** %9, align 8
  %106 = call i64 @bhnd_nvram_val_type(i32* %105)
  %107 = load i64, i64* @BHND_NVRAM_TYPE_NULL, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %109, label %118

109:                                              ; preds = %104
  %110 = load i32, i32* %15, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %118, label %112

112:                                              ; preds = %109
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load i8*, i8** %8, align 8
  %117 = call i32 @bhnd_nvram_plist_remove(i32 %115, i8* %116)
  br label %129

118:                                              ; preds = %109, %104
  %119 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load i8*, i8** %8, align 8
  %123 = load i32*, i32** %10, align 8
  %124 = call i32 @bhnd_nvram_plist_replace_val(i32 %121, i8* %122, i32* %123)
  store i32 %124, i32* %14, align 4
  %125 = load i32, i32* %14, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %118
  br label %130

128:                                              ; preds = %118
  br label %129

129:                                              ; preds = %128, %112
  store i32 0, i32* %14, align 4
  br label %130

130:                                              ; preds = %129, %127, %99, %87, %79
  %131 = load i8*, i8** %13, align 8
  %132 = icmp ne i8* %131, null
  br i1 %132, label %133, label %136

133:                                              ; preds = %130
  %134 = load i8*, i8** %13, align 8
  %135 = call i32 @bhnd_nv_free(i8* %134)
  br label %136

136:                                              ; preds = %133, %130
  %137 = load i32*, i32** %10, align 8
  %138 = icmp ne i32* %137, null
  br i1 %138, label %139, label %142

139:                                              ; preds = %136
  %140 = load i32*, i32** %10, align 8
  %141 = call i32 @bhnd_nvram_val_release(i32* %140)
  br label %142

142:                                              ; preds = %139, %136
  %143 = load i32, i32* %14, align 4
  store i32 %143, i32* %5, align 4
  br label %144

144:                                              ; preds = %142, %61
  %145 = load i32, i32* %5, align 4
  ret i32 %145
}

declare dso_local i8* @bhnd_nvstore_path_data_lookup(%struct.bhnd_nvram_store*, %struct.TYPE_6__*, i8*) #1

declare dso_local i8* @bhnd_nvram_data_getvar_name(i32, i8*) #1

declare dso_local %struct.TYPE_7__* @bhnd_nvstore_find_alias(%struct.bhnd_nvram_store*, i32) #1

declare dso_local i32 @bhnd_nv_asprintf(i8**, i8*, i32, i8*) #1

declare dso_local i64 @bhnd_nvram_val_type(i32*) #1

declare dso_local i32 @bhnd_nvram_data_filter_unsetvar(i32, i8*) #1

declare dso_local i32 @BHND_NV_LOG(i8*, i8*, i32) #1

declare dso_local i32* @bhnd_nvram_val_copy(i32*) #1

declare dso_local i32 @bhnd_nvram_data_filter_setvar(i32, i8*, i32*, i32**) #1

declare dso_local i32 @bhnd_nvram_plist_remove(i32, i8*) #1

declare dso_local i32 @bhnd_nvram_plist_replace_val(i32, i8*, i32*) #1

declare dso_local i32 @bhnd_nv_free(i8*) #1

declare dso_local i32 @bhnd_nvram_val_release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
