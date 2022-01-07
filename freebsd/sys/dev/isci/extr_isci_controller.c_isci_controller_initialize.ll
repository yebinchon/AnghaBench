; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/extr_isci_controller.c_isci_controller_initialize.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/extr_isci_controller.c_isci_controller_initialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ISCI_CONTROLLER = type { i32, i32, i32, i32, i32, %struct.TYPE_12__*, i32, i32, i32, i64, i32, %struct.TYPE_8__* }
%struct.TYPE_12__ = type { i32, i8*, i64, i8*, i64, i32 }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__*, i8*, i8*, i8*, i8*, i8* }
%struct.TYPE_9__ = type { i8* }

@TRUE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"hw.isci.no_outbound_task_timeout\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"hw.isci.ssp_max_occupancy_timeout\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"hw.isci.stp_max_occupancy_timeout\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"hw.isci.ssp_inactivity_timeout\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"hw.isci.stp_inactivity_timeout\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"hw.isci.max_speed_generation\00", align 1
@SCI_MAX_PHYS = common dso_local global i32 0, align 4
@SCI_MAX_IO_REQUESTS = common dso_local global i32 0, align 4
@SCI_MAX_DOMAINS = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [31 x i8] c"hw.isci.controller_queue_depth\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"hw.isci.io_shortage\00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"hw.isci.fail_on_task_timeout\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [24 x i8] c"isci.bus%d.port%d.fault\00", align 1
@isci_led_fault_func = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [25 x i8] c"isci.bus%d.port%d.locate\00", align 1
@isci_led_locate_func = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @isci_controller_initialize(%struct.ISCI_CONTROLLER* %0) #0 {
  %2 = alloca %struct.ISCI_CONTROLLER*, align 8
  %3 = alloca %struct.TYPE_11__, align 8
  %4 = alloca i32, align 4
  %5 = alloca [64 x i8], align 16
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ISCI_CONTROLLER* %0, %struct.ISCI_CONTROLLER** %2, align 8
  %10 = load %struct.ISCI_CONTROLLER*, %struct.ISCI_CONTROLLER** %2, align 8
  %11 = getelementptr inbounds %struct.ISCI_CONTROLLER, %struct.ISCI_CONTROLLER* %10, i32 0, i32 4
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @scif_controller_get_scic_handle(i32 %12)
  store i32 %13, i32* %4, align 4
  %14 = load %struct.ISCI_CONTROLLER*, %struct.ISCI_CONTROLLER** %2, align 8
  %15 = getelementptr inbounds %struct.ISCI_CONTROLLER, %struct.ISCI_CONTROLLER* %14, i32 0, i32 11
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @TRUE, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %30

21:                                               ; preds = %1
  %22 = load i32, i32* %4, align 4
  %23 = load %struct.ISCI_CONTROLLER*, %struct.ISCI_CONTROLLER** %2, align 8
  %24 = getelementptr inbounds %struct.ISCI_CONTROLLER, %struct.ISCI_CONTROLLER* %23, i32 0, i32 10
  %25 = load %struct.ISCI_CONTROLLER*, %struct.ISCI_CONTROLLER** %2, align 8
  %26 = getelementptr inbounds %struct.ISCI_CONTROLLER, %struct.ISCI_CONTROLLER* %25, i32 0, i32 9
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to i8*
  %29 = call i32 @scic_oem_parameters_set(i32 %22, i32* %24, i8* %28)
  br label %30

30:                                               ; preds = %21, %1
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @scic_user_parameters_get(i32 %31, %struct.TYPE_11__* %3)
  %33 = call i64 @TUNABLE_ULONG_FETCH(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i64* %6)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %30
  %36 = load i64, i64* %6, align 8
  %37 = inttoptr i64 %36 to i8*
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 5
  store i8* %37, i8** %39, align 8
  br label %40

40:                                               ; preds = %35, %30
  %41 = call i64 @TUNABLE_ULONG_FETCH(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i64* %6)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %40
  %44 = load i64, i64* %6, align 8
  %45 = inttoptr i64 %44 to i8*
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 4
  store i8* %45, i8** %47, align 8
  br label %48

48:                                               ; preds = %43, %40
  %49 = call i64 @TUNABLE_ULONG_FETCH(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i64* %6)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %48
  %52 = load i64, i64* %6, align 8
  %53 = inttoptr i64 %52 to i8*
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 3
  store i8* %53, i8** %55, align 8
  br label %56

56:                                               ; preds = %51, %48
  %57 = call i64 @TUNABLE_ULONG_FETCH(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i64* %6)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %56
  %60 = load i64, i64* %6, align 8
  %61 = inttoptr i64 %60 to i8*
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 2
  store i8* %61, i8** %63, align 8
  br label %64

