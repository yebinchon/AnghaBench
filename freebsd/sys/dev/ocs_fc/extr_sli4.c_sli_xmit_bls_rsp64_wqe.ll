; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_sli4.c_sli_xmit_bls_rsp64_wqe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_sli4.c_sli_xmit_bls_rsp64_wqe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32 }
%struct.TYPE_14__ = type { i64, i32, i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32, i32, i32 }
%struct.TYPE_17__ = type { i64, i32, i64, %struct.TYPE_13__*, i64 }
%struct.TYPE_13__ = type { i64, i32 }
%struct.TYPE_15__ = type { i32, i64, i32, i32, i64, i32, i8*, i8*, i8*, i8*, i32, i32, i8*, i32, i32, i32, i8*, i32, i32 }

@UINT32_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"S_ID specified for attached remote node %d\0A\00", align 1
@SLI_BLS_ACC = common dso_local global i64 0, align 8
@SLI_BLS_RJT = common dso_local global i64 0, align 8
@TRUE = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [18 x i8] c"bad BLS type %#x\0A\00", align 1
@SLI4_ELS_REQUEST64_CONTEXT_RPI = common dso_local global i32 0, align 4
@SLI4_ELS_REQUEST64_CONTEXT_VPI = common dso_local global i32 0, align 4
@SLI4_ELS_REQUEST64_CLASS_3 = common dso_local global i32 0, align 4
@SLI4_WQE_XMIT_BLS_RSP = common dso_local global i32 0, align 4
@SLI4_CMD_XMIT_BLS_RSP64_WQE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sli_xmit_bls_rsp64_wqe(%struct.TYPE_16__* %0, i8* %1, i64 %2, %struct.TYPE_14__* %3, i8* %4, i8* %5, i8* %6, %struct.TYPE_17__* %7, i32 %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_16__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_14__*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca %struct.TYPE_17__*, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %11, align 8
  store i8* %1, i8** %12, align 8
  store i64 %2, i64* %13, align 8
  store %struct.TYPE_14__* %3, %struct.TYPE_14__** %14, align 8
  store i8* %4, i8** %15, align 8
  store i8* %5, i8** %16, align 8
  store i8* %6, i8** %17, align 8
  store %struct.TYPE_17__* %7, %struct.TYPE_17__** %18, align 8
  store i32 %8, i32* %19, align 4
  %21 = load i8*, i8** %12, align 8
  %22 = bitcast i8* %21 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %22, %struct.TYPE_15__** %20, align 8
  %23 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  %24 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %23, i32 0, i32 4
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %39

27:                                               ; preds = %9
  %28 = load i32, i32* %19, align 4
  %29 = load i32, i32* @UINT32_MAX, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %39

31:                                               ; preds = %27
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %33 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  %36 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @ocs_log_test(i32 %34, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i64 %37)
  store i32 -1, i32* %10, align 4
  br label %204

39:                                               ; preds = %27, %9
  %40 = load i8*, i8** %12, align 8
  %41 = load i64, i64* %13, align 8
  %42 = call i32 @ocs_memset(i8* %40, i32 0, i64 %41)
  %43 = load i64, i64* @SLI_BLS_ACC, align 8
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp eq i64 %43, %46
  br i1 %47, label %48, label %78

48:                                               ; preds = %39
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 3
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = shl i32 %53, 16
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i32 0, i32 3
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = shl i32 %59, 24
  %61 = or i32 %54, %60
  %62 = load %struct.TYPE_15__*, %struct.TYPE_15__** %20, align 8
  %63 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 8
  %64 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %65 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %64, i32 0, i32 3
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.TYPE_15__*, %struct.TYPE_15__** %20, align 8
  %70 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %69, i32 0, i32 18
  store i32 %68, i32* %70, align 4
  %71 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %72 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %71, i32 0, i32 3
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.TYPE_15__*, %struct.TYPE_15__** %20, align 8
  %77 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %76, i32 0, i32 17
  store i32 %75, i32* %77, align 8
  br label %103

78:                                               ; preds = %39
  %79 = load i64, i64* @SLI_BLS_RJT, align 8
  %80 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %81 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = icmp eq i64 %79, %82
  br i1 %83, label %84, label %94

84:                                               ; preds = %78
  %85 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %86 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %85, i32 0, i32 3
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.TYPE_15__*, %struct.TYPE_15__** %20, align 8
  %90 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %89, i32 0, i32 0
  store i32 %88, i32* %90, align 8
  %91 = load i8*, i8** @TRUE, align 8
  %92 = load %struct.TYPE_15__*, %struct.TYPE_15__** %20, align 8
  %93 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %92, i32 0, i32 16
  store i8* %91, i8** %93, align 8
  br label %102

94:                                               ; preds = %78
  %95 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %96 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %99 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = call i32 @ocs_log_test(i32 %97, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i64 %100)
  store i32 -1, i32* %10, align 4
  br label %204

102:                                              ; preds = %84
  br label %103

103:                                              ; preds = %102, %48
  %104 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %105 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.TYPE_15__*, %struct.TYPE_15__** %20, align 8
  %108 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %107, i32 0, i32 15
  store i32 %106, i32* %108, align 8
  %109 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %110 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.TYPE_15__*, %struct.TYPE_15__** %20, align 8
  %113 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %112, i32 0, i32 14
  store i32 %111, i32* %113, align 4
  %114 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  %115 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %114, i32 0, i32 4
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %127

118:                                              ; preds = %103
  %119 = load i32, i32* @SLI4_ELS_REQUEST64_CONTEXT_RPI, align 4
  %120 = load %struct.TYPE_15__*, %struct.TYPE_15__** %20, align 8
  %121 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %120, i32 0, i32 13
  store i32 %119, i32* %121, align 8
  %122 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  %123 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = load %struct.TYPE_15__*, %struct.TYPE_15__** %20, align 8
  %126 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %125, i32 0, i32 1
  store i64 %124, i64* %126, align 8
  br label %167

127:                                              ; preds = %103
  %128 = load i32, i32* @SLI4_ELS_REQUEST64_CONTEXT_VPI, align 4
  %129 = load %struct.TYPE_15__*, %struct.TYPE_15__** %20, align 8
  %130 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %129, i32 0, i32 13
  store i32 %128, i32* %130, align 8
  %131 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  %132 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %131, i32 0, i32 3
  %133 = load %struct.TYPE_13__*, %struct.TYPE_13__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = load %struct.TYPE_15__*, %struct.TYPE_15__** %20, align 8
  %137 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %136, i32 0, i32 1
  store i64 %135, i64* %137, align 8
  %138 = load i32, i32* @UINT32_MAX, align 4
  %139 = load i32, i32* %19, align 4
  %140 = icmp ne i32 %138, %139
  br i1 %140, label %141, label %146

141:                                              ; preds = %127
  %142 = load i32, i32* %19, align 4
  %143 = and i32 %142, 16777215
  %144 = load %struct.TYPE_15__*, %struct.TYPE_15__** %20, align 8
  %145 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %144, i32 0, i32 2
  store i32 %143, i32* %145, align 8
  br label %155

146:                                              ; preds = %127
  %147 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  %148 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %147, i32 0, i32 3
  %149 = load %struct.TYPE_13__*, %struct.TYPE_13__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 8
  %152 = and i32 %151, 16777215
  %153 = load %struct.TYPE_15__*, %struct.TYPE_15__** %20, align 8
  %154 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %153, i32 0, i32 2
  store i32 %152, i32* %154, align 8
  br label %155

155:                                              ; preds = %146, %141
  %156 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  %157 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 8
  %159 = and i32 %158, 16777215
  %160 = load %struct.TYPE_15__*, %struct.TYPE_15__** %20, align 8
  %161 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %160, i32 0, i32 3
  store i32 %159, i32* %161, align 4
  %162 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  %163 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = load %struct.TYPE_15__*, %struct.TYPE_15__** %20, align 8
  %166 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %165, i32 0, i32 4
  store i64 %164, i64* %166, align 8
  br label %167

167:                                              ; preds = %155, %118
  %168 = load i8*, i8** %15, align 8
  %169 = load %struct.TYPE_15__*, %struct.TYPE_15__** %20, align 8
  %170 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %169, i32 0, i32 12
  store i8* %168, i8** %170, align 8
  %171 = load i32, i32* @SLI4_ELS_REQUEST64_CLASS_3, align 4
  %172 = load %struct.TYPE_15__*, %struct.TYPE_15__** %20, align 8
  %173 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %172, i32 0, i32 11
  store i32 %171, i32* %173, align 4
  %174 = load i32, i32* @SLI4_WQE_XMIT_BLS_RSP, align 4
  %175 = load %struct.TYPE_15__*, %struct.TYPE_15__** %20, align 8
  %176 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %175, i32 0, i32 10
  store i32 %174, i32* %176, align 8
  %177 = load i8*, i8** %16, align 8
  %178 = load %struct.TYPE_15__*, %struct.TYPE_15__** %20, align 8
  %179 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %178, i32 0, i32 9
  store i8* %177, i8** %179, align 8
  %180 = load i8*, i8** @TRUE, align 8
  %181 = load %struct.TYPE_15__*, %struct.TYPE_15__** %20, align 8
  %182 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %181, i32 0, i32 8
  store i8* %180, i8** %182, align 8
  %183 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  %184 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %183, i32 0, i32 2
  %185 = load i64, i64* %184, align 8
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %197

187:                                              ; preds = %167
  %188 = load i8*, i8** @TRUE, align 8
  %189 = load %struct.TYPE_15__*, %struct.TYPE_15__** %20, align 8
  %190 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %189, i32 0, i32 7
  store i8* %188, i8** %190, align 8
  %191 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  %192 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 8
  %194 = and i32 %193, 16777215
  %195 = load %struct.TYPE_15__*, %struct.TYPE_15__** %20, align 8
  %196 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %195, i32 0, i32 3
  store i32 %194, i32* %196, align 4
  br label %197

197:                                              ; preds = %187, %167
  %198 = load i8*, i8** %17, align 8
  %199 = load %struct.TYPE_15__*, %struct.TYPE_15__** %20, align 8
  %200 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %199, i32 0, i32 6
  store i8* %198, i8** %200, align 8
  %201 = load i32, i32* @SLI4_CMD_XMIT_BLS_RSP64_WQE, align 4
  %202 = load %struct.TYPE_15__*, %struct.TYPE_15__** %20, align 8
  %203 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %202, i32 0, i32 5
  store i32 %201, i32* %203, align 8
  store i32 0, i32* %10, align 4
  br label %204

204:                                              ; preds = %197, %94, %31
  %205 = load i32, i32* %10, align 4
  ret i32 %205
}

declare dso_local i32 @ocs_log_test(i32, i8*, i64) #1

declare dso_local i32 @ocs_memset(i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
