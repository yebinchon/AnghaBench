; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/nvram/extr_bhnd_nvram_store_subr.c_bhnd_nvstore_register_path.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/nvram/extr_bhnd_nvram_store_subr.c_bhnd_nvstore_register_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bhnd_nvram_store = type { i64, i32* }
%struct.TYPE_4__ = type { i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@SIZE_MAX = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@HASHINIT = common dso_local global i32 0, align 4
@np_link = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bhnd_nvstore_register_path(%struct.bhnd_nvram_store* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bhnd_nvram_store*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_4__*, align 8
  %10 = alloca i64, align 8
  store %struct.bhnd_nvram_store* %0, %struct.bhnd_nvram_store** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load %struct.bhnd_nvram_store*, %struct.bhnd_nvram_store** %5, align 8
  %12 = load i32, i32* @MA_OWNED, align 4
  %13 = call i32 @BHND_NVSTORE_LOCK_ASSERT(%struct.bhnd_nvram_store* %11, i32 %12)
  %14 = load %struct.bhnd_nvram_store*, %struct.bhnd_nvram_store** %5, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = load i64, i64* %7, align 8
  %17 = call i32* @bhnd_nvstore_get_path(%struct.bhnd_nvram_store* %14, i8* %15, i64 %16)
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %60

20:                                               ; preds = %3
  %21 = load %struct.bhnd_nvram_store*, %struct.bhnd_nvram_store** %5, align 8
  %22 = getelementptr inbounds %struct.bhnd_nvram_store, %struct.bhnd_nvram_store* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @SIZE_MAX, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %20
  %27 = load i32, i32* @ENOMEM, align 4
  store i32 %27, i32* %4, align 4
  br label %60

28:                                               ; preds = %20
  %29 = load i8*, i8** %6, align 8
  %30 = load i64, i64* %7, align 8
  %31 = call %struct.TYPE_4__* @bhnd_nvstore_path_new(i8* %29, i64 %30)
  store %struct.TYPE_4__* %31, %struct.TYPE_4__** %9, align 8
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %33 = icmp eq %struct.TYPE_4__* %32, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %28
  %35 = load i32, i32* @ENOMEM, align 4
  store i32 %35, i32* %4, align 4
  br label %60

36:                                               ; preds = %28
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @HASHINIT, align 4
  %41 = call i64 @hash32_str(i32 %39, i32 %40)
  store i64 %41, i64* %10, align 8
  %42 = load %struct.bhnd_nvram_store*, %struct.bhnd_nvram_store** %5, align 8
  %43 = getelementptr inbounds %struct.bhnd_nvram_store, %struct.bhnd_nvram_store* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = load i64, i64* %10, align 8
  %46 = load %struct.bhnd_nvram_store*, %struct.bhnd_nvram_store** %5, align 8
  %47 = getelementptr inbounds %struct.bhnd_nvram_store, %struct.bhnd_nvram_store* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = call i64 @nitems(i32* %48)
  %50 = urem i64 %45, %49
  %51 = getelementptr inbounds i32, i32* %44, i64 %50
  store i32* %51, i32** %8, align 8
  %52 = load i32*, i32** %8, align 8
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %54 = load i32, i32* @np_link, align 4
  %55 = call i32 @LIST_INSERT_HEAD(i32* %52, %struct.TYPE_4__* %53, i32 %54)
  %56 = load %struct.bhnd_nvram_store*, %struct.bhnd_nvram_store** %5, align 8
  %57 = getelementptr inbounds %struct.bhnd_nvram_store, %struct.bhnd_nvram_store* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = add nsw i64 %58, 1
  store i64 %59, i64* %57, align 8
  store i32 0, i32* %4, align 4
  br label %60

60:                                               ; preds = %36, %34, %26, %19
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

declare dso_local i32 @BHND_NVSTORE_LOCK_ASSERT(%struct.bhnd_nvram_store*, i32) #1

declare dso_local i32* @bhnd_nvstore_get_path(%struct.bhnd_nvram_store*, i8*, i64) #1

declare dso_local %struct.TYPE_4__* @bhnd_nvstore_path_new(i8*, i64) #1

declare dso_local i64 @hash32_str(i32, i32) #1

declare dso_local i64 @nitems(i32*) #1

declare dso_local i32 @LIST_INSERT_HEAD(i32*, %struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
