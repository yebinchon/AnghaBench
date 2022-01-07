; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_virtio_scsi.c_pci_vtscsi_requestq_notify.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_virtio_scsi.c_pci_vtscsi_requestq_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vqueue_info = type { i32 }
%struct.pci_vtscsi_softc = type { %struct.pci_vtscsi_queue* }
%struct.pci_vtscsi_queue = type { i32, i32, i32 }
%struct.pci_vtscsi_request = type { i64, i32, i64, i32, i32, %struct.pci_vtscsi_queue* }
%struct.iovec = type { i32 }

@VTSCSI_MAXSEG = common dso_local global i32 0, align 4
@VRING_DESC_F_WRITE = common dso_local global i64 0, align 8
@vsr_link = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"virtio-scsi: request <idx=%d> enqueued\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.vqueue_info*)* @pci_vtscsi_requestq_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pci_vtscsi_requestq_notify(i8* %0, %struct.vqueue_info* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.vqueue_info*, align 8
  %5 = alloca %struct.pci_vtscsi_softc*, align 8
  %6 = alloca %struct.pci_vtscsi_queue*, align 8
  %7 = alloca %struct.pci_vtscsi_request*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store %struct.vqueue_info* %1, %struct.vqueue_info** %4, align 8
  %15 = load i32, i32* @VTSCSI_MAXSEG, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %8, align 8
  %18 = alloca %struct.iovec, i64 %16, align 16
  store i64 %16, i64* %9, align 8
  %19 = load i32, i32* @VTSCSI_MAXSEG, align 4
  %20 = zext i32 %19 to i64
  %21 = alloca i64, i64 %20, align 16
  store i64 %20, i64* %10, align 8
  %22 = load i8*, i8** %3, align 8
  %23 = bitcast i8* %22 to %struct.pci_vtscsi_softc*
  store %struct.pci_vtscsi_softc* %23, %struct.pci_vtscsi_softc** %5, align 8
  %24 = load %struct.pci_vtscsi_softc*, %struct.pci_vtscsi_softc** %5, align 8
  %25 = getelementptr inbounds %struct.pci_vtscsi_softc, %struct.pci_vtscsi_softc* %24, i32 0, i32 0
  %26 = load %struct.pci_vtscsi_queue*, %struct.pci_vtscsi_queue** %25, align 8
  %27 = load %struct.vqueue_info*, %struct.vqueue_info** %4, align 8
  %28 = getelementptr inbounds %struct.vqueue_info, %struct.vqueue_info* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = sub nsw i32 %29, 2
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.pci_vtscsi_queue, %struct.pci_vtscsi_queue* %26, i64 %31
  store %struct.pci_vtscsi_queue* %32, %struct.pci_vtscsi_queue** %6, align 8
  br label %33

