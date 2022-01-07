; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/smartpqi/extr_smartpqi_queue.c_pqisrc_submit_admin_req.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/smartpqi/extr_smartpqi_queue.c_pqisrc_submit_admin_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, %struct.TYPE_15__*, i32, %struct.TYPE_19__ }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_19__ = type { i32*, i32, i32, i32, i32, i32, i64 }
%struct.TYPE_21__ = type { i64, i64, i64, i64, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32, i32, i32 }
%struct.TYPE_20__ = type { i64, i32, %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i64 }

@PQI_STATUS_SUCCESS = common dso_local global i32 0, align 4
@PQISRC_ADMIN_CMD_RESP_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"IN\0A\00", align 1
@PQI_IU_TYPE_GENERAL_ADMIN_REQUEST = common dso_local global i32 0, align 4
@PQI_STANDARD_IU_LENGTH = common dso_local global i32 0, align 4
@INVALID_ELEM = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"Tag not available0x%x\0A\00", align 1
@PQI_STATUS_FAILURE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"Unable to submit command\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"Admin cmd timeout\0A\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"tmo : %d\0A\00", align 1
@PQI_STATUS_TIMEOUT = common dso_local global i32 0, align 4
@PQI_IU_TYPE_GENERAL_ADMIN_RESPONSE = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [5 x i8] c"OUT\0A\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"failed OUT : %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pqisrc_submit_admin_req(%struct.TYPE_18__* %0, %struct.TYPE_21__* %1, %struct.TYPE_20__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca %struct.TYPE_21__*, align 8
  %7 = alloca %struct.TYPE_20__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_19__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %5, align 8
  store %struct.TYPE_21__* %1, %struct.TYPE_21__** %6, align 8
  store %struct.TYPE_20__* %2, %struct.TYPE_20__** %7, align 8
  %12 = load i32, i32* @PQI_STATUS_SUCCESS, align 4
  store i32 %12, i32* %8, align 4
  %13 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 3
  store %struct.TYPE_19__* %14, %struct.TYPE_19__** %9, align 8
  %15 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %15, i32 0, i32 2
  store i32* %16, i32** %10, align 8
  %17 = load i32, i32* @PQISRC_ADMIN_CMD_RESP_TIMEOUT, align 4
  store i32 %17, i32* %11, align 4
  %18 = call i32 (i8*, ...) @DBG_FUNC(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @PQI_IU_TYPE_GENERAL_ADMIN_REQUEST, align 4
  %20 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %20, i32 0, i32 4
  %22 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i32 0, i32 2
  store i32 %19, i32* %22, align 8
  %23 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %23, i32 0, i32 4
  %25 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %24, i32 0, i32 0
  store i32 0, i32* %25, align 8
  %26 = load i32, i32* @PQI_STANDARD_IU_LENGTH, align 4
  %27 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %27, i32 0, i32 4
  %29 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %28, i32 0, i32 1
  store i32 %26, i32* %29, align 4
  %30 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %30, i32 0, i32 3
  store i64 0, i64* %31, align 8
  %32 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %32, i32 0, i32 2
  store i64 0, i64* %33, align 8
  %34 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %34, i32 0, i32 0
  %36 = call i64 @pqisrc_get_tag(i32* %35)
  %37 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %37, i32 0, i32 0
  store i64 %36, i64* %38, align 8
  %39 = load i64, i64* @INVALID_ELEM, align 8
  %40 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp eq i64 %39, %42
  br i1 %43, label %44, label %51

44:                                               ; preds = %3
  %45 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = trunc i64 %47 to i32
  %49 = call i32 (i8*, ...) @DBG_ERR(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %48)
  %50 = load i32, i32* @PQI_STATUS_FAILURE, align 4
  store i32 %50, i32* %8, align 4
  br label %183

51:                                               ; preds = %3
  %52 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %55, i32 0, i32 1
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** %56, align 8
  %58 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %57, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %61, i32 0, i32 0
  store i64 %54, i64* %62, align 8
  %63 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %64 = load i32*, i32** %10, align 8
  %65 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %66 = call i32 @pqisrc_submit_cmnd(%struct.TYPE_18__* %63, i32* %64, %struct.TYPE_21__* %65)
  store i32 %66, i32* %8, align 4
  %67 = load i32, i32* %8, align 4
  %68 = load i32, i32* @PQI_STATUS_SUCCESS, align 4
  %69 = icmp ne i32 %67, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %51
  %71 = call i32 (i8*, ...) @DBG_ERR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  br label %168

72:                                               ; preds = %51
  %73 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %74 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %78 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = icmp ne i32 %76, %79
  %81 = zext i1 %80 to i32
  %82 = load i32, i32* %11, align 4
  %83 = call i32 @COND_WAIT(i32 %81, i32 %82)
  %84 = load i32, i32* %11, align 4
  %85 = icmp sle i32 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %72
  %87 = call i32 (i8*, ...) @DBG_ERR(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  %88 = load i32, i32* %11, align 4
  %89 = call i32 (i8*, ...) @DBG_ERR(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 %88)
  %90 = load i32, i32* @PQI_STATUS_TIMEOUT, align 4
  store i32 %90, i32* %8, align 4
  br label %168

91:                                               ; preds = %72
  %92 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %93 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %94 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %93, i32 0, i32 6
  %95 = load i64, i64* %94, align 8
  %96 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %97 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %100 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = mul nsw i32 %98, %101
  %103 = sext i32 %102 to i64
  %104 = add nsw i64 %95, %103
  %105 = call i32 @memcpy(%struct.TYPE_20__* %92, i64 %104, i32 24)
  %106 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %107 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = add nsw i32 %108, 1
  %110 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %111 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 8
  %113 = srem i32 %109, %112
  %114 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %115 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %114, i32 0, i32 1
  store i32 %113, i32* %115, align 8
  %116 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %117 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %118 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %117, i32 0, i32 5
  %119 = load i32, i32* %118, align 8
  %120 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %121 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %120, i32 0, i32 4
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %124 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 8
  %126 = call i32 @LE_32(i32 %125)
  %127 = call i32 @PCI_MEM_PUT32(%struct.TYPE_18__* %116, i32 %119, i32 %122, i32 %126)
  %128 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %129 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %128, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %132 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = icmp eq i64 %130, %133
  %135 = zext i1 %134 to i32
  %136 = call i32 @ASSERT(i32 %135)
  %137 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %138 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %137, i32 0, i32 2
  %139 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = load i64, i64* @PQI_IU_TYPE_GENERAL_ADMIN_RESPONSE, align 8
  %142 = icmp eq i64 %140, %141
  %143 = zext i1 %142 to i32
  %144 = call i32 @ASSERT(i32 %143)
  %145 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %146 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 8
  store i32 %147, i32* %8, align 4
  %148 = load i32, i32* %8, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %151

150:                                              ; preds = %91
  br label %168

151:                                              ; preds = %91
  %152 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %153 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %152, i32 0, i32 1
  %154 = load %struct.TYPE_15__*, %struct.TYPE_15__** %153, align 8
  %155 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %156 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %154, i64 %157
  %159 = call i32 @os_reset_rcb(%struct.TYPE_15__* %158)
  %160 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %161 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %160, i32 0, i32 0
  %162 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %163 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = call i32 @pqisrc_put_tag(i32* %161, i64 %164)
  %166 = call i32 (i8*, ...) @DBG_FUNC(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %167 = load i32, i32* %8, align 4
  store i32 %167, i32* %4, align 4
  br label %187

168:                                              ; preds = %150, %86, %70
  %169 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %170 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %169, i32 0, i32 1
  %171 = load %struct.TYPE_15__*, %struct.TYPE_15__** %170, align 8
  %172 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %173 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %171, i64 %174
  %176 = call i32 @os_reset_rcb(%struct.TYPE_15__* %175)
  %177 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %178 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %177, i32 0, i32 0
  %179 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %180 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %179, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = call i32 @pqisrc_put_tag(i32* %178, i64 %181)
  br label %183

183:                                              ; preds = %168, %44
  %184 = load i32, i32* %8, align 4
  %185 = call i32 (i8*, ...) @DBG_FUNC(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i32 %184)
  %186 = load i32, i32* %8, align 4
  store i32 %186, i32* %4, align 4
  br label %187

187:                                              ; preds = %183, %151
  %188 = load i32, i32* %4, align 4
  ret i32 %188
}

declare dso_local i32 @DBG_FUNC(i8*, ...) #1

declare dso_local i64 @pqisrc_get_tag(i32*) #1

declare dso_local i32 @DBG_ERR(i8*, ...) #1

declare dso_local i32 @pqisrc_submit_cmnd(%struct.TYPE_18__*, i32*, %struct.TYPE_21__*) #1

declare dso_local i32 @COND_WAIT(i32, i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_20__*, i64, i32) #1

declare dso_local i32 @PCI_MEM_PUT32(%struct.TYPE_18__*, i32, i32, i32) #1

declare dso_local i32 @LE_32(i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @os_reset_rcb(%struct.TYPE_15__*) #1

declare dso_local i32 @pqisrc_put_tag(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
