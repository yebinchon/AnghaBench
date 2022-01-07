; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_sli4.c_sli_dump_bmbx_command.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_sli4.c_sli_dump_bmbx_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, %struct.TYPE_12__*, %struct.TYPE_10__ }
%struct.TYPE_12__ = type { i32, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_17__ = type { i32, %struct.TYPE_11__, i64 }
%struct.TYPE_11__ = type { %struct.TYPE_14__, i64 }
%struct.TYPE_14__ = type { i64, i64 }

@OCS_DEBUG_ENABLE_MQ_DUMP = common dso_local global i32 0, align 4
@SLI4_MBOX_COMMAND_SLI_CONFIG = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [9 x i8] c"%s (emb)\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"%s (non-emb hdr)\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"%s (non-emb pay[%d])\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"pmd addr does not match pmd:%x %x (%x %x)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_13__*, i8*, i8*)* @sli_dump_bmbx_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sli_dump_bmbx_command(%struct.TYPE_13__* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [64 x i8], align 16
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_16__*, align 8
  %11 = alloca %struct.TYPE_17__*, align 8
  %12 = alloca %struct.TYPE_15__*, align 8
  %13 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  store i32 0, i32* %7, align 4
  %14 = load i8*, i8** %5, align 8
  %15 = bitcast i8* %14 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %15, %struct.TYPE_16__** %10, align 8
  %16 = load i32, i32* @OCS_DEBUG_ENABLE_MQ_DUMP, align 4
  %17 = call i32 @ocs_debug_is_enabled(i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %3
  br label %184

20:                                               ; preds = %3
  %21 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %22 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @SLI4_MBOX_COMMAND_SLI_CONFIG, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %174

26:                                               ; preds = %20
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %28 = bitcast %struct.TYPE_16__* %27 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %28, %struct.TYPE_17__** %11, align 8
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %30 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %61

33:                                               ; preds = %26
  %34 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %35 = load i8*, i8** %6, align 8
  %36 = call i32 (i8*, i32, i8*, i8*, ...) @ocs_snprintf(i8* %34, i32 64, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %35)
  %37 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %38 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = inttoptr i64 %40 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %41, %struct.TYPE_15__** %12, align 8
  %42 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %43 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = sext i32 %44 to i64
  %46 = add i64 16, %45
  %47 = add i64 %46, 16
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* @OCS_DEBUG_ENABLE_MQ_DUMP, align 4
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = inttoptr i64 %57 to i32*
  %59 = load i32, i32* %7, align 4
  %60 = call i32 @ocs_dump32(i32 %49, i32 %52, i8* %53, i32* %58, i32 %59)
  br label %173

61:                                               ; preds = %26
  %62 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %63 = load i8*, i8** %6, align 8
  %64 = call i32 (i8*, i32, i8*, i8*, ...) @ocs_snprintf(i8* %62, i32 64, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8* %63)
  %65 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %66 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = mul nsw i32 12, %67
  %69 = sext i32 %68 to i64
  %70 = add i64 16, %69
  %71 = trunc i64 %70 to i32
  store i32 %71, i32* %7, align 4
  %72 = load i32, i32* @OCS_DEBUG_ENABLE_MQ_DUMP, align 4
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = inttoptr i64 %80 to i32*
  %82 = load i32, i32* %7, align 4
  %83 = call i32 @ocs_dump32(i32 %72, i32 %75, i8* %76, i32* %81, i32 %82)
  %84 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %85 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 0
  store %struct.TYPE_14__* %86, %struct.TYPE_14__** %13, align 8
  %87 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %90, i32 0, i32 1
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = call i64 @ocs_addr32_hi(i32 %94)
  %96 = icmp eq i64 %89, %95
  br i1 %96, label %97, label %149

97:                                               ; preds = %61
  %98 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %99 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %101, i32 0, i32 1
  %103 = load %struct.TYPE_12__*, %struct.TYPE_12__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = call i64 @ocs_addr32_lo(i32 %105)
  %107 = icmp eq i64 %100, %106
  br i1 %107, label %108, label %149

108:                                              ; preds = %97
  store i32 0, i32* %9, align 4
  br label %109

109:                                              ; preds = %143, %108
  %110 = load i32, i32* %9, align 4
  %111 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %112 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = icmp slt i32 %110, %113
  br i1 %114, label %115, label %148

115:                                              ; preds = %109
  %116 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %116, i32 0, i32 1
  %118 = load %struct.TYPE_12__*, %struct.TYPE_12__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %118, i32 0, i32 1
  %120 = load %struct.TYPE_15__*, %struct.TYPE_15__** %119, align 8
  store %struct.TYPE_15__* %120, %struct.TYPE_15__** %12, align 8
  %121 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %122 = load i8*, i8** %6, align 8
  %123 = load i32, i32* %9, align 4
  %124 = call i32 (i8*, i32, i8*, i8*, ...) @ocs_snprintf(i8* %121, i32 64, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i8* %122, i32 %123)
  %125 = load i32, i32* @OCS_DEBUG_ENABLE_MQ_DUMP, align 4
  %126 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %127 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %130 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %131 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %130, i32 0, i32 1
  %132 = load %struct.TYPE_12__*, %struct.TYPE_12__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %132, i32 0, i32 1
  %134 = load %struct.TYPE_15__*, %struct.TYPE_15__** %133, align 8
  %135 = bitcast %struct.TYPE_15__* %134 to i32*
  %136 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %137 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = sext i32 %138 to i64
  %140 = add i64 %139, 16
  %141 = trunc i64 %140 to i32
  %142 = call i32 @ocs_dump32(i32 %125, i32 %128, i8* %129, i32* %135, i32 %141)
  br label %143

143:                                              ; preds = %115
  %144 = load i32, i32* %9, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %9, align 4
  %146 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %147 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %146, i32 1
  store %struct.TYPE_14__* %147, %struct.TYPE_14__** %13, align 8
  br label %109

148:                                              ; preds = %109
  br label %172

149:                                              ; preds = %97, %61
  %150 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %151 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %154 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %157 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %156, i32 0, i32 1
  %158 = load i64, i64* %157, align 8
  %159 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %160 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %159, i32 0, i32 1
  %161 = load %struct.TYPE_12__*, %struct.TYPE_12__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = call i64 @ocs_addr32_hi(i32 %163)
  %165 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %166 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %165, i32 0, i32 1
  %167 = load %struct.TYPE_12__*, %struct.TYPE_12__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = call i64 @ocs_addr32_lo(i32 %169)
  %171 = call i32 @ocs_log_debug(i32 %152, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i64 %155, i64 %158, i64 %164, i64 %170)
  br label %172

172:                                              ; preds = %149, %148
  br label %173

173:                                              ; preds = %172, %33
  br label %184

174:                                              ; preds = %20
  store i32 64, i32* %7, align 4
  %175 = load i32, i32* @OCS_DEBUG_ENABLE_MQ_DUMP, align 4
  %176 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %177 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = load i8*, i8** %6, align 8
  %180 = load i8*, i8** %5, align 8
  %181 = bitcast i8* %180 to i32*
  %182 = load i32, i32* %7, align 4
  %183 = call i32 @ocs_dump32(i32 %175, i32 %178, i8* %179, i32* %181, i32 %182)
  br label %184

184:                                              ; preds = %19, %174, %173
  ret void
}

declare dso_local i32 @ocs_debug_is_enabled(i32) #1

declare dso_local i32 @ocs_snprintf(i8*, i32, i8*, i8*, ...) #1

declare dso_local i32 @ocs_dump32(i32, i32, i8*, i32*, i32) #1

declare dso_local i64 @ocs_addr32_hi(i32) #1

declare dso_local i64 @ocs_addr32_lo(i32) #1

declare dso_local i32 @ocs_log_debug(i32, i8*, i64, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
