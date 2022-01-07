; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/nvram/extr_bhnd_nvram_store.c_bhnd_nvram_store_new.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/nvram/extr_bhnd_nvram_store.c_bhnd_nvram_store_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bhnd_nvram_store = type { i32, i32*, i32, i32, i32*, i64, i32*, i64 }
%struct.bhnd_nvram_data = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@BHND_NVSTORE_ROOT_PATH = common dso_local global i32 0, align 4
@BHND_NVSTORE_ROOT_PATH_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"missing root path\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bhnd_nvram_store_new(%struct.bhnd_nvram_store** %0, %struct.bhnd_nvram_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bhnd_nvram_store**, align 8
  %5 = alloca %struct.bhnd_nvram_data*, align 8
  %6 = alloca %struct.bhnd_nvram_store*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.bhnd_nvram_store** %0, %struct.bhnd_nvram_store*** %4, align 8
  store %struct.bhnd_nvram_data* %1, %struct.bhnd_nvram_data** %5, align 8
  %10 = call %struct.bhnd_nvram_store* @bhnd_nv_calloc(i32 1, i32 56)
  store %struct.bhnd_nvram_store* %10, %struct.bhnd_nvram_store** %6, align 8
  %11 = load %struct.bhnd_nvram_store*, %struct.bhnd_nvram_store** %6, align 8
  %12 = icmp eq %struct.bhnd_nvram_store* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* @ENOMEM, align 4
  store i32 %14, i32* %3, align 4
  br label %126

15:                                               ; preds = %2
  %16 = load %struct.bhnd_nvram_store*, %struct.bhnd_nvram_store** %6, align 8
  %17 = call i32 @BHND_NVSTORE_LOCK_INIT(%struct.bhnd_nvram_store* %16)
  %18 = load %struct.bhnd_nvram_store*, %struct.bhnd_nvram_store** %6, align 8
  %19 = call i32 @BHND_NVSTORE_LOCK(%struct.bhnd_nvram_store* %18)
  %20 = load %struct.bhnd_nvram_store*, %struct.bhnd_nvram_store** %6, align 8
  %21 = getelementptr inbounds %struct.bhnd_nvram_store, %struct.bhnd_nvram_store* %20, i32 0, i32 7
  store i64 0, i64* %21, align 8
  store i64 0, i64* %8, align 8
  br label %22

22:                                               ; preds = %36, %15
  %23 = load i64, i64* %8, align 8
  %24 = load %struct.bhnd_nvram_store*, %struct.bhnd_nvram_store** %6, align 8
  %25 = getelementptr inbounds %struct.bhnd_nvram_store, %struct.bhnd_nvram_store* %24, i32 0, i32 6
  %26 = load i32*, i32** %25, align 8
  %27 = call i64 @nitems(i32* %26)
  %28 = icmp ult i64 %23, %27
  br i1 %28, label %29, label %39

29:                                               ; preds = %22
  %30 = load %struct.bhnd_nvram_store*, %struct.bhnd_nvram_store** %6, align 8
  %31 = getelementptr inbounds %struct.bhnd_nvram_store, %struct.bhnd_nvram_store* %30, i32 0, i32 6
  %32 = load i32*, i32** %31, align 8
  %33 = load i64, i64* %8, align 8
  %34 = getelementptr inbounds i32, i32* %32, i64 %33
  %35 = call i32 @LIST_INIT(i32* %34)
  br label %36

36:                                               ; preds = %29
  %37 = load i64, i64* %8, align 8
  %38 = add i64 %37, 1
  store i64 %38, i64* %8, align 8
  br label %22

39:                                               ; preds = %22
  %40 = load %struct.bhnd_nvram_store*, %struct.bhnd_nvram_store** %6, align 8
  %41 = getelementptr inbounds %struct.bhnd_nvram_store, %struct.bhnd_nvram_store* %40, i32 0, i32 5
  store i64 0, i64* %41, align 8
  store i64 0, i64* %9, align 8
  br label %42

42:                                               ; preds = %56, %39
  %43 = load i64, i64* %9, align 8
  %44 = load %struct.bhnd_nvram_store*, %struct.bhnd_nvram_store** %6, align 8
  %45 = getelementptr inbounds %struct.bhnd_nvram_store, %struct.bhnd_nvram_store* %44, i32 0, i32 4
  %46 = load i32*, i32** %45, align 8
  %47 = call i64 @nitems(i32* %46)
  %48 = icmp ult i64 %43, %47
  br i1 %48, label %49, label %59

