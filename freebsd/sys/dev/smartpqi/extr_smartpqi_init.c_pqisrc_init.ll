; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/smartpqi/extr_smartpqi_init.c_pqisrc_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/smartpqi/extr_smartpqi_init.c_pqisrc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32, i32, i32, i32***, i64, i32, i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c"IN\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"SIS Init failed with error %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"scan_lock\00", align 1
@PQI_STATUS_SUCCESS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c" Failed to initialize scan lock\0A\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"PQI Init failed with error %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"Interrupt setup failed with error %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c" Failed to configure Report events\0A\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c" Failed to configure Set events\0A\00", align 1
@.str.8 = private unnamed_addr constant [32 x i8] c" Failed to get ctrl fw version\0A\00", align 1
@.str.9 = private unnamed_addr constant [42 x i8] c" Failed to update driver version in to FW\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"devlist_lock\00", align 1
@LOCKNAME_SIZE = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [36 x i8] c" Failed to initialize devlist_lock\0A\00", align 1
@num_intrs = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [46 x i8] c"Failed to process PQI configuration table %d\0A\00", align 1
@OS_FW_HEARTBEAT_TIMER_INTERVAL = common dso_local global i64 0, align 8
@PQI_MAX_DEVICES = common dso_local global i32 0, align 4
@PQI_MAX_MULTILUN = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [5 x i8] c"OUT\0A\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"OUT failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pqisrc_init(%struct.TYPE_19__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_19__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %7 = call i32 @DBG_FUNC(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %8 = call i32 (...) @check_struct_sizes()
  %9 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %10 = call i32 @pqisrc_sis_init(%struct.TYPE_19__* %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load i32, i32* %4, align 4
  %15 = call i32 (i8*, ...) @DBG_ERR(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %14)
  br label %183

16:                                               ; preds = %1
  %17 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %17, i32 0, i32 1
  %19 = call i32 @os_create_semaphore(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 1, i32* %18)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @PQI_STATUS_SUCCESS, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %16
  %24 = call i32 (i8*, ...) @DBG_ERR(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  br label %180

25:                                               ; preds = %16
  %26 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %27 = call i32 @pqisrc_pqi_init(%struct.TYPE_19__* %26)
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* %4, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = load i32, i32* %4, align 4
  %32 = call i32 (i8*, ...) @DBG_ERR(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i32 %31)
  br label %176

33:                                               ; preds = %25
  %34 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %35 = call i32 @os_setup_intr(%struct.TYPE_19__* %34)
  store i32 %35, i32* %4, align 4
  %36 = load i32, i32* %4, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = load i32, i32* %4, align 4
  %40 = call i32 (i8*, ...) @DBG_ERR(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0), i32 %39)
  br label %173

41:                                               ; preds = %33
  %42 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %43 = call i32 @pqisrc_report_event_config(%struct.TYPE_19__* %42)
  store i32 %43, i32* %4, align 4
  %44 = load i32, i32* %4, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %41
  %47 = call i32 (i8*, ...) @DBG_ERR(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0))
  br label %169

48:                                               ; preds = %41
  %49 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %50 = call i32 @pqisrc_set_event_config(%struct.TYPE_19__* %49)
  store i32 %50, i32* %4, align 4
  %51 = load i32, i32* %4, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %48
  %54 = call i32 (i8*, ...) @DBG_ERR(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0))
  br label %169

55:                                               ; preds = %48
  %56 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %57 = call i32 @pqisrc_get_ctrl_fw_version(%struct.TYPE_19__* %56)
  store i32 %57, i32* %4, align 4
  %58 = load i32, i32* %4, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %55
  %61 = call i32 (i8*, ...) @DBG_ERR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i64 0, i64 0))
  br label %168

62:                                               ; preds = %55
  %63 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %64 = call i32 @pqisrc_write_driver_version_to_host_wellness(%struct.TYPE_19__* %63)
  store i32 %64, i32* %4, align 4
  %65 = load i32, i32* %4, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %62
  %68 = call i32 (i8*, ...) @DBG_ERR(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.9, i64 0, i64 0))
  br label %170

