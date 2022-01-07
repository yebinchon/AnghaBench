; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_hw.c_ocs_hw_io_overflow_sgl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_hw.c_ocs_hw_io_overflow_sgl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.TYPE_13__ = type { i32, i32, i32, i32, %struct.TYPE_10__*, %struct.TYPE_10__*, %struct.TYPE_11__*, %struct.TYPE_14__* }
%struct.TYPE_10__ = type { i32, i64 }
%struct.TYPE_11__ = type { i32, i64, i32, i32, i32 }
%struct.TYPE_14__ = type { i32, i32, %struct.TYPE_10__ }

@OCS_HW_RTN_ERROR = common dso_local global i32 0, align 4
@SLI4_IF_TYPE_BE3_SKH_PF = common dso_local global i64 0, align 8
@SLI4_IF_TYPE_BE3_SKH_VF = common dso_local global i64 0, align 8
@SLI4_SGE_TYPE_LSP = common dso_local global i32 0, align 4
@OCS_HW_RTN_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, %struct.TYPE_13__*)* @ocs_hw_io_overflow_sgl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocs_hw_io_overflow_sgl(%struct.TYPE_12__* %0, %struct.TYPE_13__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %5, align 8
  %7 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %8 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 5
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %10 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 4
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %13 = icmp eq %struct.TYPE_10__* %9, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* @OCS_HW_RTN_ERROR, align 4
  store i32 %15, i32* %3, align 4
  br label %179

16:                                               ; preds = %2
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 0
  %19 = call i64 @sli_get_sgl_preregister(i32* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %67

21:                                               ; preds = %16
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp sgt i32 %24, 4
  br i1 %25, label %26, label %67

26:                                               ; preds = %21
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 7
  %29 = load %struct.TYPE_14__*, %struct.TYPE_14__** %28, align 8
  %30 = icmp eq %struct.TYPE_14__* %29, null
  br i1 %30, label %31, label %67

31:                                               ; preds = %26
  %32 = load i64, i64* @SLI4_IF_TYPE_BE3_SKH_PF, align 8
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 0
  %35 = call i64 @sli_get_if_type(i32* %34)
  %36 = icmp eq i64 %32, %35
  br i1 %36, label %43, label %37

37:                                               ; preds = %31
  %38 = load i64, i64* @SLI4_IF_TYPE_BE3_SKH_VF, align 8
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 0
  %41 = call i64 @sli_get_if_type(i32* %40)
  %42 = icmp eq i64 %38, %41
  br i1 %42, label %43, label %67

43:                                               ; preds = %37, %31
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %45 = call %struct.TYPE_14__* @ocs_hw_io_alloc(%struct.TYPE_12__* %44)
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 7
  store %struct.TYPE_14__* %45, %struct.TYPE_14__** %47, align 8
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 7
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %49, align 8
  %51 = icmp ne %struct.TYPE_14__* %50, null
  br i1 %51, label %52, label %66

52:                                               ; preds = %43
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 7
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i32 0, i32 2
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i32 0, i32 4
  store %struct.TYPE_10__* %56, %struct.TYPE_10__** %58, align 8
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 7
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i32 0, i32 2
  store i32 %63, i32* %65, align 8
  br label %66

66:                                               ; preds = %52, %43
  br label %67

67:                                               ; preds = %66, %37, %26, %21, %16
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 7
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** %69, align 8
  %71 = icmp eq %struct.TYPE_14__* %70, null
  br i1 %71, label %77, label %72

72:                                               ; preds = %67
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %73, i32 0, i32 4
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %74, align 8
  %76 = icmp eq %struct.TYPE_10__* %75, null
  br i1 %76, label %77, label %79

77:                                               ; preds = %72, %67
  %78 = load i32, i32* @OCS_HW_RTN_ERROR, align 4
  store i32 %78, i32* %3, align 4
  br label %179

79:                                               ; preds = %72
  %80 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %80, i32 0, i32 5
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = inttoptr i64 %84 to i32*
  %86 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = sub nsw i32 %88, 1
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %85, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %93, i32 0, i32 4
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = inttoptr i64 %97 to i32*
  %99 = getelementptr inbounds i32, i32* %98, i64 0
  store i32 %92, i32* %99, align 4
  %100 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %100, i32 0, i32 5
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = inttoptr i64 %104 to %struct.TYPE_11__*
  %106 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = sub nsw i32 %108, 1
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %105, i64 %110
  store %struct.TYPE_11__* %111, %struct.TYPE_11__** %6, align 8
  %112 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %113 = call i32 @ocs_memset(%struct.TYPE_11__* %112, i32 0, i32 32)
  %114 = load i64, i64* @SLI4_IF_TYPE_BE3_SKH_PF, align 8
  %115 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %115, i32 0, i32 0
  %117 = call i64 @sli_get_if_type(i32* %116)
  %118 = icmp eq i64 %114, %117
  br i1 %118, label %125, label %119

119:                                              ; preds = %79
  %120 = load i64, i64* @SLI4_IF_TYPE_BE3_SKH_VF, align 8
  %121 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %121, i32 0, i32 0
  %123 = call i64 @sli_get_if_type(i32* %122)
  %124 = icmp eq i64 %120, %123
  br i1 %124, label %125, label %136

125:                                              ; preds = %119, %79
  %126 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %127 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %126, i32 0, i32 0
  %128 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %129 = bitcast %struct.TYPE_11__* %128 to i32*
  %130 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %130, i32 0, i32 7
  %132 = load %struct.TYPE_14__*, %struct.TYPE_14__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = call i32 @sli_skh_chain_sge_build(i32* %127, i32* %129, i32 %134, i32 0, i32 0)
  br label %165

136:                                              ; preds = %119
  %137 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %138 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %137, i32 0, i32 4
  %139 = load %struct.TYPE_10__*, %struct.TYPE_10__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = call i32 @ocs_addr32_hi(i32 %141)
  %143 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %144 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %143, i32 0, i32 4
  store i32 %142, i32* %144, align 8
  %145 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %146 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %145, i32 0, i32 4
  %147 = load %struct.TYPE_10__*, %struct.TYPE_10__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = call i32 @ocs_addr32_lo(i32 %149)
  %151 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %152 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %151, i32 0, i32 3
  store i32 %150, i32* %152, align 4
  %153 = load i32, i32* @SLI4_SGE_TYPE_LSP, align 4
  %154 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %155 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %154, i32 0, i32 2
  store i32 %153, i32* %155, align 8
  %156 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %157 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %156, i32 0, i32 1
  store i64 0, i64* %157, align 8
  %158 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %159 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %160 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %159, i32 0, i32 6
  store %struct.TYPE_11__* %158, %struct.TYPE_11__** %160, align 8
  %161 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %162 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %161, i32 0, i32 6
  %163 = load %struct.TYPE_11__*, %struct.TYPE_11__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %163, i32 0, i32 0
  store i32 4, i32* %164, align 8
  br label %165

165:                                              ; preds = %136, %125
  %166 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %167 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %166, i32 0, i32 4
  %168 = load %struct.TYPE_10__*, %struct.TYPE_10__** %167, align 8
  %169 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %170 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %169, i32 0, i32 5
  store %struct.TYPE_10__* %168, %struct.TYPE_10__** %170, align 8
  %171 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %172 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %171, i32 0, i32 2
  %173 = load i32, i32* %172, align 8
  %174 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %175 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %174, i32 0, i32 3
  store i32 %173, i32* %175, align 4
  %176 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %177 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %176, i32 0, i32 1
  store i32 1, i32* %177, align 4
  %178 = load i32, i32* @OCS_HW_RTN_SUCCESS, align 4
  store i32 %178, i32* %3, align 4
  br label %179

179:                                              ; preds = %165, %77, %14
  %180 = load i32, i32* %3, align 4
  ret i32 %180
}

declare dso_local i64 @sli_get_sgl_preregister(i32*) #1

declare dso_local i64 @sli_get_if_type(i32*) #1

declare dso_local %struct.TYPE_14__* @ocs_hw_io_alloc(%struct.TYPE_12__*) #1

declare dso_local i32 @ocs_memset(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @sli_skh_chain_sge_build(i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @ocs_addr32_hi(i32) #1

declare dso_local i32 @ocs_addr32_lo(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