64:                                               ; preds = %59, %56
  %65 = call i64 @TUNABLE_ULONG_FETCH(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i64* %6)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %64
  %68 = load i64, i64* %6, align 8
  %69 = inttoptr i64 %68 to i8*
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 1
  store i8* %69, i8** %71, align 8
  br label %72

72:                                               ; preds = %67, %64
  %73 = call i64 @TUNABLE_ULONG_FETCH(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i64* %6)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %94

75:                                               ; preds = %72
  store i32 0, i32* %9, align 4
  br label %76

76:                                               ; preds = %90, %75
  %77 = load i32, i32* %9, align 4
  %78 = load i32, i32* @SCI_MAX_PHYS, align 4
  %79 = icmp slt i32 %77, %78
  br i1 %79, label %80, label %93

80:                                               ; preds = %76
  %81 = load i64, i64* %6, align 8
  %82 = inttoptr i64 %81 to i8*
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 0
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %84, align 8
  %86 = load i32, i32* %9, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 0
  store i8* %82, i8** %89, align 8
  br label %90

90:                                               ; preds = %80
  %91 = load i32, i32* %9, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %9, align 4
  br label %76

93:                                               ; preds = %76
  br label %94

94:                                               ; preds = %93, %72
  %95 = load i32, i32* %4, align 4
  %96 = call i32 @scic_user_parameters_set(i32 %95, %struct.TYPE_11__* %3)
  %97 = load i32, i32* @SCI_MAX_IO_REQUESTS, align 4
  %98 = load i32, i32* @SCI_MAX_DOMAINS, align 4
  %99 = sub nsw i32 %97, %98
  %100 = load %struct.ISCI_CONTROLLER*, %struct.ISCI_CONTROLLER** %2, align 8
  %101 = getelementptr inbounds %struct.ISCI_CONTROLLER, %struct.ISCI_CONTROLLER* %100, i32 0, i32 0
  store i32 %99, i32* %101, align 8
  %102 = load %struct.ISCI_CONTROLLER*, %struct.ISCI_CONTROLLER** %2, align 8
  %103 = getelementptr inbounds %struct.ISCI_CONTROLLER, %struct.ISCI_CONTROLLER* %102, i32 0, i32 0
  %104 = call i64 @TUNABLE_INT_FETCH(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0), i32* %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %117

106:                                              ; preds = %94
  %107 = load %struct.ISCI_CONTROLLER*, %struct.ISCI_CONTROLLER** %2, align 8
  %108 = getelementptr inbounds %struct.ISCI_CONTROLLER, %struct.ISCI_CONTROLLER* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* @SCI_MAX_IO_REQUESTS, align 4
  %111 = load i32, i32* @SCI_MAX_DOMAINS, align 4
  %112 = sub nsw i32 %110, %111
  %113 = call i32 @min(i32 %109, i32 %112)
  %114 = call i32 @max(i32 1, i32 %113)
  %115 = load %struct.ISCI_CONTROLLER*, %struct.ISCI_CONTROLLER** %2, align 8
  %116 = getelementptr inbounds %struct.ISCI_CONTROLLER, %struct.ISCI_CONTROLLER* %115, i32 0, i32 0
  store i32 %114, i32* %116, align 8
  br label %117

