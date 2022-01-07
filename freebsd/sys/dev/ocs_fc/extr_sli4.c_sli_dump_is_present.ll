; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_sli4.c_sli_dump_is_present.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_sli4.c_sli_dump_is_present.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@SLI4_IF_TYPE_LANCER_FC_ETH = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [39 x i8] c"Function only supported for I/F type 2\00", align 1
@SLI4_INIT_PORT_DELAY_US = common dso_local global i32 0, align 4
@SLI4_REG_SLIPORT_STATUS = common dso_local global i32 0, align 4
@UINT32_MAX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"error reading SLIPORT_STATUS\0A\00", align 1
@SLI4_PORT_STATUS_DIP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sli_dump_is_present(%struct.TYPE_6__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  %6 = load i64, i64* @SLI4_IF_TYPE_LANCER_FC_ETH, align 8
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %8 = call i64 @sli_get_if_type(%struct.TYPE_6__* %7)
  %9 = icmp ne i64 %6, %8
  br i1 %9, label %10, label %15

10:                                               ; preds = %1
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @ocs_log_test(i32 %13, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %41

15:                                               ; preds = %1
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %17 = load i32, i32* @SLI4_INIT_PORT_DELAY_US, align 4
  %18 = call i32 @sli_wait_for_fw_ready(%struct.TYPE_6__* %16, i32 %17)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %15
  store i32 0, i32* %2, align 4
  br label %41

22:                                               ; preds = %15
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %24 = load i32, i32* @SLI4_REG_SLIPORT_STATUS, align 4
  %25 = call i32 @sli_reg_read(%struct.TYPE_6__* %23, i32 %24)
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* @UINT32_MAX, align 4
  %27 = load i32, i32* %4, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %34

29:                                               ; preds = %22
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @ocs_log_err(i32 %32, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %41

34:                                               ; preds = %22
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* @SLI4_PORT_STATUS_DIP, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  %39 = zext i1 %38 to i64
  %40 = select i1 %38, i32 1, i32 0
  store i32 %40, i32* %2, align 4
  br label %41

41:                                               ; preds = %34, %29, %21, %10
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local i64 @sli_get_if_type(%struct.TYPE_6__*) #1

declare dso_local i32 @ocs_log_test(i32, i8*) #1

declare dso_local i32 @sli_wait_for_fw_ready(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @sli_reg_read(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @ocs_log_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
