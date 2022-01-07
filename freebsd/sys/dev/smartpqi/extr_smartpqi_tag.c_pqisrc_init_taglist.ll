; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/smartpqi/extr_smartpqi_tag.c_pqisrc_init_taglist.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/smartpqi/extr_smartpqi_tag.c_pqisrc_init_taglist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_12__ = type { i32, i32, i32*, i32, i32, i64, i64, i64 }

@PQI_STATUS_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"IN\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"Unable to allocate memory for taglist\0A\00", align 1
@PQI_STATUS_FAILURE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"tag_lock\00", align 1
@LOCKNAME_SIZE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"tag lock initialization failed\0A\00", align 1
@INVALID_ELEM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"OUT\0A\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"OUT failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pqisrc_init_taglist(%struct.TYPE_11__* %0, %struct.TYPE_12__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* @PQI_STATUS_SUCCESS, align 4
  store i32 %10, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %11 = call i32 @DBG_FUNC(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %12 = load i32, i32* %7, align 4
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 8
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 7
  store i64 0, i64* %16, align 8
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 6
  store i64 0, i64* %18, align 8
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 5
  store i64 0, i64* %20, align 8
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %22 = load i32, i32* %7, align 4
  %23 = sext i32 %22 to i64
  %24 = mul i64 %23, 4
  %25 = trunc i64 %24 to i32
  %26 = call i32* @os_mem_alloc(%struct.TYPE_11__* %21, i32 %25)
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 2
  store i32* %26, i32** %28, align 8
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 2
  %31 = load i32*, i32** %30, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %3
  %34 = call i32 @DBG_FUNC(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %35 = load i32, i32* @PQI_STATUS_FAILURE, align 4
  store i32 %35, i32* %8, align 4
  br label %95

36:                                               ; preds = %3
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @LOCKNAME_SIZE, align 4
  %41 = call i32 @os_strlcpy(i32 %39, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %40)
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 4
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @os_init_spinlock(%struct.TYPE_11__* %42, i32* %44, i32 %47)
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* %8, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %36
  %52 = call i32 @DBG_ERR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 1
  store i32 0, i32* %54, align 4
  br label %80

55:                                               ; preds = %36
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 1
  store i32 1, i32* %57, align 4
  store i32 1, i32* %9, align 4
  br label %58

58:                                               ; preds = %74, %55
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* %7, align 4
  %61 = icmp sle i32 %59, %60
  br i1 %61, label %62, label %77

62:                                               ; preds = %58
  %63 = load i32, i32* @INVALID_ELEM, align 4
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %65, align 8
  %67 = load i32, i32* %9, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 0
  store i32 %63, i32* %70, align 4
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %72 = load i32, i32* %9, align 4
  %73 = call i32 @pqisrc_put_tag(%struct.TYPE_12__* %71, i32 %72)
  br label %74

74:                                               ; preds = %62
  %75 = load i32, i32* %9, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %9, align 4
  br label %58

77:                                               ; preds = %58
  %78 = call i32 @DBG_FUNC(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %79 = load i32, i32* %8, align 4
  store i32 %79, i32* %4, align 4
  br label %98

80:                                               ; preds = %51
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 2
  %84 = load i32*, i32** %83, align 8
  %85 = bitcast i32* %84 to i8*
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = sext i32 %88 to i64
  %90 = mul i64 %89, 4
  %91 = trunc i64 %90 to i32
  %92 = call i32 @os_mem_free(%struct.TYPE_11__* %81, i8* %85, i32 %91)
  %93 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %93, i32 0, i32 2
  store i32* null, i32** %94, align 8
  br label %95

95:                                               ; preds = %80, %33
  %96 = call i32 @DBG_FUNC(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  %97 = load i32, i32* %8, align 4
  store i32 %97, i32* %4, align 4
  br label %98

98:                                               ; preds = %95, %77
  %99 = load i32, i32* %4, align 4
  ret i32 %99
}

declare dso_local i32 @DBG_FUNC(i8*) #1

declare dso_local i32* @os_mem_alloc(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @os_strlcpy(i32, i8*, i32) #1

declare dso_local i32 @os_init_spinlock(%struct.TYPE_11__*, i32*, i32) #1

declare dso_local i32 @DBG_ERR(i8*) #1

declare dso_local i32 @pqisrc_put_tag(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @os_mem_free(%struct.TYPE_11__*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
