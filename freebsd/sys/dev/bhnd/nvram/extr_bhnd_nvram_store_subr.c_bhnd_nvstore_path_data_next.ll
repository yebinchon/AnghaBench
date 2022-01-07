; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/nvram/extr_bhnd_nvram_store_subr.c_bhnd_nvstore_path_data_next.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/nvram/extr_bhnd_nvram_store_subr.c_bhnd_nvstore_path_data_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bhnd_nvram_store = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i64, i8** }

@MA_OWNED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"missing index for non-root path %s\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"invalid indexp\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @bhnd_nvstore_path_data_next(%struct.bhnd_nvram_store* %0, %struct.TYPE_6__* %1, i8** %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.bhnd_nvram_store*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i64, align 8
  store %struct.bhnd_nvram_store* %0, %struct.bhnd_nvram_store** %5, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %6, align 8
  store i8** %2, i8*** %7, align 8
  %10 = load %struct.bhnd_nvram_store*, %struct.bhnd_nvram_store** %5, align 8
  %11 = load i32, i32* @MA_OWNED, align 4
  %12 = call i32 @BHND_NVSTORE_LOCK_ASSERT(%struct.bhnd_nvram_store* %10, i32 %11)
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %16 = icmp eq %struct.TYPE_5__* %15, null
  br i1 %16, label %17, label %37

17:                                               ; preds = %3
  %18 = load %struct.bhnd_nvram_store*, %struct.bhnd_nvram_store** %5, align 8
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %20 = call i32 @bhnd_nvstore_is_root_path(%struct.bhnd_nvram_store* %18, %struct.TYPE_6__* %19)
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = sext i32 %23 to i64
  %25 = inttoptr i64 %24 to i8*
  %26 = call i32 @BHND_NV_ASSERT(i32 %20, i8* %25)
  %27 = load %struct.bhnd_nvram_store*, %struct.bhnd_nvram_store** %5, align 8
  %28 = getelementptr inbounds %struct.bhnd_nvram_store, %struct.bhnd_nvram_store* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i8**, i8*** %7, align 8
  %31 = call i32* @bhnd_nvram_data_next(i32 %29, i8** %30)
  %32 = icmp eq i32* %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %17
  store i8* null, i8** %4, align 8
  br label %96

34:                                               ; preds = %17
  %35 = load i8**, i8*** %7, align 8
  %36 = load i8*, i8** %35, align 8
  store i8* %36, i8** %4, align 8
  br label %96

37:                                               ; preds = %3
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %37
  store i8* null, i8** %4, align 8
  br label %96

45:                                               ; preds = %37
  %46 = load i8**, i8*** %7, align 8
  %47 = load i8*, i8** %46, align 8
  %48 = icmp eq i8* %47, null
  br i1 %48, label %49, label %56

49:                                               ; preds = %45
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 1
  %54 = load i8**, i8*** %53, align 8
  %55 = getelementptr inbounds i8*, i8** %54, i64 0
  store i8** %55, i8*** %8, align 8
  br label %90

56:                                               ; preds = %45
  %57 = load i8**, i8*** %7, align 8
  %58 = load i8*, i8** %57, align 8
  %59 = bitcast i8* %58 to i8**
  store i8** %59, i8*** %8, align 8
  %60 = load i8**, i8*** %8, align 8
  %61 = getelementptr inbounds i8*, i8** %60, i32 1
  store i8** %61, i8*** %8, align 8
  %62 = load i8**, i8*** %8, align 8
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 1
  %67 = load i8**, i8*** %66, align 8
  %68 = icmp ugt i8** %62, %67
  %69 = zext i1 %68 to i32
  %70 = call i32 @BHND_NV_ASSERT(i32 %69, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %71 = load i8**, i8*** %8, align 8
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 1
  %76 = load i8**, i8*** %75, align 8
  %77 = ptrtoint i8** %71 to i64
  %78 = ptrtoint i8** %76 to i64
  %79 = sub i64 %77, %78
  %80 = sdiv exact i64 %79, 8
  store i64 %80, i64* %9, align 8
  %81 = load i64, i64* %9, align 8
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = icmp uge i64 %81, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %56
  store i8* null, i8** %4, align 8
  br label %96

89:                                               ; preds = %56
  br label %90

90:                                               ; preds = %89, %49
  %91 = load i8**, i8*** %8, align 8
  %92 = bitcast i8** %91 to i8*
  %93 = load i8**, i8*** %7, align 8
  store i8* %92, i8** %93, align 8
  %94 = load i8**, i8*** %8, align 8
  %95 = load i8*, i8** %94, align 8
  store i8* %95, i8** %4, align 8
  br label %96

96:                                               ; preds = %90, %88, %44, %34, %33
  %97 = load i8*, i8** %4, align 8
  ret i8* %97
}

declare dso_local i32 @BHND_NVSTORE_LOCK_ASSERT(%struct.bhnd_nvram_store*, i32) #1

declare dso_local i32 @BHND_NV_ASSERT(i32, i8*) #1

declare dso_local i32 @bhnd_nvstore_is_root_path(%struct.bhnd_nvram_store*, %struct.TYPE_6__*) #1

declare dso_local i32* @bhnd_nvram_data_next(i32, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
