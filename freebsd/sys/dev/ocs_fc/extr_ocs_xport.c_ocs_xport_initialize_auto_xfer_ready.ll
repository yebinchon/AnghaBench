; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_xport.c_ocs_xport_initialize_auto_xfer_ready.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_xport.c_ocs_xport_initialize_auto_xfer_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32, i32 }

@OCS_HW_AUTO_XFER_RDY_CAPABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Cannot enable auto xfer rdy for this port\0A\00", align 1
@OCS_HW_AUTO_XFER_RDY_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"%s: Can't set auto xfer rdy mode\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"p_type\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"ramdisc_blocksize\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"external_dif\00", align 1
@OCS_HW_AUTO_XFER_RDY_T10_ENABLE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@OCS_HW_AUTO_XFER_RDY_BLK_SIZE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [38 x i8] c"%s: Can't set auto xfer rdy blk size\0A\00", align 1
@OCS_HW_AUTO_XFER_RDY_P_TYPE = common dso_local global i32 0, align 4
@OCS_HW_AUTO_XFER_RDY_REF_TAG_IS_LBA = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [37 x i8] c"%s: Can't set auto xfer rdy ref tag\0A\00", align 1
@OCS_HW_AUTO_XFER_RDY_APP_TAG_VALID = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [43 x i8] c"%s: Can't set auto xfer rdy app tag valid\0A\00", align 1
@.str.8 = private unnamed_addr constant [49 x i8] c"Auto xfer rdy is enabled, p_type=%d, blksize=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*)* @ocs_xport_initialize_auto_xfer_ready to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocs_xport_initialize_auto_xfer_ready(%struct.TYPE_6__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [32 x i8], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  store %struct.TYPE_7__* %11, %struct.TYPE_7__** %4, align 8
  store i32 512, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 2
  %14 = load i32, i32* @OCS_HW_AUTO_XFER_RDY_CAPABLE, align 4
  %15 = call i32 @ocs_hw_get(i32* %13, i32 %14, i32* %5)
  %16 = load i32, i32* %5, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %1
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  store i32 0, i32* %20, align 4
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %22 = call i32 (%struct.TYPE_7__*, i8*, ...) @ocs_log_test(%struct.TYPE_7__* %21, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %140

23:                                               ; preds = %1
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 2
  %26 = load i32, i32* @OCS_HW_AUTO_XFER_RDY_SIZE, align 4
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @ocs_hw_set(i32* %25, i32 %26, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %23
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 (%struct.TYPE_7__*, i8*, ...) @ocs_log_test(%struct.TYPE_7__* %33, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %36)
  store i32 -1, i32* %2, align 4
  br label %140

38:                                               ; preds = %23
  %39 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %40 = call i64 @ocs_get_property(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* %39, i32 32)
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %38
  %43 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %44 = call i32 @ocs_strtoul(i8* %43, i32 0, i32 0)
  store i32 %44, i32* %8, align 4
  br label %45

45:                                               ; preds = %42, %38
  %46 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %47 = call i64 @ocs_get_property(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i8* %46, i32 32)
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %45
  %50 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %51 = call i32 @ocs_strtoul(i8* %50, i32 0, i32 0)
  store i32 %51, i32* %7, align 4
  br label %52

52:                                               ; preds = %49, %45
  %53 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %54 = call i64 @ocs_get_property(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i8* %53, i32 32)
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %66

56:                                               ; preds = %52
  %57 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %58 = call i64 @ocs_strlen(i8* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %56
  %61 = load i32, i32* %8, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %60
  store i32 1, i32* %8, align 4
  br label %64

64:                                               ; preds = %63, %60
  br label %65

65:                                               ; preds = %64, %56
  br label %66

66:                                               ; preds = %65, %52
  %67 = load i32, i32* %8, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %135

69:                                               ; preds = %66
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 2
  %72 = load i32, i32* @OCS_HW_AUTO_XFER_RDY_T10_ENABLE, align 4
  %73 = load i32, i32* @TRUE, align 4
  %74 = call i64 @ocs_hw_set(i32* %71, i32 %72, i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %69
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = call i32 (%struct.TYPE_7__*, i8*, ...) @ocs_log_test(%struct.TYPE_7__* %77, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %80)
  store i32 -1, i32* %2, align 4
  br label %140

82:                                               ; preds = %69
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 2
  %85 = load i32, i32* @OCS_HW_AUTO_XFER_RDY_BLK_SIZE, align 4
  %86 = load i32, i32* %7, align 4
  %87 = call i64 @ocs_hw_set(i32* %84, i32 %85, i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %95

89:                                               ; preds = %82
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = call i32 (%struct.TYPE_7__*, i8*, ...) @ocs_log_test(%struct.TYPE_7__* %90, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0), i32 %93)
  store i32 -1, i32* %2, align 4
  br label %140

95:                                               ; preds = %82
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 2
  %98 = load i32, i32* @OCS_HW_AUTO_XFER_RDY_P_TYPE, align 4
  %99 = load i32, i32* %8, align 4
  %100 = call i64 @ocs_hw_set(i32* %97, i32 %98, i32 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %108

102:                                              ; preds = %95
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = call i32 (%struct.TYPE_7__*, i8*, ...) @ocs_log_test(%struct.TYPE_7__* %103, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %106)
  store i32 -1, i32* %2, align 4
  br label %140

108:                                              ; preds = %95
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 2
  %111 = load i32, i32* @OCS_HW_AUTO_XFER_RDY_REF_TAG_IS_LBA, align 4
  %112 = load i32, i32* @TRUE, align 4
  %113 = call i64 @ocs_hw_set(i32* %110, i32 %111, i32 %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %121

115:                                              ; preds = %108
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = call i32 (%struct.TYPE_7__*, i8*, ...) @ocs_log_test(%struct.TYPE_7__* %116, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0), i32 %119)
  store i32 -1, i32* %2, align 4
  br label %140

121:                                              ; preds = %108
  %122 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 2
  %124 = load i32, i32* @OCS_HW_AUTO_XFER_RDY_APP_TAG_VALID, align 4
  %125 = load i32, i32* @FALSE, align 4
  %126 = call i64 @ocs_hw_set(i32* %123, i32 %124, i32 %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %134

128:                                              ; preds = %121
  %129 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %130 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = call i32 (%struct.TYPE_7__*, i8*, ...) @ocs_log_test(%struct.TYPE_7__* %129, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.7, i64 0, i64 0), i32 %132)
  store i32 -1, i32* %2, align 4
  br label %140

134:                                              ; preds = %121
  br label %135

135:                                              ; preds = %134, %66
  %136 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %137 = load i32, i32* %8, align 4
  %138 = load i32, i32* %7, align 4
  %139 = call i32 @ocs_log_debug(%struct.TYPE_7__* %136, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.8, i64 0, i64 0), i32 %137, i32 %138)
  store i32 0, i32* %2, align 4
  br label %140

140:                                              ; preds = %135, %128, %115, %102, %89, %76, %32, %18
  %141 = load i32, i32* %2, align 4
  ret i32 %141
}

declare dso_local i32 @ocs_hw_get(i32*, i32, i32*) #1

declare dso_local i32 @ocs_log_test(%struct.TYPE_7__*, i8*, ...) #1

declare dso_local i64 @ocs_hw_set(i32*, i32, i32) #1

declare dso_local i64 @ocs_get_property(i8*, i8*, i32) #1

declare dso_local i32 @ocs_strtoul(i8*, i32, i32) #1

declare dso_local i64 @ocs_strlen(i8*) #1

declare dso_local i32 @ocs_log_debug(%struct.TYPE_7__*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
