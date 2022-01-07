; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_sli4.c_sli_cmd_fcoe_post_sgl_pages.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_sli4.c_sli_cmd_fcoe_post_sgl_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64 }
%struct.TYPE_17__ = type { i32, i32, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32, %struct.TYPE_14__*, i32, %struct.TYPE_13__ }
%struct.TYPE_14__ = type { i8*, i8*, i8*, i8* }
%struct.TYPE_13__ = type { i32, i32, i32 }

@SLI4_PORT_TYPE_FC = common dso_local global i64 0, align 8
@SLI4_OPC_FCOE_POST_SGL_PAGES = common dso_local global i32 0, align 4
@SLI4_SUBSYSTEM_FCFCOE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sli_cmd_fcoe_post_sgl_pages(%struct.TYPE_15__* %0, i8* %1, i64 %2, i32 %3, i32 %4, %struct.TYPE_17__** %5, %struct.TYPE_17__** %6, %struct.TYPE_17__* %7) #0 {
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_17__**, align 8
  %15 = alloca %struct.TYPE_17__**, align 8
  %16 = alloca %struct.TYPE_17__*, align 8
  %17 = alloca %struct.TYPE_16__*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %9, align 8
  store i8* %1, i8** %10, align 8
  store i64 %2, i64* %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store %struct.TYPE_17__** %5, %struct.TYPE_17__*** %14, align 8
  store %struct.TYPE_17__** %6, %struct.TYPE_17__*** %15, align 8
  store %struct.TYPE_17__* %7, %struct.TYPE_17__** %16, align 8
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %17, align 8
  store i32 0, i32* %18, align 4
  %21 = load i64, i64* @SLI4_PORT_TYPE_FC, align 8
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %23 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %21, %24
  br i1 %25, label %26, label %34

26:                                               ; preds = %8
  %27 = call i32 @max(i32 32, i32 4)
  store i32 %27, i32* %20, align 4
  %28 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %29 = load i8*, i8** %10, align 8
  %30 = load i64, i64* %11, align 8
  %31 = load i32, i32* %20, align 4
  %32 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %33 = call i32 @sli_cmd_sli_config(%struct.TYPE_15__* %28, i8* %29, i64 %30, i32 %31, %struct.TYPE_17__* %32)
  store i32 %33, i32* %18, align 4
  br label %34

34:                                               ; preds = %26, %8
  %35 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %36 = icmp ne %struct.TYPE_17__* %35, null
  br i1 %36, label %37, label %46

37:                                               ; preds = %34
  %38 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %39 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %38, i32 0, i32 2
  %40 = load %struct.TYPE_16__*, %struct.TYPE_16__** %39, align 8
  store %struct.TYPE_16__* %40, %struct.TYPE_16__** %17, align 8
  %41 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %42 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %43 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @ocs_memset(%struct.TYPE_16__* %41, i32 0, i32 %44)
  br label %53

46:                                               ; preds = %34
  %47 = load i8*, i8** %10, align 8
  %48 = bitcast i8* %47 to i32*
  %49 = load i32, i32* %18, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = bitcast i32* %51 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %52, %struct.TYPE_16__** %17, align 8
  br label %53

53:                                               ; preds = %46, %37
  %54 = load i32, i32* @SLI4_OPC_FCOE_POST_SGL_PAGES, align 4
  %55 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %56 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %55, i32 0, i32 3
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 2
  store i32 %54, i32* %57, align 4
  %58 = load i32, i32* @SLI4_SUBSYSTEM_FCFCOE, align 4
  %59 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %60 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %59, i32 0, i32 3
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 1
  store i32 %58, i32* %61, align 4
  %62 = load i32, i32* %13, align 4
  %63 = sext i32 %62 to i64
  %64 = mul i64 %63, 8
  %65 = add i64 4, %64
  %66 = trunc i64 %65 to i32
  %67 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %68 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %67, i32 0, i32 3
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 0
  store i32 %66, i32* %69, align 4
  %70 = load i32, i32* %12, align 4
  %71 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %72 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %71, i32 0, i32 2
  store i32 %70, i32* %72, align 8
  %73 = load i32, i32* %13, align 4
  %74 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %75 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 8
  store i32 0, i32* %19, align 4
  br label %76

