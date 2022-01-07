; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/extr_isci_controller.c_isci_controller_release_queued_ccbs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/extr_isci_controller.c_isci_controller_release_queued_ccbs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ISCI_CONTROLLER = type { %struct.ISCI_REMOTE_DEVICE**, i8*, i32 }
%struct.ISCI_REMOTE_DEVICE = type { i64, %union.ccb*, i32 }
%union.ccb = type { i32 }
%struct.ccb_hdr = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"controller lock not owned\00", align 1
@FALSE = common dso_local global i8* null, align 8
@SCI_MAX_REMOTE_DEVICES = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"ISCI\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"release %p %x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @isci_controller_release_queued_ccbs(%struct.ISCI_CONTROLLER* %0) #0 {
  %2 = alloca %struct.ISCI_CONTROLLER*, align 8
  %3 = alloca %struct.ISCI_REMOTE_DEVICE*, align 8
  %4 = alloca %struct.ccb_hdr*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.ISCI_CONTROLLER* %0, %struct.ISCI_CONTROLLER** %2, align 8
  %7 = load %struct.ISCI_CONTROLLER*, %struct.ISCI_CONTROLLER** %2, align 8
  %8 = getelementptr inbounds %struct.ISCI_CONTROLLER, %struct.ISCI_CONTROLLER* %7, i32 0, i32 2
  %9 = call i32 @mtx_owned(i32* %8)
  %10 = call i32 @KASSERT(i32 %9, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %11 = load i8*, i8** @FALSE, align 8
  %12 = load %struct.ISCI_CONTROLLER*, %struct.ISCI_CONTROLLER** %2, align 8
  %13 = getelementptr inbounds %struct.ISCI_CONTROLLER, %struct.ISCI_CONTROLLER* %12, i32 0, i32 1
  store i8* %11, i8** %13, align 8
  store i32 0, i32* %6, align 4
  br label %14

14:                                               ; preds = %68, %1
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @SCI_MAX_REMOTE_DEVICES, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %71

18:                                               ; preds = %14
  %19 = load %struct.ISCI_CONTROLLER*, %struct.ISCI_CONTROLLER** %2, align 8
  %20 = getelementptr inbounds %struct.ISCI_CONTROLLER, %struct.ISCI_CONTROLLER* %19, i32 0, i32 0
  %21 = load %struct.ISCI_REMOTE_DEVICE**, %struct.ISCI_REMOTE_DEVICE*** %20, align 8
  %22 = load i32, i32* %6, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.ISCI_REMOTE_DEVICE*, %struct.ISCI_REMOTE_DEVICE** %21, i64 %23
  %25 = load %struct.ISCI_REMOTE_DEVICE*, %struct.ISCI_REMOTE_DEVICE** %24, align 8
  store %struct.ISCI_REMOTE_DEVICE* %25, %struct.ISCI_REMOTE_DEVICE** %3, align 8
  %26 = load %struct.ISCI_REMOTE_DEVICE*, %struct.ISCI_REMOTE_DEVICE** %3, align 8
  %27 = icmp ne %struct.ISCI_REMOTE_DEVICE* %26, null
  br i1 %27, label %28, label %67

28:                                               ; preds = %18
  %29 = load %struct.ISCI_REMOTE_DEVICE*, %struct.ISCI_REMOTE_DEVICE** %3, align 8
  %30 = getelementptr inbounds %struct.ISCI_REMOTE_DEVICE, %struct.ISCI_REMOTE_DEVICE* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @TRUE, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %67

34:                                               ; preds = %28
  %35 = load %struct.ISCI_REMOTE_DEVICE*, %struct.ISCI_REMOTE_DEVICE** %3, align 8
  %36 = getelementptr inbounds %struct.ISCI_REMOTE_DEVICE, %struct.ISCI_REMOTE_DEVICE* %35, i32 0, i32 1
  %37 = load %union.ccb*, %union.ccb** %36, align 8
  %38 = icmp eq %union.ccb* %37, null
  br i1 %38, label %39, label %67

39:                                               ; preds = %34
  %40 = load i8*, i8** @FALSE, align 8
  %41 = ptrtoint i8* %40 to i64
  %42 = load %struct.ISCI_REMOTE_DEVICE*, %struct.ISCI_REMOTE_DEVICE** %3, align 8
  %43 = getelementptr inbounds %struct.ISCI_REMOTE_DEVICE, %struct.ISCI_REMOTE_DEVICE* %42, i32 0, i32 0
  store i64 %41, i64* %43, align 8
  %44 = load %struct.ISCI_REMOTE_DEVICE*, %struct.ISCI_REMOTE_DEVICE** %3, align 8
  %45 = getelementptr inbounds %struct.ISCI_REMOTE_DEVICE, %struct.ISCI_REMOTE_DEVICE* %44, i32 0, i32 2
  %46 = call %struct.ccb_hdr* @TAILQ_FIRST(i32* %45)
  store %struct.ccb_hdr* %46, %struct.ccb_hdr** %4, align 8
  %47 = load %struct.ccb_hdr*, %struct.ccb_hdr** %4, align 8
  %48 = icmp eq %struct.ccb_hdr* %47, null
  br i1 %48, label %49, label %50

49:                                               ; preds = %39
  br label %68

50:                                               ; preds = %39
  %51 = load %struct.ccb_hdr*, %struct.ccb_hdr** %4, align 8
  %52 = bitcast %struct.ccb_hdr* %51 to %union.ccb*
  %53 = bitcast %union.ccb* %52 to i32*
  %54 = call i32* @scsiio_cdb_ptr(i32* %53)
  store i32* %54, i32** %5, align 8
  %55 = load %struct.ccb_hdr*, %struct.ccb_hdr** %4, align 8
  %56 = load i32*, i32** %5, align 8
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @isci_log_message(i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), %struct.ccb_hdr* %55, i32 %57)
  %59 = load %struct.ccb_hdr*, %struct.ccb_hdr** %4, align 8
  %60 = bitcast %struct.ccb_hdr* %59 to %union.ccb*
  %61 = load %struct.ISCI_REMOTE_DEVICE*, %struct.ISCI_REMOTE_DEVICE** %3, align 8
  %62 = getelementptr inbounds %struct.ISCI_REMOTE_DEVICE, %struct.ISCI_REMOTE_DEVICE* %61, i32 0, i32 1
  store %union.ccb* %60, %union.ccb** %62, align 8
  %63 = load %struct.ccb_hdr*, %struct.ccb_hdr** %4, align 8
  %64 = bitcast %struct.ccb_hdr* %63 to %union.ccb*
  %65 = load %struct.ISCI_CONTROLLER*, %struct.ISCI_CONTROLLER** %2, align 8
  %66 = call i32 @isci_io_request_execute_scsi_io(%union.ccb* %64, %struct.ISCI_CONTROLLER* %65)
  br label %67

67:                                               ; preds = %50, %34, %28, %18
  br label %68

68:                                               ; preds = %67, %49
  %69 = load i32, i32* %6, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %6, align 4
  br label %14

71:                                               ; preds = %14
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @mtx_owned(i32*) #1

declare dso_local %struct.ccb_hdr* @TAILQ_FIRST(i32*) #1

declare dso_local i32* @scsiio_cdb_ptr(i32*) #1

declare dso_local i32 @isci_log_message(i32, i8*, i8*, %struct.ccb_hdr*, i32) #1

declare dso_local i32 @isci_io_request_execute_scsi_io(%union.ccb*, %struct.ISCI_CONTROLLER*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
