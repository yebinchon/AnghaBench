; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_sli4.c_sli_cmd_fcoe_rq_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_sli4.c_sli_cmd_fcoe_rq_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, %struct.TYPE_11__, i32 }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_15__ = type { i32, i64 }
%struct.TYPE_14__ = type { i64, i32, i32, %struct.TYPE_12__*, i64, i64, i64, i32, %struct.TYPE_10__ }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32, i32, i32 }

@SLI4_PORT_TYPE_FC = common dso_local global i64 0, align 8
@SLI4_OPC_FCOE_RQ_CREATE = common dso_local global i32 0, align 4
@SLI4_SUBSYSTEM_FCFCOE = common dso_local global i32 0, align 4
@SLI_PAGE_SIZE = common dso_local global i64 0, align 8
@SLI4_FCOE_RQ_CREATE_V0_MAX_PAGES = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"num_pages %d not valid\0A\00", align 1
@SLI4_FCOE_RQE_SIZE = common dso_local global i32 0, align 4
@SLI4_FCOE_RQ_CREATE_V0_MIN_BUF_SIZE = common dso_local global i64 0, align 8
@SLI4_FCOE_RQ_CREATE_V0_MAX_BUF_SIZE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [37 x i8] c"buffer_size %d out of range (%d-%d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sli_cmd_fcoe_rq_create(%struct.TYPE_13__* %0, i8* %1, i64 %2, %struct.TYPE_15__* %3, i64 %4, i64 %5, i64 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_15__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.TYPE_14__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %9, align 8
  store i8* %1, i8** %10, align 8
  store i64 %2, i64* %11, align 8
  store %struct.TYPE_15__* %3, %struct.TYPE_15__** %12, align 8
  store i64 %4, i64* %13, align 8
  store i64 %5, i64* %14, align 8
  store i64 %6, i64* %15, align 8
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %16, align 8
  store i32 0, i32* %17, align 4
  %21 = load i64, i64* @SLI4_PORT_TYPE_FC, align 8
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %21, %24
  br i1 %25, label %26, label %33

26:                                               ; preds = %7
  %27 = call i32 @max(i32 64, i32 4)
  store i32 %27, i32* %20, align 4
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %29 = load i8*, i8** %10, align 8
  %30 = load i64, i64* %11, align 8
  %31 = load i32, i32* %20, align 4
  %32 = call i32 @sli_cmd_sli_config(%struct.TYPE_13__* %28, i8* %29, i64 %30, i32 %31, i32* null)
  store i32 %32, i32* %17, align 4
  br label %33

33:                                               ; preds = %26, %7
  %34 = load i8*, i8** %10, align 8
  %35 = bitcast i8* %34 to i32*
  %36 = load i32, i32* %17, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = bitcast i32* %38 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %39, %struct.TYPE_14__** %16, align 8
  %40 = load i32, i32* @SLI4_OPC_FCOE_RQ_CREATE, align 4
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %41, i32 0, i32 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 2
  store i32 %40, i32* %43, align 4
  %44 = load i32, i32* @SLI4_SUBSYSTEM_FCFCOE, align 4
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 1
  store i32 %44, i32* %47, align 4
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %48, i32 0, i32 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 0
  store i32 60, i32* %50, align 4
  %51 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %52 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i64, i64* @SLI_PAGE_SIZE, align 8
  %55 = call i64 @sli_page_count(i32 %53, i64 %54)
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i32 0, i32 0
  store i64 %55, i64* %57, align 8
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %33
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @SLI4_FCOE_RQ_CREATE_V0_MAX_PAGES, align 8
  %67 = icmp sgt i64 %65, %66
  br i1 %67, label %68, label %76

68:                                               ; preds = %62, %33
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = call i32 @ocs_log_test(i32 %71, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i64 %74)
  store i32 0, i32* %8, align 4
  br label %161

76:                                               ; preds = %62
  %77 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @SLI4_FCOE_RQE_SIZE, align 4
  %81 = sdiv i32 %79, %80
  %82 = call i32 @ocs_lg2(i32 %81)
  %83 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %84 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %83, i32 0, i32 7
  store i32 %82, i32* %84, align 8
  %85 = load i64, i64* %15, align 8
  %86 = load i64, i64* @SLI4_FCOE_RQ_CREATE_V0_MIN_BUF_SIZE, align 8
  %87 = icmp slt i64 %85, %86
  br i1 %87, label %92, label %88