117:                                              ; preds = %106, %94
  %118 = load %struct.ISCI_CONTROLLER*, %struct.ISCI_CONTROLLER** %2, align 8
  %119 = getelementptr inbounds %struct.ISCI_CONTROLLER, %struct.ISCI_CONTROLLER* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = sub nsw i32 %120, 1
  %122 = load %struct.ISCI_CONTROLLER*, %struct.ISCI_CONTROLLER** %2, align 8
  %123 = getelementptr inbounds %struct.ISCI_CONTROLLER, %struct.ISCI_CONTROLLER* %122, i32 0, i32 1
  store i32 %121, i32* %123, align 4
  store i32 0, i32* %7, align 4
  %124 = call i64 @TUNABLE_INT_FETCH(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0), i32* %7)
  %125 = load i32, i32* %7, align 4
  %126 = load %struct.ISCI_CONTROLLER*, %struct.ISCI_CONTROLLER** %2, align 8
  %127 = getelementptr inbounds %struct.ISCI_CONTROLLER, %struct.ISCI_CONTROLLER* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = add nsw i32 %128, %125
  store i32 %129, i32* %127, align 4
  store i32 1, i32* %8, align 4
  %130 = call i64 @TUNABLE_INT_FETCH(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0), i32* %8)
  %131 = load i32, i32* %8, align 4
  %132 = load %struct.ISCI_CONTROLLER*, %struct.ISCI_CONTROLLER** %2, align 8
  %133 = getelementptr inbounds %struct.ISCI_CONTROLLER, %struct.ISCI_CONTROLLER* %132, i32 0, i32 2
  store i32 %131, i32* %133, align 8
  %134 = load i32, i32* @FALSE, align 4
  %135 = load %struct.ISCI_CONTROLLER*, %struct.ISCI_CONTROLLER** %2, align 8
  %136 = getelementptr inbounds %struct.ISCI_CONTROLLER, %struct.ISCI_CONTROLLER* %135, i32 0, i32 8
  store i32 %134, i32* %136, align 8
  %137 = load %struct.ISCI_CONTROLLER*, %struct.ISCI_CONTROLLER** %2, align 8
  %138 = getelementptr inbounds %struct.ISCI_CONTROLLER, %struct.ISCI_CONTROLLER* %137, i32 0, i32 6
  %139 = call i32 @mtx_lock(i32* %138)
  %140 = load %struct.ISCI_CONTROLLER*, %struct.ISCI_CONTROLLER** %2, align 8
  %141 = call i32 @isci_controller_attach_to_cam(%struct.ISCI_CONTROLLER* %140)
  %142 = load %struct.ISCI_CONTROLLER*, %struct.ISCI_CONTROLLER** %2, align 8
  %143 = getelementptr inbounds %struct.ISCI_CONTROLLER, %struct.ISCI_CONTROLLER* %142, i32 0, i32 7
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @xpt_freeze_simq(i32 %144, i32 1)
  %146 = load %struct.ISCI_CONTROLLER*, %struct.ISCI_CONTROLLER** %2, align 8
  %147 = getelementptr inbounds %struct.ISCI_CONTROLLER, %struct.ISCI_CONTROLLER* %146, i32 0, i32 6
  %148 = call i32 @mtx_unlock(i32* %147)
  store i32 0, i32* %9, align 4
  br label %149

149:                                              ; preds = %228, %117
  %150 = load i32, i32* %9, align 4
  %151 = load i32, i32* @SCI_MAX_PHYS, align 4
  %152 = icmp slt i32 %150, %151
  br i1 %152, label %153, label %231

