; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/smartpqi/extr_smartpqi_init.c_pqisrc_flush_cache.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/smartpqi/extr_smartpqi_init.c_pqisrc_flush_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@PQI_STATUS_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"IN\0A\00", align 1
@PQI_STATUS_FAILURE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"Failed to allocate memory for flush cache params\0A\00", align 1
@SA_CACHE_FLUSH = common dso_local global i32 0, align 4
@RAID_CTLR_LUNID = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [37 x i8] c"error in build send raid req ret=%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"OUT\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pqisrc_flush_cache(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_4__*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* @PQI_STATUS_SUCCESS, align 4
  store i32 %9, i32* %6, align 4
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %8, align 8
  %10 = call i32 @DBG_FUNC(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %11 = load i32*, i32** %4, align 8
  %12 = call i64 @pqisrc_ctrl_offline(i32* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* @PQI_STATUS_FAILURE, align 4
  store i32 %15, i32* %3, align 4
  br label %52

16:                                               ; preds = %2
  %17 = load i32*, i32** %4, align 8
  %18 = call %struct.TYPE_4__* @os_mem_alloc(i32* %17, i32 4)
  store %struct.TYPE_4__* %18, %struct.TYPE_4__** %8, align 8
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %20 = icmp ne %struct.TYPE_4__* %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %16
  %22 = call i32 (i8*, ...) @DBG_ERR(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  %23 = load i32, i32* @PQI_STATUS_FAILURE, align 4
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  store i32 %24, i32* %3, align 4
  br label %52

25:                                               ; preds = %16
  %26 = load i32, i32* %5, align 4
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  %29 = call i32 @memset(i32* %7, i32 0, i32 4)
  %30 = load i32*, i32** %4, align 8
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %32 = load i32, i32* @SA_CACHE_FLUSH, align 4
  %33 = load i64, i64* @RAID_CTLR_LUNID, align 8
  %34 = inttoptr i64 %33 to i32*
  %35 = call i32 @pqisrc_build_send_raid_request(i32* %30, i32* %7, %struct.TYPE_4__* %31, i32 4, i32 %32, i32 0, i32* %34, i32* null)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %25
  %39 = load i32, i32* %6, align 4
  %40 = call i32 (i8*, ...) @DBG_ERR(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %39)
  br label %41

41:                                               ; preds = %38, %25
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %43 = icmp ne %struct.TYPE_4__* %42, null
  br i1 %43, label %44, label %49

44:                                               ; preds = %41
  %45 = load i32*, i32** %4, align 8
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %47 = bitcast %struct.TYPE_4__* %46 to i8*
  %48 = call i32 @os_mem_free(i32* %45, i8* %47, i32 4)
  br label %49

49:                                               ; preds = %44, %41
  %50 = call i32 @DBG_FUNC(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %51 = load i32, i32* %6, align 4
  store i32 %51, i32* %3, align 4
  br label %52

52:                                               ; preds = %49, %21, %14
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i32 @DBG_FUNC(i8*) #1

declare dso_local i64 @pqisrc_ctrl_offline(i32*) #1

declare dso_local %struct.TYPE_4__* @os_mem_alloc(i32*, i32) #1

declare dso_local i32 @DBG_ERR(i8*, ...) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @pqisrc_build_send_raid_request(i32*, i32*, %struct.TYPE_4__*, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @os_mem_free(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
