; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/smartpqi/extr_smartpqi_sis.c_pqisrc_get_sis_pqi_cap.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/smartpqi/extr_smartpqi_sis.c_pqisrc_get_sis_pqi_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i8*, i8*, i8*, i8*, i8* }

@PQI_STATUS_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"IN\0A\00", align 1
@SIS_CMD_GET_PQI_CAPABILITIES = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [18 x i8] c"max_sg_elem = %x\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"max_transfer_size = %x\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"max_outstanding_io = %x\0A\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"OUT\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pqisrc_get_sis_pqi_cap(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca [6 x i8*], align 16
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %5 = load i32, i32* @PQI_STATUS_SUCCESS, align 4
  store i32 %5, i32* %3, align 4
  %6 = bitcast [6 x i8*]* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %6, i8 0, i64 48, i1 false)
  %7 = call i32 @DBG_FUNC(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %8 = load i8*, i8** @SIS_CMD_GET_PQI_CAPABILITIES, align 8
  %9 = getelementptr inbounds [6 x i8*], [6 x i8*]* %4, i64 0, i64 0
  store i8* %8, i8** %9, align 16
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %11 = getelementptr inbounds [6 x i8*], [6 x i8*]* %4, i64 0, i64 0
  %12 = call i32 @pqisrc_send_sis_cmd(%struct.TYPE_6__* %10, i8** %11)
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* %3, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %56, label %15

15:                                               ; preds = %1
  %16 = getelementptr inbounds [6 x i8*], [6 x i8*]* %4, i64 0, i64 1
  %17 = load i8*, i8** %16, align 8
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 2
  store i8* %17, i8** %20, align 8
  %21 = getelementptr inbounds [6 x i8*], [6 x i8*]* %4, i64 0, i64 2
  %22 = load i8*, i8** %21, align 16
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 1
  store i8* %22, i8** %25, align 8
  %26 = getelementptr inbounds [6 x i8*], [6 x i8*]* %4, i64 0, i64 3
  %27 = load i8*, i8** %26, align 8
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  store i8* %27, i8** %30, align 8
  %31 = getelementptr inbounds [6 x i8*], [6 x i8*]* %4, i64 0, i64 4
  %32 = load i8*, i8** %31, align 16
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 4
  store i8* %32, i8** %35, align 8
  %36 = getelementptr inbounds [6 x i8*], [6 x i8*]* %4, i64 0, i64 5
  %37 = load i8*, i8** %36, align 8
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 3
  store i8* %37, i8** %40, align 8
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 2
  %44 = load i8*, i8** %43, align 8
  %45 = call i32 @DBG_INIT(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* %44)
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 1
  %49 = load i8*, i8** %48, align 8
  %50 = call i32 @DBG_INIT(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i8* %49)
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  %55 = call i32 @DBG_INIT(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i8* %54)
  br label %56

56:                                               ; preds = %15, %1
  %57 = call i32 @DBG_FUNC(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @DBG_FUNC(i8*) #2

declare dso_local i32 @pqisrc_send_sis_cmd(%struct.TYPE_6__*, i8**) #2

declare dso_local i32 @DBG_INIT(i8*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