88:                                               ; preds = %76
  %89 = load i64, i64* %15, align 8
  %90 = load i64, i64* @SLI4_FCOE_RQ_CREATE_V0_MAX_BUF_SIZE, align 8
  %91 = icmp sgt i64 %89, %90
  br i1 %91, label %92, label %100

92:                                               ; preds = %88, %76
  %93 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = load i64, i64* %15, align 8
  %97 = load i64, i64* @SLI4_FCOE_RQ_CREATE_V0_MIN_BUF_SIZE, align 8
  %98 = load i64, i64* @SLI4_FCOE_RQ_CREATE_V0_MAX_BUF_SIZE, align 8
  %99 = call i32 @ocs_log_err(i32 %95, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i64 %96, i64 %97, i64 %98)
  store i32 -1, i32* %8, align 4
  br label %161

100:                                              ; preds = %88
  %101 = load i64, i64* %15, align 8
  %102 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %103 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %102, i32 0, i32 6
  store i64 %101, i64* %103, align 8
  %104 = load i64, i64* %13, align 8
  %105 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %106 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %105, i32 0, i32 5
  store i64 %104, i64* %106, align 8
  %107 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %108 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %120

112:                                              ; preds = %100
  %113 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %114 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %113, i32 0, i32 1
  store i32 1, i32* %114, align 8
  %115 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %116 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %115, i32 0, i32 2
  store i32 1, i32* %116, align 4
  %117 = load i64, i64* %14, align 8
  %118 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %119 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %118, i32 0, i32 4
  store i64 %117, i64* %119, align 8
  br label %120

120:                                              ; preds = %112, %100
  store i32 0, i32* %18, align 4
  %121 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %122 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  store i64 %123, i64* %19, align 8
  br label %124

124:                                              ; preds = %150, %120
  %125 = load i32, i32* %18, align 4
  %126 = sext i32 %125 to i64
  %127 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %128 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = icmp slt i64 %126, %129
  br i1 %130, label %131, label %156

131:                                              ; preds = %124
  %132 = load i64, i64* %19, align 8
  %133 = call i32 @ocs_addr32_lo(i64 %132)
  %134 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %135 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %134, i32 0, i32 3
  %136 = load %struct.TYPE_12__*, %struct.TYPE_12__** %135, align 8
  %137 = load i32, i32* %18, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %136, i64 %138
  %140 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %139, i32 0, i32 1
  store i32 %133, i32* %140, align 4
  %141 = load i64, i64* %19, align 8
  %142 = call i32 @ocs_addr32_hi(i64 %141)
  %143 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %144 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %143, i32 0, i32 3
  %145 = load %struct.TYPE_12__*, %struct.TYPE_12__** %144, align 8
  %146 = load i32, i32* %18, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %145, i64 %147
  %149 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %148, i32 0, i32 0
  store i32 %142, i32* %149, align 4
  br label %150

150:                                              ; preds = %131
  %151 = load i32, i32* %18, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %18, align 4
  %153 = load i64, i64* @SLI_PAGE_SIZE, align 8
  %154 = load i64, i64* %19, align 8
  %155 = add i64 %154, %153
  store i64 %155, i64* %19, align 8
  br label %124

156:                                              ; preds = %124
  %157 = load i32, i32* %17, align 4
  %158 = sext i32 %157 to i64
  %159 = add i64 %158, 64
  %160 = trunc i64 %159 to i32
  store i32 %160, i32* %8, align 4
  br label %161

161:                                              ; preds = %156, %92, %68
  %162 = load i32, i32* %8, align 4
  ret i32 %162
}

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @sli_cmd_sli_config(%struct.TYPE_13__*, i8*, i64, i32, i32*) #1

declare dso_local i64 @sli_page_count(i32, i64) #1

declare dso_local i32 @ocs_log_test(i32, i8*, i64) #1

declare dso_local i32 @ocs_lg2(i32) #1

declare dso_local i32 @ocs_log_err(i32, i8*, i64, i64, i64) #1

declare dso_local i32 @ocs_addr32_lo(i64) #1

declare dso_local i32 @ocs_addr32_hi(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
