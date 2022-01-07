; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scif_sas_io_request.c_scif_sas_io_request_continue.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scif_sas_io_request.c_scif_sas_io_request_continue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SCIF_LOG_OBJECT_IO_REQUEST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"scif_sas_io_request_continue(0x%x, 0x%x, 0x%x) enter\0A\00", align 1
@SCI_CONTROLLER_INVALID_IO_TAG = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @scif_sas_io_request_continue(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %8 = load i32*, i32** %6, align 8
  %9 = call i32 @sci_base_object_get_logger(i32* %8)
  %10 = load i32, i32* @SCIF_LOG_OBJECT_IO_REQUEST, align 4
  %11 = load i32*, i32** %4, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = ptrtoint i32* %13 to i32
  %15 = call i32 @SCIF_LOG_TRACE(i32 %14)
  %16 = load i32*, i32** %4, align 8
  %17 = load i32*, i32** %5, align 8
  %18 = load i32*, i32** %6, align 8
  %19 = call i32 @scif_controller_complete_io(i32* %16, i32* %17, i32* %18)
  %20 = load i32*, i32** %5, align 8
  %21 = load i32*, i32** %6, align 8
  %22 = load i32, i32* @SCI_CONTROLLER_INVALID_IO_TAG, align 4
  %23 = load i32*, i32** %6, align 8
  %24 = call i64 @sci_object_get_association(i32* %23)
  %25 = inttoptr i64 %24 to i8*
  %26 = load i32, i32* @FALSE, align 4
  %27 = call i32 @scif_sas_io_request_construct(i32* %20, i32* %21, i32 %22, i8* %25, i32* %7, i32 %26)
  %28 = load i32*, i32** %4, align 8
  %29 = ptrtoint i32* %28 to i32
  %30 = load i32*, i32** %5, align 8
  %31 = ptrtoint i32* %30 to i32
  %32 = load i32*, i32** %6, align 8
  %33 = ptrtoint i32* %32 to i32
  %34 = load i32, i32* @SCI_CONTROLLER_INVALID_IO_TAG, align 4
  %35 = call i32 @scif_controller_start_io(i32 %29, i32 %31, i32 %33, i32 %34)
  ret i32 %35
}

declare dso_local i32 @SCIF_LOG_TRACE(i32) #1

declare dso_local i32 @sci_base_object_get_logger(i32*) #1

declare dso_local i32 @scif_controller_complete_io(i32*, i32*, i32*) #1

declare dso_local i32 @scif_sas_io_request_construct(i32*, i32*, i32, i8*, i32*, i32) #1

declare dso_local i64 @sci_object_get_association(i32*) #1

declare dso_local i32 @scif_controller_start_io(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