49:                                               ; preds = %42
  %50 = load %struct.bhnd_nvram_store*, %struct.bhnd_nvram_store** %6, align 8
  %51 = getelementptr inbounds %struct.bhnd_nvram_store, %struct.bhnd_nvram_store* %50, i32 0, i32 4
  %52 = load i32*, i32** %51, align 8
  %53 = load i64, i64* %9, align 8
  %54 = getelementptr inbounds i32, i32* %52, i64 %53
  %55 = call i32 @LIST_INIT(i32* %54)
  br label %56

56:                                               ; preds = %49
  %57 = load i64, i64* %9, align 8
  %58 = add i64 %57, 1
  store i64 %58, i64* %9, align 8
  br label %42

59:                                               ; preds = %42
  %60 = load %struct.bhnd_nvram_data*, %struct.bhnd_nvram_data** %5, align 8
  %61 = call i32 @bhnd_nvram_data_retain(%struct.bhnd_nvram_data* %60)
  %62 = load %struct.bhnd_nvram_store*, %struct.bhnd_nvram_store** %6, align 8
  %63 = getelementptr inbounds %struct.bhnd_nvram_store, %struct.bhnd_nvram_store* %62, i32 0, i32 3
  store i32 %61, i32* %63, align 4
  %64 = load %struct.bhnd_nvram_data*, %struct.bhnd_nvram_data** %5, align 8
  %65 = call i32 @bhnd_nvram_data_caps(%struct.bhnd_nvram_data* %64)
  %66 = load %struct.bhnd_nvram_store*, %struct.bhnd_nvram_store** %6, align 8
  %67 = getelementptr inbounds %struct.bhnd_nvram_store, %struct.bhnd_nvram_store* %66, i32 0, i32 2
  store i32 %65, i32* %67, align 8
  %68 = load %struct.bhnd_nvram_data*, %struct.bhnd_nvram_data** %5, align 8
  %69 = call i32* @bhnd_nvram_data_options(%struct.bhnd_nvram_data* %68)
  %70 = load %struct.bhnd_nvram_store*, %struct.bhnd_nvram_store** %6, align 8
  %71 = getelementptr inbounds %struct.bhnd_nvram_store, %struct.bhnd_nvram_store* %70, i32 0, i32 1
  store i32* %69, i32** %71, align 8
  %72 = load %struct.bhnd_nvram_store*, %struct.bhnd_nvram_store** %6, align 8
  %73 = getelementptr inbounds %struct.bhnd_nvram_store, %struct.bhnd_nvram_store* %72, i32 0, i32 1
  %74 = load i32*, i32** %73, align 8
  %75 = icmp ne i32* %74, null
  br i1 %75, label %76, label %81

76:                                               ; preds = %59
  %77 = load %struct.bhnd_nvram_store*, %struct.bhnd_nvram_store** %6, align 8
  %78 = getelementptr inbounds %struct.bhnd_nvram_store, %struct.bhnd_nvram_store* %77, i32 0, i32 1
  %79 = load i32*, i32** %78, align 8
  %80 = call i32 @bhnd_nvram_plist_retain(i32* %79)
  br label %92

81:                                               ; preds = %59
  %82 = call i32* (...) @bhnd_nvram_plist_new()
  %83 = load %struct.bhnd_nvram_store*, %struct.bhnd_nvram_store** %6, align 8
  %84 = getelementptr inbounds %struct.bhnd_nvram_store, %struct.bhnd_nvram_store* %83, i32 0, i32 1
  store i32* %82, i32** %84, align 8
  %85 = load %struct.bhnd_nvram_store*, %struct.bhnd_nvram_store** %6, align 8
  %86 = getelementptr inbounds %struct.bhnd_nvram_store, %struct.bhnd_nvram_store* %85, i32 0, i32 1
  %87 = load i32*, i32** %86, align 8
  %88 = icmp eq i32* %87, null
  br i1 %88, label %89, label %91

89:                                               ; preds = %81
  %90 = load i32, i32* @ENOMEM, align 4
  store i32 %90, i32* %7, align 4
  br label %120

91:                                               ; preds = %81
  br label %92

92:                                               ; preds = %91, %76
  %93 = load %struct.bhnd_nvram_store*, %struct.bhnd_nvram_store** %6, align 8
  %94 = load i32, i32* @BHND_NVSTORE_ROOT_PATH, align 4
  %95 = load i32, i32* @BHND_NVSTORE_ROOT_PATH_LEN, align 4
  %96 = call i32 @bhnd_nvstore_register_path(%struct.bhnd_nvram_store* %93, i32 %94, i32 %95)
  store i32 %96, i32* %7, align 4
  %97 = load i32, i32* %7, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %92
  br label %120