69:                                               ; preds = %62
  %70 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %70, i32 0, i32 7
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @LOCKNAME_SIZE, align 4
  %74 = call i32 @os_strlcpy(i32 %72, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0), i32 %73)
  %75 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %76 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %76, i32 0, i32 2
  %78 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %78, i32 0, i32 7
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @os_init_spinlock(%struct.TYPE_19__* %75, i32* %77, i32 %80)
  store i32 %81, i32* %4, align 4
  %82 = load i32, i32* %4, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %69
  %85 = call i32 (i8*, ...) @DBG_ERR(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11, i64 0, i64 0))
  %86 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %86, i32 0, i32 0
  store i32 0, i32* %87, align 8
  br label %167

88:                                               ; preds = %69
  %89 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %89, i32 0, i32 0
  store i32 1, i32* %90, align 8
  %91 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %92 = load i32, i32* @num_intrs, align 4
  %93 = call i32 @OS_ATOMIC64_SET(%struct.TYPE_19__* %91, i32 %92, i32 0)
  %94 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %94, i32 0, i32 5
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %97, i32 0, i32 6
  store i32 %96, i32* %98, align 4
  %99 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %100 = call i64 @PQI_NEW_HEARTBEAT_MECHANISM(%struct.TYPE_19__* %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %111

102:                                              ; preds = %88
  %103 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %104 = call i32 @pqisrc_process_config_table(%struct.TYPE_19__* %103)
  store i32 %104, i32* %4, align 4
  %105 = load i32, i32* %4, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %102
  %108 = load i32, i32* %4, align 4
  %109 = call i32 (i8*, ...) @DBG_ERR(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.12, i64 0, i64 0), i32 %108)
  br label %155

110:                                              ; preds = %102
  br label %111

111:                                              ; preds = %110, %88
  %112 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %113 = call i64 @PQI_NEW_HEARTBEAT_MECHANISM(%struct.TYPE_19__* %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %122

115:                                              ; preds = %111
  %116 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %117 = call i64 @CTRLR_HEARTBEAT_CNT(%struct.TYPE_19__* %116)
  %118 = load i64, i64* @OS_FW_HEARTBEAT_TIMER_INTERVAL, align 8
  %119 = sub nsw i64 %117, %118
  %120 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %121 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %120, i32 0, i32 4
  store i64 %119, i64* %121, align 8
  br label %122

122:                                              ; preds = %115, %111
  store i32 0, i32* %5, align 4
  br label %123

123:                                              ; preds = %147, %122
  %124 = load i32, i32* %5, align 4
  %125 = load i32, i32* @PQI_MAX_DEVICES, align 4
  %126 = icmp slt i32 %124, %125
  br i1 %126, label %127, label %150

127:                                              ; preds = %123
  store i32 0, i32* %6, align 4
  br label %128

128:                                              ; preds = %143, %127
  %129 = load i32, i32* %6, align 4
  %130 = load i32, i32* @PQI_MAX_MULTILUN, align 4
  %131 = icmp slt i32 %129, %130
  br i1 %131, label %132, label %146

132:                                              ; preds = %128
  %133 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %134 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %133, i32 0, i32 3
  %135 = load i32***, i32**** %134, align 8
  %136 = load i32, i32* %5, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32**, i32*** %135, i64 %137
  %139 = load i32**, i32*** %138, align 8
  %140 = load i32, i32* %6, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i32*, i32** %139, i64 %141
  store i32* null, i32** %142, align 8
  br label %143

143:                                              ; preds = %132
  %144 = load i32, i32* %6, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %6, align 4
  br label %128

146:                                              ; preds = %128
  br label %147

147:                                              ; preds = %146
  %148 = load i32, i32* %5, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %5, align 4
  br label %123

150:                                              ; preds = %123
  %151 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %152 = call i32 @pqisrc_init_targetid_pool(%struct.TYPE_19__* %151)
  %153 = call i32 @DBG_FUNC(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0))
  %154 = load i32, i32* %4, align 4
  store i32 %154, i32* %2, align 4
  br label %186

