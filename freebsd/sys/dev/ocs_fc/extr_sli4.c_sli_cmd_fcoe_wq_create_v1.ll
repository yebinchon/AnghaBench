; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_sli4.c_sli_cmd_fcoe_wq_create_v1.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_sli4.c_sli_cmd_fcoe_wq_create_v1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_15__ = type { i32, i64 }
%struct.TYPE_14__ = type { i64, i32, i32, %struct.TYPE_12__*, i32, i32, %struct.TYPE_10__ }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32, i32, i32, i32 }

@SLI4_PORT_TYPE_FC = common dso_local global i64 0, align 8
@SLI4_OPC_FCOE_WQ_CREATE = common dso_local global i32 0, align 4
@SLI4_SUBSYSTEM_FCFCOE = common dso_local global i32 0, align 4
@SLI_PAGE_SIZE = common dso_local global i32 0, align 4
@SLI4_FCOE_WQ_CREATE_V1_MAX_PAGES = common dso_local global i64 0, align 8
@SLI4_WQE_EXT_BYTES = common dso_local global i32 0, align 4
@SLI4_WQE_EXT_SIZE = common dso_local global i32 0, align 4
@SLI4_WQE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sli_cmd_fcoe_wq_create_v1(%struct.TYPE_13__* %0, i8* %1, i64 %2, %struct.TYPE_15__* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_15__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_14__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %8, align 8
  store i8* %1, i8** %9, align 8
  store i64 %2, i64* %10, align 8
  store %struct.TYPE_15__* %3, %struct.TYPE_15__** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %14, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  %22 = load i64, i64* @SLI4_PORT_TYPE_FC, align 8
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 %22, %25
  br i1 %26, label %27, label %34

27:                                               ; preds = %6
  %28 = call i32 @max(i32 48, i32 4)
  store i32 %28, i32* %21, align 4
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %30 = load i8*, i8** %9, align 8
  %31 = load i64, i64* %10, align 8
  %32 = load i32, i32* %21, align 4
  %33 = call i32 @sli_cmd_sli_config(%struct.TYPE_13__* %29, i8* %30, i64 %31, i32 %32, i32* null)
  store i32 %33, i32* %15, align 4
  br label %34

34:                                               ; preds = %27, %6
  %35 = load i8*, i8** %9, align 8
  %36 = bitcast i8* %35 to i32*
  %37 = load i32, i32* %15, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = bitcast i32* %39 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %40, %struct.TYPE_14__** %14, align 8
  %41 = load i32, i32* @SLI4_OPC_FCOE_WQ_CREATE, align 4
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %42, i32 0, i32 6
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 3
  store i32 %41, i32* %44, align 4
  %45 = load i32, i32* @SLI4_SUBSYSTEM_FCFCOE, align 4
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 6
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 2
  store i32 %45, i32* %48, align 8
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 6
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 0
  store i32 44, i32* %51, align 8
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 6
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 1
  store i32 1, i32* %54, align 4
  %55 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %56 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = sdiv i32 %57, %61
  store i32 %62, i32* %20, align 4
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  switch i32 %65, label %71 [
    i32 4096, label %66
    i32 8192, label %66
    i32 16384, label %66
    i32 32768, label %66
    i32 65536, label %67
    i32 131072, label %68
    i32 262144, label %69
    i32 524288, label %70
  ]

66:                                               ; preds = %34, %34, %34, %34
  store i32 1, i32* %18, align 4
  br label %72

67:                                               ; preds = %34
  store i32 2, i32* %18, align 4
  br label %72

68:                                               ; preds = %34
  store i32 4, i32* %18, align 4
  br label %72

69:                                               ; preds = %34
  store i32 8, i32* %18, align 4
  br label %72

70:                                               ; preds = %34
  store i32 10, i32* %18, align 4
  br label %72

71:                                               ; preds = %34
  store i32 0, i32* %7, align 4
  br label %160

72:                                               ; preds = %70, %69, %68, %67, %66
  %73 = load i32, i32* %18, align 4
  %74 = load i32, i32* @SLI_PAGE_SIZE, align 4
  %75 = mul nsw i32 %73, %74
  store i32 %75, i32* %19, align 4
  %76 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %77 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* %19, align 4
  %80 = call i64 @sli_page_count(i32 %78, i32 %79)
  %81 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %81, i32 0, i32 0
  store i64 %80, i64* %82, align 8
  %83 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %84 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %72
  %88 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %89 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @SLI4_FCOE_WQ_CREATE_V1_MAX_PAGES, align 8
  %92 = icmp sgt i64 %90, %91
  br i1 %92, label %93, label %94

93:                                               ; preds = %87, %72
  store i32 0, i32* %7, align 4
  br label %160

94:                                               ; preds = %87
  %95 = load i32, i32* %12, align 4
  %96 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %96, i32 0, i32 5
  store i32 %95, i32* %97, align 4
  %98 = load i32, i32* %18, align 4
  %99 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %100 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %99, i32 0, i32 1
  store i32 %98, i32* %100, align 8
  %101 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %102 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* @SLI4_WQE_EXT_BYTES, align 4
  %106 = icmp eq i32 %104, %105
  br i1 %106, label %107, label %111

107:                                              ; preds = %94
  %108 = load i32, i32* @SLI4_WQE_EXT_SIZE, align 4
  %109 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %110 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %109, i32 0, i32 4
  store i32 %108, i32* %110, align 8
  br label %115

111:                                              ; preds = %94
  %112 = load i32, i32* @SLI4_WQE_SIZE, align 4
  %113 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %114 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %113, i32 0, i32 4
  store i32 %112, i32* %114, align 8
  br label %115

115:                                              ; preds = %111, %107
  %116 = load i32, i32* %20, align 4
  %117 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %118 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %117, i32 0, i32 2
  store i32 %116, i32* %118, align 4
  store i32 0, i32* %16, align 4
  %119 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %120 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  store i64 %121, i64* %17, align 8
  br label %122

122:                                              ; preds = %148, %115
  %123 = load i32, i32* %16, align 4
  %124 = sext i32 %123 to i64
  %125 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %126 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = icmp slt i64 %124, %127
  br i1 %128, label %129, label %155

129:                                              ; preds = %122
  %130 = load i64, i64* %17, align 8
  %131 = call i32 @ocs_addr32_lo(i64 %130)
  %132 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %133 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %132, i32 0, i32 3
  %134 = load %struct.TYPE_12__*, %struct.TYPE_12__** %133, align 8
  %135 = load i32, i32* %16, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %134, i64 %136
  %138 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %137, i32 0, i32 1
  store i32 %131, i32* %138, align 4
  %139 = load i64, i64* %17, align 8
  %140 = call i32 @ocs_addr32_hi(i64 %139)
  %141 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %142 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %141, i32 0, i32 3
  %143 = load %struct.TYPE_12__*, %struct.TYPE_12__** %142, align 8
  %144 = load i32, i32* %16, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %143, i64 %145
  %147 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %146, i32 0, i32 0
  store i32 %140, i32* %147, align 4
  br label %148

148:                                              ; preds = %129
  %149 = load i32, i32* %16, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %16, align 4
  %151 = load i32, i32* %19, align 4
  %152 = sext i32 %151 to i64
  %153 = load i64, i64* %17, align 8
  %154 = add i64 %153, %152
  store i64 %154, i64* %17, align 8
  br label %122

155:                                              ; preds = %122
  %156 = load i32, i32* %15, align 4
  %157 = sext i32 %156 to i64
  %158 = add i64 %157, 48
  %159 = trunc i64 %158 to i32
  store i32 %159, i32* %7, align 4
  br label %160

160:                                              ; preds = %155, %93, %71
  %161 = load i32, i32* %7, align 4
  ret i32 %161
}

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @sli_cmd_sli_config(%struct.TYPE_13__*, i8*, i64, i32, i32*) #1

declare dso_local i64 @sli_page_count(i32, i32) #1

declare dso_local i32 @ocs_addr32_lo(i64) #1

declare dso_local i32 @ocs_addr32_hi(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
