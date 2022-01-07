; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/nvram/extr_bhnd_nvram_store.c_bhnd_nvstore_export_devpath_alias.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/nvram/extr_bhnd_nvram_store.c_bhnd_nvstore_export_devpath_alias.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bhnd_nvram_store = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"devpath%lu\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"reserved alias %lu:%s in use\00", align 1
@ULONG_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bhnd_nvram_store*, %struct.TYPE_5__*, i8*, i32*, i32*)* @bhnd_nvstore_export_devpath_alias to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bhnd_nvstore_export_devpath_alias(%struct.bhnd_nvram_store* %0, %struct.TYPE_5__* %1, i8* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.bhnd_nvram_store*, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_6__*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store %struct.bhnd_nvram_store* %0, %struct.bhnd_nvram_store** %7, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %15 = load i32*, i32** %11, align 8
  store i32 0, i32* %15, align 4
  %16 = load %struct.bhnd_nvram_store*, %struct.bhnd_nvram_store** %7, align 8
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.TYPE_6__* @bhnd_nvstore_find_alias(%struct.bhnd_nvram_store* %16, i32 %19)
  store %struct.TYPE_6__* %20, %struct.TYPE_6__** %12, align 8
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %22 = icmp ne %struct.TYPE_6__* %21, null
  br i1 %22, label %23, label %55

23:                                               ; preds = %5
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32*, i32** %11, align 8
  store i32 %26, i32* %27, align 4
  %28 = load i32*, i32** %11, align 8
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @bhnd_nv_asprintf(i8** %13, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load i8*, i8** %13, align 8
  %32 = icmp eq i8* %31, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %23
  %34 = load i32, i32* @ENOMEM, align 4
  store i32 %34, i32* %6, align 4
  br label %109

35:                                               ; preds = %23
  %36 = load i32*, i32** %10, align 8
  %37 = load i8*, i8** %13, align 8
  %38 = load i8*, i8** %9, align 8
  %39 = call i32 @bhnd_nvram_plist_append_string(i32* %36, i8* %37, i8* %38)
  store i32 %39, i32* %14, align 4
  %40 = load i32, i32* %14, align 4
  %41 = load i32, i32* @EEXIST, align 4
  %42 = icmp ne i32 %40, %41
  %43 = zext i1 %42 to i32
  %44 = load i32*, i32** %11, align 8
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = sext i32 %48 to i64
  %50 = inttoptr i64 %49 to i8*
  %51 = call i32 @BHND_NV_ASSERT(i32 %43, i8* %50)
  %52 = load i8*, i8** %13, align 8
  %53 = call i32 @bhnd_nv_free(i8* %52)
  %54 = load i32, i32* %14, align 4
  store i32 %54, i32* %6, align 4
  br label %109

55:                                               ; preds = %5
  br label %56

56:                                               ; preds = %55, %97
  br label %57

57:                                               ; preds = %70, %56
  %58 = load %struct.bhnd_nvram_store*, %struct.bhnd_nvram_store** %7, align 8
  %59 = load i32*, i32** %11, align 8
  %60 = load i32, i32* %59, align 4
  %61 = call i32* @bhnd_nvstore_get_alias(%struct.bhnd_nvram_store* %58, i32 %60)
  %62 = icmp ne i32* %61, null
  br i1 %62, label %63, label %74

63:                                               ; preds = %57
  %64 = load i32*, i32** %11, align 8
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @ULONG_MAX, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %63
  %69 = load i32, i32* @ENOMEM, align 4
  store i32 %69, i32* %6, align 4
  br label %109

70:                                               ; preds = %63
  %71 = load i32*, i32** %11, align 8
  %72 = load i32, i32* %71, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %71, align 4
  br label %57

74:                                               ; preds = %57
  %75 = load i32*, i32** %11, align 8
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @bhnd_nv_asprintf(i8** %13, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %76)
  %78 = load i8*, i8** %13, align 8
  %79 = icmp eq i8* %78, null
  br i1 %79, label %80, label %82

80:                                               ; preds = %74
  %81 = load i32, i32* @ENOMEM, align 4
  store i32 %81, i32* %6, align 4
  br label %109

82:                                               ; preds = %74
  %83 = load i32*, i32** %10, align 8
  %84 = load i8*, i8** %13, align 8
  %85 = call i32 @bhnd_nvram_plist_contains(i32* %83, i8* %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %88, label %87

87:                                               ; preds = %82
  br label %101

88:                                               ; preds = %82
  %89 = load i8*, i8** %13, align 8
  %90 = call i32 @bhnd_nv_free(i8* %89)
  %91 = load i32*, i32** %11, align 8
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @ULONG_MAX, align 4
  %94 = icmp eq i32 %92, %93
  br i1 %94, label %95, label %97

95:                                               ; preds = %88
  %96 = load i32, i32* @ENOMEM, align 4
  store i32 %96, i32* %6, align 4
  br label %109

97:                                               ; preds = %88
  %98 = load i32*, i32** %11, align 8
  %99 = load i32, i32* %98, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %98, align 4
  br label %56

101:                                              ; preds = %87
  %102 = load i32*, i32** %10, align 8
  %103 = load i8*, i8** %13, align 8
  %104 = load i8*, i8** %9, align 8
  %105 = call i32 @bhnd_nvram_plist_append_string(i32* %102, i8* %103, i8* %104)
  store i32 %105, i32* %14, align 4
  %106 = load i8*, i8** %13, align 8
  %107 = call i32 @bhnd_nv_free(i8* %106)
  %108 = load i32, i32* %14, align 4
  store i32 %108, i32* %6, align 4
  br label %109

109:                                              ; preds = %101, %95, %80, %68, %35, %33
  %110 = load i32, i32* %6, align 4
  ret i32 %110
}

declare dso_local %struct.TYPE_6__* @bhnd_nvstore_find_alias(%struct.bhnd_nvram_store*, i32) #1

declare dso_local i32 @bhnd_nv_asprintf(i8**, i8*, i32) #1

declare dso_local i32 @bhnd_nvram_plist_append_string(i32*, i8*, i8*) #1

declare dso_local i32 @BHND_NV_ASSERT(i32, i8*) #1

declare dso_local i32 @bhnd_nv_free(i8*) #1

declare dso_local i32* @bhnd_nvstore_get_alias(%struct.bhnd_nvram_store*, i32) #1

declare dso_local i32 @bhnd_nvram_plist_contains(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
