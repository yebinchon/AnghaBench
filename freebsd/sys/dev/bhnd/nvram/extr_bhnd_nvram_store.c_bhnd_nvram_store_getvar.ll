; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/nvram/extr_bhnd_nvram_store.c_bhnd_nvram_store_getvar.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/nvram/extr_bhnd_nvram_store.c_bhnd_nvram_store_getvar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bhnd_nvram_store = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }

@BHND_NVSTORE_NAME_EXTERNAL = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bhnd_nvram_store_getvar(%struct.bhnd_nvram_store* %0, i8* %1, i8* %2, i64* %3, i32 %4) #0 {
  %6 = alloca %struct.bhnd_nvram_store*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_4__, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  store %struct.bhnd_nvram_store* %0, %struct.bhnd_nvram_store** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64* %3, i64** %9, align 8
  store i32 %4, i32* %10, align 4
  %16 = load %struct.bhnd_nvram_store*, %struct.bhnd_nvram_store** %6, align 8
  %17 = call i32 @BHND_NVSTORE_LOCK(%struct.bhnd_nvram_store* %16)
  %18 = load i8*, i8** %7, align 8
  %19 = load i32, i32* @BHND_NVSTORE_NAME_EXTERNAL, align 4
  %20 = load %struct.bhnd_nvram_store*, %struct.bhnd_nvram_store** %6, align 8
  %21 = getelementptr inbounds %struct.bhnd_nvram_store, %struct.bhnd_nvram_store* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @bhnd_nvstore_parse_name_info(i8* %18, i32 %19, i32 %22, %struct.TYPE_4__* %11)
  store i32 %23, i32* %15, align 4
  %24 = load i32, i32* %15, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %5
  br label %73

27:                                               ; preds = %5
  %28 = load %struct.bhnd_nvram_store*, %struct.bhnd_nvram_store** %6, align 8
  %29 = call i32* @bhnd_nvstore_var_get_path(%struct.bhnd_nvram_store* %28, %struct.TYPE_4__* %11)
  store i32* %29, i32** %12, align 8
  %30 = icmp eq i32* %29, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = load i32, i32* @ENOENT, align 4
  store i32 %32, i32* %15, align 4
  br label %73

33:                                               ; preds = %27
  %34 = load %struct.bhnd_nvram_store*, %struct.bhnd_nvram_store** %6, align 8
  %35 = load i32*, i32** %12, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32* @bhnd_nvstore_path_get_update(%struct.bhnd_nvram_store* %34, i32* %35, i32 %37)
  store i32* %38, i32** %13, align 8
  %39 = load i32*, i32** %13, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %54

41:                                               ; preds = %33
  %42 = load i32*, i32** %13, align 8
  %43 = call i64 @bhnd_nvram_prop_is_null(i32* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %41
  %46 = load i32, i32* @ENOENT, align 4
  store i32 %46, i32* %15, align 4
  br label %53

47:                                               ; preds = %41
  %48 = load i32*, i32** %13, align 8
  %49 = load i8*, i8** %8, align 8
  %50 = load i64*, i64** %9, align 8
  %51 = load i32, i32* %10, align 4
  %52 = call i32 @bhnd_nvram_prop_encode(i32* %48, i8* %49, i64* %50, i32 %51)
  store i32 %52, i32* %15, align 4
  br label %53

53:                                               ; preds = %47, %45
  br label %73

54:                                               ; preds = %33
  %55 = load %struct.bhnd_nvram_store*, %struct.bhnd_nvram_store** %6, align 8
  %56 = load i32*, i32** %12, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i8* @bhnd_nvstore_path_data_lookup(%struct.bhnd_nvram_store* %55, i32* %56, i32 %58)
  store i8* %59, i8** %14, align 8
  %60 = load i8*, i8** %14, align 8
  %61 = icmp ne i8* %60, null
  br i1 %61, label %62, label %71

62:                                               ; preds = %54
  %63 = load %struct.bhnd_nvram_store*, %struct.bhnd_nvram_store** %6, align 8
  %64 = getelementptr inbounds %struct.bhnd_nvram_store, %struct.bhnd_nvram_store* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i8*, i8** %14, align 8
  %67 = load i8*, i8** %8, align 8
  %68 = load i64*, i64** %9, align 8
  %69 = load i32, i32* %10, align 4
  %70 = call i32 @bhnd_nvram_data_getvar(i32 %65, i8* %66, i8* %67, i64* %68, i32 %69)
  store i32 %70, i32* %15, align 4
  br label %73

71:                                               ; preds = %54
  %72 = load i32, i32* @ENOENT, align 4
  store i32 %72, i32* %15, align 4
  br label %73

73:                                               ; preds = %71, %62, %53, %31, %26
  %74 = load %struct.bhnd_nvram_store*, %struct.bhnd_nvram_store** %6, align 8
  %75 = call i32 @BHND_NVSTORE_UNLOCK(%struct.bhnd_nvram_store* %74)
  %76 = load i32, i32* %15, align 4
  ret i32 %76
}

declare dso_local i32 @BHND_NVSTORE_LOCK(%struct.bhnd_nvram_store*) #1

declare dso_local i32 @bhnd_nvstore_parse_name_info(i8*, i32, i32, %struct.TYPE_4__*) #1

declare dso_local i32* @bhnd_nvstore_var_get_path(%struct.bhnd_nvram_store*, %struct.TYPE_4__*) #1

declare dso_local i32* @bhnd_nvstore_path_get_update(%struct.bhnd_nvram_store*, i32*, i32) #1

declare dso_local i64 @bhnd_nvram_prop_is_null(i32*) #1

declare dso_local i32 @bhnd_nvram_prop_encode(i32*, i8*, i64*, i32) #1

declare dso_local i8* @bhnd_nvstore_path_data_lookup(%struct.bhnd_nvram_store*, i32*, i32) #1

declare dso_local i32 @bhnd_nvram_data_getvar(i32, i8*, i8*, i64*, i32) #1

declare dso_local i32 @BHND_NVSTORE_UNLOCK(%struct.bhnd_nvram_store*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
