; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_sli4.c_sli_bmbx_command.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_sli4.c_sli_bmbx_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64, i64 }
%struct.TYPE_10__ = type { i64 }

@SLI4_BMBX_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [87 x i8] c"Chip is in an error state - Mailbox command rejected status=%#x error1=%#x error2=%#x\0A\00", align 1
@SLI4_REG_SLIPORT_STATUS = common dso_local global i32 0, align 4
@SLI4_REG_SLIPORT_ERROR1 = common dso_local global i32 0, align 4
@SLI4_REG_SLIPORT_ERROR2 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"bootstrap mailbox write fail phys=%p reg=%#x\0A\00", align 1
@SLI4_REG_BMBX = common dso_local global i32 0, align 4
@OCS_DMASYNC_POSTREAD = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"invalid or wrong type\0A\00", align 1
@OCS_DEBUG_ENABLE_CQ_DUMP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sli_bmbx_command(%struct.TYPE_9__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i8*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  %5 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to i32*
  %10 = load i32, i32* @SLI4_BMBX_SIZE, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i32, i32* %9, i64 %11
  %13 = bitcast i32* %12 to i8*
  store i8* %13, i8** %4, align 8
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %15 = call i64 @sli_fw_error_status(%struct.TYPE_9__* %14)
  %16 = icmp sgt i64 %15, 0
  br i1 %16, label %17, label %33

17:                                               ; preds = %1
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %22 = load i32, i32* @SLI4_REG_SLIPORT_STATUS, align 4
  %23 = call i32 @sli_reg_read(%struct.TYPE_9__* %21, i32 %22)
  %24 = sext i32 %23 to i64
  %25 = inttoptr i64 %24 to i8*
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %27 = load i32, i32* @SLI4_REG_SLIPORT_ERROR1, align 4
  %28 = call i32 @sli_reg_read(%struct.TYPE_9__* %26, i32 %27)
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %30 = load i32, i32* @SLI4_REG_SLIPORT_ERROR2, align 4
  %31 = call i32 @sli_reg_read(%struct.TYPE_9__* %29, i32 %30)
  %32 = call i32 (i32, i8*, i8*, i32, ...) @ocs_log_crit(i32 %20, i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str, i64 0, i64 0), i8* %25, i32 %28, i32 %31)
  store i32 -1, i32* %2, align 4
  br label %68

33:                                               ; preds = %1
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %35 = call i64 @sli_bmbx_write(%struct.TYPE_9__* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %50

37:                                               ; preds = %33
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = inttoptr i64 %44 to i8*
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %47 = load i32, i32* @SLI4_REG_BMBX, align 4
  %48 = call i32 @sli_reg_read(%struct.TYPE_9__* %46, i32 %47)
  %49 = call i32 (i32, i8*, i8*, i32, ...) @ocs_log_crit(i32 %40, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i8* %45, i32 %48)
  store i32 -1, i32* %2, align 4
  br label %68

50:                                               ; preds = %33
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 1
  %53 = load i32, i32* @OCS_DMASYNC_POSTREAD, align 4
  %54 = call i32 @ocs_dma_sync(%struct.TYPE_11__* %52, i32 %53)
  %55 = load i8*, i8** %4, align 8
  %56 = bitcast i8* %55 to %struct.TYPE_10__*
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %50
  %61 = load i8*, i8** %4, align 8
  %62 = call i32 @sli_cqe_mq(i8* %61)
  store i32 %62, i32* %2, align 4
  br label %68

63:                                               ; preds = %50
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @ocs_log_err(i32 %66, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %68

68:                                               ; preds = %63, %60, %37, %17
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare dso_local i64 @sli_fw_error_status(%struct.TYPE_9__*) #1

declare dso_local i32 @ocs_log_crit(i32, i8*, i8*, i32, ...) #1

declare dso_local i32 @sli_reg_read(%struct.TYPE_9__*, i32) #1

declare dso_local i64 @sli_bmbx_write(%struct.TYPE_9__*) #1

declare dso_local i32 @ocs_dma_sync(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @sli_cqe_mq(i8*) #1

declare dso_local i32 @ocs_log_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
