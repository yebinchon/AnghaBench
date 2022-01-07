; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scif_sas_io_request.c_scic_cb_io_request_complete.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scif_sas_io_request.c_scic_cb_io_request_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64 (i32*, i32*, %struct.TYPE_8__*, i64*)*, i64, i64, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64 (i32*)* }

@SCIF_LOG_OBJECT_IO_REQUEST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"scic_cb_io_request_complete(0x%x, 0x%x, 0x%x, 0x%x) enter\0A\00", align 1
@SCI_SUCCESS = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@SCI_WARNING_SEQUENCE_INCOMPLETE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @scic_cb_io_request_complete(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_8__*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load i32, i32* %5, align 4
  %14 = call i64 @sci_object_get_association(i32 %13)
  %15 = inttoptr i64 %14 to i32*
  store i32* %15, i32** %10, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call i64 @sci_object_get_association(i32 %16)
  %18 = inttoptr i64 %17 to i32*
  store i32* %18, i32** %11, align 8
  %19 = load i32, i32* %7, align 4
  %20 = call i64 @sci_object_get_association(i32 %19)
  %21 = inttoptr i64 %20 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %21, %struct.TYPE_8__** %12, align 8
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @sci_base_object_get_logger(i32 %22)
  %24 = load i32, i32* @SCIF_LOG_OBJECT_IO_REQUEST, align 4
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* %8, align 4
  %29 = call i32 @SCIF_LOG_TRACE(i32 %28)
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 4
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load i64 (i32*)*, i64 (i32*)** %33, align 8
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 3
  %37 = call i64 %34(i32* %36)
  store i64 %37, i64* %9, align 8
  %38 = load i64, i64* %9, align 8
  %39 = load i64, i64* @SCI_SUCCESS, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %96

41:                                               ; preds = %4
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = load i64 (i32*, i32*, %struct.TYPE_8__*, i64*)*, i64 (i32*, i32*, %struct.TYPE_8__*, i64*)** %43, align 8
  %45 = icmp ne i64 (i32*, i32*, %struct.TYPE_8__*, i64*)* %44, null
  br i1 %45, label %46, label %55

46:                                               ; preds = %41
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = load i64 (i32*, i32*, %struct.TYPE_8__*, i64*)*, i64 (i32*, i32*, %struct.TYPE_8__*, i64*)** %48, align 8
  %50 = load i32*, i32** %10, align 8
  %51 = load i32*, i32** %11, align 8
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %53 = bitcast i32* %8 to i64*
  %54 = call i64 %49(i32* %50, i32* %51, %struct.TYPE_8__* %52, i64* %53)
  store i64 %54, i64* %9, align 8
  br label %55

55:                                               ; preds = %46, %41
  %56 = load i64, i64* %9, align 8
  %57 = load i64, i64* @SCI_SUCCESS, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %85

59:                                               ; preds = %55
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @FALSE, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %79

65:                                               ; preds = %59
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @FALSE, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %77

71:                                               ; preds = %65
  %72 = load i32*, i32** %10, align 8
  %73 = load i32*, i32** %11, align 8
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %75 = load i32, i32* %8, align 4
  %76 = call i32 @scif_cb_io_request_complete(i32* %72, i32* %73, %struct.TYPE_8__* %74, i32 %75)
  br label %78

77:                                               ; preds = %65
  br label %78

78:                                               ; preds = %77, %71
  br label %84

79:                                               ; preds = %59
  %80 = load i32*, i32** %10, align 8
  %81 = load i32*, i32** %11, align 8
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %83 = call i32 @scif_sas_controller_complete_high_priority_io(i32* %80, i32* %81, %struct.TYPE_8__* %82)
  br label %84

84:                                               ; preds = %79, %78
  br label %95

85:                                               ; preds = %55
  %86 = load i64, i64* %9, align 8
  %87 = load i64, i64* @SCI_WARNING_SEQUENCE_INCOMPLETE, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %94

89:                                               ; preds = %85
  %90 = load i32*, i32** %10, align 8
  %91 = load i32*, i32** %11, align 8
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %93 = call i32 @scif_sas_io_request_continue(i32* %90, i32* %91, %struct.TYPE_8__* %92)
  br label %94

94:                                               ; preds = %89, %85
  br label %95

95:                                               ; preds = %94, %84
  br label %96

96:                                               ; preds = %95, %4
  ret void
}

declare dso_local i64 @sci_object_get_association(i32) #1

declare dso_local i32 @SCIF_LOG_TRACE(i32) #1

declare dso_local i32 @sci_base_object_get_logger(i32) #1

declare dso_local i32 @scif_cb_io_request_complete(i32*, i32*, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @scif_sas_controller_complete_high_priority_io(i32*, i32*, %struct.TYPE_8__*) #1

declare dso_local i32 @scif_sas_io_request_continue(i32*, i32*, %struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
