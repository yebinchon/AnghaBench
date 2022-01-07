; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_hw.c_ocs_hw_cb_read_fcf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_hw.c_ocs_hw_cb_read_fcf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i32, %struct.TYPE_19__, %struct.TYPE_18__, %struct.TYPE_15__ }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_18__ = type { i32 (i32, i32, %struct.TYPE_23__*)* }
%struct.TYPE_23__ = type { i8*, i8*, %struct.TYPE_16__, i32, i32, i32, i32, i8*, i8*, i32, i32, i32 }
%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_15__ = type { i64, i32, i32, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i64, %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32, i32, i32, i32, i32, i64, i32, i64 }
%struct.TYPE_21__ = type { i64 }

@.str = private unnamed_addr constant [28 x i8] c"bad status cqe=%#x mqe=%#x\0A\00", align 1
@TRUE = common dso_local global i8* null, align 8
@SLI_LINK_TOPO_LOOP = common dso_local global i64 0, align 8
@SLI_LINK_TOPO_NPORT = common dso_local global i64 0, align 8
@OCS_HW_DOMAIN_FOUND = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"ignore invalid FCF entry\0A\00", align 1
@SLI4_FCOE_FCF_TABLE_LAST = common dso_local global i64 0, align 8
@SLI4_BMBX_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_22__*, i64, i32*, i8*)* @ocs_hw_cb_read_fcf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ocs_hw_cb_read_fcf(%struct.TYPE_22__* %0, i64 %1, i32* %2, i8* %3) #0 {
  %5 = alloca %struct.TYPE_22__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_14__*, align 8
  %10 = alloca %struct.TYPE_21__*, align 8
  %11 = alloca %struct.TYPE_20__*, align 8
  %12 = alloca %struct.TYPE_23__, align 8
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  store i8* %3, i8** %8, align 8
  %13 = load i8*, i8** %8, align 8
  %14 = bitcast i8* %13 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %14, %struct.TYPE_14__** %9, align 8
  %15 = load i32*, i32** %7, align 8
  %16 = bitcast i32* %15 to %struct.TYPE_21__*
  store %struct.TYPE_21__* %16, %struct.TYPE_21__** %10, align 8
  %17 = load i64, i64* %6, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %4
  %20 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %21 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %19, %4
  %25 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i64, i64* %6, align 8
  %29 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %30 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = call i32 (i32, i8*, ...) @ocs_log_test(i32 %27, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i64 %28, i64 %31)
  br label %182

33:                                               ; preds = %19
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_20__*, %struct.TYPE_20__** %35, align 8
  %37 = icmp ne %struct.TYPE_20__* %36, null
  br i1 %37, label %38, label %181

38:                                               ; preds = %33
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_20__*, %struct.TYPE_20__** %40, align 8
  store %struct.TYPE_20__* %41, %struct.TYPE_20__** %11, align 8
  %42 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %43 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %43, i32 0, i32 5
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %59, label %47

47:                                               ; preds = %38
  %48 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %49 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %49, i32 0, i32 7
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %163

53:                                               ; preds = %47
  %54 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %55 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %55, i32 0, i32 6
  %57 = load i32, i32* %56, align 8
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %163, label %59

59:                                               ; preds = %53, %38
  %60 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %61, i32 0, i32 0
  %63 = load i32 (i32, i32, %struct.TYPE_23__*)*, i32 (i32, i32, %struct.TYPE_23__*)** %62, align 8
  %64 = icmp ne i32 (i32, i32, %struct.TYPE_23__*)* %63, null
  br i1 %64, label %65, label %162

65:                                               ; preds = %59
  %66 = bitcast %struct.TYPE_23__* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %66, i8 0, i64 72, i1 false)
  %67 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %68 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %68, i32 0, i32 5
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %114

72:                                               ; preds = %65
  %73 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %73, i32 0, i32 3
  %75 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %12, i32 0, i32 10
  store i32 %76, i32* %77, align 4
  %78 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %78, i32 0, i32 3
  %80 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %12, i32 0, i32 9
  store i32 %81, i32* %82, align 8
  %83 = load i8*, i8** @TRUE, align 8
  %84 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %12, i32 0, i32 8
  store i8* %83, i8** %84, align 8
  %85 = load i64, i64* @SLI_LINK_TOPO_LOOP, align 8
  %86 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %86, i32 0, i32 3
  %88 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = icmp eq i64 %85, %89
  br i1 %90, label %91, label %102

