; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/smartpqi/extr_smartpqi_init.c_pqisrc_pqi_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/smartpqi/extr_smartpqi_init.c_pqisrc_pqi_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, i64, i32, i64, i32 }

@PQI_STATUS_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"IN\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"failed to switch to pqi\0A\00", align 1
@CTRL_PQI_MODE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"Failed to get processor config from OS %d\0A\00", align 1
@INTR_TYPE_NONE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [43 x i8] c"Failed to get interrupt config from OS %d\0A\00", align 1
@INTR_TYPE_FIXED = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [33 x i8] c"Failed to configure admin queue\0A\00", align 1
@PQI_STATUS_FAILURE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [25 x i8] c"Failed to allocate rcb \0A\00", align 1
@.str.6 = private unnamed_addr constant [49 x i8] c"Failed to allocate memory for request id q : %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"Failed to configure op queue\0A\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"Failed to create op queue\0A\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"OUT\0A\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"OUT failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pqisrc_pqi_init(%struct.TYPE_18__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_18__*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %3, align 8
  %5 = load i32, i32* @PQI_STATUS_SUCCESS, align 4
  store i32 %5, i32* %4, align 4
  %6 = call i32 @DBG_FUNC(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %8 = call i32 @pqisrc_check_pqimode(%struct.TYPE_18__* %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = call i32 (i8*, ...) @DBG_ERR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %115

13:                                               ; preds = %1
  %14 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %15 = load i32, i32* @CTRL_PQI_MODE, align 4
  %16 = call i32 @PQI_SAVE_CTRL_MODE(%struct.TYPE_18__* %14, i32 %15)
  %17 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %17, i32 0, i32 0
  store i32 1, i32* %18, align 8
  %19 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %20 = call i32 @os_get_processor_config(%struct.TYPE_18__* %19)
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %13
  %24 = load i32, i32* %4, align 4
  %25 = call i32 (i8*, ...) @DBG_ERR(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 %24)
  br label %115

26:                                               ; preds = %13
  %27 = load i64, i64* @INTR_TYPE_NONE, align 8
  %28 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %28, i32 0, i32 1
  store i64 %27, i64* %29, align 8
  %30 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %31 = call i32 @os_get_intr_config(%struct.TYPE_18__* %30)
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* %4, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %26
  %35 = load i32, i32* %4, align 4
  %36 = call i32 (i8*, ...) @DBG_ERR(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i32 %35)
  br label %115

37:                                               ; preds = %26
  %38 = load i64, i64* @INTR_TYPE_FIXED, align 8
  %39 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp eq i64 %38, %41
  br i1 %42, label %43, label %48

43:                                               ; preds = %37
  %44 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %45 = call i32 @pqisrc_configure_legacy_intx(%struct.TYPE_18__* %44, i32 1)
  %46 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %47 = call i32 @sis_enable_intx(%struct.TYPE_18__* %46)
  br label %48

48:                                               ; preds = %43, %37
  %49 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %50 = call i32 @pqisrc_create_admin_queue(%struct.TYPE_18__* %49)
  store i32 %50, i32* %4, align 4
  %51 = load i32, i32* %4, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %48
  %54 = call i32 (i8*, ...) @DBG_ERR(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  br label %112

55:                                               ; preds = %48
  %56 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %57 = call i32 @pqisrc_allocate_rcb(%struct.TYPE_18__* %56)
  store i32 %57, i32* %4, align 4
  %58 = load i32, i32* %4, align 4
  %59 = load i32, i32* @PQI_STATUS_FAILURE, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %55
  %62 = call i32 (i8*, ...) @DBG_ERR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  br label %109

63:                                               ; preds = %55
  %64 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %65 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %65, i32 0, i32 4
  %67 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %67, i32 0, i32 3
  %69 = load i64, i64* %68, align 8
  %70 = call i32 @pqisrc_init_taglist(%struct.TYPE_18__* %64, i32* %66, i64 %69)
  store i32 %70, i32* %4, align 4
  %71 = load i32, i32* %4, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %63
  %74 = load i32, i32* %4, align 4
  %75 = call i32 (i8*, ...) @DBG_ERR(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.6, i64 0, i64 0), i32 %74)
  br label %102

76:                                               ; preds = %63
  %77 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %78 = call i32 @pqisrc_configure_op_queues(%struct.TYPE_18__* %77)
  store i32 %78, i32* %4, align 4
  %79 = load i32, i32* %4, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %76
  %82 = call i32 (i8*, ...) @DBG_ERR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0))
  br label %97

