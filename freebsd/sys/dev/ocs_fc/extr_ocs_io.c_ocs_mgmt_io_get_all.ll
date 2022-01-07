; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_io.c_ocs_mgmt_io_get_all.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_io.c_ocs_mgmt_io_get_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@MGMT_MODE_RD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"display_name\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"init_task_tag\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"0x%x\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"tgt_task_tag\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"hw_tag\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"tag\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"transferred\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"%zu\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"auto_resp\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"exp_xfer_len\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"xfer_req\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ocs_mgmt_io_get_all(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_2__*, align 8
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = bitcast i8* %6 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %7, %struct.TYPE_2__** %5, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = load i32, i32* @MGMT_MODE_RD, align 4
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 8
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @ocs_mgmt_emit_string(i32* %8, i32 %9, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = load i32*, i32** %3, align 8
  %15 = load i32, i32* @MGMT_MODE_RD, align 4
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 7
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @ocs_mgmt_emit_int(i32* %14, i32 %15, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %18)
  %20 = load i32*, i32** %3, align 8
  %21 = load i32, i32* @MGMT_MODE_RD, align 4
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 6
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @ocs_mgmt_emit_int(i32* %20, i32 %21, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %24)
  %26 = load i32*, i32** %3, align 8
  %27 = load i32, i32* @MGMT_MODE_RD, align 4
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 5
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @ocs_mgmt_emit_int(i32* %26, i32 %27, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %30)
  %32 = load i32*, i32** %3, align 8
  %33 = load i32, i32* @MGMT_MODE_RD, align 4
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @ocs_mgmt_emit_int(i32* %32, i32 %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %36)
  %38 = load i32*, i32** %3, align 8
  %39 = load i32, i32* @MGMT_MODE_RD, align 4
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @ocs_mgmt_emit_int(i32* %38, i32 %39, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i32 %42)
  %44 = load i32*, i32** %3, align 8
  %45 = load i32, i32* @MGMT_MODE_RD, align 4
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @ocs_mgmt_emit_boolean(i32* %44, i32 %45, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i32 %48)
  %50 = load i32*, i32** %3, align 8
  %51 = load i32, i32* @MGMT_MODE_RD, align 4
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @ocs_mgmt_emit_int(i32* %50, i32 %51, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), i32 %54)
  %56 = load i32*, i32** %3, align 8
  %57 = load i32, i32* @MGMT_MODE_RD, align 4
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @ocs_mgmt_emit_int(i32* %56, i32 %57, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), i32 %60)
  ret void
}

declare dso_local i32 @ocs_mgmt_emit_string(i32*, i32, i8*, i32) #1

declare dso_local i32 @ocs_mgmt_emit_int(i32*, i32, i8*, i8*, i32) #1

declare dso_local i32 @ocs_mgmt_emit_boolean(i32*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
