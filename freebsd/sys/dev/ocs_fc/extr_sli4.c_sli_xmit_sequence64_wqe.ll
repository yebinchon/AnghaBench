; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_sli4.c_sli_xmit_sequence64_wqe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_sli4.c_sli_xmit_sequence64_wqe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_13__, i32 }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_20__ = type { i32, i32* }
%struct.TYPE_19__ = type { i32, i64, i32 }
%struct.TYPE_17__ = type { i32, i32, i32, i32, i32, i8*, i32, i8*, i8*, i64, i8*, i64, i32, i32, i64, i32, i64, i32, i8*, i8*, i8*, i8*, i64, i64, i64, i64, i8*, %struct.TYPE_16__, i8*, i8* }
%struct.TYPE_16__ = type { %struct.TYPE_15__, i8*, i32 }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32, i32 }

@.str = private unnamed_addr constant [30 x i8] c"bad parameter sgl=%p virt=%p\0A\00", align 1
@TRUE = common dso_local global i8* null, align 8
@SLI4_BDE_TYPE_BDE_64 = common dso_local global i32 0, align 4
@SLI4_ELS_REQUEST64_CONTEXT_RPI = common dso_local global i32 0, align 4
@SLI4_WQE_XMIT_SEQUENCE64 = common dso_local global i32 0, align 4
@SLI4_ELS_REQUEST64_CLASS_3 = common dso_local global i32 0, align 4
@SLI4_ELS_REQUEST64_DIR_READ = common dso_local global i32 0, align 4
@SLI4_CMD_XMIT_SEQUENCE64_WQE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sli_xmit_sequence64_wqe(%struct.TYPE_18__* %0, i8* %1, i64 %2, %struct.TYPE_20__* %3, i8* %4, i8* %5, i8* %6, i8* %7, i8* %8, %struct.TYPE_19__* %9, i8* %10, i8* %11, i8* %12) #0 {
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_18__*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.TYPE_20__*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca %struct.TYPE_19__*, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i8*, align 8
  %27 = alloca i8*, align 8
  %28 = alloca %struct.TYPE_17__*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %15, align 8
  store i8* %1, i8** %16, align 8
  store i64 %2, i64* %17, align 8
  store %struct.TYPE_20__* %3, %struct.TYPE_20__** %18, align 8
  store i8* %4, i8** %19, align 8
  store i8* %5, i8** %20, align 8
  store i8* %6, i8** %21, align 8
  store i8* %7, i8** %22, align 8
  store i8* %8, i8** %23, align 8
  store %struct.TYPE_19__* %9, %struct.TYPE_19__** %24, align 8
  store i8* %10, i8** %25, align 8
  store i8* %11, i8** %26, align 8
  store i8* %12, i8** %27, align 8
  %29 = load i8*, i8** %16, align 8
  %30 = bitcast i8* %29 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %30, %struct.TYPE_17__** %28, align 8
  %31 = load i8*, i8** %16, align 8
  %32 = load i64, i64* %17, align 8
  %33 = call i32 @ocs_memset(i8* %31, i32 0, i64 %32)
  %34 = load %struct.TYPE_20__*, %struct.TYPE_20__** %18, align 8
  %35 = icmp eq %struct.TYPE_20__* %34, null
  br i1 %35, label %41, label %36

36:                                               ; preds = %13
  %37 = load %struct.TYPE_20__*, %struct.TYPE_20__** %18, align 8
  %38 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = icmp eq i32* %39, null
  br i1 %40, label %41, label %56

41:                                               ; preds = %36, %13
  %42 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %43 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.TYPE_20__*, %struct.TYPE_20__** %18, align 8
  %46 = load %struct.TYPE_20__*, %struct.TYPE_20__** %18, align 8
  %47 = icmp ne %struct.TYPE_20__* %46, null
  br i1 %47, label %48, label %52

48:                                               ; preds = %41
  %49 = load %struct.TYPE_20__*, %struct.TYPE_20__** %18, align 8
  %50 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  br label %53

52:                                               ; preds = %41
  br label %53

53:                                               ; preds = %52, %48
  %54 = phi i32* [ %51, %48 ], [ null, %52 ]
  %55 = call i32 @ocs_log_err(i32 %44, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), %struct.TYPE_20__* %45, i32* %54)
  store i32 -1, i32* %14, align 4
  br label %184

56:                                               ; preds = %36
  %57 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %58 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %56
  %63 = load i8*, i8** @TRUE, align 8
  %64 = load %struct.TYPE_17__*, %struct.TYPE_17__** %28, align 8
  %65 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %64, i32 0, i32 29
  store i8* %63, i8** %65, align 8
  br label %70

