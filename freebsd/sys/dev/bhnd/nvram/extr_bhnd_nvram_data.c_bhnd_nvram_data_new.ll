; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/nvram/extr_bhnd_nvram_data.c_bhnd_nvram_data_new.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/nvram/extr_bhnd_nvram_data.c_bhnd_nvram_data_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 (%struct.bhnd_nvram_data*, %struct.bhnd_nvram_io*)* }
%struct.bhnd_nvram_data = type { i32, %struct.TYPE_3__* }
%struct.bhnd_nvram_io = type { i32 }

@.str = private unnamed_addr constant [40 x i8] c"instance size %zu less than minimum %zu\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bhnd_nvram_data_new(%struct.TYPE_3__* %0, %struct.bhnd_nvram_data** %1, %struct.bhnd_nvram_io* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca %struct.bhnd_nvram_data**, align 8
  %7 = alloca %struct.bhnd_nvram_io*, align 8
  %8 = alloca %struct.bhnd_nvram_data*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store %struct.bhnd_nvram_data** %1, %struct.bhnd_nvram_data*** %6, align 8
  store %struct.bhnd_nvram_io* %2, %struct.bhnd_nvram_io** %7, align 8
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %11 = icmp eq %struct.TYPE_3__* %10, null
  br i1 %11, label %12, label %16

12:                                               ; preds = %3
  %13 = load %struct.bhnd_nvram_data**, %struct.bhnd_nvram_data*** %6, align 8
  %14 = load %struct.bhnd_nvram_io*, %struct.bhnd_nvram_io** %7, align 8
  %15 = call i32 @bhnd_nvram_data_probe_classes(%struct.bhnd_nvram_data** %13, %struct.bhnd_nvram_io* %14, i32* null, i32 0)
  store i32 %15, i32* %4, align 4
  br label %51

16:                                               ; preds = %3
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = sext i32 %19 to i64
  %21 = icmp ule i64 16, %20
  %22 = zext i1 %21 to i32
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @BHND_NV_ASSERT(i32 %22, i8* inttoptr (i64 16 to i8*))
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call %struct.bhnd_nvram_data* @bhnd_nv_calloc(i32 1, i32 %29)
  store %struct.bhnd_nvram_data* %30, %struct.bhnd_nvram_data** %8, align 8
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %32 = load %struct.bhnd_nvram_data*, %struct.bhnd_nvram_data** %8, align 8
  %33 = getelementptr inbounds %struct.bhnd_nvram_data, %struct.bhnd_nvram_data* %32, i32 0, i32 1
  store %struct.TYPE_3__* %31, %struct.TYPE_3__** %33, align 8
  %34 = load %struct.bhnd_nvram_data*, %struct.bhnd_nvram_data** %8, align 8
  %35 = getelementptr inbounds %struct.bhnd_nvram_data, %struct.bhnd_nvram_data* %34, i32 0, i32 0
  %36 = call i32 @refcount_init(i32* %35, i32 1)
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  %39 = load i32 (%struct.bhnd_nvram_data*, %struct.bhnd_nvram_io*)*, i32 (%struct.bhnd_nvram_data*, %struct.bhnd_nvram_io*)** %38, align 8
  %40 = load %struct.bhnd_nvram_data*, %struct.bhnd_nvram_data** %8, align 8
  %41 = load %struct.bhnd_nvram_io*, %struct.bhnd_nvram_io** %7, align 8
  %42 = call i32 %39(%struct.bhnd_nvram_data* %40, %struct.bhnd_nvram_io* %41)
  store i32 %42, i32* %9, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %16
  %45 = load %struct.bhnd_nvram_data*, %struct.bhnd_nvram_data** %8, align 8
  %46 = call i32 @bhnd_nv_free(%struct.bhnd_nvram_data* %45)
  %47 = load i32, i32* %9, align 4
  store i32 %47, i32* %4, align 4
  br label %51

48:                                               ; preds = %16
  %49 = load %struct.bhnd_nvram_data*, %struct.bhnd_nvram_data** %8, align 8
  %50 = load %struct.bhnd_nvram_data**, %struct.bhnd_nvram_data*** %6, align 8
  store %struct.bhnd_nvram_data* %49, %struct.bhnd_nvram_data** %50, align 8
  store i32 0, i32* %4, align 4
  br label %51

51:                                               ; preds = %48, %44, %12
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

declare dso_local i32 @bhnd_nvram_data_probe_classes(%struct.bhnd_nvram_data**, %struct.bhnd_nvram_io*, i32*, i32) #1

declare dso_local i32 @BHND_NV_ASSERT(i32, i8*) #1

declare dso_local %struct.bhnd_nvram_data* @bhnd_nv_calloc(i32, i32) #1

declare dso_local i32 @refcount_init(i32*, i32) #1

declare dso_local i32 @bhnd_nv_free(%struct.bhnd_nvram_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
