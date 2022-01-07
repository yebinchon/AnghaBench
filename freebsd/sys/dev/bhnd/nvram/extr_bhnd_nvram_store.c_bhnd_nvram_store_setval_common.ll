; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/nvram/extr_bhnd_nvram_store.c_bhnd_nvram_store_setval_common.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/nvram/extr_bhnd_nvram_store.c_bhnd_nvram_store_setval_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bhnd_nvram_store = type { i32 }
%struct.TYPE_4__ = type { i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@BHND_NVSTORE_NAME_EXTERNAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bhnd_nvram_store*, i8*, i32*)* @bhnd_nvram_store_setval_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bhnd_nvram_store_setval_common(%struct.bhnd_nvram_store* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bhnd_nvram_store*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_4__, align 4
  %10 = alloca i32, align 4
  store %struct.bhnd_nvram_store* %0, %struct.bhnd_nvram_store** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load %struct.bhnd_nvram_store*, %struct.bhnd_nvram_store** %5, align 8
  %12 = load i32, i32* @MA_OWNED, align 4
  %13 = call i32 @BHND_NVSTORE_LOCK_ASSERT(%struct.bhnd_nvram_store* %11, i32 %12)
  %14 = load i8*, i8** %6, align 8
  %15 = load i32, i32* @BHND_NVSTORE_NAME_EXTERNAL, align 4
  %16 = load %struct.bhnd_nvram_store*, %struct.bhnd_nvram_store** %5, align 8
  %17 = getelementptr inbounds %struct.bhnd_nvram_store, %struct.bhnd_nvram_store* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @bhnd_nvstore_parse_name_info(i8* %14, i32 %15, i32 %18, %struct.TYPE_4__* %9)
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %10, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %3
  %23 = load i32, i32* %10, align 4
  store i32 %23, i32* %4, align 4
  br label %37

24:                                               ; preds = %3
  %25 = load %struct.bhnd_nvram_store*, %struct.bhnd_nvram_store** %5, align 8
  %26 = call i32* @bhnd_nvstore_var_get_path(%struct.bhnd_nvram_store* %25, %struct.TYPE_4__* %9)
  store i32* %26, i32** %8, align 8
  %27 = icmp eq i32* %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = load i32, i32* %10, align 4
  store i32 %29, i32* %4, align 4
  br label %37

30:                                               ; preds = %24
  %31 = load %struct.bhnd_nvram_store*, %struct.bhnd_nvram_store** %5, align 8
  %32 = load i32*, i32** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32*, i32** %7, align 8
  %36 = call i32 @bhnd_nvstore_path_register_update(%struct.bhnd_nvram_store* %31, i32* %32, i32 %34, i32* %35)
  store i32 %36, i32* %4, align 4
  br label %37

37:                                               ; preds = %30, %28, %22
  %38 = load i32, i32* %4, align 4
  ret i32 %38
}

declare dso_local i32 @BHND_NVSTORE_LOCK_ASSERT(%struct.bhnd_nvram_store*, i32) #1

declare dso_local i32 @bhnd_nvstore_parse_name_info(i8*, i32, i32, %struct.TYPE_4__*) #1

declare dso_local i32* @bhnd_nvstore_var_get_path(%struct.bhnd_nvram_store*, %struct.TYPE_4__*) #1

declare dso_local i32 @bhnd_nvstore_path_register_update(%struct.bhnd_nvram_store*, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
