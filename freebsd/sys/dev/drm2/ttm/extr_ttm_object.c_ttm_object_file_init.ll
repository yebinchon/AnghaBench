; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/drm2/ttm/extr_ttm_object.c_ttm_object_file_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/drm2/ttm/extr_ttm_object.c_ttm_object_file_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_object_file = type { i32*, i32, i32, %struct.ttm_object_device*, i32 }
%struct.ttm_object_device = type { i32 }

@M_TTM_OBJ_FILE = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"ttmfo\00", align 1
@TTM_REF_NUM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ttm_object_file* @ttm_object_file_init(%struct.ttm_object_device* %0, i32 %1) #0 {
  %3 = alloca %struct.ttm_object_file*, align 8
  %4 = alloca %struct.ttm_object_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ttm_object_file*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ttm_object_device* %0, %struct.ttm_object_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %8, align 4
  %10 = load i32, i32* @M_TTM_OBJ_FILE, align 4
  %11 = load i32, i32* @M_WAITOK, align 4
  %12 = call %struct.ttm_object_file* @malloc(i32 32, i32 %10, i32 %11)
  store %struct.ttm_object_file* %12, %struct.ttm_object_file** %6, align 8
  %13 = load %struct.ttm_object_file*, %struct.ttm_object_file** %6, align 8
  %14 = getelementptr inbounds %struct.ttm_object_file, %struct.ttm_object_file* %13, i32 0, i32 4
  %15 = call i32 @rw_init(i32* %14, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.ttm_object_device*, %struct.ttm_object_device** %4, align 8
  %17 = load %struct.ttm_object_file*, %struct.ttm_object_file** %6, align 8
  %18 = getelementptr inbounds %struct.ttm_object_file, %struct.ttm_object_file* %17, i32 0, i32 3
  store %struct.ttm_object_device* %16, %struct.ttm_object_device** %18, align 8
  %19 = load %struct.ttm_object_file*, %struct.ttm_object_file** %6, align 8
  %20 = getelementptr inbounds %struct.ttm_object_file, %struct.ttm_object_file* %19, i32 0, i32 2
  %21 = call i32 @refcount_init(i32* %20, i32 1)
  %22 = load %struct.ttm_object_file*, %struct.ttm_object_file** %6, align 8
  %23 = getelementptr inbounds %struct.ttm_object_file, %struct.ttm_object_file* %22, i32 0, i32 1
  %24 = call i32 @INIT_LIST_HEAD(i32* %23)
  store i32 0, i32* %7, align 4
  br label %25

25:                                               ; preds = %43, %2
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @TTM_REF_NUM, align 4
  %28 = icmp ult i32 %26, %27
  br i1 %28, label %29, label %46

29:                                               ; preds = %25
  %30 = load %struct.ttm_object_file*, %struct.ttm_object_file** %6, align 8
  %31 = getelementptr inbounds %struct.ttm_object_file, %struct.ttm_object_file* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %7, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @drm_ht_create(i32* %35, i32 %36)
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %9, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %29
  %41 = load i32, i32* %7, align 4
  store i32 %41, i32* %8, align 4
  br label %48

42:                                               ; preds = %29
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %7, align 4
  %45 = add i32 %44, 1
  store i32 %45, i32* %7, align 4
  br label %25

46:                                               ; preds = %25
  %47 = load %struct.ttm_object_file*, %struct.ttm_object_file** %6, align 8
  store %struct.ttm_object_file* %47, %struct.ttm_object_file** %3, align 8
  br label %68

48:                                               ; preds = %40
  store i32 0, i32* %7, align 4
  br label %49

49:                                               ; preds = %61, %48
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* %8, align 4
  %52 = icmp ult i32 %50, %51
  br i1 %52, label %53, label %64

53:                                               ; preds = %49
  %54 = load %struct.ttm_object_file*, %struct.ttm_object_file** %6, align 8
  %55 = getelementptr inbounds %struct.ttm_object_file, %struct.ttm_object_file* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %7, align 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = call i32 @drm_ht_remove(i32* %59)
  br label %61

61:                                               ; preds = %53
  %62 = load i32, i32* %7, align 4
  %63 = add i32 %62, 1
  store i32 %63, i32* %7, align 4
  br label %49

64:                                               ; preds = %49
  %65 = load %struct.ttm_object_file*, %struct.ttm_object_file** %6, align 8
  %66 = load i32, i32* @M_TTM_OBJ_FILE, align 4
  %67 = call i32 @free(%struct.ttm_object_file* %65, i32 %66)
  store %struct.ttm_object_file* null, %struct.ttm_object_file** %3, align 8
  br label %68

68:                                               ; preds = %64, %46
  %69 = load %struct.ttm_object_file*, %struct.ttm_object_file** %3, align 8
  ret %struct.ttm_object_file* %69
}

declare dso_local %struct.ttm_object_file* @malloc(i32, i32, i32) #1

declare dso_local i32 @rw_init(i32*, i8*) #1

declare dso_local i32 @refcount_init(i32*, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @drm_ht_create(i32*, i32) #1

declare dso_local i32 @drm_ht_remove(i32*) #1

declare dso_local i32 @free(%struct.ttm_object_file*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
