; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_hw.c_ocs_hw_cb_node_free_all.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_hw.c_ocs_hw_cb_node_free_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, %struct.TYPE_9__, %struct.TYPE_8__, i32, %struct.TYPE_7__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 (i32, i64, i32*)* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_10__ = type { i64 }

@OCS_HW_NODE_FREE_FAIL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"bad status cqe=%#x mqe=%#x\0A\00", align 1
@OCS_HW_NODE_FREE_ALL_OK = common dso_local global i64 0, align 8
@SLI_RSRC_FCOE_RPI = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"FCOE_RPI free all failure\0A\00", align 1
@SLI4_BMBX_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, i32, i32*, i8*)* @ocs_hw_cb_node_free_all to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocs_hw_cb_node_free_all(%struct.TYPE_11__* %0, i32 %1, i32* %2, i8* %3) #0 {
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i8* %3, i8** %8, align 8
  %13 = load i32*, i32** %7, align 8
  %14 = bitcast i32* %13 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %14, %struct.TYPE_10__** %9, align 8
  %15 = load i64, i64* @OCS_HW_NODE_FREE_FAIL, align 8
  store i64 %15, i64* %10, align 8
  store i32 0, i32* %11, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %4
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %18, %4
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* %6, align 4
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @ocs_log_debug(i32 %26, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %27, i64 %30)
  br label %34

32:                                               ; preds = %18
  %33 = load i64, i64* @OCS_HW_NODE_FREE_ALL_OK, align 8
  store i64 %33, i64* %10, align 8
  br label %34

34:                                               ; preds = %32, %23
  %35 = load i64, i64* %10, align 8
  %36 = load i64, i64* @OCS_HW_NODE_FREE_ALL_OK, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %69

38:                                               ; preds = %34
  store i64 0, i64* %12, align 8
  br label %39

39:                                               ; preds = %54, %38
  %40 = load i64, i64* %12, align 8
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 3
  %43 = load i32, i32* @SLI_RSRC_FCOE_RPI, align 4
  %44 = call i64 @sli_get_max_rsrc(i32* %42, i32 %43)
  %45 = icmp ult i64 %40, %44
  br i1 %45, label %46, label %57

46:                                               ; preds = %39
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 4
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %48, align 8
  %50 = load i64, i64* %12, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = call i32 @ocs_atomic_set(i32* %52, i32 0)
  br label %54

54:                                               ; preds = %46
  %55 = load i64, i64* %12, align 8
  %56 = add i64 %55, 1
  store i64 %56, i64* %12, align 8
  br label %39

57:                                               ; preds = %39
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 3
  %60 = load i32, i32* @SLI_RSRC_FCOE_RPI, align 4
  %61 = call i64 @sli_resource_reset(i32* %59, i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %57
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @ocs_log_test(i32 %66, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %11, align 4
  br label %68

68:                                               ; preds = %63, %57
  br label %69

69:                                               ; preds = %68, %34
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  %73 = load i32 (i32, i64, i32*)*, i32 (i32, i64, i32*)** %72, align 8
  %74 = icmp ne i32 (i32, i64, i32*)* %73, null
  br i1 %74, label %75, label %86

75:                                               ; preds = %69
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 0
  %79 = load i32 (i32, i64, i32*)*, i32 (i32, i64, i32*)** %78, align 8
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i64, i64* %10, align 8
  %85 = call i32 %79(i32 %83, i64 %84, i32* null)
  br label %86

86:                                               ; preds = %75, %69
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load i32*, i32** %7, align 8
  %91 = load i32, i32* @SLI4_BMBX_SIZE, align 4
  %92 = call i32 @ocs_free(i32 %89, i32* %90, i32 %91)
  %93 = load i32, i32* %11, align 4
  ret i32 %93
}

declare dso_local i32 @ocs_log_debug(i32, i8*, i32, i64) #1

declare dso_local i64 @sli_get_max_rsrc(i32*, i32) #1

declare dso_local i32 @ocs_atomic_set(i32*, i32) #1

declare dso_local i64 @sli_resource_reset(i32*, i32) #1

declare dso_local i32 @ocs_log_test(i32, i8*) #1

declare dso_local i32 @ocs_free(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
