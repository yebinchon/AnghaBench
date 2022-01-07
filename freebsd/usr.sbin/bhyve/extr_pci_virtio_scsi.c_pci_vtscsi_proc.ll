; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_virtio_scsi.c_pci_vtscsi_proc.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_virtio_scsi.c_pci_vtscsi_proc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_vtscsi_worker = type { i64, %struct.pci_vtscsi_queue* }
%struct.pci_vtscsi_queue = type { i32, i32, i32, i32, i32 }
%struct.pci_vtscsi_request = type { i32, i32, i32, i32, i32 }

@vsr_link = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"virtio-scsi: request <idx=%d> completed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @pci_vtscsi_proc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @pci_vtscsi_proc(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.pci_vtscsi_worker*, align 8
  %4 = alloca %struct.pci_vtscsi_queue*, align 8
  %5 = alloca %struct.pci_vtscsi_request*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = bitcast i8* %7 to %struct.pci_vtscsi_worker*
  store %struct.pci_vtscsi_worker* %8, %struct.pci_vtscsi_worker** %3, align 8
  %9 = load %struct.pci_vtscsi_worker*, %struct.pci_vtscsi_worker** %3, align 8
  %10 = getelementptr inbounds %struct.pci_vtscsi_worker, %struct.pci_vtscsi_worker* %9, i32 0, i32 1
  %11 = load %struct.pci_vtscsi_queue*, %struct.pci_vtscsi_queue** %10, align 8
  store %struct.pci_vtscsi_queue* %11, %struct.pci_vtscsi_queue** %4, align 8
  br label %12

12:                                               ; preds = %41, %1
  %13 = load %struct.pci_vtscsi_queue*, %struct.pci_vtscsi_queue** %4, align 8
  %14 = getelementptr inbounds %struct.pci_vtscsi_queue, %struct.pci_vtscsi_queue* %13, i32 0, i32 0
  %15 = call i32 @pthread_mutex_lock(i32* %14)
  br label %16

