; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_hw.c_ocs_hw_node_group_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_hw.c_ocs_hw_node_group_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_7__*, i32, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i64, i32 }

@.str = private unnamed_addr constant [31 x i8] c"bad parameter hw=%p ngroup=%p\0A\00", align 1
@OCS_HW_RTN_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"node group reference=%d (RPI=%#x)\0A\00", align 1
@SLI_RSRC_FCOE_RPI = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"FCOE_RPI free failure RPI=%#x\0A\00", align 1
@UINT32_MAX = common dso_local global i32 0, align 4
@OCS_HW_RTN_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocs_hw_node_group_free(%struct.TYPE_9__* %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %5, align 8
  %7 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %8 = icmp ne %struct.TYPE_9__* %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %11 = icmp ne %struct.TYPE_8__* %10, null
  br i1 %11, label %17, label %12

12:                                               ; preds = %9, %2
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %15 = call i32 (i32, i8*, %struct.TYPE_9__*, ...) @ocs_log_err(i32 0, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), %struct.TYPE_9__* %13, %struct.TYPE_8__* %14)
  %16 = load i32, i32* @OCS_HW_RTN_ERROR, align 4
  store i32 %16, i32* %3, align 4
  br label %76

17:                                               ; preds = %9
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = call i32 @ocs_atomic_read(i32* %25)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %67

29:                                               ; preds = %17
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* %6, align 4
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @ocs_log_debug(i32 %32, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %33, i32 %36)
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 2
  %40 = load i32, i32* @SLI_RSRC_FCOE_RPI, align 4
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = call i64 @sli_resource_free(i32* %39, i32 %40, i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %57

46:                                               ; preds = %29
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = sext i32 %52 to i64
  %54 = inttoptr i64 %53 to %struct.TYPE_9__*
  %55 = call i32 (i32, i8*, %struct.TYPE_9__*, ...) @ocs_log_err(i32 %49, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_9__* %54)
  %56 = load i32, i32* @OCS_HW_RTN_ERROR, align 4
  store i32 %56, i32* %3, align 4
  br label %76

57:                                               ; preds = %29
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %59, align 8
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 0
  %66 = call i32 @ocs_atomic_set(i32* %65, i32 0)
  br label %67

67:                                               ; preds = %57, %17
  %68 = load i32, i32* @UINT32_MAX, align 4
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 1
  store i32 %68, i32* %70, align 8
  %71 = load i32, i32* @UINT32_MAX, align 4
  %72 = sext i32 %71 to i64
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  store i64 %72, i64* %74, align 8
  %75 = load i32, i32* @OCS_HW_RTN_SUCCESS, align 4
  store i32 %75, i32* %3, align 4
  br label %76

76:                                               ; preds = %67, %46, %12
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local i32 @ocs_log_err(i32, i8*, %struct.TYPE_9__*, ...) #1

declare dso_local i32 @ocs_atomic_read(i32*) #1

declare dso_local i32 @ocs_log_debug(i32, i8*, i32, i32) #1

declare dso_local i64 @sli_resource_free(i32*, i32, i32) #1

declare dso_local i32 @ocs_atomic_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
