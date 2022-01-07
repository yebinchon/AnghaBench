; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_virtio_scsi.c_pci_vtscsi_init_queue.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_virtio_scsi.c_pci_vtscsi_init_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_vtscsi_softc = type { i32* }
%struct.pci_vtscsi_queue = type { i32, i32, i32, i32, i32, i32*, %struct.pci_vtscsi_softc* }
%struct.pci_vtscsi_worker = type { i32, %struct.pci_vtscsi_queue* }

@MAXCOMLEN = common dso_local global i32 0, align 4
@VTSCSI_THR_PER_Q = common dso_local global i32 0, align 4
@pci_vtscsi_proc = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"vtscsi:%d-%d\00", align 1
@vsw_link = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_vtscsi_softc*, %struct.pci_vtscsi_queue*, i32)* @pci_vtscsi_init_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci_vtscsi_init_queue(%struct.pci_vtscsi_softc* %0, %struct.pci_vtscsi_queue* %1, i32 %2) #0 {
  %4 = alloca %struct.pci_vtscsi_softc*, align 8
  %5 = alloca %struct.pci_vtscsi_queue*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.pci_vtscsi_worker*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.pci_vtscsi_softc* %0, %struct.pci_vtscsi_softc** %4, align 8
  store %struct.pci_vtscsi_queue* %1, %struct.pci_vtscsi_queue** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load i32, i32* @MAXCOMLEN, align 4
  %12 = add nsw i32 %11, 1
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %8, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %9, align 8
  %16 = load %struct.pci_vtscsi_softc*, %struct.pci_vtscsi_softc** %4, align 8
  %17 = load %struct.pci_vtscsi_queue*, %struct.pci_vtscsi_queue** %5, align 8
  %18 = getelementptr inbounds %struct.pci_vtscsi_queue, %struct.pci_vtscsi_queue* %17, i32 0, i32 6
  store %struct.pci_vtscsi_softc* %16, %struct.pci_vtscsi_softc** %18, align 8
  %19 = load %struct.pci_vtscsi_softc*, %struct.pci_vtscsi_softc** %4, align 8
  %20 = getelementptr inbounds %struct.pci_vtscsi_softc, %struct.pci_vtscsi_softc* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = load i32, i32* %6, align 4
  %23 = add nsw i32 %22, 2
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %21, i64 %24
  %26 = load %struct.pci_vtscsi_queue*, %struct.pci_vtscsi_queue** %5, align 8
  %27 = getelementptr inbounds %struct.pci_vtscsi_queue, %struct.pci_vtscsi_queue* %26, i32 0, i32 5
  store i32* %25, i32** %27, align 8
  %28 = load %struct.pci_vtscsi_queue*, %struct.pci_vtscsi_queue** %5, align 8
  %29 = getelementptr inbounds %struct.pci_vtscsi_queue, %struct.pci_vtscsi_queue* %28, i32 0, i32 4
  %30 = call i32 @pthread_mutex_init(i32* %29, i32* null)
  %31 = load %struct.pci_vtscsi_queue*, %struct.pci_vtscsi_queue** %5, align 8
  %32 = getelementptr inbounds %struct.pci_vtscsi_queue, %struct.pci_vtscsi_queue* %31, i32 0, i32 3
  %33 = call i32 @pthread_mutex_init(i32* %32, i32* null)
  %34 = load %struct.pci_vtscsi_queue*, %struct.pci_vtscsi_queue** %5, align 8
  %35 = getelementptr inbounds %struct.pci_vtscsi_queue, %struct.pci_vtscsi_queue* %34, i32 0, i32 2
  %36 = call i32 @pthread_cond_init(i32* %35, i32* null)
  %37 = load %struct.pci_vtscsi_queue*, %struct.pci_vtscsi_queue** %5, align 8
  %38 = getelementptr inbounds %struct.pci_vtscsi_queue, %struct.pci_vtscsi_queue* %37, i32 0, i32 1
  %39 = call i32 @STAILQ_INIT(i32* %38)
  %40 = load %struct.pci_vtscsi_queue*, %struct.pci_vtscsi_queue** %5, align 8
  %41 = getelementptr inbounds %struct.pci_vtscsi_queue, %struct.pci_vtscsi_queue* %40, i32 0, i32 0
  %42 = call i32 @LIST_INIT(i32* %41)
  store i32 0, i32* %10, align 4
  br label %43

