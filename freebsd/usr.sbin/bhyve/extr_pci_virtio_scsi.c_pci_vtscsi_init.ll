; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_virtio_scsi.c_pci_vtscsi_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_virtio_scsi.c_pci_vtscsi_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmctx = type { i32 }
%struct.pci_devinst = type { i32 }
%struct.pci_vtscsi_softc = type { i64, %struct.TYPE_5__, i32*, %struct.TYPE_6__*, i32, i32 }
%struct.TYPE_5__ = type { i32* }
%struct.TYPE_6__ = type { i32, i8* }

@.str = private unnamed_addr constant [13 x i8] c"/dev/cam/ctl\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"dev\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"iid\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [19 x i8] c"Invalid option %s\0A\00", align 1
@O_RDWR = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [20 x i8] c"cannot open %s: %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@vtscsi_vi_consts = common dso_local global i32 0, align 4
@VTSCSI_RINGSZ = common dso_local global i8* null, align 8
@pci_vtscsi_controlq_notify = common dso_local global i32 0, align 4
@pci_vtscsi_eventq_notify = common dso_local global i32 0, align 4
@VTSCSI_MAXQ = common dso_local global i32 0, align 4
@pci_vtscsi_requestq_notify = common dso_local global i32 0, align 4
@PCIR_DEVICE = common dso_local global i32 0, align 4
@VIRTIO_DEV_SCSI = common dso_local global i32 0, align 4
@PCIR_VENDOR = common dso_local global i32 0, align 4
@VIRTIO_VENDOR = common dso_local global i32 0, align 4
@PCIR_CLASS = common dso_local global i32 0, align 4
@PCIC_STORAGE = common dso_local global i32 0, align 4
@PCIR_SUBDEV_0 = common dso_local global i32 0, align 4
@VIRTIO_TYPE_SCSI = common dso_local global i32 0, align 4
@PCIR_SUBVEND_0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vmctx*, %struct.pci_devinst*, i8*)* @pci_vtscsi_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci_vtscsi_init(%struct.vmctx* %0, %struct.pci_devinst* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vmctx*, align 8
  %6 = alloca %struct.pci_devinst*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.pci_vtscsi_softc*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.vmctx* %0, %struct.vmctx** %5, align 8
  store %struct.pci_devinst* %1, %struct.pci_devinst** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 0, i32* %13, align 4
  %14 = call %struct.pci_vtscsi_softc* @calloc(i32 1, i32 40)
  store %struct.pci_vtscsi_softc* %14, %struct.pci_vtscsi_softc** %8, align 8
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8** %11, align 8
  br label %15

15:                                               ; preds = %63, %3
  %16 = call i8* @strsep(i8** %7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i8* %16, i8** %9, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %66

18:                                               ; preds = %15
  %19 = call i8* @strsep(i8** %9, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i8* %19, i8** %10, align 8
  %20 = load i8*, i8** %9, align 8
  %21 = icmp eq i8* %20, null
  br i1 %21, label %22, label %34

22:                                               ; preds = %18
  %23 = load i32, i32* %13, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %22
  %26 = load i8*, i8** %10, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 0
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %25
  %32 = load i8*, i8** %10, align 8
  store i8* %32, i8** %11, align 8
  br label %33

33:                                               ; preds = %31, %25
  br label %63

34:                                               ; preds = %22, %18
  %35 = load i8*, i8** %10, align 8
  %36 = call i64 @strcmp(i8* %35, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %34
  %39 = load i8*, i8** %9, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %41, label %43

41:                                               ; preds = %38
  %42 = load i8*, i8** %9, align 8
  store i8* %42, i8** %11, align 8
  br label %62

43:                                               ; preds = %38, %34
  %44 = load i8*, i8** %10, align 8
  %45 = call i64 @strcmp(i8* %44, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %55

47:                                               ; preds = %43
  %48 = load i8*, i8** %9, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %50, label %55

50:                                               ; preds = %47
  %51 = load i8*, i8** %9, align 8
  %52 = call i32 @strtoul(i8* %51, i32* null, i32 10)
  %53 = load %struct.pci_vtscsi_softc*, %struct.pci_vtscsi_softc** %8, align 8
  %54 = getelementptr inbounds %struct.pci_vtscsi_softc, %struct.pci_vtscsi_softc* %53, i32 0, i32 5
  store i32 %52, i32* %54, align 4
  br label %61

55:                                               ; preds = %47, %43
  %56 = load i32, i32* @stderr, align 4
  %57 = load i8*, i8** %10, align 8
  %58 = call i32 @fprintf(i32 %56, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i8* %57)
  %59 = load %struct.pci_vtscsi_softc*, %struct.pci_vtscsi_softc** %8, align 8
  %60 = call i32 @free(%struct.pci_vtscsi_softc* %59)
  store i32 1, i32* %4, align 4
  br label %189

61:                                               ; preds = %50
  br label %62

62:                                               ; preds = %61, %41
  br label %63

63:                                               ; preds = %62, %33
  %64 = load i32, i32* %13, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %13, align 4
  br label %15

66:                                               ; preds = %15
  %67 = load i8*, i8** %11, align 8
  %68 = load i32, i32* @O_RDWR, align 4
  %69 = call i64 @open(i8* %67, i32 %68)
  %70 = load %struct.pci_vtscsi_softc*, %struct.pci_vtscsi_softc** %8, align 8
  %71 = getelementptr inbounds %struct.pci_vtscsi_softc, %struct.pci_vtscsi_softc* %70, i32 0, i32 0
  store i64 %69, i64* %71, align 8
  %72 = load %struct.pci_vtscsi_softc*, %struct.pci_vtscsi_softc** %8, align 8
  %73 = getelementptr inbounds %struct.pci_vtscsi_softc, %struct.pci_vtscsi_softc* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp slt i64 %74, 0
  br i1 %75, label %76, label %85

76:                                               ; preds = %66
  %77 = load i8*, i8** %11, align 8
  %78 = load i32, i32* @errno, align 4
  %79 = call i32 @strerror(i32 %78)
  %80 = sext i32 %79 to i64
  %81 = inttoptr i64 %80 to i8*
  %82 = call i32 @WPRINTF(i8* %81)
  %83 = load %struct.pci_vtscsi_softc*, %struct.pci_vtscsi_softc** %8, align 8
  %84 = call i32 @free(%struct.pci_vtscsi_softc* %83)
  store i32 1, i32* %4, align 4
  br label %189

85:                                               ; preds = %66
  %86 = load %struct.pci_vtscsi_softc*, %struct.pci_vtscsi_softc** %8, align 8
  %87 = getelementptr inbounds %struct.pci_vtscsi_softc, %struct.pci_vtscsi_softc* %86, i32 0, i32 1
  %88 = load %struct.pci_vtscsi_softc*, %struct.pci_vtscsi_softc** %8, align 8
  %89 = load %struct.pci_devinst*, %struct.pci_devinst** %6, align 8
  %90 = load %struct.pci_vtscsi_softc*, %struct.pci_vtscsi_softc** %8, align 8
  %91 = getelementptr inbounds %struct.pci_vtscsi_softc, %struct.pci_vtscsi_softc* %90, i32 0, i32 3
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %91, align 8
  %93 = call i32 @vi_softc_linkup(%struct.TYPE_5__* %87, i32* @vtscsi_vi_consts, %struct.pci_vtscsi_softc* %88, %struct.pci_devinst* %89, %struct.TYPE_6__* %92)
  %94 = load %struct.pci_vtscsi_softc*, %struct.pci_vtscsi_softc** %8, align 8
  %95 = getelementptr inbounds %struct.pci_vtscsi_softc, %struct.pci_vtscsi_softc* %94, i32 0, i32 4
  %96 = load %struct.pci_vtscsi_softc*, %struct.pci_vtscsi_softc** %8, align 8
  %97 = getelementptr inbounds %struct.pci_vtscsi_softc, %struct.pci_vtscsi_softc* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 0
  store i32* %95, i32** %98, align 8
  %99 = load i8*, i8** @VTSCSI_RINGSZ, align 8
  %100 = load %struct.pci_vtscsi_softc*, %struct.pci_vtscsi_softc** %8, align 8
  %101 = getelementptr inbounds %struct.pci_vtscsi_softc, %struct.pci_vtscsi_softc* %100, i32 0, i32 3
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i64 0
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 1
  store i8* %99, i8** %104, align 8
  %105 = load i32, i32* @pci_vtscsi_controlq_notify, align 4
  %106 = load %struct.pci_vtscsi_softc*, %struct.pci_vtscsi_softc** %8, align 8
  %107 = getelementptr inbounds %struct.pci_vtscsi_softc, %struct.pci_vtscsi_softc* %106, i32 0, i32 3
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i64 0
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 0
  store i32 %105, i32* %110, align 8
  %111 = load i8*, i8** @VTSCSI_RINGSZ, align 8
  %112 = load %struct.pci_vtscsi_softc*, %struct.pci_vtscsi_softc** %8, align 8
  %113 = getelementptr inbounds %struct.pci_vtscsi_softc, %struct.pci_vtscsi_softc* %112, i32 0, i32 3
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i64 1
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 1
  store i8* %111, i8** %116, align 8
  %117 = load i32, i32* @pci_vtscsi_eventq_notify, align 4
  %118 = load %struct.pci_vtscsi_softc*, %struct.pci_vtscsi_softc** %8, align 8
  %119 = getelementptr inbounds %struct.pci_vtscsi_softc, %struct.pci_vtscsi_softc* %118, i32 0, i32 3
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i64 1
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 0
  store i32 %117, i32* %122, align 8
  store i32 2, i32* %12, align 4
  br label %123

123:                                              ; preds = %155, %85
  %124 = load i32, i32* %12, align 4
  %125 = load i32, i32* @VTSCSI_MAXQ, align 4
  %126 = icmp slt i32 %124, %125
  br i1 %126, label %127, label %158

127:                                              ; preds = %123
  %128 = load i8*, i8** @VTSCSI_RINGSZ, align 8
  %129 = load %struct.pci_vtscsi_softc*, %struct.pci_vtscsi_softc** %8, align 8
  %130 = getelementptr inbounds %struct.pci_vtscsi_softc, %struct.pci_vtscsi_softc* %129, i32 0, i32 3
  %131 = load %struct.TYPE_6__*, %struct.TYPE_6__** %130, align 8
  %132 = load i32, i32* %12, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 1
  store i8* %128, i8** %135, align 8
  %136 = load i32, i32* @pci_vtscsi_requestq_notify, align 4
  %137 = load %struct.pci_vtscsi_softc*, %struct.pci_vtscsi_softc** %8, align 8
  %138 = getelementptr inbounds %struct.pci_vtscsi_softc, %struct.pci_vtscsi_softc* %137, i32 0, i32 3
  %139 = load %struct.TYPE_6__*, %struct.TYPE_6__** %138, align 8
  %140 = load i32, i32* %12, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i64 %141
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i32 0, i32 0
  store i32 %136, i32* %143, align 8
  %144 = load %struct.pci_vtscsi_softc*, %struct.pci_vtscsi_softc** %8, align 8
  %145 = load %struct.pci_vtscsi_softc*, %struct.pci_vtscsi_softc** %8, align 8
  %146 = getelementptr inbounds %struct.pci_vtscsi_softc, %struct.pci_vtscsi_softc* %145, i32 0, i32 2
  %147 = load i32*, i32** %146, align 8
  %148 = load i32, i32* %12, align 4
  %149 = sub nsw i32 %148, 2
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i32, i32* %147, i64 %150
  %152 = load i32, i32* %12, align 4
  %153 = sub nsw i32 %152, 2
  %154 = call i32 @pci_vtscsi_init_queue(%struct.pci_vtscsi_softc* %144, i32* %151, i32 %153)
  br label %155

155:                                              ; preds = %127
  %156 = load i32, i32* %12, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %12, align 4
  br label %123

158:                                              ; preds = %123
  %159 = load %struct.pci_devinst*, %struct.pci_devinst** %6, align 8
  %160 = load i32, i32* @PCIR_DEVICE, align 4
  %161 = load i32, i32* @VIRTIO_DEV_SCSI, align 4
  %162 = call i32 @pci_set_cfgdata16(%struct.pci_devinst* %159, i32 %160, i32 %161)
  %163 = load %struct.pci_devinst*, %struct.pci_devinst** %6, align 8
  %164 = load i32, i32* @PCIR_VENDOR, align 4
  %165 = load i32, i32* @VIRTIO_VENDOR, align 4
  %166 = call i32 @pci_set_cfgdata16(%struct.pci_devinst* %163, i32 %164, i32 %165)
  %167 = load %struct.pci_devinst*, %struct.pci_devinst** %6, align 8
  %168 = load i32, i32* @PCIR_CLASS, align 4
  %169 = load i32, i32* @PCIC_STORAGE, align 4
  %170 = call i32 @pci_set_cfgdata8(%struct.pci_devinst* %167, i32 %168, i32 %169)
  %171 = load %struct.pci_devinst*, %struct.pci_devinst** %6, align 8
  %172 = load i32, i32* @PCIR_SUBDEV_0, align 4
  %173 = load i32, i32* @VIRTIO_TYPE_SCSI, align 4
  %174 = call i32 @pci_set_cfgdata16(%struct.pci_devinst* %171, i32 %172, i32 %173)
  %175 = load %struct.pci_devinst*, %struct.pci_devinst** %6, align 8
  %176 = load i32, i32* @PCIR_SUBVEND_0, align 4
  %177 = load i32, i32* @VIRTIO_VENDOR, align 4
  %178 = call i32 @pci_set_cfgdata16(%struct.pci_devinst* %175, i32 %176, i32 %177)
  %179 = load %struct.pci_vtscsi_softc*, %struct.pci_vtscsi_softc** %8, align 8
  %180 = getelementptr inbounds %struct.pci_vtscsi_softc, %struct.pci_vtscsi_softc* %179, i32 0, i32 1
  %181 = call i32 (...) @fbsdrun_virtio_msix()
  %182 = call i64 @vi_intr_init(%struct.TYPE_5__* %180, i32 1, i32 %181)
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %185

184:                                              ; preds = %158
  store i32 1, i32* %4, align 4
  br label %189

185:                                              ; preds = %158
  %186 = load %struct.pci_vtscsi_softc*, %struct.pci_vtscsi_softc** %8, align 8
  %187 = getelementptr inbounds %struct.pci_vtscsi_softc, %struct.pci_vtscsi_softc* %186, i32 0, i32 1
  %188 = call i32 @vi_set_io_bar(%struct.TYPE_5__* %187, i32 0)
  store i32 0, i32* %4, align 4
  br label %189

189:                                              ; preds = %185, %184, %76, %55
  %190 = load i32, i32* %4, align 4
  ret i32 %190
}

declare dso_local %struct.pci_vtscsi_softc* @calloc(i32, i32) #1

declare dso_local i8* @strsep(i8**, i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @strtoul(i8*, i32*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i32 @free(%struct.pci_vtscsi_softc*) #1

declare dso_local i64 @open(i8*, i32) #1

declare dso_local i32 @WPRINTF(i8*) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @vi_softc_linkup(%struct.TYPE_5__*, i32*, %struct.pci_vtscsi_softc*, %struct.pci_devinst*, %struct.TYPE_6__*) #1

declare dso_local i32 @pci_vtscsi_init_queue(%struct.pci_vtscsi_softc*, i32*, i32) #1

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
