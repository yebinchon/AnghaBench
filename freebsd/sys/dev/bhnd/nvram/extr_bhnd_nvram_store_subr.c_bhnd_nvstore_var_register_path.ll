; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/nvram/extr_bhnd_nvram_store_subr.c_bhnd_nvstore_var_register_path.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/nvram/extr_bhnd_nvram_store_subr.c_bhnd_nvstore_var_register_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bhnd_nvram_store = type { i32 }
%struct.TYPE_8__ = type { i32, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }

@.str = private unnamed_addr constant [25 x i8] c"unsupported path type %d\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"unsupported var type %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bhnd_nvstore_var_register_path(%struct.bhnd_nvram_store* %0, %struct.TYPE_8__* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bhnd_nvram_store*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i8*, align 8
  store %struct.bhnd_nvram_store* %0, %struct.bhnd_nvram_store** %5, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %6, align 8
  store i8* %2, i8** %7, align 8
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %39 [
    i32 128, label %11
    i32 131, label %34
  ]

11:                                               ; preds = %3
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %29 [
    i32 129, label %15
    i32 130, label %28
  ]

15:                                               ; preds = %11
  %16 = load %struct.bhnd_nvram_store*, %struct.bhnd_nvram_store** %5, align 8
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @bhnd_nvstore_register_path(%struct.bhnd_nvram_store* %16, i32 %21, i32 %26)
  store i32 %27, i32* %4, align 4
  br label %44

28:                                               ; preds = %11
  store i32 0, i32* %4, align 4
  br label %44

29:                                               ; preds = %11
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @BHND_NV_PANIC(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %32)
  br label %39

34:                                               ; preds = %3
  %35 = load %struct.bhnd_nvram_store*, %struct.bhnd_nvram_store** %5, align 8
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %37 = load i8*, i8** %7, align 8
  %38 = call i32 @bhnd_nvstore_register_alias(%struct.bhnd_nvram_store* %35, %struct.TYPE_8__* %36, i8* %37)
  store i32 %38, i32* %4, align 4
  br label %44

39:                                               ; preds = %3, %29
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @BHND_NV_PANIC(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %42)
  br label %44

44:                                               ; preds = %39, %34, %28, %15
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local i32 @bhnd_nvstore_register_path(%struct.bhnd_nvram_store*, i32, i32) #1

declare dso_local i32 @BHND_NV_PANIC(i8*, i32) #1

declare dso_local i32 @bhnd_nvstore_register_alias(%struct.bhnd_nvram_store*, %struct.TYPE_8__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
