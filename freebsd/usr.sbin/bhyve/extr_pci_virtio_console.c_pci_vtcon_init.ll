; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_virtio_console.c_pci_vtcon_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_virtio_console.c_pci_vtcon_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmctx = type { i32 }
%struct.pci_devinst = type { i32 }
%struct.pci_vtcon_softc = type { %struct.TYPE_8__, %struct.TYPE_9__, %struct.TYPE_10__*, i32, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i32, i32, i32, i32, %struct.pci_vtcon_softc* }
%struct.TYPE_9__ = type { i32* }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i32 }

@VTCON_MAXPORTS = common dso_local global i32 0, align 4
@vtcon_vi_consts = common dso_local global i32 0, align 4
@VTCON_MAXQ = common dso_local global i32 0, align 4
@VTCON_RINGSZ = common dso_local global i32 0, align 4
@pci_vtcon_notify_rx = common dso_local global i32 0, align 4
@pci_vtcon_notify_tx = common dso_local global i32 0, align 4
@PCIR_DEVICE = common dso_local global i32 0, align 4
@VIRTIO_DEV_CONSOLE = common dso_local global i32 0, align 4
@PCIR_VENDOR = common dso_local global i32 0, align 4
@VIRTIO_VENDOR = common dso_local global i32 0, align 4
@PCIR_CLASS = common dso_local global i32 0, align 4
@PCIC_SIMPLECOMM = common dso_local global i32 0, align 4
@PCIR_SUBDEV_0 = common dso_local global i32 0, align 4
@VIRTIO_TYPE_CONSOLE = common dso_local global i32 0, align 4
@PCIR_SUBVEND_0 = common dso_local global i32 0, align 4
@pci_vtcon_control_tx = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"cannot create port %s: %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vmctx*, %struct.pci_devinst*, i8*)* @pci_vtcon_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci_vtcon_init(%struct.vmctx* %0, %struct.pci_devinst* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vmctx*, align 8
  %6 = alloca %struct.pci_devinst*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.pci_vtcon_softc*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store %struct.vmctx* %0, %struct.vmctx** %5, align 8
  store %struct.pci_devinst* %1, %struct.pci_devinst** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* null, i8** %9, align 8
  store i8* null, i8** %10, align 8
  %13 = call i8* @calloc(i32 1, i32 56)
  %14 = bitcast i8* %13 to %struct.pci_vtcon_softc*
  store %struct.pci_vtcon_softc* %14, %struct.pci_vtcon_softc** %8, align 8
  %15 = call i8* @calloc(i32 1, i32 4)
  %16 = bitcast i8* %15 to %struct.TYPE_7__*
  %17 = load %struct.pci_vtcon_softc*, %struct.pci_vtcon_softc** %8, align 8
  %18 = getelementptr inbounds %struct.pci_vtcon_softc, %struct.pci_vtcon_softc* %17, i32 0, i32 4
  store %struct.TYPE_7__* %16, %struct.TYPE_7__** %18, align 8
  %19 = load i32, i32* @VTCON_MAXPORTS, align 4
  %20 = load %struct.pci_vtcon_softc*, %struct.pci_vtcon_softc** %8, align 8
  %21 = getelementptr inbounds %struct.pci_vtcon_softc, %struct.pci_vtcon_softc* %20, i32 0, i32 4
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 2
  store i32 %19, i32* %23, align 4
  %24 = load %struct.pci_vtcon_softc*, %struct.pci_vtcon_softc** %8, align 8
  %25 = getelementptr inbounds %struct.pci_vtcon_softc, %struct.pci_vtcon_softc* %24, i32 0, i32 4
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  store i32 80, i32* %27, align 4
  %28 = load %struct.pci_vtcon_softc*, %struct.pci_vtcon_softc** %8, align 8
  %29 = getelementptr inbounds %struct.pci_vtcon_softc, %struct.pci_vtcon_softc* %28, i32 0, i32 4
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 1
  store i32 25, i32* %31, align 4
  %32 = load %struct.pci_vtcon_softc*, %struct.pci_vtcon_softc** %8, align 8
  %33 = getelementptr inbounds %struct.pci_vtcon_softc, %struct.pci_vtcon_softc* %32, i32 0, i32 1
  %34 = load %struct.pci_vtcon_softc*, %struct.pci_vtcon_softc** %8, align 8
  %35 = load %struct.pci_devinst*, %struct.pci_devinst** %6, align 8
  %36 = load %struct.pci_vtcon_softc*, %struct.pci_vtcon_softc** %8, align 8
  %37 = getelementptr inbounds %struct.pci_vtcon_softc, %struct.pci_vtcon_softc* %36, i32 0, i32 2
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %37, align 8
  %39 = call i32 @vi_softc_linkup(%struct.TYPE_9__* %33, i32* @vtcon_vi_consts, %struct.pci_vtcon_softc* %34, %struct.pci_devinst* %35, %struct.TYPE_10__* %38)
  %40 = load %struct.pci_vtcon_softc*, %struct.pci_vtcon_softc** %8, align 8
  %41 = getelementptr inbounds %struct.pci_vtcon_softc, %struct.pci_vtcon_softc* %40, i32 0, i32 3
  %42 = load %struct.pci_vtcon_softc*, %struct.pci_vtcon_softc** %8, align 8
  %43 = getelementptr inbounds %struct.pci_vtcon_softc, %struct.pci_vtcon_softc* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 0
  store i32* %41, i32** %44, align 8
  store i32 0, i32* %12, align 4
  br label %45

