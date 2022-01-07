; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_virtio_scsi.c_pci_vtscsi_controlq_notify.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_virtio_scsi.c_pci_vtscsi_controlq_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vqueue_info = type { i32 }
%struct.pci_vtscsi_softc = type { i32 }
%struct.iovec = type { i32 }

@VTSCSI_MAXSEG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.vqueue_info*)* @pci_vtscsi_controlq_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pci_vtscsi_controlq_notify(i8* %0, %struct.vqueue_info* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.vqueue_info*, align 8
  %5 = alloca %struct.pci_vtscsi_softc*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store %struct.vqueue_info* %1, %struct.vqueue_info** %4, align 8
  %13 = load i32, i32* @VTSCSI_MAXSEG, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %6, align 8
  %16 = alloca %struct.iovec, i64 %14, align 16
  store i64 %14, i64* %7, align 8
  store i8* null, i8** %10, align 8
  %17 = load i8*, i8** %3, align 8
  %18 = bitcast i8* %17 to %struct.pci_vtscsi_softc*
  store %struct.pci_vtscsi_softc* %18, %struct.pci_vtscsi_softc** %5, align 8
  br label %19

19:                                               ; preds = %23, %2
  %20 = load %struct.vqueue_info*, %struct.vqueue_info** %4, align 8
  %21 = call i64 @vq_has_descs(%struct.vqueue_info* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %51

23:                                               ; preds = %19
  %24 = load %struct.vqueue_info*, %struct.vqueue_info** %4, align 8
  %25 = load i32, i32* @VTSCSI_MAXSEG, align 4
  %26 = call i32 @vq_getchain(%struct.vqueue_info* %24, i32* %8, %struct.iovec* %16, i32 %25, i32* null)
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = call i64 @iov_to_buf(%struct.iovec* %16, i32 %27, i8** %10)
  store i64 %28, i64* %11, align 8
  %29 = load %struct.pci_vtscsi_softc*, %struct.pci_vtscsi_softc** %5, align 8
  %30 = load i8*, i8** %10, align 8
  %31 = load i64, i64* %11, align 8
  %32 = call i32 @pci_vtscsi_control_handle(%struct.pci_vtscsi_softc* %29, i8* %30, i64 %31)
  store i32 %32, i32* %12, align 4
  %33 = load i8*, i8** %10, align 8
  %34 = load i64, i64* %11, align 8
  %35 = getelementptr i8, i8* %33, i64 %34
  %36 = load i32, i32* %12, align 4
  %37 = sext i32 %36 to i64
  %38 = sub i64 0, %37
  %39 = getelementptr i8, i8* %35, i64 %38
  %40 = load i32, i32* %12, align 4
  %41 = load i32, i32* %9, align 4
  %42 = load i64, i64* %11, align 8
  %43 = load i32, i32* %12, align 4
  %44 = sext i32 %43 to i64
  %45 = sub i64 %42, %44
  %46 = call i32 @buf_to_iov(i8* %39, i32 %40, %struct.iovec* %16, i32 %41, i64 %45)
  %47 = load %struct.vqueue_info*, %struct.vqueue_info** %4, align 8
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* %12, align 4
  %50 = call i32 @vq_relchain(%struct.vqueue_info* %47, i32 %48, i32 %49)
  br label %19

51:                                               ; preds = %19
  %52 = load %struct.vqueue_info*, %struct.vqueue_info** %4, align 8
  %53 = call i32 @vq_endchains(%struct.vqueue_info* %52, i32 1)
  %54 = load i8*, i8** %10, align 8
  %55 = call i32 @free(i8* %54)
  %56 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %56)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @vq_has_descs(%struct.vqueue_info*) #2

declare dso_local i32 @vq_getchain(%struct.vqueue_info*, i32*, %struct.iovec*, i32, i32*) #2

declare dso_local i64 @iov_to_buf(%struct.iovec*, i32, i8**) #2

declare dso_local i32 @pci_vtscsi_control_handle(%struct.pci_vtscsi_softc*, i8*, i64) #2

declare dso_local i32 @buf_to_iov(i8*, i32, %struct.iovec*, i32, i64) #2

declare dso_local i32 @vq_relchain(%struct.vqueue_info*, i32, i32) #2

declare dso_local i32 @vq_endchains(%struct.vqueue_info*, i32) #2

declare dso_local i32 @free(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