155:                                              ; preds = %107
  %156 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %157 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = icmp eq i32 %158, 1
  br i1 %159, label %160, label %166

160:                                              ; preds = %155
  %161 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %162 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %161, i32 0, i32 2
  %163 = call i32 @os_uninit_spinlock(i32* %162)
  %164 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %165 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %164, i32 0, i32 0
  store i32 0, i32* %165, align 8
  br label %166

166:                                              ; preds = %160, %155
  br label %167

167:                                              ; preds = %166, %84
  br label %168

168:                                              ; preds = %167, %60
  br label %169

169:                                              ; preds = %168, %53, %46
  br label %170

170:                                              ; preds = %169, %67
  %171 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %172 = call i32 @os_destroy_intr(%struct.TYPE_19__* %171)
  br label %173

173:                                              ; preds = %170, %38
  %174 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %175 = call i32 @pqisrc_pqi_uninit(%struct.TYPE_19__* %174)
  br label %176

176:                                              ; preds = %173, %30
  %177 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %178 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %177, i32 0, i32 1
  %179 = call i32 @os_destroy_semaphore(i32* %178)
  br label %180

180:                                              ; preds = %176, %23
  %181 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %182 = call i32 @pqisrc_sis_uninit(%struct.TYPE_19__* %181)
  br label %183

183:                                              ; preds = %180, %13
  %184 = call i32 @DBG_FUNC(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i64 0, i64 0))
  %185 = load i32, i32* %4, align 4
  store i32 %185, i32* %2, align 4
  br label %186

186:                                              ; preds = %183, %150
  %187 = load i32, i32* %2, align 4
  ret i32 %187
}

declare dso_local i32 @DBG_FUNC(i8*) #1

declare dso_local i32 @check_struct_sizes(...) #1

declare dso_local i32 @pqisrc_sis_init(%struct.TYPE_19__*) #1

declare dso_local i32 @DBG_ERR(i8*, ...) #1

declare dso_local i32 @os_create_semaphore(i8*, i32, i32*) #1

declare dso_local i32 @pqisrc_pqi_init(%struct.TYPE_19__*) #1

declare dso_local i32 @os_setup_intr(%struct.TYPE_19__*) #1

declare dso_local i32 @pqisrc_report_event_config(%struct.TYPE_19__*) #1

declare dso_local i32 @pqisrc_set_event_config(%struct.TYPE_19__*) #1

declare dso_local i32 @pqisrc_get_ctrl_fw_version(%struct.TYPE_19__*) #1

declare dso_local i32 @pqisrc_write_driver_version_to_host_wellness(%struct.TYPE_19__*) #1

declare dso_local i32 @os_strlcpy(i32, i8*, i32) #1

declare dso_local i32 @os_init_spinlock(%struct.TYPE_19__*, i32*, i32) #1

declare dso_local i32 @OS_ATOMIC64_SET(%struct.TYPE_19__*, i32, i32) #1

declare dso_local i64 @PQI_NEW_HEARTBEAT_MECHANISM(%struct.TYPE_19__*) #1

declare dso_local i32 @pqisrc_process_config_table(%struct.TYPE_19__*) #1

declare dso_local i64 @CTRLR_HEARTBEAT_CNT(%struct.TYPE_19__*) #1

declare dso_local i32 @pqisrc_init_targetid_pool(%struct.TYPE_19__*) #1

declare dso_local i32 @os_uninit_spinlock(i32*) #1

declare dso_local i32 @os_destroy_intr(%struct.TYPE_19__*) #1

declare dso_local i32 @pqisrc_pqi_uninit(%struct.TYPE_19__*) #1

declare dso_local i32 @os_destroy_semaphore(i32*) #1

declare dso_local i32 @pqisrc_sis_uninit(%struct.TYPE_19__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
