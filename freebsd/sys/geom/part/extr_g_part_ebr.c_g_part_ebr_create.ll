; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/part/extr_g_part_ebr.c_g_part_ebr_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/part/extr_g_part_ebr.c_g_part_ebr_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_part_table = type { i64, i32, i32, i32, i64 }
%struct.g_part_parms = type { %struct.g_provider* }
%struct.g_provider = type { i32, i32, i32 }
%struct.g_consumer = type { i32 }

@EBRSIZE = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"PART::scheme\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"MBR\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"PART::type\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"ebr\00", align 1
@UINT32_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.g_part_table*, %struct.g_part_parms*)* @g_part_ebr_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @g_part_ebr_create(%struct.g_part_table* %0, %struct.g_part_parms* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.g_part_table*, align 8
  %5 = alloca %struct.g_part_parms*, align 8
  %6 = alloca [64 x i8], align 16
  %7 = alloca %struct.g_consumer*, align 8
  %8 = alloca %struct.g_provider*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.g_part_table* %0, %struct.g_part_table** %4, align 8
  store %struct.g_part_parms* %1, %struct.g_part_parms** %5, align 8
  %11 = load %struct.g_part_parms*, %struct.g_part_parms** %5, align 8
  %12 = getelementptr inbounds %struct.g_part_parms, %struct.g_part_parms* %11, i32 0, i32 0
  %13 = load %struct.g_provider*, %struct.g_provider** %12, align 8
  store %struct.g_provider* %13, %struct.g_provider** %8, align 8
  %14 = load %struct.g_provider*, %struct.g_provider** %8, align 8
  %15 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @EBRSIZE, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* @ENOSPC, align 4
  store i32 %20, i32* %3, align 4
  br label %89

21:                                               ; preds = %2
  %22 = load %struct.g_provider*, %struct.g_provider** %8, align 8
  %23 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp sgt i32 %24, 4096
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = load i32, i32* @ENXIO, align 4
  store i32 %27, i32* %3, align 4
  br label %89

28:                                               ; preds = %21
  %29 = load %struct.g_part_table*, %struct.g_part_table** %4, align 8
  %30 = getelementptr inbounds %struct.g_part_table, %struct.g_part_table* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = load i32, i32* @ENXIO, align 4
  store i32 %34, i32* %3, align 4
  br label %89

35:                                               ; preds = %28
  %36 = load %struct.g_provider*, %struct.g_provider** %8, align 8
  %37 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %36, i32 0, i32 2
  %38 = call %struct.g_consumer* @LIST_FIRST(i32* %37)
  store %struct.g_consumer* %38, %struct.g_consumer** %7, align 8
  %39 = load %struct.g_consumer*, %struct.g_consumer** %7, align 8
  %40 = bitcast [64 x i8]* %6 to i8**
  %41 = call i32 @g_getattr(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), %struct.g_consumer* %39, i8** %40)
  store i32 %41, i32* %10, align 4
  %42 = load i32, i32* %10, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %35
  %45 = load i32, i32* %10, align 4
  store i32 %45, i32* %3, align 4
  br label %89

46:                                               ; preds = %35
  %47 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0
  %48 = call i64 @strcmp(i8* %47, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %46
  %51 = load i32, i32* @ENXIO, align 4
  store i32 %51, i32* %3, align 4
  br label %89

52:                                               ; preds = %46
  %53 = load %struct.g_consumer*, %struct.g_consumer** %7, align 8
  %54 = bitcast [64 x i8]* %6 to i8**
  %55 = call i32 @g_getattr(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), %struct.g_consumer* %53, i8** %54)
  store i32 %55, i32* %10, align 4
  %56 = load i32, i32* %10, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %52
  %59 = load i32, i32* %10, align 4
  store i32 %59, i32* %3, align 4
  br label %89

60:                                               ; preds = %52
  %61 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0
  %62 = call i64 @strcmp(i8* %61, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %60
  %65 = load i32, i32* @ENXIO, align 4
  store i32 %65, i32* %3, align 4
  br label %89

66:                                               ; preds = %60
  %67 = load %struct.g_provider*, %struct.g_provider** %8, align 8
  %68 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.g_provider*, %struct.g_provider** %8, align 8
  %71 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = sdiv i32 %69, %72
  %74 = load i32, i32* @UINT32_MAX, align 4
  %75 = call i32 @MIN(i32 %73, i32 %74)
  store i32 %75, i32* %9, align 4
  %76 = load %struct.g_part_table*, %struct.g_part_table** %4, align 8
  %77 = getelementptr inbounds %struct.g_part_table, %struct.g_part_table* %76, i32 0, i32 4
  store i64 0, i64* %77, align 8
  %78 = load i32, i32* %9, align 4
  %79 = sub nsw i32 %78, 1
  %80 = load %struct.g_part_table*, %struct.g_part_table** %4, align 8
  %81 = getelementptr inbounds %struct.g_part_table, %struct.g_part_table* %80, i32 0, i32 1
  store i32 %79, i32* %81, align 8
  %82 = load i32, i32* %9, align 4
  %83 = load %struct.g_part_table*, %struct.g_part_table** %4, align 8
  %84 = getelementptr inbounds %struct.g_part_table, %struct.g_part_table* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 8
  %86 = sdiv i32 %82, %85
  %87 = load %struct.g_part_table*, %struct.g_part_table** %4, align 8
  %88 = getelementptr inbounds %struct.g_part_table, %struct.g_part_table* %87, i32 0, i32 2
  store i32 %86, i32* %88, align 4
  store i32 0, i32* %3, align 4
  br label %89

89:                                               ; preds = %66, %64, %58, %50, %44, %33, %26, %19
  %90 = load i32, i32* %3, align 4
  ret i32 %90
}

declare dso_local %struct.g_consumer* @LIST_FIRST(i32*) #1

declare dso_local i32 @g_getattr(i8*, %struct.g_consumer*, i8**) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @MIN(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
