; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/nvram/extr_bhnd_nvram_value.c_bhnd_nvram_val_copy.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/nvram/extr_bhnd_nvram_value.c_bhnd_nvram_val_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [45 x i8] c"non-allocated value has active refcount (%u)\00", align 1
@BHND_NVRAM_VAL_COPY_DATA = common dso_local global i32 0, align 4
@BHND_NVRAM_VAL_DYNAMIC = common dso_local global i32 0, align 4
@BHND_NVRAM_VAL_STATIC_DATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"invalid storage type: %d\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"copy failed: %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_7__* @bhnd_nvram_val_copy(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %37 [
    i32 128, label %13
    i32 129, label %15
    i32 130, label %25
  ]

13:                                               ; preds = %1
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  store %struct.TYPE_7__* %14, %struct.TYPE_7__** %2, align 8
  br label %70

15:                                               ; preds = %1
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %17 = call i32 @BHND_NVRAM_VAL_NEED_COPY(%struct.TYPE_7__* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %15
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 1
  %22 = call i32 @refcount_acquire(i32* %21)
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  store %struct.TYPE_7__* %23, %struct.TYPE_7__** %2, align 8
  br label %70

24:                                               ; preds = %15
  br label %37

25:                                               ; preds = %1
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = icmp eq i32 %28, 1
  %30 = zext i1 %29 to i32
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = sext i32 %33 to i64
  %35 = inttoptr i64 %34 to i8*
  %36 = call i32 @BHND_NV_ASSERT(i32 %30, i8* %35)
  br label %37

37:                                               ; preds = %1, %25, %24
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  switch i32 %40, label %47 [
    i32 131, label %41
    i32 132, label %41
    i32 133, label %41
    i32 135, label %41
    i32 134, label %45
  ]

41:                                               ; preds = %37, %37, %37, %37
  %42 = load i32, i32* @BHND_NVRAM_VAL_COPY_DATA, align 4
  %43 = load i32, i32* @BHND_NVRAM_VAL_DYNAMIC, align 4
  %44 = or i32 %42, %43
  store i32 %44, i32* %8, align 4
  br label %52

45:                                               ; preds = %37
  %46 = load i32, i32* @BHND_NVRAM_VAL_STATIC_DATA, align 4
  store i32 %46, i32* %8, align 4
  br label %52

47:                                               ; preds = %37
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @BHND_NV_PANIC(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %50)
  br label %52

52:                                               ; preds = %47, %45, %41
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %54 = call i8* @bhnd_nvram_val_bytes(%struct.TYPE_7__* %53, i64* %7, i32* %6)
  store i8* %54, i8** %5, align 8
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = load i8*, i8** %5, align 8
  %59 = load i64, i64* %7, align 8
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* %8, align 4
  %62 = call i32 @bhnd_nvram_val_new(%struct.TYPE_7__** %4, i32 %57, i8* %58, i64 %59, i32 %60, i32 %61)
  store i32 %62, i32* %9, align 4
  %63 = load i32, i32* %9, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %52
  %66 = load i32, i32* %9, align 4
  %67 = call i32 @BHND_NV_LOG(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %66)
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %2, align 8
  br label %70

68:                                               ; preds = %52
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  store %struct.TYPE_7__* %69, %struct.TYPE_7__** %2, align 8
  br label %70

70:                                               ; preds = %68, %65, %19, %13
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  ret %struct.TYPE_7__* %71
}

declare dso_local i32 @BHND_NVRAM_VAL_NEED_COPY(%struct.TYPE_7__*) #1

declare dso_local i32 @refcount_acquire(i32*) #1

declare dso_local i32 @BHND_NV_ASSERT(i32, i8*) #1

declare dso_local i32 @BHND_NV_PANIC(i8*, i32) #1

declare dso_local i8* @bhnd_nvram_val_bytes(%struct.TYPE_7__*, i64*, i32*) #1

declare dso_local i32 @bhnd_nvram_val_new(%struct.TYPE_7__**, i32, i8*, i64, i32, i32) #1

declare dso_local i32 @BHND_NV_LOG(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
