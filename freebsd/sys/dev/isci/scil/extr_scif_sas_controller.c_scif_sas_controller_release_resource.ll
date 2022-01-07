; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scif_sas_controller.c_scif_sas_controller_release_resource.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scif_sas_controller.c_scif_sas_controller_release_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32* }

@SCIF_LOG_OBJECT_CONTROLLER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"scif_sas_controller_release_resource(0x%x) enter\0A\00", align 1
@SCI_MAX_DOMAINS = common dso_local global i64 0, align 8
@SCI_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @scif_sas_controller_release_resource(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %5 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %6 = call i32 @sci_base_object_get_logger(%struct.TYPE_5__* %5)
  %7 = load i32, i32* @SCIF_LOG_OBJECT_CONTROLLER, align 4
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %9 = ptrtoint %struct.TYPE_5__* %8 to i32
  %10 = call i32 @SCIF_LOG_TRACE(i32 %9)
  store i64 0, i64* %3, align 8
  br label %11

11:                                               ; preds = %24, %1
  %12 = load i64, i64* %3, align 8
  %13 = load i64, i64* @SCI_MAX_DOMAINS, align 8
  %14 = icmp ult i64 %12, %13
  br i1 %14, label %15, label %27

15:                                               ; preds = %11
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = load i64, i64* %3, align 8
  %20 = getelementptr inbounds i32, i32* %18, i64 %19
  store i32* %20, i32** %4, align 8
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %22 = load i32*, i32** %4, align 8
  %23 = call i32 @scif_sas_domain_release_resource(%struct.TYPE_5__* %21, i32* %22)
  br label %24

24:                                               ; preds = %15
  %25 = load i64, i64* %3, align 8
  %26 = add i64 %25, 1
  store i64 %26, i64* %3, align 8
  br label %11

27:                                               ; preds = %11
  %28 = load i32, i32* @SCI_SUCCESS, align 4
  ret i32 %28
}

declare dso_local i32 @SCIF_LOG_TRACE(i32) #1

declare dso_local i32 @sci_base_object_get_logger(%struct.TYPE_5__*) #1

declare dso_local i32 @scif_sas_domain_release_resource(%struct.TYPE_5__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