83:                                               ; preds = %76
  %84 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %85 = call i32 @pqisrc_create_op_queues(%struct.TYPE_18__* %84)
  store i32 %85, i32* %4, align 4
  %86 = load i32, i32* %4, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %83
  %89 = call i32 (i8*, ...) @DBG_ERR(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0))
  %90 = load i32, i32* @PQI_STATUS_FAILURE, align 4
  store i32 %90, i32* %4, align 4
  br label %96

91:                                               ; preds = %83
  %92 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %92, i32 0, i32 2
  store i32 1, i32* %93, align 8
  %94 = call i32 @DBG_FUNC(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0))
  %95 = load i32, i32* %4, align 4
  store i32 %95, i32* %2, align 4
  br label %118

96:                                               ; preds = %88
  br label %97

97:                                               ; preds = %96, %81
  %98 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %99 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %99, i32 0, i32 4
  %101 = call i32 @pqisrc_destroy_taglist(%struct.TYPE_18__* %98, i32* %100)
  br label %102

102:                                              ; preds = %97, %73
  %103 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %104 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %105 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %104, i32 0, i32 3
  %106 = load i64, i64* %105, align 8
  %107 = add nsw i64 %106, 1
  %108 = call i32 @pqisrc_free_rcb(%struct.TYPE_18__* %103, i64 %107)
  br label %109

109:                                              ; preds = %102, %61
  %110 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %111 = call i32 @pqisrc_destroy_admin_queue(%struct.TYPE_18__* %110)
  br label %112

112:                                              ; preds = %109, %53
  %113 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %114 = call i32 @os_free_intr_config(%struct.TYPE_18__* %113)
  br label %115

115:                                              ; preds = %112, %34, %23, %11
  %116 = call i32 @DBG_FUNC(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0))
  %117 = load i32, i32* @PQI_STATUS_FAILURE, align 4
  store i32 %117, i32* %2, align 4
  br label %118

118:                                              ; preds = %115, %91
  %119 = load i32, i32* %2, align 4
  ret i32 %119
}

declare dso_local i32 @DBG_FUNC(i8*) #1

declare dso_local i32 @pqisrc_check_pqimode(%struct.TYPE_18__*) #1

declare dso_local i32 @DBG_ERR(i8*, ...) #1

declare dso_local i32 @PQI_SAVE_CTRL_MODE(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @os_get_processor_config(%struct.TYPE_18__*) #1

declare dso_local i32 @os_get_intr_config(%struct.TYPE_18__*) #1

declare dso_local i32 @pqisrc_configure_legacy_intx(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @sis_enable_intx(%struct.TYPE_18__*) #1

declare dso_local i32 @pqisrc_create_admin_queue(%struct.TYPE_18__*) #1

declare dso_local i32 @pqisrc_allocate_rcb(%struct.TYPE_18__*) #1

declare dso_local i32 @pqisrc_init_taglist(%struct.TYPE_18__*, i32*, i64) #1

declare dso_local i32 @pqisrc_configure_op_queues(%struct.TYPE_18__*) #1

declare dso_local i32 @pqisrc_create_op_queues(%struct.TYPE_18__*) #1

declare dso_local i32 @pqisrc_destroy_taglist(%struct.TYPE_18__*, i32*) #1

declare dso_local i32 @pqisrc_free_rcb(%struct.TYPE_18__*, i64) #1

declare dso_local i32 @pqisrc_destroy_admin_queue(%struct.TYPE_18__*) #1

declare dso_local i32 @os_free_intr_config(%struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
