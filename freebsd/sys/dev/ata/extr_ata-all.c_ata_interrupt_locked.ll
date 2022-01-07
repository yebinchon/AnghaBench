; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ata/extr_ata-all.c_ata_interrupt_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ata/extr_ata-all.c_ata_interrupt_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_channel = type { i64, i32, %struct.ata_request*, %struct.TYPE_2__ }
%struct.ata_request = type { i32 }
%struct.TYPE_2__ = type { i64 (%struct.ata_request*)*, i32 (i32)* }

@.str = private unnamed_addr constant [10 x i8] c"interrupt\00", align 1
@ATA_IDLE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [35 x i8] c"interrupt on idle channel ignored\0A\00", align 1
@ATA_OP_FINISHED = common dso_local global i64 0, align 8
@ATA_ACTIVE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @ata_interrupt_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ata_interrupt_locked(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.ata_channel*, align 8
  %4 = alloca %struct.ata_request*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.ata_channel*
  store %struct.ata_channel* %6, %struct.ata_channel** %3, align 8
  %7 = load %struct.ata_channel*, %struct.ata_channel** %3, align 8
  %8 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %7, i32 0, i32 3
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 1
  %10 = load i32 (i32)*, i32 (i32)** %9, align 8
  %11 = icmp ne i32 (i32)* %10, null
  br i1 %11, label %12, label %23

12:                                               ; preds = %1
  %13 = load %struct.ata_channel*, %struct.ata_channel** %3, align 8
  %14 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %13, i32 0, i32 3
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = load i32 (i32)*, i32 (i32)** %15, align 8
  %17 = load %struct.ata_channel*, %struct.ata_channel** %3, align 8
  %18 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call i32 %16(i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %12
  br label %69

23:                                               ; preds = %12, %1
  %24 = load %struct.ata_channel*, %struct.ata_channel** %3, align 8
  %25 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %24, i32 0, i32 2
  %26 = load %struct.ata_request*, %struct.ata_request** %25, align 8
  store %struct.ata_request* %26, %struct.ata_request** %4, align 8
  %27 = icmp ne %struct.ata_request* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %23
  br label %69

29:                                               ; preds = %23
  %30 = load %struct.ata_request*, %struct.ata_request** %4, align 8
  %31 = call i32 @ATA_DEBUG_RQ(%struct.ata_request* %30, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %32 = load %struct.ata_channel*, %struct.ata_channel** %3, align 8
  %33 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @ATA_IDLE, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %42

37:                                               ; preds = %29
  %38 = load %struct.ata_request*, %struct.ata_request** %4, align 8
  %39 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @device_printf(i32 %40, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %69

42:                                               ; preds = %29
  %43 = load %struct.ata_channel*, %struct.ata_channel** %3, align 8
  %44 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %43, i32 0, i32 3
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i64 (%struct.ata_request*)*, i64 (%struct.ata_request*)** %45, align 8
  %47 = load %struct.ata_request*, %struct.ata_request** %4, align 8
  %48 = call i64 %46(%struct.ata_request* %47)
  %49 = load i64, i64* @ATA_OP_FINISHED, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %69

51:                                               ; preds = %42
  %52 = load %struct.ata_channel*, %struct.ata_channel** %3, align 8
  %53 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %52, i32 0, i32 2
  store %struct.ata_request* null, %struct.ata_request** %53, align 8
  %54 = load %struct.ata_channel*, %struct.ata_channel** %3, align 8
  %55 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @ATA_ACTIVE, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %63

59:                                               ; preds = %51
  %60 = load i64, i64* @ATA_IDLE, align 8
  %61 = load %struct.ata_channel*, %struct.ata_channel** %3, align 8
  %62 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %61, i32 0, i32 0
  store i64 %60, i64* %62, align 8
  br label %63

63:                                               ; preds = %59, %51
  %64 = load %struct.ata_channel*, %struct.ata_channel** %3, align 8
  %65 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.ata_request*, %struct.ata_request** %4, align 8
  %68 = call i32 @ata_cam_end_transaction(i32 %66, %struct.ata_request* %67)
  br label %69

69:                                               ; preds = %22, %28, %37, %63, %42
  ret void
}

declare dso_local i32 @ATA_DEBUG_RQ(%struct.ata_request*, i8*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @ata_cam_end_transaction(i32, %struct.ata_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