100:                                              ; preds = %92
  %101 = load %struct.bhnd_nvram_store*, %struct.bhnd_nvram_store** %6, align 8
  %102 = load i32, i32* @BHND_NVSTORE_ROOT_PATH, align 4
  %103 = load i32, i32* @BHND_NVSTORE_ROOT_PATH_LEN, align 4
  %104 = call i32 @bhnd_nvstore_get_path(%struct.bhnd_nvram_store* %101, i32 %102, i32 %103)
  %105 = load %struct.bhnd_nvram_store*, %struct.bhnd_nvram_store** %6, align 8
  %106 = getelementptr inbounds %struct.bhnd_nvram_store, %struct.bhnd_nvram_store* %105, i32 0, i32 0
  store i32 %104, i32* %106, align 8
  %107 = load %struct.bhnd_nvram_store*, %struct.bhnd_nvram_store** %6, align 8
  %108 = getelementptr inbounds %struct.bhnd_nvram_store, %struct.bhnd_nvram_store* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @BHND_NV_ASSERT(i32 %109, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %111 = load %struct.bhnd_nvram_store*, %struct.bhnd_nvram_store** %6, align 8
  %112 = call i32 @bhnd_nvstore_parse_data(%struct.bhnd_nvram_store* %111)
  store i32 %112, i32* %7, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %100
  br label %120

115:                                              ; preds = %100
  %116 = load %struct.bhnd_nvram_store*, %struct.bhnd_nvram_store** %6, align 8
  %117 = load %struct.bhnd_nvram_store**, %struct.bhnd_nvram_store*** %4, align 8
  store %struct.bhnd_nvram_store* %116, %struct.bhnd_nvram_store** %117, align 8
  %118 = load %struct.bhnd_nvram_store*, %struct.bhnd_nvram_store** %6, align 8
  %119 = call i32 @BHND_NVSTORE_UNLOCK(%struct.bhnd_nvram_store* %118)
  store i32 0, i32* %3, align 4
  br label %126

120:                                              ; preds = %114, %99, %89
  %121 = load %struct.bhnd_nvram_store*, %struct.bhnd_nvram_store** %6, align 8
  %122 = call i32 @BHND_NVSTORE_UNLOCK(%struct.bhnd_nvram_store* %121)
  %123 = load %struct.bhnd_nvram_store*, %struct.bhnd_nvram_store** %6, align 8
  %124 = call i32 @bhnd_nvram_store_free(%struct.bhnd_nvram_store* %123)
  %125 = load i32, i32* %7, align 4
  store i32 %125, i32* %3, align 4
  br label %126

126:                                              ; preds = %120, %115, %13
  %127 = load i32, i32* %3, align 4
  ret i32 %127
}

declare dso_local %struct.bhnd_nvram_store* @bhnd_nv_calloc(i32, i32) #1

declare dso_local i32 @BHND_NVSTORE_LOCK_INIT(%struct.bhnd_nvram_store*) #1

declare dso_local i32 @BHND_NVSTORE_LOCK(%struct.bhnd_nvram_store*) #1

declare dso_local i64 @nitems(i32*) #1

declare dso_local i32 @LIST_INIT(i32*) #1

declare dso_local i32 @bhnd_nvram_data_retain(%struct.bhnd_nvram_data*) #1

declare dso_local i32 @bhnd_nvram_data_caps(%struct.bhnd_nvram_data*) #1

declare dso_local i32* @bhnd_nvram_data_options(%struct.bhnd_nvram_data*) #1

declare dso_local i32 @bhnd_nvram_plist_retain(i32*) #1

declare dso_local i32* @bhnd_nvram_plist_new(...) #1

declare dso_local i32 @bhnd_nvstore_register_path(%struct.bhnd_nvram_store*, i32, i32) #1

declare dso_local i32 @bhnd_nvstore_get_path(%struct.bhnd_nvram_store*, i32, i32) #1

declare dso_local i32 @BHND_NV_ASSERT(i32, i8*) #1

declare dso_local i32 @bhnd_nvstore_parse_data(%struct.bhnd_nvram_store*) #1

declare dso_local i32 @BHND_NVSTORE_UNLOCK(%struct.bhnd_nvram_store*) #1

declare dso_local i32 @bhnd_nvram_store_free(%struct.bhnd_nvram_store*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
