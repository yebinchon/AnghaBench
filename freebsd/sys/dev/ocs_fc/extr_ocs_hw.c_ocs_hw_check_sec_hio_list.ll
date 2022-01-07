; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_hw.c_ocs_hw_check_sec_hio_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_hw.c_ocs_hw_check_sec_hio_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { i32, %struct.TYPE_28__, i32, i32 }
%struct.TYPE_28__ = type { %struct.TYPE_23__ }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_27__ = type { i8*, %struct.TYPE_22__, i32*, %struct.TYPE_25__, %struct.TYPE_29__*, i32, i32, i32, i32, i32, %struct.TYPE_27__*, i32, i8*, i32 }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_25__ = type { %struct.TYPE_24__ }
%struct.TYPE_24__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_29__ = type { i32 }

@OCS_HW_IO_STATE_INUSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i8* null, align 8
@SLI4_IO_CONTINUATION = common dso_local global i32 0, align 4
@SLI4_CQ_DEFAULT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"TRECEIVE WQE error\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"sli_queue_write failed: %d\0A\00", align 1
@FALSE = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_26__*)* @ocs_hw_check_sec_hio_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ocs_hw_check_sec_hio_list(%struct.TYPE_26__* %0) #0 {
  %2 = alloca %struct.TYPE_26__*, align 8
  %3 = alloca %struct.TYPE_27__*, align 8
  %4 = alloca %struct.TYPE_27__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_26__* %0, %struct.TYPE_26__** %2, align 8
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %270, %1
  %8 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %8, i32 0, i32 3
  %10 = call i32 @ocs_list_empty(i32* %9)
  %11 = icmp ne i32 %10, 0
  %12 = xor i1 %11, true
  br i1 %12, label %13, label %271

13:                                               ; preds = %7
  %14 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %15 = call %struct.TYPE_27__* @_ocs_hw_io_alloc(%struct.TYPE_26__* %14)
  store %struct.TYPE_27__* %15, %struct.TYPE_27__** %4, align 8
  %16 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %17 = icmp eq %struct.TYPE_27__* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  br label %271

19:                                               ; preds = %13
  %20 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %20, i32 0, i32 3
  %22 = call %struct.TYPE_27__* @ocs_list_remove_head(i32* %21)
  store %struct.TYPE_27__* %22, %struct.TYPE_27__** %3, align 8
  %23 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %23, i32 0, i32 2
  %25 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %26 = call i32 @ocs_list_add_tail(i32* %24, %struct.TYPE_27__* %25)
  %27 = load i32, i32* @OCS_HW_IO_STATE_INUSE, align 4
  %28 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %28, i32 0, i32 13
  store i32 %27, i32* %29, align 8
  %30 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %31 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %31, i32 0, i32 10
  store %struct.TYPE_27__* %30, %struct.TYPE_27__** %32, align 8
  %33 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %41

37:                                               ; preds = %19
  %38 = load i8*, i8** @TRUE, align 8
  %39 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %39, i32 0, i32 12
  store i8* %38, i8** %40, align 8
  br label %41

41:                                               ; preds = %37, %19
  %42 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %42, i32 0, i32 3
  %44 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %44, i32 0, i32 7
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %6, align 4
  %47 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %51, label %55

51:                                               ; preds = %41
  %52 = load i32, i32* @SLI4_IO_CONTINUATION, align 4
  %53 = load i32, i32* %6, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %6, align 4
  br label %60

55:                                               ; preds = %41
  %56 = load i32, i32* @SLI4_IO_CONTINUATION, align 4
  %57 = xor i32 %56, -1
  %58 = load i32, i32* %6, align 4
  %59 = and i32 %58, %57
  store i32 %59, i32* %6, align 4
  br label %60

60:                                               ; preds = %55, %51
  %61 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %61, i32 0, i32 3
  %63 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %63, i32 0, i32 6
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %66, i32 0, i32 11
  store i32 %65, i32* %67, align 8
  %68 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %68, i32 0, i32 0
  %70 = load i8*, i8** %69, align 8
  %71 = icmp ne i8* %70, null
  br i1 %71, label %72, label %151

