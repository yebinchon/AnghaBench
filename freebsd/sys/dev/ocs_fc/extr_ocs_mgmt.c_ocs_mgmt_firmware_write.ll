; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_mgmt.c_ocs_mgmt_firmware_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_mgmt.c_ocs_mgmt_firmware_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i64, i64, i64, i32 }

@.str = private unnamed_addr constant [9 x i8] c"fw_write\00", align 1
@FW_WRITE_BUFSIZE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [39 x i8] c"ocs_mgmt_firmware_write: malloc failed\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@ocs_mgmt_fw_write_cb = common dso_local global i32 0, align 4
@OCS_SEM_FOREVER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"ocs_sem_p failed\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"actual_write_length is %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"write returned status %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.6 = private unnamed_addr constant [39 x i8] c"copy to user failed for change_status\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, i8*, i8*, i64, i8*, i64)* @ocs_mgmt_firmware_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocs_mgmt_firmware_write(%struct.TYPE_13__* %0, i8* %1, i8* %2, i64 %3, i8* %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32*, align 8
  %19 = alloca %struct.TYPE_15__, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.TYPE_14__, align 8
  %22 = alloca i64, align 8
  %23 = alloca [80 x i8], align 16
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i64 %3, i64* %11, align 8
  store i8* %4, i8** %12, align 8
  store i64 %5, i64* %13, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %20, align 4
  store i64 0, i64* %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 3
  %25 = call i32 @ocs_sem_init(i32* %24, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %26 = load i64, i64* %11, align 8
  store i64 %26, i64* %15, align 8
  store i64 0, i64* %17, align 8
  %27 = load i8*, i8** %10, align 8
  %28 = bitcast i8* %27 to i32*
  store i32* %28, i32** %18, align 8
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %30 = load i64, i64* @FW_WRITE_BUFSIZE, align 8
  %31 = call i64 @ocs_dma_alloc(%struct.TYPE_13__* %29, %struct.TYPE_15__* %19, i64 %30, i32 4096)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %6
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %35 = call i32 @ocs_log_err(%struct.TYPE_13__* %34, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %7, align 4
  br label %153

38:                                               ; preds = %6
  br label %39

39:                                               ; preds = %110, %38
  %40 = load i64, i64* %15, align 8
  %41 = icmp sgt i64 %40, 0
  br i1 %41, label %42, label %123

42:                                               ; preds = %39
  %43 = load i64, i64* %15, align 8
  %44 = load i64, i64* @FW_WRITE_BUFSIZE, align 8
  %45 = icmp sgt i64 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %42
  %47 = load i64, i64* @FW_WRITE_BUFSIZE, align 8
  store i64 %47, i64* %16, align 8
  br label %50

48:                                               ; preds = %42
  %49 = load i64, i64* %15, align 8
  store i64 %49, i64* %16, align 8
  br label %50

50:                                               ; preds = %48, %46
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32*, i32** %18, align 8
  %54 = load i64, i64* %16, align 8
  %55 = call i64 @ocs_copy_from_user(i32 %52, i32* %53, i64 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %50
  %58 = load i32, i32* @EFAULT, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %14, align 4
  br label %123

60:                                               ; preds = %50
  %61 = load i64, i64* %15, align 8
  %62 = load i64, i64* %16, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %60
  store i32 1, i32* %20, align 4
  br label %65

65:                                               ; preds = %64, %60
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 0
  %68 = load i64, i64* %16, align 8
  %69 = load i64, i64* %17, align 8
  %70 = load i32, i32* %20, align 4
  %71 = load i32, i32* @ocs_mgmt_fw_write_cb, align 4
  %72 = call i32 @ocs_hw_firmware_write(i32* %67, %struct.TYPE_15__* %19, i64 %68, i64 %69, i32 %70, i32 %71, %struct.TYPE_14__* %21)
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 3
  %74 = load i32, i32* @OCS_SEM_FOREVER, align 4
  %75 = call i64 @ocs_sem_p(i32* %73, i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %65
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %79 = call i32 @ocs_log_err(%struct.TYPE_13__* %78, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %80 = load i32, i32* @ENXIO, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %14, align 4
  br label %123

82:                                               ; preds = %65
  %83 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %86, label %93

86:                                               ; preds = %82
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = call i32 (%struct.TYPE_13__*, i8*, ...) @ocs_log_test(%struct.TYPE_13__* %87, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i64 %89)
  %91 = load i32, i32* @EFAULT, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %14, align 4
  br label %123

93:                                               ; preds = %82
  %94 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %104

97:                                               ; preds = %93
  %98 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %99 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = call i32 (%struct.TYPE_13__*, i8*, ...) @ocs_log_test(%struct.TYPE_13__* %98, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i64 %100)
  %102 = load i32, i32* @EFAULT, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %14, align 4
  br label %123

104:                                              ; preds = %93
  %105 = load i32, i32* %20, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %104
  %108 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 2
  %109 = load i64, i64* %108, align 8
  store i64 %109, i64* %22, align 8
  br label %110

110:                                              ; preds = %107, %104
  %111 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* %15, align 8
  %114 = sub nsw i64 %113, %112
  store i64 %114, i64* %15, align 8
  %115 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* %17, align 8
  %118 = add nsw i64 %117, %116
  store i64 %118, i64* %17, align 8
  %119 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load i32*, i32** %18, align 8
  %122 = getelementptr inbounds i32, i32* %121, i64 %120
  store i32* %122, i32** %18, align 8
  br label %39

123:                                              ; preds = %97, %86, %77, %57, %39
  %124 = load i64, i64* %13, align 8
  %125 = icmp sgt i64 %124, 0
  br i1 %125, label %126, label %149

126:                                              ; preds = %123
  %127 = load i8*, i8** %12, align 8
  %128 = icmp ne i8* %127, null
  br i1 %128, label %129, label %149

129:                                              ; preds = %126
  %130 = load i64, i64* %13, align 8
  %131 = icmp ugt i64 %130, 80
  br i1 %131, label %132, label %133

132:                                              ; preds = %129
  store i64 80, i64* %13, align 8
  br label %133

133:                                              ; preds = %132, %129
  %134 = getelementptr inbounds [80 x i8], [80 x i8]* %23, i64 0, i64 0
  %135 = call i32 @ocs_memset(i8* %134, i32 0, i32 80)
  %136 = getelementptr inbounds [80 x i8], [80 x i8]* %23, i64 0, i64 0
  %137 = load i64, i64* %13, align 8
  %138 = load i64, i64* %22, align 8
  %139 = call i32 @ocs_snprintf(i8* %136, i64 %137, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i64 %138)
  %140 = load i8*, i8** %12, align 8
  %141 = getelementptr inbounds [80 x i8], [80 x i8]* %23, i64 0, i64 0
  %142 = load i64, i64* %13, align 8
  %143 = call i64 @ocs_copy_to_user(i8* %140, i8* %141, i64 %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %148

145:                                              ; preds = %133
  %146 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %147 = call i32 (%struct.TYPE_13__*, i8*, ...) @ocs_log_test(%struct.TYPE_13__* %146, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0))
  br label %148

148:                                              ; preds = %145, %133
  br label %149

149:                                              ; preds = %148, %126, %123
  %150 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %151 = call i32 @ocs_dma_free(%struct.TYPE_13__* %150, %struct.TYPE_15__* %19)
  %152 = load i32, i32* %14, align 4
  store i32 %152, i32* %7, align 4
  br label %153

153:                                              ; preds = %149, %33
  %154 = load i32, i32* %7, align 4
  ret i32 %154
}

declare dso_local i32 @ocs_sem_init(i32*, i32, i8*) #1

declare dso_local i64 @ocs_dma_alloc(%struct.TYPE_13__*, %struct.TYPE_15__*, i64, i32) #1

declare dso_local i32 @ocs_log_err(%struct.TYPE_13__*, i8*) #1

declare dso_local i64 @ocs_copy_from_user(i32, i32*, i64) #1

declare dso_local i32 @ocs_hw_firmware_write(i32*, %struct.TYPE_15__*, i64, i64, i32, i32, %struct.TYPE_14__*) #1

declare dso_local i64 @ocs_sem_p(i32*, i32) #1

declare dso_local i32 @ocs_log_test(%struct.TYPE_13__*, i8*, ...) #1

declare dso_local i32 @ocs_memset(i8*, i32, i32) #1

declare dso_local i32 @ocs_snprintf(i8*, i64, i8*, i64) #1

declare dso_local i64 @ocs_copy_to_user(i8*, i8*, i64) #1

declare dso_local i32 @ocs_dma_free(%struct.TYPE_13__*, %struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