76:                                               ; preds = %111, %53
  %77 = load i32, i32* %19, align 4
  %78 = load i32, i32* %13, align 4
  %79 = icmp slt i32 %77, %78
  br i1 %79, label %80, label %114

80:                                               ; preds = %76
  %81 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %14, align 8
  %82 = load i32, i32* %19, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %81, i64 %83
  %85 = load %struct.TYPE_17__*, %struct.TYPE_17__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = call i8* @ocs_addr32_lo(i32 %87)
  %89 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %90 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %89, i32 0, i32 1
  %91 = load %struct.TYPE_14__*, %struct.TYPE_14__** %90, align 8
  %92 = load i32, i32* %19, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %91, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %94, i32 0, i32 3
  store i8* %88, i8** %95, align 8
  %96 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %14, align 8
  %97 = load i32, i32* %19, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %96, i64 %98
  %100 = load %struct.TYPE_17__*, %struct.TYPE_17__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = call i8* @ocs_addr32_hi(i32 %102)
  %104 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %105 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %104, i32 0, i32 1
  %106 = load %struct.TYPE_14__*, %struct.TYPE_14__** %105, align 8
  %107 = load i32, i32* %19, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %106, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %109, i32 0, i32 2
  store i8* %103, i8** %110, align 8
  br label %111

111:                                              ; preds = %80
  %112 = load i32, i32* %19, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %19, align 4
  br label %76

114:                                              ; preds = %76
  %115 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %15, align 8
  %116 = icmp ne %struct.TYPE_17__** %115, null
  br i1 %116, label %117, label %157

117:                                              ; preds = %114
  store i32 0, i32* %19, align 4
  br label %118

118:                                              ; preds = %153, %117
  %119 = load i32, i32* %19, align 4
  %120 = load i32, i32* %13, align 4
  %121 = icmp slt i32 %119, %120
  br i1 %121, label %122, label %156

122:                                              ; preds = %118
  %123 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %15, align 8
  %124 = load i32, i32* %19, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %123, i64 %125
  %127 = load %struct.TYPE_17__*, %struct.TYPE_17__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = call i8* @ocs_addr32_lo(i32 %129)
  %131 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %132 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %131, i32 0, i32 1
  %133 = load %struct.TYPE_14__*, %struct.TYPE_14__** %132, align 8
  %134 = load i32, i32* %19, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %133, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %136, i32 0, i32 1
  store i8* %130, i8** %137, align 8
  %138 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %15, align 8
  %139 = load i32, i32* %19, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %138, i64 %140
  %142 = load %struct.TYPE_17__*, %struct.TYPE_17__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = call i8* @ocs_addr32_hi(i32 %144)
  %146 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %147 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %146, i32 0, i32 1
  %148 = load %struct.TYPE_14__*, %struct.TYPE_14__** %147, align 8
  %149 = load i32, i32* %19, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %148, i64 %150
  %152 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %151, i32 0, i32 0
  store i8* %145, i8** %152, align 8
  br label %153

153:                                              ; preds = %122
  %154 = load i32, i32* %19, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %19, align 4
  br label %118

156:                                              ; preds = %118
  br label %157

157:                                              ; preds = %156, %114
  %158 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %159 = icmp ne %struct.TYPE_17__* %158, null
  br i1 %159, label %160, label %163

160:                                              ; preds = %157
  %161 = load i32, i32* %18, align 4
  %162 = sext i32 %161 to i64
  br label %167

163:                                              ; preds = %157
  %164 = load i32, i32* %18, align 4
  %165 = sext i32 %164 to i64
  %166 = add i64 %165, 32
  br label %167

167:                                              ; preds = %163, %160
  %168 = phi i64 [ %162, %160 ], [ %166, %163 ]
  %169 = trunc i64 %168 to i32
  ret i32 %169
}

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @sli_cmd_sli_config(%struct.TYPE_15__*, i8*, i64, i32, %struct.TYPE_17__*) #1

declare dso_local i32 @ocs_memset(%struct.TYPE_16__*, i32, i32) #1

declare dso_local i8* @ocs_addr32_lo(i32) #1

declare dso_local i8* @ocs_addr32_hi(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