16:                                               ; preds = %29, %12
  %17 = load %struct.pci_vtscsi_queue*, %struct.pci_vtscsi_queue** %4, align 8
  %18 = getelementptr inbounds %struct.pci_vtscsi_queue, %struct.pci_vtscsi_queue* %17, i32 0, i32 3
  %19 = call i64 @STAILQ_EMPTY(i32* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %16
  %22 = load %struct.pci_vtscsi_worker*, %struct.pci_vtscsi_worker** %3, align 8
  %23 = getelementptr inbounds %struct.pci_vtscsi_worker, %struct.pci_vtscsi_worker* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  %26 = xor i1 %25, true
  br label %27

27:                                               ; preds = %21, %16
  %28 = phi i1 [ false, %16 ], [ %26, %21 ]
  br i1 %28, label %29, label %35

29:                                               ; preds = %27
  %30 = load %struct.pci_vtscsi_queue*, %struct.pci_vtscsi_queue** %4, align 8
  %31 = getelementptr inbounds %struct.pci_vtscsi_queue, %struct.pci_vtscsi_queue* %30, i32 0, i32 4
  %32 = load %struct.pci_vtscsi_queue*, %struct.pci_vtscsi_queue** %4, align 8
  %33 = getelementptr inbounds %struct.pci_vtscsi_queue, %struct.pci_vtscsi_queue* %32, i32 0, i32 0
  %34 = call i32 @pthread_cond_wait(i32* %31, i32* %33)
  br label %16

35:                                               ; preds = %27
  %36 = load %struct.pci_vtscsi_worker*, %struct.pci_vtscsi_worker** %3, align 8
  %37 = getelementptr inbounds %struct.pci_vtscsi_worker, %struct.pci_vtscsi_worker* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  br label %92

41:                                               ; preds = %35
  %42 = load %struct.pci_vtscsi_queue*, %struct.pci_vtscsi_queue** %4, align 8
  %43 = getelementptr inbounds %struct.pci_vtscsi_queue, %struct.pci_vtscsi_queue* %42, i32 0, i32 3
  %44 = call %struct.pci_vtscsi_request* @STAILQ_FIRST(i32* %43)
  store %struct.pci_vtscsi_request* %44, %struct.pci_vtscsi_request** %5, align 8
  %45 = load %struct.pci_vtscsi_queue*, %struct.pci_vtscsi_queue** %4, align 8
  %46 = getelementptr inbounds %struct.pci_vtscsi_queue, %struct.pci_vtscsi_queue* %45, i32 0, i32 3
  %47 = load i32, i32* @vsr_link, align 4
  %48 = call i32 @STAILQ_REMOVE_HEAD(i32* %46, i32 %47)
  %49 = load %struct.pci_vtscsi_queue*, %struct.pci_vtscsi_queue** %4, align 8
  %50 = getelementptr inbounds %struct.pci_vtscsi_queue, %struct.pci_vtscsi_queue* %49, i32 0, i32 0
  %51 = call i32 @pthread_mutex_unlock(i32* %50)
  %52 = load %struct.pci_vtscsi_queue*, %struct.pci_vtscsi_queue** %4, align 8
  %53 = load %struct.pci_vtscsi_request*, %struct.pci_vtscsi_request** %5, align 8
  %54 = getelementptr inbounds %struct.pci_vtscsi_request, %struct.pci_vtscsi_request* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.pci_vtscsi_request*, %struct.pci_vtscsi_request** %5, align 8
  %57 = getelementptr inbounds %struct.pci_vtscsi_request, %struct.pci_vtscsi_request* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.pci_vtscsi_request*, %struct.pci_vtscsi_request** %5, align 8
  %60 = getelementptr inbounds %struct.pci_vtscsi_request, %struct.pci_vtscsi_request* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.pci_vtscsi_request*, %struct.pci_vtscsi_request** %5, align 8
  %63 = getelementptr inbounds %struct.pci_vtscsi_request, %struct.pci_vtscsi_request* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @pci_vtscsi_request_handle(%struct.pci_vtscsi_queue* %52, i32 %55, i32 %58, i32 %61, i32 %64)
  store i32 %65, i32* %6, align 4
  %66 = load %struct.pci_vtscsi_queue*, %struct.pci_vtscsi_queue** %4, align 8
  %67 = getelementptr inbounds %struct.pci_vtscsi_queue, %struct.pci_vtscsi_queue* %66, i32 0, i32 1
  %68 = call i32 @pthread_mutex_lock(i32* %67)
  %69 = load %struct.pci_vtscsi_queue*, %struct.pci_vtscsi_queue** %4, align 8
  %70 = getelementptr inbounds %struct.pci_vtscsi_queue, %struct.pci_vtscsi_queue* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.pci_vtscsi_request*, %struct.pci_vtscsi_request** %5, align 8
  %73 = getelementptr inbounds %struct.pci_vtscsi_request, %struct.pci_vtscsi_request* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %6, align 4
  %76 = call i32 @vq_relchain(i32 %71, i32 %74, i32 %75)
  %77 = load %struct.pci_vtscsi_queue*, %struct.pci_vtscsi_queue** %4, align 8
  %78 = getelementptr inbounds %struct.pci_vtscsi_queue, %struct.pci_vtscsi_queue* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @vq_endchains(i32 %79, i32 0)
  %81 = load %struct.pci_vtscsi_queue*, %struct.pci_vtscsi_queue** %4, align 8
  %82 = getelementptr inbounds %struct.pci_vtscsi_queue, %struct.pci_vtscsi_queue* %81, i32 0, i32 1
  %83 = call i32 @pthread_mutex_unlock(i32* %82)
  %84 = load %struct.pci_vtscsi_request*, %struct.pci_vtscsi_request** %5, align 8
  %85 = getelementptr inbounds %struct.pci_vtscsi_request, %struct.pci_vtscsi_request* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = sext i32 %86 to i64
  %88 = inttoptr i64 %87 to i8*
  %89 = call i32 @DPRINTF(i8* %88)
  %90 = load %struct.pci_vtscsi_request*, %struct.pci_vtscsi_request** %5, align 8
  %91 = call i32 @free(%struct.pci_vtscsi_request* %90)
  br label %12

92:                                               ; preds = %40
  %93 = load %struct.pci_vtscsi_queue*, %struct.pci_vtscsi_queue** %4, align 8
  %94 = getelementptr inbounds %struct.pci_vtscsi_queue, %struct.pci_vtscsi_queue* %93, i32 0, i32 0
  %95 = call i32 @pthread_mutex_unlock(i32* %94)
  ret i8* null
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i64 @STAILQ_EMPTY(i32*) #1

declare dso_local i32 @pthread_cond_wait(i32*, i32*) #1

declare dso_local %struct.pci_vtscsi_request* @STAILQ_FIRST(i32*) #1

declare dso_local i32 @STAILQ_REMOVE_HEAD(i32*, i32) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @pci_vtscsi_request_handle(%struct.pci_vtscsi_queue*, i32, i32, i32, i32) #1

declare dso_local i32 @vq_relchain(i32, i32, i32) #1

declare dso_local i32 @vq_endchains(i32, i32) #1

declare dso_local i32 @DPRINTF(i8*) #1

declare dso_local i32 @free(%struct.pci_vtscsi_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