33:                                               ; preds = %59, %2
  %34 = load %struct.vqueue_info*, %struct.vqueue_info** %4, align 8
  %35 = call i64 @vq_has_descs(%struct.vqueue_info* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %115

37:                                               ; preds = %33
  store i32 0, i32* %14, align 4
  %38 = load %struct.vqueue_info*, %struct.vqueue_info** %4, align 8
  %39 = load i32, i32* @VTSCSI_MAXSEG, align 4
  %40 = call i64 @vq_getchain(%struct.vqueue_info* %38, i64* %11, %struct.iovec* %18, i32 %39, i64* %21)
  store i64 %40, i64* %12, align 8
  store i64 0, i64* %13, align 8
  br label %41

41:                                               ; preds = %56, %37
  %42 = load i64, i64* %13, align 8
  %43 = load i64, i64* %12, align 8
  %44 = icmp ult i64 %42, %43
  br i1 %44, label %45, label %59

45:                                               ; preds = %41
  %46 = load i64, i64* %13, align 8
  %47 = getelementptr inbounds i64, i64* %21, i64 %46
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @VRING_DESC_F_WRITE, align 8
  %50 = and i64 %48, %49
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %45
  br label %59

53:                                               ; preds = %45
  %54 = load i32, i32* %14, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %14, align 4
  br label %56

56:                                               ; preds = %53
  %57 = load i64, i64* %13, align 8
  %58 = add i64 %57, 1
  store i64 %58, i64* %13, align 8
  br label %41

59:                                               ; preds = %52, %41
  %60 = call %struct.pci_vtscsi_request* @calloc(i32 1, i32 40)
  store %struct.pci_vtscsi_request* %60, %struct.pci_vtscsi_request** %7, align 8
  %61 = load i64, i64* %11, align 8
  %62 = load %struct.pci_vtscsi_request*, %struct.pci_vtscsi_request** %7, align 8
  %63 = getelementptr inbounds %struct.pci_vtscsi_request, %struct.pci_vtscsi_request* %62, i32 0, i32 0
  store i64 %61, i64* %63, align 8
  %64 = load %struct.pci_vtscsi_queue*, %struct.pci_vtscsi_queue** %6, align 8
  %65 = load %struct.pci_vtscsi_request*, %struct.pci_vtscsi_request** %7, align 8
  %66 = getelementptr inbounds %struct.pci_vtscsi_request, %struct.pci_vtscsi_request* %65, i32 0, i32 5
  store %struct.pci_vtscsi_queue* %64, %struct.pci_vtscsi_queue** %66, align 8
  %67 = load i32, i32* %14, align 4
  %68 = load %struct.pci_vtscsi_request*, %struct.pci_vtscsi_request** %7, align 8
  %69 = getelementptr inbounds %struct.pci_vtscsi_request, %struct.pci_vtscsi_request* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 8
  %70 = load i64, i64* %12, align 8
  %71 = load i32, i32* %14, align 4
  %72 = sext i32 %71 to i64
  %73 = sub i64 %70, %72
  %74 = load %struct.pci_vtscsi_request*, %struct.pci_vtscsi_request** %7, align 8
  %75 = getelementptr inbounds %struct.pci_vtscsi_request, %struct.pci_vtscsi_request* %74, i32 0, i32 2
  store i64 %73, i64* %75, align 8
  %76 = load %struct.pci_vtscsi_request*, %struct.pci_vtscsi_request** %7, align 8
  %77 = getelementptr inbounds %struct.pci_vtscsi_request, %struct.pci_vtscsi_request* %76, i32 0, i32 4
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.pci_vtscsi_request*, %struct.pci_vtscsi_request** %7, align 8
  %80 = getelementptr inbounds %struct.pci_vtscsi_request, %struct.pci_vtscsi_request* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = sext i32 %81 to i64
  %83 = mul i64 %82, 4
  %84 = trunc i64 %83 to i32
  %85 = call i32 @memcpy(i32 %78, %struct.iovec* %18, i32 %84)
  %86 = load %struct.pci_vtscsi_request*, %struct.pci_vtscsi_request** %7, align 8
  %87 = getelementptr inbounds %struct.pci_vtscsi_request, %struct.pci_vtscsi_request* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* %14, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.iovec, %struct.iovec* %18, i64 %90
  %92 = load %struct.pci_vtscsi_request*, %struct.pci_vtscsi_request** %7, align 8
  %93 = getelementptr inbounds %struct.pci_vtscsi_request, %struct.pci_vtscsi_request* %92, i32 0, i32 2
  %94 = load i64, i64* %93, align 8
  %95 = mul i64 %94, 4
  %96 = trunc i64 %95 to i32
  %97 = call i32 @memcpy(i32 %88, %struct.iovec* %91, i32 %96)
  %98 = load %struct.pci_vtscsi_queue*, %struct.pci_vtscsi_queue** %6, align 8
  %99 = getelementptr inbounds %struct.pci_vtscsi_queue, %struct.pci_vtscsi_queue* %98, i32 0, i32 0
  %100 = call i32 @pthread_mutex_lock(i32* %99)
  %101 = load %struct.pci_vtscsi_queue*, %struct.pci_vtscsi_queue** %6, align 8
  %102 = getelementptr inbounds %struct.pci_vtscsi_queue, %struct.pci_vtscsi_queue* %101, i32 0, i32 2
  %103 = load %struct.pci_vtscsi_request*, %struct.pci_vtscsi_request** %7, align 8
  %104 = load i32, i32* @vsr_link, align 4
  %105 = call i32 @STAILQ_INSERT_TAIL(i32* %102, %struct.pci_vtscsi_request* %103, i32 %104)
  %106 = load %struct.pci_vtscsi_queue*, %struct.pci_vtscsi_queue** %6, align 8
  %107 = getelementptr inbounds %struct.pci_vtscsi_queue, %struct.pci_vtscsi_queue* %106, i32 0, i32 1
  %108 = call i32 @pthread_cond_signal(i32* %107)
  %109 = load %struct.pci_vtscsi_queue*, %struct.pci_vtscsi_queue** %6, align 8
  %110 = getelementptr inbounds %struct.pci_vtscsi_queue, %struct.pci_vtscsi_queue* %109, i32 0, i32 0
  %111 = call i32 @pthread_mutex_unlock(i32* %110)
  %112 = load i64, i64* %11, align 8
  %113 = inttoptr i64 %112 to i8*
  %114 = call i32 @DPRINTF(i8* %113)
  br label %33

115:                                              ; preds = %33
  %116 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %116)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @vq_has_descs(%struct.vqueue_info*) #2

declare dso_local i64 @vq_getchain(%struct.vqueue_info*, i64*, %struct.iovec*, i32, i64*) #2

declare dso_local %struct.pci_vtscsi_request* @calloc(i32, i32) #2

declare dso_local i32 @memcpy(i32, %struct.iovec*, i32) #2

declare dso_local i32 @pthread_mutex_lock(i32*) #2

declare dso_local i32 @STAILQ_INSERT_TAIL(i32*, %struct.pci_vtscsi_request*, i32) #2

declare dso_local i32 @pthread_cond_signal(i32*) #2

declare dso_local i32 @pthread_mutex_unlock(i32*) #2

declare dso_local i32 @DPRINTF(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
