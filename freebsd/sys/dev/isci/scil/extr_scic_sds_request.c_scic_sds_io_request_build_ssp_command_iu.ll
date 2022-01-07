; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scic_sds_request.c_scic_sds_io_request_build_ssp_command_iu.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scic_sds_request.c_scic_sds_io_request_build_ssp_command_iu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i64, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*)* @scic_sds_io_request_build_ssp_command_iu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scic_sds_io_request_build_ssp_command_iu(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca %struct.TYPE_7__, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %11, %struct.TYPE_6__** %4, align 8
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %13 = call i8* @scic_sds_request_get_user_request(%struct.TYPE_8__* %12)
  store i8* %13, i8** %5, align 8
  %14 = bitcast %struct.TYPE_7__* %3 to i32*
  %15 = getelementptr inbounds i32, i32* %14, i64 0
  store i32 0, i32* %15, align 4
  %16 = bitcast %struct.TYPE_7__* %3 to i32*
  %17 = getelementptr inbounds i32, i32* %16, i64 1
  store i32 0, i32* %17, align 4
  %18 = load i8*, i8** %5, align 8
  %19 = call i32 @scic_cb_ssp_io_request_get_lun(i8* %18)
  %20 = and i32 %19, 255
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 0
  store i32 %20, i32* %21, align 4
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 5
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to i32*
  %26 = bitcast %struct.TYPE_7__* %3 to i32*
  %27 = call i32 @scic_word_copy_with_swap(i32* %25, i32* %26, i32 4)
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %29 = bitcast %struct.TYPE_6__* %28 to i32*
  %30 = getelementptr inbounds i32, i32* %29, i64 2
  store i32 0, i32* %30, align 4
  %31 = load i8*, i8** %5, align 8
  %32 = call i32 @scic_cb_ssp_io_request_get_cdb_length(i8* %31)
  store i32 %32, i32* %6, align 4
  %33 = load i8*, i8** %5, align 8
  %34 = call i64 @scic_cb_ssp_io_request_get_cdb_address(i8* %33)
  %35 = inttoptr i64 %34 to i32*
  store i32* %35, i32** %7, align 8
  %36 = load i32, i32* %6, align 4
  %37 = icmp sgt i32 %36, 16
  br i1 %37, label %38, label %43

38:                                               ; preds = %1
  %39 = load i32, i32* %6, align 4
  %40 = sub nsw i32 %39, 16
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  br label %43

43:                                               ; preds = %38, %1
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 4
  %46 = load i32*, i32** %7, align 8
  %47 = load i32, i32* %6, align 4
  %48 = add nsw i32 %47, 3
  %49 = sext i32 %48 to i64
  %50 = udiv i64 %49, 4
  %51 = trunc i64 %50 to i32
  %52 = call i32 @scic_word_copy_with_swap(i32* %45, i32* %46, i32 %51)
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 3
  store i64 0, i64* %54, align 8
  %55 = load i8*, i8** %5, align 8
  %56 = call i32 @scic_cb_ssp_io_request_get_command_priority(i8* %55)
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 2
  store i32 %56, i32* %58, align 8
  %59 = load i8*, i8** %5, align 8
  %60 = call i32 @scic_cb_ssp_io_request_get_task_attribute(i8* %59)
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 4
  ret void
}

declare dso_local i8* @scic_sds_request_get_user_request(%struct.TYPE_8__*) #1

declare dso_local i32 @scic_cb_ssp_io_request_get_lun(i8*) #1

declare dso_local i32 @scic_word_copy_with_swap(i32*, i32*, i32) #1

declare dso_local i32 @scic_cb_ssp_io_request_get_cdb_length(i8*) #1

declare dso_local i64 @scic_cb_ssp_io_request_get_cdb_address(i8*) #1

declare dso_local i32 @scic_cb_ssp_io_request_get_command_priority(i8*) #1

declare dso_local i32 @scic_cb_ssp_io_request_get_task_attribute(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