66:                                               ; preds = %56
  %67 = load i8*, i8** @TRUE, align 8
  %68 = load %struct.TYPE_17__*, %struct.TYPE_17__** %28, align 8
  %69 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %68, i32 0, i32 28
  store i8* %67, i8** %69, align 8
  br label %70

70:                                               ; preds = %66, %62
  %71 = load i32, i32* @SLI4_BDE_TYPE_BDE_64, align 4
  %72 = load %struct.TYPE_17__*, %struct.TYPE_17__** %28, align 8
  %73 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %72, i32 0, i32 27
  %74 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %73, i32 0, i32 2
  store i32 %71, i32* %74, align 8
  %75 = load i8*, i8** %19, align 8
  %76 = load %struct.TYPE_17__*, %struct.TYPE_17__** %28, align 8
  %77 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %76, i32 0, i32 27
  %78 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %77, i32 0, i32 1
  store i8* %75, i8** %78, align 8
  %79 = load %struct.TYPE_20__*, %struct.TYPE_20__** %18, align 8
  %80 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @ocs_addr32_lo(i32 %81)
  %83 = load %struct.TYPE_17__*, %struct.TYPE_17__** %28, align 8
  %84 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %83, i32 0, i32 27
  %85 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %86, i32 0, i32 1
  store i32 %82, i32* %87, align 4
  %88 = load %struct.TYPE_20__*, %struct.TYPE_20__** %18, align 8
  %89 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @ocs_addr32_hi(i32 %90)
  %92 = load %struct.TYPE_17__*, %struct.TYPE_17__** %28, align 8
  %93 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %92, i32 0, i32 27
  %94 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %95, i32 0, i32 0
  store i32 %91, i32* %96, align 8
  %97 = load i8*, i8** %19, align 8
  %98 = load %struct.TYPE_17__*, %struct.TYPE_17__** %28, align 8
  %99 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %98, i32 0, i32 26
  store i8* %97, i8** %99, align 8
  %100 = load %struct.TYPE_19__*, %struct.TYPE_19__** %24, align 8
  %101 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = and i32 %102, 16777215
  %104 = load %struct.TYPE_17__*, %struct.TYPE_17__** %28, align 8
  %105 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %104, i32 0, i32 0
  store i32 %103, i32* %105, align 8
  %106 = load %struct.TYPE_17__*, %struct.TYPE_17__** %28, align 8
  %107 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %106, i32 0, i32 25
  store i64 0, i64* %107, align 8
  %108 = load %struct.TYPE_17__*, %struct.TYPE_17__** %28, align 8
  %109 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %108, i32 0, i32 24
  store i64 0, i64* %109, align 8
  %110 = load %struct.TYPE_17__*, %struct.TYPE_17__** %28, align 8
  %111 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %110, i32 0, i32 23
  store i64 0, i64* %111, align 8
  %112 = load %struct.TYPE_17__*, %struct.TYPE_17__** %28, align 8
  %113 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %112, i32 0, i32 22
  store i64 0, i64* %113, align 8
  %114 = load %struct.TYPE_17__*, %struct.TYPE_17__** %28, align 8
  %115 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %114, i32 0, i32 1
  store i32 1, i32* %115, align 4
  %116 = load i8*, i8** %27, align 8
  %117 = load %struct.TYPE_17__*, %struct.TYPE_17__** %28, align 8
  %118 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %117, i32 0, i32 21
  store i8* %116, i8** %118, align 8
  %119 = load i8*, i8** %26, align 8
  %120 = load %struct.TYPE_17__*, %struct.TYPE_17__** %28, align 8
  %121 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %120, i32 0, i32 20
  store i8* %119, i8** %121, align 8
  %122 = load i8*, i8** %25, align 8
  %123 = load %struct.TYPE_17__*, %struct.TYPE_17__** %28, align 8
  %124 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %123, i32 0, i32 19
  store i8* %122, i8** %124, align 8
  %125 = load i8*, i8** %22, align 8
  %126 = load %struct.TYPE_17__*, %struct.TYPE_17__** %28, align 8
  %127 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %126, i32 0, i32 18
  store i8* %125, i8** %127, align 8
  %128 = load %struct.TYPE_19__*, %struct.TYPE_19__** %24, align 8
  %129 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 8
  %131 = load %struct.TYPE_17__*, %struct.TYPE_17__** %28, align 8
  %132 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %131, i32 0, i32 17
  store i32 %130, i32* %132, align 8
  %133 = load %struct.TYPE_17__*, %struct.TYPE_17__** %28, align 8
  %134 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %133, i32 0, i32 16
  store i64 0, i64* %134, align 8
  %135 = load i32, i32* @SLI4_ELS_REQUEST64_CONTEXT_RPI, align 4
  %136 = load %struct.TYPE_17__*, %struct.TYPE_17__** %28, align 8
  %137 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %136, i32 0, i32 15
  store i32 %135, i32* %137, align 8
  %138 = load %struct.TYPE_17__*, %struct.TYPE_17__** %28, align 8
  %139 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %138, i32 0, i32 14
  store i64 0, i64* %139, align 8
  %140 = load i32, i32* @SLI4_WQE_XMIT_SEQUENCE64, align 4
  %141 = load %struct.TYPE_17__*, %struct.TYPE_17__** %28, align 8
  %142 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %141, i32 0, i32 13
  store i32 %140, i32* %142, align 4
  %143 = load i32, i32* @SLI4_ELS_REQUEST64_CLASS_3, align 4
  %144 = load %struct.TYPE_17__*, %struct.TYPE_17__** %28, align 8
  %145 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %144, i32 0, i32 12
  store i32 %143, i32* %145, align 8
  %146 = load %struct.TYPE_17__*, %struct.TYPE_17__** %28, align 8
  %147 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %146, i32 0, i32 11
  store i64 0, i64* %147, align 8
  %148 = load i8*, i8** %20, align 8
  %149 = load %struct.TYPE_17__*, %struct.TYPE_17__** %28, align 8
  %150 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %149, i32 0, i32 10
  store i8* %148, i8** %150, align 8
  %151 = load %struct.TYPE_17__*, %struct.TYPE_17__** %28, align 8
  %152 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %151, i32 0, i32 9
  store i64 0, i64* %152, align 8
  %153 = load i8*, i8** %23, align 8
  %154 = load %struct.TYPE_17__*, %struct.TYPE_17__** %28, align 8
  %155 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %154, i32 0, i32 8
  store i8* %153, i8** %155, align 8
  %156 = load i8*, i8** %21, align 8
  %157 = load %struct.TYPE_17__*, %struct.TYPE_17__** %28, align 8
  %158 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %157, i32 0, i32 7
  store i8* %156, i8** %158, align 8
  %159 = load i32, i32* @SLI4_ELS_REQUEST64_DIR_READ, align 4
  %160 = load %struct.TYPE_17__*, %struct.TYPE_17__** %28, align 8
  %161 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %160, i32 0, i32 6
  store i32 %159, i32* %161, align 8
  %162 = load %struct.TYPE_19__*, %struct.TYPE_19__** %24, align 8
  %163 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %162, i32 0, i32 1
  %164 = load i64, i64* %163, align 8
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %176

