; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scif_sas_domain.c_scif_sas_domain_construct.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scif_sas_domain.c_scif_sas_domain_construct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i8*, %struct.TYPE_9__, %struct.TYPE_11__*, i64, i8*, i32, i64, i32, i32 }
%struct.TYPE_9__ = type { i32, i32* }
%struct.TYPE_11__ = type { i32, i32 }

@SCIF_LOG_OBJECT_DOMAIN = common dso_local global i32 0, align 4
@SCIF_LOG_OBJECT_INITIALIZATION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"scif_sas_domain_construct(0x%x, 0x%x, 0x%x) enter\0A\00", align 1
@scif_sas_domain_state_table = common dso_local global i32 0, align 4
@FALSE = common dso_local global i8* null, align 8
@SCI_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @scif_sas_domain_construct(%struct.TYPE_10__* %0, i32 %1, %struct.TYPE_11__* %2) #0 {
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.TYPE_11__* %2, %struct.TYPE_11__** %6, align 8
  %7 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %8 = call i32 @sci_base_object_get_logger(%struct.TYPE_11__* %7)
  %9 = load i32, i32* @SCIF_LOG_OBJECT_DOMAIN, align 4
  %10 = load i32, i32* @SCIF_LOG_OBJECT_INITIALIZATION, align 4
  %11 = or i32 %9, %10
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %13 = load i32, i32* %5, align 4
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %15 = ptrtoint %struct.TYPE_11__* %14 to i32
  %16 = call i32 @SCIF_LOG_TRACE(i32 %15)
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 8
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %20 = call i32 @sci_base_object_get_logger(%struct.TYPE_11__* %19)
  %21 = load i32, i32* @scif_sas_domain_state_table, align 4
  %22 = call i32 @sci_base_domain_construct(i32* %18, i32 %20, i32 %21)
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %24 = call i32 @scif_sas_domain_initialize_state_logging(%struct.TYPE_10__* %23)
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 7
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 1
  %29 = call i32 @sci_abstract_list_construct(i32* %26, i32* %28)
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %5, align 4
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 6
  %36 = call i32 @scic_controller_get_port_handle(i32 %32, i32 %33, i64* %35)
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 6
  %39 = load i64, i64* %38, align 8
  %40 = trunc i64 %39 to i32
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %42 = call i32 @sci_object_set_association(i32 %40, %struct.TYPE_10__* %41)
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 5
  %45 = call i32 @sci_fast_list_init(i32* %44)
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 1
  store i32* null, i32** %48, align 8
  %49 = load i8*, i8** @FALSE, align 8
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 4
  store i8* %49, i8** %51, align 8
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 3
  store i64 0, i64* %53, align 8
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 2
  store %struct.TYPE_11__* %54, %struct.TYPE_11__** %56, align 8
  %57 = load i32, i32* @SCI_SUCCESS, align 4
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 0
  store i32 %57, i32* %60, align 8
  %61 = load i8*, i8** @FALSE, align 8
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 0
  store i8* %61, i8** %63, align 8
  ret void
}

declare dso_local i32 @SCIF_LOG_TRACE(i32) #1

declare dso_local i32 @sci_base_object_get_logger(%struct.TYPE_11__*) #1

declare dso_local i32 @sci_base_domain_construct(i32*, i32, i32) #1

declare dso_local i32 @scif_sas_domain_initialize_state_logging(%struct.TYPE_10__*) #1

declare dso_local i32 @sci_abstract_list_construct(i32*, i32*) #1

declare dso_local i32 @scic_controller_get_port_handle(i32, i32, i64*) #1

declare dso_local i32 @sci_object_set_association(i32, %struct.TYPE_10__*) #1

declare dso_local i32 @sci_fast_list_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