153:                                              ; preds = %149
  %154 = load i32, i32* %4, align 4
  %155 = load %struct.ISCI_CONTROLLER*, %struct.ISCI_CONTROLLER** %2, align 8
  %156 = getelementptr inbounds %struct.ISCI_CONTROLLER, %struct.ISCI_CONTROLLER* %155, i32 0, i32 5
  %157 = load %struct.TYPE_12__*, %struct.TYPE_12__** %156, align 8
  %158 = load i32, i32* %9, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %157, i64 %159
  %161 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %160, i32 0, i32 5
  store i32 %154, i32* %161, align 8
  %162 = load i32, i32* %9, align 4
  %163 = load %struct.ISCI_CONTROLLER*, %struct.ISCI_CONTROLLER** %2, align 8
  %164 = getelementptr inbounds %struct.ISCI_CONTROLLER, %struct.ISCI_CONTROLLER* %163, i32 0, i32 5
  %165 = load %struct.TYPE_12__*, %struct.TYPE_12__** %164, align 8
  %166 = load i32, i32* %9, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %165, i64 %167
  %169 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %168, i32 0, i32 0
  store i32 %162, i32* %169, align 8
  %170 = load %struct.ISCI_CONTROLLER*, %struct.ISCI_CONTROLLER** %2, align 8
  %171 = getelementptr inbounds %struct.ISCI_CONTROLLER, %struct.ISCI_CONTROLLER* %170, i32 0, i32 5
  %172 = load %struct.TYPE_12__*, %struct.TYPE_12__** %171, align 8
  %173 = load i32, i32* %9, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %172, i64 %174
  %176 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %175, i32 0, i32 4
  store i64 0, i64* %176, align 8
  %177 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %178 = load %struct.ISCI_CONTROLLER*, %struct.ISCI_CONTROLLER** %2, align 8
  %179 = getelementptr inbounds %struct.ISCI_CONTROLLER, %struct.ISCI_CONTROLLER* %178, i32 0, i32 3
  %180 = load i32, i32* %179, align 4
  %181 = load i32, i32* %9, align 4
  %182 = call i32 @sprintf(i8* %177, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0), i32 %180, i32 %181)
  %183 = load i32, i32* @isci_led_fault_func, align 4
  %184 = load %struct.ISCI_CONTROLLER*, %struct.ISCI_CONTROLLER** %2, align 8
  %185 = getelementptr inbounds %struct.ISCI_CONTROLLER, %struct.ISCI_CONTROLLER* %184, i32 0, i32 5
  %186 = load %struct.TYPE_12__*, %struct.TYPE_12__** %185, align 8
  %187 = load i32, i32* %9, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %186, i64 %188
  %190 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %191 = call i8* @led_create(i32 %183, %struct.TYPE_12__* %189, i8* %190)
  %192 = load %struct.ISCI_CONTROLLER*, %struct.ISCI_CONTROLLER** %2, align 8
  %193 = getelementptr inbounds %struct.ISCI_CONTROLLER, %struct.ISCI_CONTROLLER* %192, i32 0, i32 5
  %194 = load %struct.TYPE_12__*, %struct.TYPE_12__** %193, align 8
  %195 = load i32, i32* %9, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %194, i64 %196
  %198 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %197, i32 0, i32 3
  store i8* %191, i8** %198, align 8
  %199 = load %struct.ISCI_CONTROLLER*, %struct.ISCI_CONTROLLER** %2, align 8
  %200 = getelementptr inbounds %struct.ISCI_CONTROLLER, %struct.ISCI_CONTROLLER* %199, i32 0, i32 5
  %201 = load %struct.TYPE_12__*, %struct.TYPE_12__** %200, align 8
  %202 = load i32, i32* %9, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %201, i64 %203
  %205 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %204, i32 0, i32 2
  store i64 0, i64* %205, align 8
  %206 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %207 = load %struct.ISCI_CONTROLLER*, %struct.ISCI_CONTROLLER** %2, align 8
  %208 = getelementptr inbounds %struct.ISCI_CONTROLLER, %struct.ISCI_CONTROLLER* %207, i32 0, i32 3
  %209 = load i32, i32* %208, align 4
  %210 = load i32, i32* %9, align 4
  %211 = call i32 @sprintf(i8* %206, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i64 0, i64 0), i32 %209, i32 %210)
  %212 = load i32, i32* @isci_led_locate_func, align 4
  %213 = load %struct.ISCI_CONTROLLER*, %struct.ISCI_CONTROLLER** %2, align 8
  %214 = getelementptr inbounds %struct.ISCI_CONTROLLER, %struct.ISCI_CONTROLLER* %213, i32 0, i32 5
  %215 = load %struct.TYPE_12__*, %struct.TYPE_12__** %214, align 8
  %216 = load i32, i32* %9, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %215, i64 %217
  %219 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %220 = call i8* @led_create(i32 %212, %struct.TYPE_12__* %218, i8* %219)
  %221 = load %struct.ISCI_CONTROLLER*, %struct.ISCI_CONTROLLER** %2, align 8
  %222 = getelementptr inbounds %struct.ISCI_CONTROLLER, %struct.ISCI_CONTROLLER* %221, i32 0, i32 5
  %223 = load %struct.TYPE_12__*, %struct.TYPE_12__** %222, align 8
  %224 = load i32, i32* %9, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %223, i64 %225
  %227 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %226, i32 0, i32 1
  store i8* %220, i8** %227, align 8
  br label %228

228:                                              ; preds = %153
  %229 = load i32, i32* %9, align 4
  %230 = add nsw i32 %229, 1
  store i32 %230, i32* %9, align 4
  br label %149

231:                                              ; preds = %149
  %232 = load %struct.ISCI_CONTROLLER*, %struct.ISCI_CONTROLLER** %2, align 8
  %233 = getelementptr inbounds %struct.ISCI_CONTROLLER, %struct.ISCI_CONTROLLER* %232, i32 0, i32 4
  %234 = load i32, i32* %233, align 8
  %235 = call i32 @scif_controller_initialize(i32 %234)
  ret i32 %235
}

declare dso_local i32 @scif_controller_get_scic_handle(i32) #1

declare dso_local i32 @scic_oem_parameters_set(i32, i32*, i8*) #1

declare dso_local i32 @scic_user_parameters_get(i32, %struct.TYPE_11__*) #1

declare dso_local i64 @TUNABLE_ULONG_FETCH(i8*, i64*) #1

declare dso_local i32 @scic_user_parameters_set(i32, %struct.TYPE_11__*) #1

declare dso_local i64 @TUNABLE_INT_FETCH(i8*, i32*) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @isci_controller_attach_to_cam(%struct.ISCI_CONTROLLER*) #1

declare dso_local i32 @xpt_freeze_simq(i32, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32, i32) #1

declare dso_local i8* @led_create(i32, %struct.TYPE_12__*, i8*) #1

declare dso_local i32 @scif_controller_initialize(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
