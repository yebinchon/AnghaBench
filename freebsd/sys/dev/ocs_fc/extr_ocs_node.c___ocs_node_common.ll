; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_node.c___ocs_node_common.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_node.c___ocs_node_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32, i32, %struct.TYPE_19__*, %struct.TYPE_19__*, %struct.TYPE_19__*, i32, %struct.TYPE_19__* }
%struct.TYPE_20__ = type { i32, %struct.TYPE_18__*, %struct.TYPE_16__* }
%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i64 }

@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"[%s] (%s) ELS x%02x, LS_RJT not supported\0A\00", align 1
@FC_REASON_COMMAND_NOT_SUPPORTED = common dso_local global i32 0, align 4
@FC_EXPL_NO_ADDITIONAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"[%s] (%s) %s sending ELS_RJT\0A\00", align 1
@FC_REASON_UNABLE_TO_PERFORM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"[%s] (%s) %s sending CT_REJECT\0A\00", align 1
@FCCT_HDR_CMDRSP_REJECT = common dso_local global i32 0, align 4
@FCCT_COMMAND_NOT_SUPPORTED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"[%s] (%s) %s sending BA_ACC\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"[%s] %-20s %-20s not handled\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @__ocs_node_common(i8* %0, %struct.TYPE_19__* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_19__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_19__*, align 8
  %10 = alloca %struct.TYPE_19__*, align 8
  %11 = alloca %struct.TYPE_20__*, align 8
  %12 = alloca %struct.TYPE_21__*, align 8
  %13 = alloca %struct.TYPE_21__*, align 8
  %14 = alloca %struct.TYPE_21__*, align 8
  %15 = alloca %struct.TYPE_21__*, align 8
  store i8* %0, i8** %5, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %9, align 8
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %10, align 8
  %16 = load i8*, i8** %8, align 8
  %17 = bitcast i8* %16 to %struct.TYPE_20__*
  store %struct.TYPE_20__* %17, %struct.TYPE_20__** %11, align 8
  %18 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %19 = call i32 @ocs_assert(%struct.TYPE_19__* %18, i32* null)
  %20 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %20, i32 0, i32 6
  %22 = load %struct.TYPE_19__*, %struct.TYPE_19__** %21, align 8
  %23 = call i32 @ocs_assert(%struct.TYPE_19__* %22, i32* null)
  %24 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %24, i32 0, i32 6
  %26 = load %struct.TYPE_19__*, %struct.TYPE_19__** %25, align 8
  store %struct.TYPE_19__* %26, %struct.TYPE_19__** %9, align 8
  %27 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %28 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %27, i32 0, i32 2
  %29 = load %struct.TYPE_19__*, %struct.TYPE_19__** %28, align 8
  %30 = call i32 @ocs_assert(%struct.TYPE_19__* %29, i32* null)
  %31 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %31, i32 0, i32 2
  %33 = load %struct.TYPE_19__*, %struct.TYPE_19__** %32, align 8
  store %struct.TYPE_19__* %33, %struct.TYPE_19__** %10, align 8
  %34 = load i32, i32* %7, align 4
  switch i32 %34, label %172 [
    i32 154, label %35
    i32 138, label %35
    i32 153, label %35
    i32 133, label %35
    i32 144, label %35
    i32 152, label %35
    i32 143, label %36
    i32 146, label %39
    i32 145, label %43
    i32 147, label %43
    i32 131, label %47
    i32 132, label %47
    i32 129, label %56
    i32 130, label %56
    i32 128, label %56
    i32 155, label %56
    i32 156, label %65
    i32 141, label %97
    i32 150, label %97
    i32 148, label %97
    i32 140, label %97
    i32 139, label %97
    i32 142, label %97
    i32 151, label %97
    i32 157, label %97
    i32 135, label %97
    i32 134, label %97
    i32 149, label %122
    i32 136, label %122
    i32 137, label %122
    i32 158, label %152
  ]

35:                                               ; preds = %4, %4, %4, %4, %4, %4
  br label %183

36:                                               ; preds = %4
  %37 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %38 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %37, i32 0, i32 0
  store i32 1, i32* %38, align 8
  br label %183

39:                                               ; preds = %4
  %40 = load i32, i32* @TRUE, align 4
  %41 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %41, i32 0, i32 5
  store i32 %40, i32* %42, align 8
  br label %183

43:                                               ; preds = %4, %4
  %44 = load i32, i32* @FALSE, align 4
  %45 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %46 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %45, i32 0, i32 5
  store i32 %44, i32* %46, align 8
  br label %183

47:                                               ; preds = %4, %4
  %48 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %49 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %48, i32 0, i32 4
  %50 = load %struct.TYPE_19__*, %struct.TYPE_19__** %49, align 8
  %51 = call i32 @ocs_assert(%struct.TYPE_19__* %50, i32* null)
  %52 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %53 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %52, i32 0, i32 4
  %54 = load %struct.TYPE_19__*, %struct.TYPE_19__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %54, i32 -1
  store %struct.TYPE_19__* %55, %struct.TYPE_19__** %53, align 8
  br label %183

56:                                               ; preds = %4, %4, %4, %4
  %57 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %58 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %57, i32 0, i32 3
  %59 = load %struct.TYPE_19__*, %struct.TYPE_19__** %58, align 8
  %60 = call i32 @ocs_assert(%struct.TYPE_19__* %59, i32* null)
  %61 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %62 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %61, i32 0, i32 3
  %63 = load %struct.TYPE_19__*, %struct.TYPE_19__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %63, i32 -1
  store %struct.TYPE_19__* %64, %struct.TYPE_19__** %62, align 8
  br label %183

65:                                               ; preds = %4
  %66 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %67 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %66, i32 0, i32 1
  %68 = load %struct.TYPE_18__*, %struct.TYPE_18__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_21__*, %struct.TYPE_21__** %70, align 8
  store %struct.TYPE_21__* %71, %struct.TYPE_21__** %12, align 8
  %72 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %73 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %74 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load i8*, i8** %5, align 8
  %77 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %78 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %77, i32 0, i32 2
  %79 = load %struct.TYPE_16__*, %struct.TYPE_16__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = inttoptr i64 %82 to i32*
  %84 = getelementptr inbounds i32, i32* %83, i64 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @ocs_log_debug(%struct.TYPE_19__* %72, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %75, i8* %76, i32 %85)
  %87 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %88 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %91 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @ocs_be16toh(i32 %92)
  %94 = load i32, i32* @FC_REASON_COMMAND_NOT_SUPPORTED, align 4
  %95 = load i32, i32* @FC_EXPL_NO_ADDITIONAL, align 4
  %96 = call i32 @ocs_send_ls_rjt(i32 %89, i32 %93, i32 %94, i32 %95, i32 0, i32* null, i32* null)
  br label %183

97:                                               ; preds = %4, %4, %4, %4, %4, %4, %4, %4, %4, %4
  %98 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %99 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %98, i32 0, i32 1
  %100 = load %struct.TYPE_18__*, %struct.TYPE_18__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %101, i32 0, i32 0
  %103 = load %struct.TYPE_21__*, %struct.TYPE_21__** %102, align 8
  store %struct.TYPE_21__* %103, %struct.TYPE_21__** %13, align 8
  %104 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %105 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %106 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load i8*, i8** %5, align 8
  %109 = load i32, i32* %7, align 4
  %110 = call i32 @ocs_sm_event_name(i32 %109)
  %111 = call i32 @ocs_log_debug(%struct.TYPE_19__* %104, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %107, i8* %108, i32 %110)
  %112 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %113 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %116 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @ocs_be16toh(i32 %117)
  %119 = load i32, i32* @FC_REASON_UNABLE_TO_PERFORM, align 4
  %120 = load i32, i32* @FC_EXPL_NO_ADDITIONAL, align 4
  %121 = call i32 @ocs_send_ls_rjt(i32 %114, i32 %118, i32 %119, i32 %120, i32 0, i32* null, i32* null)
  br label %183

122:                                              ; preds = %4, %4, %4
  %123 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %124 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %123, i32 0, i32 1
  %125 = load %struct.TYPE_18__*, %struct.TYPE_18__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %126, i32 0, i32 0
  %128 = load %struct.TYPE_21__*, %struct.TYPE_21__** %127, align 8
  store %struct.TYPE_21__* %128, %struct.TYPE_21__** %14, align 8
  %129 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %130 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %131 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = load i8*, i8** %5, align 8
  %134 = load i32, i32* %7, align 4
  %135 = call i32 @ocs_sm_event_name(i32 %134)
  %136 = call i32 @ocs_log_debug(%struct.TYPE_19__* %129, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %132, i8* %133, i32 %135)
  %137 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %138 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %141 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %144 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %143, i32 0, i32 2
  %145 = load %struct.TYPE_16__*, %struct.TYPE_16__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = load i32, i32* @FCCT_HDR_CMDRSP_REJECT, align 4
  %150 = load i32, i32* @FCCT_COMMAND_NOT_SUPPORTED, align 4
  %151 = call i32 @ocs_send_ct_rsp(i32 %139, i32 %142, i64 %148, i32 %149, i32 %150, i32 0)
  br label %183

152:                                              ; preds = %4
  %153 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %154 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %153, i32 0, i32 1
  %155 = load %struct.TYPE_18__*, %struct.TYPE_18__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %156, i32 0, i32 0
  %158 = load %struct.TYPE_21__*, %struct.TYPE_21__** %157, align 8
  store %struct.TYPE_21__* %158, %struct.TYPE_21__** %15, align 8
  %159 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %160 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %161 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = load i8*, i8** %5, align 8
  %164 = load i32, i32* %7, align 4
  %165 = call i32 @ocs_sm_event_name(i32 %164)
  %166 = call i32 @ocs_log_debug(%struct.TYPE_19__* %159, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %162, i8* %163, i32 %165)
  %167 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %168 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %171 = call i32 @ocs_bls_send_acc_hdr(i32 %169, %struct.TYPE_21__* %170)
  br label %183

172:                                              ; preds = %4
  %173 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %174 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %173, i32 0, i32 2
  %175 = load %struct.TYPE_19__*, %struct.TYPE_19__** %174, align 8
  %176 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %177 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = load i8*, i8** %5, align 8
  %180 = load i32, i32* %7, align 4
  %181 = call i32 @ocs_sm_event_name(i32 %180)
  %182 = call i32 @ocs_log_test(%struct.TYPE_19__* %175, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i32 %178, i8* %179, i32 %181)
  br label %183

183:                                              ; preds = %172, %152, %122, %97, %65, %56, %47, %43, %39, %36, %35
  ret i8* null
}

declare dso_local i32 @ocs_assert(%struct.TYPE_19__*, i32*) #1

declare dso_local i32 @ocs_log_debug(%struct.TYPE_19__*, i8*, i32, i8*, i32) #1

declare dso_local i32 @ocs_send_ls_rjt(i32, i32, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @ocs_be16toh(i32) #1

declare dso_local i32 @ocs_sm_event_name(i32) #1

declare dso_local i32 @ocs_send_ct_rsp(i32, i32, i64, i32, i32, i32) #1

declare dso_local i32 @ocs_bls_send_acc_hdr(i32, %struct.TYPE_21__*) #1

declare dso_local i32 @ocs_log_test(%struct.TYPE_19__*, i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