45:                                               ; preds = %74, %3
  %46 = load i32, i32* %12, align 4
  %47 = load i32, i32* @VTCON_MAXQ, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %77

49:                                               ; preds = %45
  %50 = load i32, i32* @VTCON_RINGSZ, align 4
  %51 = load %struct.pci_vtcon_softc*, %struct.pci_vtcon_softc** %8, align 8
  %52 = getelementptr inbounds %struct.pci_vtcon_softc, %struct.pci_vtcon_softc* %51, i32 0, i32 2
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %52, align 8
  %54 = load i32, i32* %12, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 1
  store i32 %50, i32* %57, align 4
  %58 = load i32, i32* %12, align 4
  %59 = srem i32 %58, 2
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %49
  %62 = load i32, i32* @pci_vtcon_notify_rx, align 4
  br label %65

63:                                               ; preds = %49
  %64 = load i32, i32* @pci_vtcon_notify_tx, align 4
  br label %65

65:                                               ; preds = %63, %61
  %66 = phi i32 [ %62, %61 ], [ %64, %63 ]
  %67 = load %struct.pci_vtcon_softc*, %struct.pci_vtcon_softc** %8, align 8
  %68 = getelementptr inbounds %struct.pci_vtcon_softc, %struct.pci_vtcon_softc* %67, i32 0, i32 2
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %68, align 8
  %70 = load i32, i32* %12, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 0
  store i32 %66, i32* %73, align 4
  br label %74

74:                                               ; preds = %65
  %75 = load i32, i32* %12, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %12, align 4
  br label %45

