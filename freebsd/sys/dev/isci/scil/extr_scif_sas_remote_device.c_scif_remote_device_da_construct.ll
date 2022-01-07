; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scif_sas_remote_device.c_scif_remote_device_da_construct.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scif_sas_remote_device.c_scif_remote_device_da_construct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_29__ = type { i64, i64 }
%struct.TYPE_28__ = type { %struct.TYPE_25__ }
%struct.TYPE_25__ = type { %struct.TYPE_24__ }
%struct.TYPE_24__ = type { i64, i64 }
%struct.TYPE_30__ = type { %struct.TYPE_21__*, i32, %struct.TYPE_27__*, i32, i32 }
%struct.TYPE_21__ = type { i32, i32 }
%struct.TYPE_27__ = type { %struct.TYPE_26__ }
%struct.TYPE_26__ = type { i64 (i32*)* }
%struct.TYPE_20__ = type { i32, %struct.TYPE_23__ }
%struct.TYPE_23__ = type { %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i64, i64 }

@SCI_SUCCESS = common dso_local global i64 0, align 8
@SCIF_LOG_OBJECT_REMOTE_DEVICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"scif_remote_device_da_construct(0x%x, 0x%x, 0x%x) enter\0A\00", align 1
@SCI_INVALID_HANDLE = common dso_local global i64 0, align 8
@SCI_FAILURE_UNSUPPORTED_PROTOCOL = common dso_local global i64 0, align 8
@SCI_FAILURE_DEVICE_EXISTS = common dso_local global i64 0, align 8
@SCIF_LOG_OBJECT_DOMAIN_DISCOVERY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [60 x i8] c"Domain:0x%x SasAddress:0x%x,0x%x remote device constructed\0A\00", align 1
@.str.2 = private unnamed_addr constant [78 x i8] c"Domain:0x%x SasAddress:0x%x,0x%x Status:0x%x remote device construct failure\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @scif_remote_device_da_construct(i64 %0, %struct.TYPE_29__* %1, %struct.TYPE_28__* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_29__*, align 8
  %6 = alloca %struct.TYPE_28__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_30__*, align 8
  %9 = alloca %struct.TYPE_20__, align 8
  store i64 %0, i64* %4, align 8
  store %struct.TYPE_29__* %1, %struct.TYPE_29__** %5, align 8
  store %struct.TYPE_28__* %2, %struct.TYPE_28__** %6, align 8
  %10 = load i64, i64* @SCI_SUCCESS, align 8
  store i64 %10, i64* %7, align 8
  %11 = load i64, i64* %4, align 8
  %12 = inttoptr i64 %11 to %struct.TYPE_30__*
  store %struct.TYPE_30__* %12, %struct.TYPE_30__** %8, align 8
  %13 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %14 = call i32 @sci_base_object_get_logger(%struct.TYPE_30__* %13)
  %15 = load i32, i32* @SCIF_LOG_OBJECT_REMOTE_DEVICE, align 4
  %16 = load i64, i64* %4, align 8
  %17 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %18 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %19 = ptrtoint %struct.TYPE_28__* %18 to i32
  %20 = call i32 @SCIF_LOG_TRACE(i32 %19)
  %21 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_21__*, %struct.TYPE_21__** %22, align 8
  %24 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %25 = call i64 @scif_domain_get_device_by_sas_address(%struct.TYPE_21__* %23, %struct.TYPE_29__* %24)
  %26 = load i64, i64* @SCI_INVALID_HANDLE, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %66

28:                                               ; preds = %3
  %29 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_21__*, %struct.TYPE_21__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @scic_port_get_properties(i32 %33, %struct.TYPE_20__* %9)
  %35 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %9, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp eq i64 %37, %41
  br i1 %42, label %43, label %63

43:                                               ; preds = %28
  %44 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %9, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp eq i64 %46, %50
  br i1 %51, label %52, label %63

52:                                               ; preds = %43
  %53 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %9, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @SCI_GET_BITS_SET_COUNT(i32 %54, i32 %57)
  %59 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 8
  %62 = call i64 @scic_remote_device_da_construct(i32 %61)
  store i64 %62, i64* %7, align 8
  br label %65