43:                                               ; preds = %70, %3
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* @VTSCSI_THR_PER_Q, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %73

47:                                               ; preds = %43
  %48 = call %struct.pci_vtscsi_worker* @calloc(i32 1, i32 16)
  store %struct.pci_vtscsi_worker* %48, %struct.pci_vtscsi_worker** %7, align 8
  %49 = load %struct.pci_vtscsi_queue*, %struct.pci_vtscsi_queue** %5, align 8
  %50 = load %struct.pci_vtscsi_worker*, %struct.pci_vtscsi_worker** %7, align 8
  %51 = getelementptr inbounds %struct.pci_vtscsi_worker, %struct.pci_vtscsi_worker* %50, i32 0, i32 1
  store %struct.pci_vtscsi_queue* %49, %struct.pci_vtscsi_queue** %51, align 8
  %52 = load %struct.pci_vtscsi_worker*, %struct.pci_vtscsi_worker** %7, align 8
  %53 = getelementptr inbounds %struct.pci_vtscsi_worker, %struct.pci_vtscsi_worker* %52, i32 0, i32 0
  %54 = load %struct.pci_vtscsi_worker*, %struct.pci_vtscsi_worker** %7, align 8
  %55 = bitcast %struct.pci_vtscsi_worker* %54 to i8*
  %56 = call i32 @pthread_create(i32* %53, i32* null, i32* @pci_vtscsi_proc, i8* %55)
  %57 = trunc i64 %13 to i32
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* %10, align 4
  %60 = call i32 @snprintf(i8* %15, i32 %57, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %58, i32 %59)
  %61 = load %struct.pci_vtscsi_worker*, %struct.pci_vtscsi_worker** %7, align 8
  %62 = getelementptr inbounds %struct.pci_vtscsi_worker, %struct.pci_vtscsi_worker* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @pthread_set_name_np(i32 %63, i8* %15)
  %65 = load %struct.pci_vtscsi_queue*, %struct.pci_vtscsi_queue** %5, align 8
  %66 = getelementptr inbounds %struct.pci_vtscsi_queue, %struct.pci_vtscsi_queue* %65, i32 0, i32 0
  %67 = load %struct.pci_vtscsi_worker*, %struct.pci_vtscsi_worker** %7, align 8
  %68 = load i32, i32* @vsw_link, align 4
  %69 = call i32 @LIST_INSERT_HEAD(i32* %66, %struct.pci_vtscsi_worker* %67, i32 %68)
  br label %70

70:                                               ; preds = %47
  %71 = load i32, i32* %10, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %10, align 4
  br label %43

73:                                               ; preds = %43
  %74 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %74)
  ret i32 0
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @pthread_mutex_init(i32*, i32*) #2

declare dso_local i32 @pthread_cond_init(i32*, i32*) #2

declare dso_local i32 @STAILQ_INIT(i32*) #2

declare dso_local i32 @LIST_INIT(i32*) #2

declare dso_local %struct.pci_vtscsi_worker* @calloc(i32, i32) #2

declare !callback !2 dso_local i32 @pthread_create(i32*, i32*, i32*, i8*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i32) #2

declare dso_local i32 @pthread_set_name_np(i32, i8*) #2

declare dso_local i32 @LIST_INSERT_HEAD(i32*, %struct.pci_vtscsi_worker*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{!3}
!3 = !{i64 2, i64 3, i1 false}
