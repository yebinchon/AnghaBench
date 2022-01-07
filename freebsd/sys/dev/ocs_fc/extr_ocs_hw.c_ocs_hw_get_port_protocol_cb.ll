; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_hw.c_ocs_hw_get_port_protocol_cb.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_hw.c_ocs_hw_get_port_protocol_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32 }
%struct.TYPE_12__ = type { i64, %struct.TYPE_17__, i32, i32 (i32, i32, i32)* }
%struct.TYPE_17__ = type { i64 }
%struct.TYPE_14__ = type { i32, i64 }
%struct.TYPE_13__ = type { i64, i32 }
%struct.TYPE_15__ = type { i64, i32 }

@OCS_HW_PORT_PROTOCOL_OTHER = common dso_local global i32 0, align 4
@SLI4_RESOURCE_DESCRIPTOR_TYPE_PCIE = common dso_local global i64 0, align 8
@OCS_HW_PORT_PROTOCOL_ISCSI = common dso_local global i32 0, align 4
@OCS_HW_PORT_PROTOCOL_FCOE = common dso_local global i32 0, align 4
@OCS_HW_PORT_PROTOCOL_FC = common dso_local global i32 0, align 4
@SLI4_BMBX_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*, i32, %struct.TYPE_12__*, i8*)* @ocs_hw_get_port_protocol_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocs_hw_get_port_protocol_cb(%struct.TYPE_16__* %0, i32 %1, %struct.TYPE_12__* %2, i8* %3) #0 {
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca %struct.TYPE_17__*, align 8
  %11 = alloca %struct.TYPE_14__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_13__*, align 8
  %15 = alloca %struct.TYPE_15__*, align 8
  %16 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_12__* %2, %struct.TYPE_12__** %7, align 8
  store i8* %3, i8** %8, align 8
  %17 = load i8*, i8** %8, align 8
  %18 = bitcast i8* %17 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %18, %struct.TYPE_12__** %9, align 8
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 1
  store %struct.TYPE_17__* %20, %struct.TYPE_17__** %10, align 8
  %21 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %22 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %24, %struct.TYPE_14__** %11, align 8
  %25 = load i32, i32* @OCS_HW_PORT_PROTOCOL_OTHER, align 4
  store i32 %25, i32* %12, align 4
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %13, align 4
  %29 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = inttoptr i64 %31 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %32, %struct.TYPE_13__** %14, align 8
  store i32 0, i32* %16, align 4
  br label %33

33:                                               ; preds = %76, %4
  %34 = load i32, i32* %16, align 4
  %35 = load i32, i32* %13, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %79

37:                                               ; preds = %33
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @SLI4_RESOURCE_DESCRIPTOR_TYPE_PCIE, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %67

43:                                               ; preds = %37
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %45 = bitcast %struct.TYPE_13__* %44 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %45, %struct.TYPE_15__** %15, align 8
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %47 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp eq i64 %48, %51
  br i1 %52, label %53, label %66

53:                                               ; preds = %43
  %54 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %55 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  switch i32 %56, label %63 [
    i32 2, label %57
    i32 4, label %59
    i32 16, label %61
  ]

57:                                               ; preds = %53
  %58 = load i32, i32* @OCS_HW_PORT_PROTOCOL_ISCSI, align 4
  store i32 %58, i32* %12, align 4
  br label %65

59:                                               ; preds = %53
  %60 = load i32, i32* @OCS_HW_PORT_PROTOCOL_FCOE, align 4
  store i32 %60, i32* %12, align 4
  br label %65

61:                                               ; preds = %53
  %62 = load i32, i32* @OCS_HW_PORT_PROTOCOL_FC, align 4
  store i32 %62, i32* %12, align 4
  br label %65

63:                                               ; preds = %53
  %64 = load i32, i32* @OCS_HW_PORT_PROTOCOL_OTHER, align 4
  store i32 %64, i32* %12, align 4
  br label %65

65:                                               ; preds = %63, %61, %59, %57
  br label %66

66:                                               ; preds = %65, %43
  br label %67

67:                                               ; preds = %66, %37
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %69 = bitcast %struct.TYPE_13__* %68 to %struct.TYPE_12__*
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i64 %73
  %75 = bitcast %struct.TYPE_12__* %74 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %75, %struct.TYPE_13__** %14, align 8
  br label %76

76:                                               ; preds = %67
  %77 = load i32, i32* %16, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %16, align 4
  br label %33

79:                                               ; preds = %33
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 3
  %82 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %81, align 8
  %83 = icmp ne i32 (i32, i32, i32)* %82, null
  br i1 %83, label %84, label %94

84:                                               ; preds = %79
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i32 0, i32 3
  %87 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %86, align 8
  %88 = load i32, i32* %6, align 4
  %89 = load i32, i32* %12, align 4
  %90 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = call i32 %87(i32 %88, i32 %89, i32 %92)
  br label %94

94:                                               ; preds = %84, %79
  %95 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %98, i32 0, i32 1
  %100 = call i32 @ocs_dma_free(i32 %97, %struct.TYPE_17__* %99)
  %101 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %105 = call i32 @ocs_free(i32 %103, %struct.TYPE_12__* %104, i32 32)
  %106 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %110 = load i32, i32* @SLI4_BMBX_SIZE, align 4
  %111 = call i32 @ocs_free(i32 %108, %struct.TYPE_12__* %109, i32 %110)
  ret i32 0
}

declare dso_local i32 @ocs_dma_free(i32, %struct.TYPE_17__*) #1

declare dso_local i32 @ocs_free(i32, %struct.TYPE_12__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
