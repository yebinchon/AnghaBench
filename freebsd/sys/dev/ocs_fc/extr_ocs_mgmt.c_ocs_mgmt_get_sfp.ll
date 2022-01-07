; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_mgmt.c_ocs_mgmt_get_sfp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_mgmt.c_ocs_mgmt_get_sfp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.TYPE_13__ = type { i32, i64, i32, i32, i32, i32 }

@OCS_M_ZERO = common dso_local global i32 0, align 4
@OCS_M_NOWAIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"get_sfp\00", align 1
@ocs_mgmt_sfp_cb = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"ocs_sem_p failed\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"read_transceiver_data returned status %d\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, i32, i8*, i32)* @ocs_mgmt_get_sfp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocs_mgmt_get_sfp(%struct.TYPE_12__* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %13 = load i32, i32* @OCS_M_ZERO, align 4
  %14 = load i32, i32* @OCS_M_NOWAIT, align 4
  %15 = or i32 %13, %14
  %16 = call %struct.TYPE_13__* @ocs_malloc(%struct.TYPE_12__* %12, i32 32, i32 %15)
  store %struct.TYPE_13__* %16, %struct.TYPE_13__** %11, align 8
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 5
  %19 = call i32 @ocs_sem_init(i32* %18, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %22 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 4
  %23 = call i32 @ocs_lock_init(%struct.TYPE_12__* %20, i32* %22, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 0
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @ocs_mgmt_sfp_cb, align 4
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %29 = call i32 @ocs_hw_get_sfp(i32* %25, i32 %26, i32 %27, %struct.TYPE_13__* %28)
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 5
  %32 = call i64 @ocs_sem_p(i32* %31, i32 5000000)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %58

34:                                               ; preds = %4
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i32 0, i32 4
  %37 = call i32 @ocs_lock(i32* %36)
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %39, align 8
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp eq i32 %44, 1
  br i1 %45, label %46, label %54

46:                                               ; preds = %34
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %48 = call i32 @ocs_log_err(%struct.TYPE_12__* %47, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %49, i32 0, i32 4
  %51 = call i32 @ocs_unlock(i32* %50)
  %52 = load i32, i32* @ENXIO, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %5, align 4
  br label %99

54:                                               ; preds = %34
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 4
  %57 = call i32 @ocs_unlock(i32* %56)
  br label %58

58:                                               ; preds = %54, %4
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %71

63:                                               ; preds = %58
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = call i32 @ocs_log_test(%struct.TYPE_12__* %64, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i64 %67)
  %69 = load i32, i32* @EFAULT, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %10, align 4
  br label %71

71:                                               ; preds = %63, %58
  %72 = load i32, i32* %10, align 4
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %94

74:                                               ; preds = %71
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* %9, align 4
  %79 = icmp sgt i32 %77, %78
  br i1 %79, label %80, label %82

80:                                               ; preds = %74
  %81 = load i32, i32* %9, align 4
  br label %86

82:                                               ; preds = %74
  %83 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %84 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  br label %86

86:                                               ; preds = %82, %80
  %87 = phi i32 [ %81, %80 ], [ %85, %82 ]
  store i32 %87, i32* %10, align 4
  %88 = load i8*, i8** %8, align 8
  %89 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %90 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* %10, align 4
  %93 = call i32 @ocs_memcpy(i8* %88, i32 %91, i32 %92)
  br label %94

94:                                               ; preds = %86, %71
  %95 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %96 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %97 = call i32 @ocs_free(%struct.TYPE_12__* %95, %struct.TYPE_13__* %96, i32 32)
  %98 = load i32, i32* %10, align 4
  store i32 %98, i32* %5, align 4
  br label %99

99:                                               ; preds = %94, %46
  %100 = load i32, i32* %5, align 4
  ret i32 %100
}

declare dso_local %struct.TYPE_13__* @ocs_malloc(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @ocs_sem_init(i32*, i32, i8*) #1

declare dso_local i32 @ocs_lock_init(%struct.TYPE_12__*, i32*, i8*) #1

declare dso_local i32 @ocs_hw_get_sfp(i32*, i32, i32, %struct.TYPE_13__*) #1

declare dso_local i64 @ocs_sem_p(i32*, i32) #1

declare dso_local i32 @ocs_lock(i32*) #1

declare dso_local i32 @ocs_log_err(%struct.TYPE_12__*, i8*) #1

declare dso_local i32 @ocs_unlock(i32*) #1

declare dso_local i32 @ocs_log_test(%struct.TYPE_12__*, i8*, i64) #1

declare dso_local i32 @ocs_memcpy(i8*, i32, i32) #1

declare dso_local i32 @ocs_free(%struct.TYPE_12__*, %struct.TYPE_13__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