77:                                               ; preds = %45
  %78 = load %struct.pci_devinst*, %struct.pci_devinst** %6, align 8
  %79 = load i32, i32* @PCIR_DEVICE, align 4
  %80 = load i32, i32* @VIRTIO_DEV_CONSOLE, align 4
  %81 = call i32 @pci_set_cfgdata16(%struct.pci_devinst* %78, i32 %79, i32 %80)
  %82 = load %struct.pci_devinst*, %struct.pci_devinst** %6, align 8
  %83 = load i32, i32* @PCIR_VENDOR, align 4
  %84 = load i32, i32* @VIRTIO_VENDOR, align 4
  %85 = call i32 @pci_set_cfgdata16(%struct.pci_devinst* %82, i32 %83, i32 %84)
  %86 = load %struct.pci_devinst*, %struct.pci_devinst** %6, align 8
  %87 = load i32, i32* @PCIR_CLASS, align 4
  %88 = load i32, i32* @PCIC_SIMPLECOMM, align 4
  %89 = call i32 @pci_set_cfgdata8(%struct.pci_devinst* %86, i32 %87, i32 %88)
  %90 = load %struct.pci_devinst*, %struct.pci_devinst** %6, align 8
  %91 = load i32, i32* @PCIR_SUBDEV_0, align 4
  %92 = load i32, i32* @VIRTIO_TYPE_CONSOLE, align 4
  %93 = call i32 @pci_set_cfgdata16(%struct.pci_devinst* %90, i32 %91, i32 %92)
  %94 = load %struct.pci_devinst*, %struct.pci_devinst** %6, align 8
  %95 = load i32, i32* @PCIR_SUBVEND_0, align 4
  %96 = load i32, i32* @VIRTIO_VENDOR, align 4
  %97 = call i32 @pci_set_cfgdata16(%struct.pci_devinst* %94, i32 %95, i32 %96)
  %98 = load %struct.pci_vtcon_softc*, %struct.pci_vtcon_softc** %8, align 8
  %99 = getelementptr inbounds %struct.pci_vtcon_softc, %struct.pci_vtcon_softc* %98, i32 0, i32 1
  %100 = call i32 (...) @fbsdrun_virtio_msix()
  %101 = call i64 @vi_intr_init(%struct.TYPE_9__* %99, i32 1, i32 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %77
  store i32 1, i32* %4, align 4
  br label %144

104:                                              ; preds = %77
  %105 = load %struct.pci_vtcon_softc*, %struct.pci_vtcon_softc** %8, align 8
  %106 = getelementptr inbounds %struct.pci_vtcon_softc, %struct.pci_vtcon_softc* %105, i32 0, i32 1
  %107 = call i32 @vi_set_io_bar(%struct.TYPE_9__* %106, i32 0)
  %108 = load %struct.pci_vtcon_softc*, %struct.pci_vtcon_softc** %8, align 8
  %109 = load %struct.pci_vtcon_softc*, %struct.pci_vtcon_softc** %8, align 8
  %110 = getelementptr inbounds %struct.pci_vtcon_softc, %struct.pci_vtcon_softc* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 4
  store %struct.pci_vtcon_softc* %108, %struct.pci_vtcon_softc** %111, align 8
  %112 = load %struct.pci_vtcon_softc*, %struct.pci_vtcon_softc** %8, align 8
  %113 = getelementptr inbounds %struct.pci_vtcon_softc, %struct.pci_vtcon_softc* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 0
  store i32 2, i32* %114, align 8
  %115 = load %struct.pci_vtcon_softc*, %struct.pci_vtcon_softc** %8, align 8
  %116 = getelementptr inbounds %struct.pci_vtcon_softc, %struct.pci_vtcon_softc* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 1
  store i32 3, i32* %117, align 4
  %118 = load i32, i32* @pci_vtcon_control_tx, align 4
  %119 = load %struct.pci_vtcon_softc*, %struct.pci_vtcon_softc** %8, align 8
  %120 = getelementptr inbounds %struct.pci_vtcon_softc, %struct.pci_vtcon_softc* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 3
  store i32 %118, i32* %121, align 4
  %122 = load %struct.pci_vtcon_softc*, %struct.pci_vtcon_softc** %8, align 8
  %123 = getelementptr inbounds %struct.pci_vtcon_softc, %struct.pci_vtcon_softc* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 2
  store i32 1, i32* %124, align 8
  br label %125

125:                                              ; preds = %142, %104
  %126 = call i8* @strsep(i8** %7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %126, i8** %11, align 8
  %127 = icmp ne i8* %126, null
  br i1 %127, label %128, label %143

128:                                              ; preds = %125
  %129 = call i8* @strsep(i8** %11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i8* %129, i8** %9, align 8
  %130 = load i8*, i8** %11, align 8
  store i8* %130, i8** %10, align 8
  %131 = load %struct.pci_vtcon_softc*, %struct.pci_vtcon_softc** %8, align 8
  %132 = load i8*, i8** %9, align 8
  %133 = load i8*, i8** %10, align 8
  %134 = call i64 @pci_vtcon_sock_add(%struct.pci_vtcon_softc* %131, i8* %132, i8* %133)
  %135 = icmp slt i64 %134, 0
  br i1 %135, label %136, label %142

136:                                              ; preds = %128
  %137 = load i32, i32* @stderr, align 4
  %138 = load i8*, i8** %9, align 8
  %139 = load i32, i32* @errno, align 4
  %140 = call i8* @strerror(i32 %139)
  %141 = call i32 @fprintf(i32 %137, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i8* %138, i8* %140)
  store i32 1, i32* %4, align 4
  br label %144

142:                                              ; preds = %128
  br label %125

143:                                              ; preds = %125
  store i32 0, i32* %4, align 4
  br label %144

144:                                              ; preds = %143, %136, %103
  %145 = load i32, i32* %4, align 4
  ret i32 %145
}

declare dso_local i8* @calloc(i32, i32) #1

declare dso_local i32 @vi_softc_linkup(%struct.TYPE_9__*, i32*, %struct.pci_vtcon_softc*, %struct.pci_devinst*, %struct.TYPE_10__*) #1

declare dso_local i32 @pci_set_cfgdata16(%struct.pci_devinst*, i32, i32) #1

declare dso_local i32 @pci_set_cfgdata8(%struct.pci_devinst*, i32, i32) #1

declare dso_local i64 @vi_intr_init(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @fbsdrun_virtio_msix(...) #1

declare dso_local i32 @vi_set_io_bar(%struct.TYPE_9__*, i32) #1

declare dso_local i8* @strsep(i8**, i8*) #1

declare dso_local i64 @pci_vtcon_sock_add(%struct.pci_vtcon_softc*, i8*, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i8*) #1

declare dso_local i8* @strerror(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