72:                                               ; preds = %60
  %73 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %74 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %73, i32 0, i32 1
  %75 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %80 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %84, i32 0, i32 9
  %86 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %86, i32 0, i32 8
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %89, i32 0, i32 3
  %91 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %91, i32 0, i32 5
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %94, i32 0, i32 7
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %97, i32 0, i32 6
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %100, i32 0, i32 10
  %102 = load %struct.TYPE_27__*, %struct.TYPE_27__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %102, i32 0, i32 6
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %106 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %105, i32 0, i32 5
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* @SLI4_CQ_DEFAULT, align 4
  %109 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %110 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %109, i32 0, i32 3
  %111 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %111, i32 0, i32 4
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %115 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %114, i32 0, i32 4
  %116 = load %struct.TYPE_29__*, %struct.TYPE_29__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %120 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %119, i32 0, i32 4
  %121 = load %struct.TYPE_29__*, %struct.TYPE_29__** %120, align 8
  %122 = load i32, i32* %6, align 4
  %123 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %124 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %123, i32 0, i32 3
  %125 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %125, i32 0, i32 3
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %129 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %128, i32 0, i32 3
  %130 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 8
  %133 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %134 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %133, i32 0, i32 3
  %135 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %139 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %138, i32 0, i32 3
  %140 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = call i64 @sli_fcp_cont_treceive64_wqe(%struct.TYPE_28__* %74, i32 %78, i32 %83, i32* %85, i32 %88, i32 %93, i32 %96, i32 %99, i32 %104, i32 %107, i32 %108, i32 %113, i32 %118, %struct.TYPE_29__* %121, i32 %122, i32 %127, i32 %132, i32 %137, i32 %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %150

145:                                              ; preds = %72
  %146 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %147 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @ocs_log_test(i32 %148, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %271

150:                                              ; preds = %72
  br label %225

151:                                              ; preds = %60
  %152 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %153 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %152, i32 0, i32 1
  %154 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %155 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %154, i32 0, i32 1
  %156 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %159 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %158, i32 0, i32 1
  %160 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %164 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %163, i32 0, i32 9
  %165 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %166 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %165, i32 0, i32 8
  %167 = load i32, i32* %166, align 4
  %168 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %169 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %168, i32 0, i32 3
  %170 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %170, i32 0, i32 5
  %172 = load i32, i32* %171, align 4
  %173 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %174 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %173, i32 0, i32 7
  %175 = load i32, i32* %174, align 8
  %176 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %177 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %176, i32 0, i32 6
  %178 = load i32, i32* %177, align 4
  %179 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %180 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %179, i32 0, i32 5
  %181 = load i32, i32* %180, align 8
  %182 = load i32, i32* @SLI4_CQ_DEFAULT, align 4
  %183 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %184 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %183, i32 0, i32 3
  %185 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %185, i32 0, i32 4
  %187 = load i32, i32* %186, align 8
  %188 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %189 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %188, i32 0, i32 4
  %190 = load %struct.TYPE_29__*, %struct.TYPE_29__** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 4
  %193 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %194 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %193, i32 0, i32 4
  %195 = load %struct.TYPE_29__*, %struct.TYPE_29__** %194, align 8
  %196 = load i32, i32* %6, align 4
  %197 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %198 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %197, i32 0, i32 3
  %199 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %198, i32 0, i32 0
  %200 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %199, i32 0, i32 3
  %201 = load i32, i32* %200, align 4
  %202 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %203 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %202, i32 0, i32 3
  %204 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %203, i32 0, i32 0
  %205 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %204, i32 0, i32 2
  %206 = load i32, i32* %205, align 8
  %207 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %208 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %207, i32 0, i32 3
  %209 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %208, i32 0, i32 0
  %210 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %209, i32 0, i32 1
  %211 = load i32, i32* %210, align 4
  %212 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %213 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %212, i32 0, i32 3
  %214 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %213, i32 0, i32 0
  %215 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 8
  %217 = call i64 @sli_fcp_treceive64_wqe(%struct.TYPE_28__* %153, i32 %157, i32 %162, i32* %164, i32 %167, i32 %172, i32 %175, i32 %178, i32 %181, i32 %182, i32 %187, i32 %192, %struct.TYPE_29__* %195, i32 %196, i32 %201, i32 %206, i32 %211, i32 %216)
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %219, label %224

219:                                              ; preds = %151
  %220 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %221 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 4
  %223 = call i32 @ocs_log_test(i32 %222, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %271

224:                                              ; preds = %151
  br label %225

225:                                              ; preds = %224, %150
  %226 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %227 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %226, i32 0, i32 2
  %228 = load i32*, i32** %227, align 8
  %229 = icmp eq i32* %228, null
  br i1 %229, label %230, label %242

230:                                              ; preds = %225
  %231 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %232 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %233 = call i32* @ocs_hw_queue_next_wq(%struct.TYPE_26__* %231, %struct.TYPE_27__* %232)
  %234 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %235 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %234, i32 0, i32 2
  store i32* %233, i32** %235, align 8
  %236 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %237 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %236, i32 0, i32 2
  %238 = load i32*, i32** %237, align 8
  %239 = icmp ne i32* %238, null
  %240 = zext i1 %239 to i32
  %241 = call i32 @ocs_hw_assert(i32 %240)
  br label %242

242:                                              ; preds = %230, %225
  %243 = load i8*, i8** @TRUE, align 8
  %244 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %245 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %244, i32 0, i32 0
  store i8* %243, i8** %245, align 8
  %246 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %247 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %248 = call i32 @ocs_hw_add_io_timed_wqe(%struct.TYPE_26__* %246, %struct.TYPE_27__* %247)
  %249 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %250 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %249, i32 0, i32 2
  %251 = load i32*, i32** %250, align 8
  %252 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %253 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %252, i32 0, i32 1
  %254 = call i32 @hw_wq_write(i32* %251, %struct.TYPE_22__* %253)
  store i32 %254, i32* %5, align 4
  %255 = load i32, i32* %5, align 4
  %256 = icmp sge i32 %255, 0
  br i1 %256, label %257, label %258

257:                                              ; preds = %242
  store i32 0, i32* %5, align 4
  br label %270

258:                                              ; preds = %242
  %259 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %260 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %259, i32 0, i32 0
  %261 = load i32, i32* %260, align 4
  %262 = load i32, i32* %5, align 4
  %263 = call i32 @ocs_log_err(i32 %261, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %262)
  %264 = load i8*, i8** @FALSE, align 8
  %265 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %266 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %265, i32 0, i32 0
  store i8* %264, i8** %266, align 8
  %267 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %268 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %269 = call i32 @ocs_hw_remove_io_timed_wqe(%struct.TYPE_26__* %267, %struct.TYPE_27__* %268)
  br label %270

270:                                              ; preds = %258, %257
  br label %7

271:                                              ; preds = %219, %145, %18, %7
  ret void
}

declare dso_local i32 @ocs_list_empty(i32*) #1

declare dso_local %struct.TYPE_27__* @_ocs_hw_io_alloc(%struct.TYPE_26__*) #1

declare dso_local %struct.TYPE_27__* @ocs_list_remove_head(i32*) #1

declare dso_local i32 @ocs_list_add_tail(i32*, %struct.TYPE_27__*) #1

declare dso_local i64 @sli_fcp_cont_treceive64_wqe(%struct.TYPE_28__*, i32, i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_29__*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ocs_log_test(i32, i8*) #1

declare dso_local i64 @sli_fcp_treceive64_wqe(%struct.TYPE_28__*, i32, i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_29__*, i32, i32, i32, i32, i32) #1

declare dso_local i32* @ocs_hw_queue_next_wq(%struct.TYPE_26__*, %struct.TYPE_27__*) #1

declare dso_local i32 @ocs_hw_assert(i32) #1

declare dso_local i32 @ocs_hw_add_io_timed_wqe(%struct.TYPE_26__*, %struct.TYPE_27__*) #1

declare dso_local i32 @hw_wq_write(i32*, %struct.TYPE_22__*) #1

declare dso_local i32 @ocs_log_err(i32, i8*, i32) #1

declare dso_local i32 @ocs_hw_remove_io_timed_wqe(%struct.TYPE_26__*, %struct.TYPE_27__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
