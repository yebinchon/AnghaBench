; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scic_sds_stp_packet_request.c_scic_sds_stp_packet_internal_request_sense_build_sgl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scic_sds_stp_packet_request.c_scic_sds_stp_packet_internal_request_sense_build_sgl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, i64 }
%struct.TYPE_11__ = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64, i32, i32, i32 }
%struct.TYPE_10__ = type { i32, %struct.TYPE_11__ }
%struct.TYPE_12__ = type { i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @scic_sds_stp_packet_internal_request_sense_build_sgl(%struct.TYPE_13__* %0) #0 {
  %2 = alloca %struct.TYPE_13__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %2, align 8
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %4, align 8
  %8 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %11, %struct.TYPE_12__** %7, align 8
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %13 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 0
  %16 = bitcast i32* %15 to i8*
  store i8* %16, i8** %3, align 8
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %20, %struct.TYPE_10__** %5, align 8
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 1
  store %struct.TYPE_11__* %22, %struct.TYPE_11__** %4, align 8
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %24 = call i32 @scic_sds_request_get_controller(%struct.TYPE_13__* %23)
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %26 = load i8*, i8** %3, align 8
  %27 = call i32 @scic_cb_io_request_get_physical_address(i32 %24, %struct.TYPE_13__* %25, i8* %26, i32* %6)
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @sci_cb_physical_address_upper(i32 %28)
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 3
  store i32 %29, i32* %32, align 8
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @sci_cb_physical_address_lower(i32 %33)
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 2
  store i32 %34, i32* %37, align 4
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 1
  store i32 %40, i32* %43, align 8
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 0
  store i64 0, i64* %46, align 8
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @SCU_SGL_ZERO(i32 %49)
  ret void
}

declare dso_local i32 @scic_cb_io_request_get_physical_address(i32, %struct.TYPE_13__*, i8*, i32*) #1

declare dso_local i32 @scic_sds_request_get_controller(%struct.TYPE_13__*) #1

declare dso_local i32 @sci_cb_physical_address_upper(i32) #1

declare dso_local i32 @sci_cb_physical_address_lower(i32) #1

declare dso_local i32 @SCU_SGL_ZERO(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
