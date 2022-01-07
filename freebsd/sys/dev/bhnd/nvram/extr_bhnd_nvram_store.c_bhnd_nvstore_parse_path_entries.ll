; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/nvram/extr_bhnd_nvram_store.c_bhnd_nvstore_parse_path_entries.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/nvram/extr_bhnd_nvram_store.c_bhnd_nvstore_parse_path_entries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bhnd_nvram_store = type { i32, i32, i32* }

@MA_OWNED = common dso_local global i32 0, align 4
@BHND_NVRAM_DATA_CAP_DEVPATHS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"missing root path\00", align 1
@BHND_NVSTORE_NAME_INTERNAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"failed to register path for %s: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bhnd_nvram_store*)* @bhnd_nvstore_parse_path_entries to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bhnd_nvstore_parse_path_entries(%struct.bhnd_nvram_store* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bhnd_nvram_store*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.bhnd_nvram_store* %0, %struct.bhnd_nvram_store** %3, align 8
  %8 = load %struct.bhnd_nvram_store*, %struct.bhnd_nvram_store** %3, align 8
  %9 = load i32, i32* @MA_OWNED, align 4
  %10 = call i32 @BHND_NVSTORE_LOCK_ASSERT(%struct.bhnd_nvram_store* %8, i32 %9)
  %11 = load %struct.bhnd_nvram_store*, %struct.bhnd_nvram_store** %3, align 8
  %12 = getelementptr inbounds %struct.bhnd_nvram_store, %struct.bhnd_nvram_store* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @BHND_NVRAM_DATA_CAP_DEVPATHS, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %24, label %17

17:                                               ; preds = %1
  %18 = load %struct.bhnd_nvram_store*, %struct.bhnd_nvram_store** %3, align 8
  %19 = getelementptr inbounds %struct.bhnd_nvram_store, %struct.bhnd_nvram_store* %18, i32 0, i32 2
  %20 = load i32*, i32** %19, align 8
  %21 = icmp ne i32* %20, null
  %22 = zext i1 %21 to i32
  %23 = call i32 @BHND_NV_ASSERT(i32 %22, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %55

24:                                               ; preds = %1
  store i8* null, i8** %5, align 8
  br label %25

25:                                               ; preds = %53, %24
  %26 = load %struct.bhnd_nvram_store*, %struct.bhnd_nvram_store** %3, align 8
  %27 = getelementptr inbounds %struct.bhnd_nvram_store, %struct.bhnd_nvram_store* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i8* @bhnd_nvram_data_next(i32 %28, i8** %5)
  store i8* %29, i8** %4, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %54

31:                                               ; preds = %25
  %32 = load i8*, i8** %4, align 8
  %33 = load i32, i32* @BHND_NVSTORE_NAME_INTERNAL, align 4
  %34 = load %struct.bhnd_nvram_store*, %struct.bhnd_nvram_store** %3, align 8
  %35 = getelementptr inbounds %struct.bhnd_nvram_store, %struct.bhnd_nvram_store* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @bhnd_nvstore_parse_name_info(i8* %32, i32 %33, i32 %36, i32* %7)
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %31
  %41 = load i32, i32* %6, align 4
  store i32 %41, i32* %2, align 4
  br label %55

42:                                               ; preds = %31
  %43 = load %struct.bhnd_nvram_store*, %struct.bhnd_nvram_store** %3, align 8
  %44 = load i8*, i8** %5, align 8
  %45 = call i32 @bhnd_nvstore_var_register_path(%struct.bhnd_nvram_store* %43, i32* %7, i8* %44)
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* %6, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %42
  %49 = load i8*, i8** %4, align 8
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @BHND_NV_LOG(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i8* %49, i32 %50)
  %52 = load i32, i32* %6, align 4
  store i32 %52, i32* %2, align 4
  br label %55

53:                                               ; preds = %42
  br label %25

54:                                               ; preds = %25
  store i32 0, i32* %2, align 4
  br label %55

55:                                               ; preds = %54, %48, %40, %17
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local i32 @BHND_NVSTORE_LOCK_ASSERT(%struct.bhnd_nvram_store*, i32) #1

declare dso_local i32 @BHND_NV_ASSERT(i32, i8*) #1

declare dso_local i8* @bhnd_nvram_data_next(i32, i8**) #1

declare dso_local i32 @bhnd_nvstore_parse_name_info(i8*, i32, i32, i32*) #1

declare dso_local i32 @bhnd_nvstore_var_register_path(%struct.bhnd_nvram_store*, i32*, i8*) #1

declare dso_local i32 @BHND_NV_LOG(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
