; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_virtio_rnd.c_pci_vtrnd_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_virtio_rnd.c_pci_vtrnd_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmctx = type { i32 }
%struct.pci_devinst = type { i32 }
%struct.pci_vtrnd_softc = type { i32, %struct.TYPE_5__, %struct.TYPE_6__, i32 }
%struct.TYPE_5__ = type { i32* }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"/dev/random\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@CAP_READ = common dso_local global i32 0, align 4
@EX_OSERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Unable to apply rights for sandbox\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"vtrnd: /dev/random not ready, read(): %d\00", align 1
@vtrnd_vi_consts = common dso_local global i32 0, align 4
@VTRND_RINGSZ = common dso_local global i32 0, align 4
@PCIR_DEVICE = common dso_local global i32 0, align 4
@VIRTIO_DEV_RANDOM = common dso_local global i32 0, align 4
@PCIR_VENDOR = common dso_local global i32 0, align 4
@VIRTIO_VENDOR = common dso_local global i32 0, align 4
@PCIR_CLASS = common dso_local global i32 0, align 4
@PCIC_CRYPTO = common dso_local global i32 0, align 4
@PCIR_SUBDEV_0 = common dso_local global i32 0, align 4
@VIRTIO_TYPE_ENTROPY = common dso_local global i32 0, align 4
@PCIR_SUBVEND_0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vmctx*, %struct.pci_devinst*, i8*)* @pci_vtrnd_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci_vtrnd_init(%struct.vmctx* %0, %struct.pci_devinst* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vmctx*, align 8
  %6 = alloca %struct.pci_devinst*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.pci_vtrnd_softc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.vmctx* %0, %struct.vmctx** %5, align 8
  store %struct.pci_devinst* %1, %struct.pci_devinst** %6, align 8
  store i8* %2, i8** %7, align 8
  %13 = load i32, i32* @O_RDONLY, align 4
  %14 = load i32, i32* @O_NONBLOCK, align 4
  %15 = or i32 %13, %14
  %16 = call i32 @open(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %15)
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %9, align 4
  %18 = icmp sge i32 %17, 0
  %19 = zext i1 %18 to i32
  %20 = call i32 @assert(i32 %19)
  %21 = load i32, i32* @CAP_READ, align 4
  %22 = call i32 @cap_rights_init(i32* %12, i32 %21)
  %23 = load i32, i32* %9, align 4
  %24 = call i32 @caph_rights_limit(i32 %23, i32* %12)
  %25 = icmp eq i32 %24, -1
  br i1 %25, label %26, label %29

26:                                               ; preds = %3
  %27 = load i32, i32* @EX_OSERR, align 4
  %28 = call i32 @errx(i32 %27, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %29

29:                                               ; preds = %26, %3
  %30 = load i32, i32* %9, align 4
  %31 = call i32 @read(i32 %30, i32* %11, i32 4)
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %10, align 4
  %33 = icmp sle i32 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %29
  %35 = load i32, i32* %10, align 4
  %36 = sext i32 %35 to i64
  %37 = inttoptr i64 %36 to i8*
  %38 = call i32 @WPRINTF(i8* %37)
  %39 = load i32, i32* %9, align 4
  %40 = call i32 @close(i32 %39)
  store i32 1, i32* %4, align 4
  br label %92

41:                                               ; preds = %29
  %42 = call %struct.pci_vtrnd_softc* @calloc(i32 1, i32 24)
  store %struct.pci_vtrnd_softc* %42, %struct.pci_vtrnd_softc** %8, align 8
  %43 = load %struct.pci_vtrnd_softc*, %struct.pci_vtrnd_softc** %8, align 8
  %44 = getelementptr inbounds %struct.pci_vtrnd_softc, %struct.pci_vtrnd_softc* %43, i32 0, i32 1
  %45 = load %struct.pci_vtrnd_softc*, %struct.pci_vtrnd_softc** %8, align 8
  %46 = load %struct.pci_devinst*, %struct.pci_devinst** %6, align 8
  %47 = load %struct.pci_vtrnd_softc*, %struct.pci_vtrnd_softc** %8, align 8
  %48 = getelementptr inbounds %struct.pci_vtrnd_softc, %struct.pci_vtrnd_softc* %47, i32 0, i32 2
  %49 = call i32 @vi_softc_linkup(%struct.TYPE_5__* %44, i32* @vtrnd_vi_consts, %struct.pci_vtrnd_softc* %45, %struct.pci_devinst* %46, %struct.TYPE_6__* %48)
  %50 = load %struct.pci_vtrnd_softc*, %struct.pci_vtrnd_softc** %8, align 8
  %51 = getelementptr inbounds %struct.pci_vtrnd_softc, %struct.pci_vtrnd_softc* %50, i32 0, i32 3
  %52 = load %struct.pci_vtrnd_softc*, %struct.pci_vtrnd_softc** %8, align 8
  %53 = getelementptr inbounds %struct.pci_vtrnd_softc, %struct.pci_vtrnd_softc* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  store i32* %51, i32** %54, align 8
  %55 = load i32, i32* @VTRND_RINGSZ, align 4
  %56 = load %struct.pci_vtrnd_softc*, %struct.pci_vtrnd_softc** %8, align 8
  %57 = getelementptr inbounds %struct.pci_vtrnd_softc, %struct.pci_vtrnd_softc* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  store i32 %55, i32* %58, align 8
  %59 = load i32, i32* %9, align 4
  %60 = load %struct.pci_vtrnd_softc*, %struct.pci_vtrnd_softc** %8, align 8
  %61 = getelementptr inbounds %struct.pci_vtrnd_softc, %struct.pci_vtrnd_softc* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 8
  %62 = load %struct.pci_devinst*, %struct.pci_devinst** %6, align 8
  %63 = load i32, i32* @PCIR_DEVICE, align 4
  %64 = load i32, i32* @VIRTIO_DEV_RANDOM, align 4
  %65 = call i32 @pci_set_cfgdata16(%struct.pci_devinst* %62, i32 %63, i32 %64)
  %66 = load %struct.pci_devinst*, %struct.pci_devinst** %6, align 8
  %67 = load i32, i32* @PCIR_VENDOR, align 4
  %68 = load i32, i32* @VIRTIO_VENDOR, align 4
  %69 = call i32 @pci_set_cfgdata16(%struct.pci_devinst* %66, i32 %67, i32 %68)
  %70 = load %struct.pci_devinst*, %struct.pci_devinst** %6, align 8
  %71 = load i32, i32* @PCIR_CLASS, align 4
  %72 = load i32, i32* @PCIC_CRYPTO, align 4
  %73 = call i32 @pci_set_cfgdata8(%struct.pci_devinst* %70, i32 %71, i32 %72)
  %74 = load %struct.pci_devinst*, %struct.pci_devinst** %6, align 8
  %75 = load i32, i32* @PCIR_SUBDEV_0, align 4
  %76 = load i32, i32* @VIRTIO_TYPE_ENTROPY, align 4
  %77 = call i32 @pci_set_cfgdata16(%struct.pci_devinst* %74, i32 %75, i32 %76)
  %78 = load %struct.pci_devinst*, %struct.pci_devinst** %6, align 8
  %79 = load i32, i32* @PCIR_SUBVEND_0, align 4
  %80 = load i32, i32* @VIRTIO_VENDOR, align 4
  %81 = call i32 @pci_set_cfgdata16(%struct.pci_devinst* %78, i32 %79, i32 %80)
  %82 = load %struct.pci_vtrnd_softc*, %struct.pci_vtrnd_softc** %8, align 8
  %83 = getelementptr inbounds %struct.pci_vtrnd_softc, %struct.pci_vtrnd_softc* %82, i32 0, i32 1
  %84 = call i32 (...) @fbsdrun_virtio_msix()
  %85 = call i64 @vi_intr_init(%struct.TYPE_5__* %83, i32 1, i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %41
  store i32 1, i32* %4, align 4
  br label %92

88:                                               ; preds = %41
  %89 = load %struct.pci_vtrnd_softc*, %struct.pci_vtrnd_softc** %8, align 8
  %90 = getelementptr inbounds %struct.pci_vtrnd_softc, %struct.pci_vtrnd_softc* %89, i32 0, i32 1
  %91 = call i32 @vi_set_io_bar(%struct.TYPE_5__* %90, i32 0)
  store i32 0, i32* %4, align 4
  br label %92

92:                                               ; preds = %88, %87, %34
  %93 = load i32, i32* %4, align 4
  ret i32 %93
}

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @cap_rights_init(i32*, i32) #1

declare dso_local i32 @caph_rights_limit(i32, i32*) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i32 @read(i32, i32*, i32) #1

declare dso_local i32 @WPRINTF(i8*) #1

declare dso_local i32 @close(i32) #1

declare dso_local %struct.pci_vtrnd_softc* @calloc(i32, i32) #1

declare dso_local i32 @vi_softc_linkup(%struct.TYPE_5__*, i32*, %struct.pci_vtrnd_softc*, %struct.pci_devinst*, %struct.TYPE_6__*) #1

declare dso_local i32 @pci_set_cfgdata16(%struct.pci_devinst*, i32, i32) #1

declare dso_local i32 @pci_set_cfgdata8(%struct.pci_devinst*, i32, i32) #1

declare dso_local i64 @vi_intr_init(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @fbsdrun_virtio_msix(...) #1

declare dso_local i32 @vi_set_io_bar(%struct.TYPE_5__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