91:                                               ; preds = %72
  %92 = load i8*, i8** @TRUE, align 8
  %93 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %12, i32 0, i32 7
  store i8* %92, i8** %93, align 8
  %94 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %12, i32 0, i32 2
  %95 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %97, i32 0, i32 3
  %99 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @ocs_memcpy(i32 %96, i32 %100, i32 4)
  br label %113

102:                                              ; preds = %72
  %103 = load i64, i64* @SLI_LINK_TOPO_NPORT, align 8
  %104 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %104, i32 0, i32 3
  %106 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = icmp eq i64 %103, %107
  br i1 %108, label %109, label %112

109:                                              ; preds = %102
  %110 = load i8*, i8** @TRUE, align 8
  %111 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %12, i32 0, i32 0
  store i8* %110, i8** %111, align 8
  br label %112

112:                                              ; preds = %109, %102
  br label %113

113:                                              ; preds = %112, %91
  br label %151

114:                                              ; preds = %65
  %115 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %116 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %116, i32 0, i32 4
  %118 = load i32, i32* %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %12, i32 0, i32 6
  store i32 %118, i32* %119, align 4
  %120 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %121 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 4
  %124 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %12, i32 0, i32 5
  store i32 %123, i32* %124, align 8
  %125 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %12, i32 0, i32 4
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %128 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 8
  %131 = call i32 @ocs_memcpy(i32 %126, i32 %130, i32 4)
  %132 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %12, i32 0, i32 3
  %133 = load i32, i32* %132, align 8
  %134 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %135 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @ocs_memcpy(i32 %133, i32 %137, i32 4)
  %139 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %12, i32 0, i32 2
  %140 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %143 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %142, i32 0, i32 1
  %144 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = call i32 @ocs_memcpy(i32 %141, i32 %145, i32 4)
  %147 = load i8*, i8** @TRUE, align 8
  %148 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %12, i32 0, i32 1
  store i8* %147, i8** %148, align 8
  %149 = load i8*, i8** @TRUE, align 8
  %150 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %12, i32 0, i32 0
  store i8* %149, i8** %150, align 8
  br label %151

151:                                              ; preds = %114, %113
  %152 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %153 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %152, i32 0, i32 2
  %154 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %153, i32 0, i32 0
  %155 = load i32 (i32, i32, %struct.TYPE_23__*)*, i32 (i32, i32, %struct.TYPE_23__*)** %154, align 8
  %156 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %157 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %156, i32 0, i32 1
  %158 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = load i32, i32* @OCS_HW_DOMAIN_FOUND, align 4
  %161 = call i32 %155(i32 %159, i32 %160, %struct.TYPE_23__* %12)
  br label %162

162:                                              ; preds = %151, %59
  br label %168

163:                                              ; preds = %53, %47
  %164 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %165 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = call i32 (i32, i8*, ...) @ocs_log_test(i32 %166, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %168

168:                                              ; preds = %163, %162
  %169 = load i64, i64* @SLI4_FCOE_FCF_TABLE_LAST, align 8
  %170 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %171 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %170, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = icmp ne i64 %169, %172
  br i1 %173, label %174, label %180

174:                                              ; preds = %168
  %175 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %176 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %177 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %176, i32 0, i32 0
  %178 = load i64, i64* %177, align 8
  %179 = call i32 @ocs_hw_read_fcf(%struct.TYPE_22__* %175, i64 %178)
  br label %180

180:                                              ; preds = %174, %168
  br label %181

181:                                              ; preds = %180, %33
  br label %182

182:                                              ; preds = %181, %24
  %183 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %184 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = load i32*, i32** %7, align 8
  %187 = load i32, i32* @SLI4_BMBX_SIZE, align 4
  %188 = call i32 @ocs_free(i32 %185, i32* %186, i32 %187)
  ret i64 0
}

declare dso_local i32 @ocs_log_test(i32, i8*, ...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @ocs_memcpy(i32, i32, i32) #1

declare dso_local i32 @ocs_hw_read_fcf(%struct.TYPE_22__*, i64) #1

declare dso_local i32 @ocs_free(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
