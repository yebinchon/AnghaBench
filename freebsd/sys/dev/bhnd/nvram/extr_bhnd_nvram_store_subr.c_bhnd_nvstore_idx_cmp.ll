; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/nvram/extr_bhnd_nvram_store_subr.c_bhnd_nvstore_idx_cmp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/nvram/extr_bhnd_nvram_store_subr.c_bhnd_nvstore_idx_cmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bhnd_nvram_store = type { i32, i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@BHND_NVRAM_DATA_CAP_DEVPATHS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*)* @bhnd_nvstore_idx_cmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bhnd_nvstore_idx_cmp(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.bhnd_nvram_store*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = bitcast i8* %16 to %struct.bhnd_nvram_store*
  store %struct.bhnd_nvram_store* %17, %struct.bhnd_nvram_store** %8, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = bitcast i8* %18 to i8**
  %20 = load i8*, i8** %19, align 8
  store i8* %20, i8** %9, align 8
  %21 = load i8*, i8** %7, align 8
  %22 = bitcast i8* %21 to i8**
  %23 = load i8*, i8** %22, align 8
  store i8* %23, i8** %10, align 8
  %24 = load %struct.bhnd_nvram_store*, %struct.bhnd_nvram_store** %8, align 8
  %25 = load i32, i32* @MA_OWNED, align 4
  %26 = call i32 @BHND_NVSTORE_LOCK_ASSERT(%struct.bhnd_nvram_store* %24, i32 %25)
  %27 = load %struct.bhnd_nvram_store*, %struct.bhnd_nvram_store** %8, align 8
  %28 = getelementptr inbounds %struct.bhnd_nvram_store, %struct.bhnd_nvram_store* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i8*, i8** %9, align 8
  %31 = call i8* @bhnd_nvram_data_getvar_name(i32 %29, i8* %30)
  store i8* %31, i8** %11, align 8
  %32 = load %struct.bhnd_nvram_store*, %struct.bhnd_nvram_store** %8, align 8
  %33 = getelementptr inbounds %struct.bhnd_nvram_store, %struct.bhnd_nvram_store* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i8*, i8** %10, align 8
  %36 = call i8* @bhnd_nvram_data_getvar_name(i32 %34, i8* %35)
  store i8* %36, i8** %12, align 8
  %37 = load %struct.bhnd_nvram_store*, %struct.bhnd_nvram_store** %8, align 8
  %38 = getelementptr inbounds %struct.bhnd_nvram_store, %struct.bhnd_nvram_store* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @BHND_NVRAM_DATA_CAP_DEVPATHS, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %3
  %44 = load i8*, i8** %11, align 8
  %45 = call i8* @bhnd_nvram_trim_path_name(i8* %44)
  store i8* %45, i8** %13, align 8
  %46 = load i8*, i8** %12, align 8
  %47 = call i8* @bhnd_nvram_trim_path_name(i8* %46)
  store i8* %47, i8** %14, align 8
  br label %51

48:                                               ; preds = %3
  %49 = load i8*, i8** %11, align 8
  store i8* %49, i8** %13, align 8
  %50 = load i8*, i8** %12, align 8
  store i8* %50, i8** %14, align 8
  br label %51

51:                                               ; preds = %48, %43
  %52 = load i8*, i8** %13, align 8
  %53 = load i8*, i8** %14, align 8
  %54 = call i32 @strcmp(i8* %52, i8* %53)
  store i32 %54, i32* %15, align 4
  %55 = load i32, i32* %15, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %61, label %57

57:                                               ; preds = %51
  %58 = load i8*, i8** %6, align 8
  %59 = load i8*, i8** %7, align 8
  %60 = icmp eq i8* %58, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %57, %51
  %62 = load i32, i32* %15, align 4
  store i32 %62, i32* %4, align 4
  br label %70

63:                                               ; preds = %57
  %64 = load %struct.bhnd_nvram_store*, %struct.bhnd_nvram_store** %8, align 8
  %65 = getelementptr inbounds %struct.bhnd_nvram_store, %struct.bhnd_nvram_store* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load i8*, i8** %9, align 8
  %68 = load i8*, i8** %10, align 8
  %69 = call i32 @bhnd_nvram_data_getvar_order(i32 %66, i8* %67, i8* %68)
  store i32 %69, i32* %4, align 4
  br label %70

70:                                               ; preds = %63, %61
  %71 = load i32, i32* %4, align 4
  ret i32 %71
}

declare dso_local i32 @BHND_NVSTORE_LOCK_ASSERT(%struct.bhnd_nvram_store*, i32) #1

declare dso_local i8* @bhnd_nvram_data_getvar_name(i32, i8*) #1

declare dso_local i8* @bhnd_nvram_trim_path_name(i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @bhnd_nvram_data_getvar_order(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