63:                                               ; preds = %43, %28
  %64 = load i64, i64* @SCI_FAILURE_UNSUPPORTED_PROTOCOL, align 8
  store i64 %64, i64* %7, align 8
  br label %65

65:                                               ; preds = %63, %52
  br label %68

66:                                               ; preds = %3
  %67 = load i64, i64* @SCI_FAILURE_DEVICE_EXISTS, align 8
  store i64 %67, i64* %7, align 8
  br label %68

68:                                               ; preds = %66, %65
  %69 = load i64, i64* %7, align 8
  %70 = load i64, i64* @SCI_SUCCESS, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %125

72:                                               ; preds = %68
  %73 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_21__*, %struct.TYPE_21__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %78 = call i32 @sci_abstract_list_pushback(i32* %76, %struct.TYPE_30__* %77)
  %79 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %72
  %86 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %87 = call i32 @scif_sas_stp_remote_device_construct(%struct.TYPE_30__* %86)
  br label %99

88:                                               ; preds = %72
  %89 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %88
  %96 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %97 = call i32 @scif_sas_smp_remote_device_construct(%struct.TYPE_30__* %96)
  br label %98

98:                                               ; preds = %95, %88
  br label %99

99:                                               ; preds = %98, %85
  %100 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %101 = call i32 @sci_base_object_get_logger(%struct.TYPE_30__* %100)
  %102 = load i32, i32* @SCIF_LOG_OBJECT_REMOTE_DEVICE, align 4
  %103 = load i32, i32* @SCIF_LOG_OBJECT_DOMAIN_DISCOVERY, align 4
  %104 = or i32 %102, %103
  %105 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %106 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %105, i32 0, i32 0
  %107 = load %struct.TYPE_21__*, %struct.TYPE_21__** %106, align 8
  %108 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = trunc i64 %113 to i32
  %115 = call i32 @SCIF_LOG_INFO(i32 %114)
  %116 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %117 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %116, i32 0, i32 2
  %118 = load %struct.TYPE_27__*, %struct.TYPE_27__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %119, i32 0, i32 0
  %121 = load i64 (i32*)*, i64 (i32*)** %120, align 8
  %122 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %123 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %122, i32 0, i32 1
  %124 = call i64 %121(i32* %123)
  store i64 %124, i64* %7, align 8
  br label %143

125:                                              ; preds = %68
  %126 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %127 = call i32 @sci_base_object_get_logger(%struct.TYPE_30__* %126)
  %128 = load i32, i32* @SCIF_LOG_OBJECT_REMOTE_DEVICE, align 4
  %129 = load i32, i32* @SCIF_LOG_OBJECT_DOMAIN_DISCOVERY, align 4
  %130 = or i32 %128, %129
  %131 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %132 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %131, i32 0, i32 0
  %133 = load %struct.TYPE_21__*, %struct.TYPE_21__** %132, align 8
  %134 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %135 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %138 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %137, i32 0, i32 1
  %139 = load i64, i64* %138, align 8
  %140 = load i64, i64* %7, align 8
  %141 = trunc i64 %140 to i32
  %142 = call i32 @SCIF_LOG_WARNING(i32 %141)
  br label %143

143:                                              ; preds = %125, %99
  %144 = load i64, i64* %7, align 8
  ret i64 %144
}

declare dso_local i32 @SCIF_LOG_TRACE(i32) #1

declare dso_local i32 @sci_base_object_get_logger(%struct.TYPE_30__*) #1

declare dso_local i64 @scif_domain_get_device_by_sas_address(%struct.TYPE_21__*, %struct.TYPE_29__*) #1

declare dso_local i32 @scic_port_get_properties(i32, %struct.TYPE_20__*) #1

declare dso_local i32 @SCI_GET_BITS_SET_COUNT(i32, i32) #1

declare dso_local i64 @scic_remote_device_da_construct(i32) #1

declare dso_local i32 @sci_abstract_list_pushback(i32*, %struct.TYPE_30__*) #1

declare dso_local i32 @scif_sas_stp_remote_device_construct(%struct.TYPE_30__*) #1

declare dso_local i32 @scif_sas_smp_remote_device_construct(%struct.TYPE_30__*) #1

declare dso_local i32 @SCIF_LOG_INFO(i32) #1

declare dso_local i32 @SCIF_LOG_WARNING(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
