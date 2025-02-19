; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_sli4.c_sli_cmd_fcoe_wq_destroy.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_sli4.c_sli_cmd_fcoe_wq_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64 }
%struct.TYPE_8__ = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32 }

@SLI4_PORT_TYPE_FC = common dso_local global i64 0, align 8
@SLI4_OPC_FCOE_WQ_DESTROY = common dso_local global i32 0, align 4
@SLI4_SUBSYSTEM_FCFCOE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sli_cmd_fcoe_wq_destroy(%struct.TYPE_7__* %0, i8* %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %9, align 8
  store i32 0, i32* %10, align 4
  %12 = load i64, i64* @SLI4_PORT_TYPE_FC, align 8
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp eq i64 %12, %15
  br i1 %16, label %17, label %24

17:                                               ; preds = %4
  %18 = call i32 @max(i32 16, i32 4)
  store i32 %18, i32* %11, align 4
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = load i64, i64* %7, align 8
  %22 = load i32, i32* %11, align 4
  %23 = call i32 @sli_cmd_sli_config(%struct.TYPE_7__* %19, i8* %20, i64 %21, i32 %22, i32* null)
  store i32 %23, i32* %10, align 4
  br label %24

24:                                               ; preds = %17, %4
  %25 = load i8*, i8** %6, align 8
  %26 = bitcast i8* %25 to i32*
  %27 = load i32, i32* %10, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = bitcast i32* %29 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %30, %struct.TYPE_8__** %9, align 8
  %31 = load i32, i32* @SLI4_OPC_FCOE_WQ_DESTROY, align 4
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 2
  store i32 %31, i32* %34, align 4
  %35 = load i32, i32* @SLI4_SUBSYSTEM_FCFCOE, align 4
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 1
  store i32 %35, i32* %38, align 4
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  store i32 12, i32* %41, align 4
  %42 = load i32, i32* %8, align 4
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 4
  %45 = load i32, i32* %10, align 4
  %46 = sext i32 %45 to i64
  %47 = add i64 %46, 16
  %48 = trunc i64 %47 to i32
  ret i32 %48
}

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @sli_cmd_sli_config(%struct.TYPE_7__*, i8*, i64, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
