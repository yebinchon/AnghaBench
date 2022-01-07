; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ips/extr_ips_commands.c_ips_send_error_table_cmd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ips/extr_ips_commands.c_ips_send_error_table_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i64, i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, {}*, i32 }
%struct.TYPE_10__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [54 x i8] c"ips test: got a command, building errortable command\0A\00", align 1
@ips_wakeup_callback = common dso_local global i32 0, align 4
@IPS_ERROR_TABLE_CMD = common dso_local global i32 0, align 4
@IPS_CSL = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*)* @ips_send_error_table_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ips_send_error_table_cmd(%struct.TYPE_11__* %0) #0 {
  %2 = alloca %struct.TYPE_11__*, align 8
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %2, align 8
  %5 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 4
  %7 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  store %struct.TYPE_9__* %7, %struct.TYPE_9__** %3, align 8
  %8 = call i32 @PRINTF(i32 10, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0))
  %9 = load i32, i32* @ips_wakeup_callback, align 4
  %10 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 3
  store i32 %9, i32* %11, align 8
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %15, %struct.TYPE_10__** %4, align 8
  %16 = load i32, i32* @IPS_ERROR_TABLE_CMD, align 4
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 2
  store i32 %16, i32* %18, align 4
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* @IPS_CSL, align 4
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %34 = call i32 @bus_dmamap_sync(i32 %29, i32 %32, i32 %33)
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 1
  %37 = bitcast {}** %36 to i32 (%struct.TYPE_11__*)**
  %38 = load i32 (%struct.TYPE_11__*)*, i32 (%struct.TYPE_11__*)** %37, align 8
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %40 = call i32 %38(%struct.TYPE_11__* %39)
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %42 = call i64 @COMMAND_ERROR(%struct.TYPE_11__* %41)
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %1
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 0
  %47 = call i32 @sema_wait(i32* %46)
  br label %48

48:                                               ; preds = %44, %1
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %51 = call i32 @ips_insert_free_cmd(%struct.TYPE_9__* %49, %struct.TYPE_11__* %50)
  ret i32 0
}

declare dso_local i32 @PRINTF(i32, i8*) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i64 @COMMAND_ERROR(%struct.TYPE_11__*) #1

declare dso_local i32 @sema_wait(i32*) #1

declare dso_local i32 @ips_insert_free_cmd(%struct.TYPE_9__*, %struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
