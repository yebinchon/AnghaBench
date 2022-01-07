; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scic_sds_controller.c_scic_sds_controller_ram_initialization.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scic_sds_controller.c_scic_sds_controller_ram_initialization.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { %struct.TYPE_20__, %struct.TYPE_18__*, i32*, i32*, i32* }
%struct.TYPE_20__ = type { %struct.TYPE_17__, %struct.TYPE_16__ }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_18__ = type { i32, i64 }

@SCU_MDE_COMPLETION_QUEUE = common dso_local global i64 0, align 8
@SCU_MDE_REMOTE_NODE_CONTEXT = common dso_local global i64 0, align 8
@SCU_MDE_TASK_CONTEXT = common dso_local global i64 0, align 8
@SCU_MDE_UF_BUFFER = common dso_local global i64 0, align 8
@SIGNLE_BIT_ERROR_CORRECTION_ENABLE = common dso_local global i32 0, align 4
@MULTI_BIT_ERROR_REPORTING_ENABLE = common dso_local global i32 0, align 4
@SINGLE_BIT_ERROR_REPORTING_ENABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @scic_sds_controller_ram_initialization(%struct.TYPE_19__* %0) #0 {
  %2 = alloca %struct.TYPE_19__*, align 8
  %3 = alloca %struct.TYPE_18__*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %2, align 8
  %4 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %4, i32 0, i32 1
  %6 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %7 = load i64, i64* @SCU_MDE_COMPLETION_QUEUE, align 8
  %8 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %6, i64 %7
  store %struct.TYPE_18__* %8, %struct.TYPE_18__** %3, align 8
  %9 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to i32*
  %13 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %13, i32 0, i32 4
  store i32* %12, i32** %14, align 8
  %15 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %16 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @SMU_CQBAR_WRITE(%struct.TYPE_19__* %15, i32 %18)
  %20 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_18__*, %struct.TYPE_18__** %21, align 8
  %23 = load i64, i64* @SCU_MDE_REMOTE_NODE_CONTEXT, align 8
  %24 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %22, i64 %23
  store %struct.TYPE_18__* %24, %struct.TYPE_18__** %3, align 8
  %25 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to i32*
  %29 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %29, i32 0, i32 3
  store i32* %28, i32** %30, align 8
  %31 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %32 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @SMU_RNCBAR_WRITE(%struct.TYPE_19__* %31, i32 %34)
  %36 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %36, i32 0, i32 1
  %38 = load %struct.TYPE_18__*, %struct.TYPE_18__** %37, align 8
  %39 = load i64, i64* @SCU_MDE_TASK_CONTEXT, align 8
  %40 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %38, i64 %39
  store %struct.TYPE_18__* %40, %struct.TYPE_18__** %3, align 8
  %41 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = inttoptr i64 %43 to i32*
  %45 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %45, i32 0, i32 2
  store i32* %44, i32** %46, align 8
  %47 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %48 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @SMU_HTTBAR_WRITE(%struct.TYPE_19__* %47, i32 %50)
  %52 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %53 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %52, i32 0, i32 1
  %54 = load %struct.TYPE_18__*, %struct.TYPE_18__** %53, align 8
  %55 = load i64, i64* @SCU_MDE_UF_BUFFER, align 8
  %56 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %54, i64 %55
  store %struct.TYPE_18__* %56, %struct.TYPE_18__** %3, align 8
  %57 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %58 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %60 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %61 = call i32 @scic_sds_unsolicited_frame_control_construct(%struct.TYPE_20__* %58, %struct.TYPE_18__* %59, %struct.TYPE_19__* %60)
  %62 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %63 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %64 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @SCU_UFHBAR_WRITE(%struct.TYPE_19__* %62, i32 %67)
  %69 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %70 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %71 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @SCU_PUFATHAR_WRITE(%struct.TYPE_19__* %69, i32 %74)
  %76 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %77 = load i32, i32* @SIGNLE_BIT_ERROR_CORRECTION_ENABLE, align 4
  %78 = load i32, i32* @MULTI_BIT_ERROR_REPORTING_ENABLE, align 4
  %79 = or i32 %77, %78
  %80 = load i32, i32* @SINGLE_BIT_ERROR_REPORTING_ENABLE, align 4
  %81 = or i32 %79, %80
  %82 = call i32 @SCU_SECR0_WRITE(%struct.TYPE_19__* %76, i32 %81)
  %83 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %84 = load i32, i32* @SIGNLE_BIT_ERROR_CORRECTION_ENABLE, align 4
  %85 = load i32, i32* @MULTI_BIT_ERROR_REPORTING_ENABLE, align 4
  %86 = or i32 %84, %85
  %87 = load i32, i32* @SINGLE_BIT_ERROR_REPORTING_ENABLE, align 4
  %88 = or i32 %86, %87
  %89 = call i32 @SCU_SECR1_WRITE(%struct.TYPE_19__* %83, i32 %88)
  ret void
}

declare dso_local i32 @SMU_CQBAR_WRITE(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @SMU_RNCBAR_WRITE(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @SMU_HTTBAR_WRITE(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @scic_sds_unsolicited_frame_control_construct(%struct.TYPE_20__*, %struct.TYPE_18__*, %struct.TYPE_19__*) #1

declare dso_local i32 @SCU_UFHBAR_WRITE(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @SCU_PUFATHAR_WRITE(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @SCU_SECR0_WRITE(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @SCU_SECR1_WRITE(%struct.TYPE_19__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