166:                                              ; preds = %70
  %167 = load i8*, i8** @TRUE, align 8
  %168 = load %struct.TYPE_17__*, %struct.TYPE_17__** %28, align 8
  %169 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %168, i32 0, i32 5
  store i8* %167, i8** %169, align 8
  %170 = load %struct.TYPE_19__*, %struct.TYPE_19__** %24, align 8
  %171 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = and i32 %172, 16777215
  %174 = load %struct.TYPE_17__*, %struct.TYPE_17__** %28, align 8
  %175 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %174, i32 0, i32 0
  store i32 %173, i32* %175, align 8
  br label %176

176:                                              ; preds = %166, %70
  %177 = load i32, i32* @SLI4_CMD_XMIT_SEQUENCE64_WQE, align 4
  %178 = load %struct.TYPE_17__*, %struct.TYPE_17__** %28, align 8
  %179 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %178, i32 0, i32 4
  store i32 %177, i32* %179, align 8
  %180 = load %struct.TYPE_17__*, %struct.TYPE_17__** %28, align 8
  %181 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %180, i32 0, i32 2
  store i32 2, i32* %181, align 8
  %182 = load %struct.TYPE_17__*, %struct.TYPE_17__** %28, align 8
  %183 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %182, i32 0, i32 3
  store i32 65535, i32* %183, align 4
  store i32 0, i32* %14, align 4
  br label %184

184:                                              ; preds = %176, %53
  %185 = load i32, i32* %14, align 4
  ret i32 %185
}

declare dso_local i32 @ocs_memset(i8*, i32, i64) #1

declare dso_local i32 @ocs_log_err(i32, i8*, %struct.TYPE_20__*, i32*) #1

declare dso_local i32 @ocs_addr32_lo(i32) #1

declare dso_local i32 @ocs_addr32_hi(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
