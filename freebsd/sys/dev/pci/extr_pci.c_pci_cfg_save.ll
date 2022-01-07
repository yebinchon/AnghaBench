; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci.c_pci_cfg_save.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci.c_pci_cfg_save.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_devinfo = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32*, %struct.TYPE_7__, %struct.TYPE_6__, i8*, i8*, %struct.TYPE_5__, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i8*, i8*, i8*, i8*, i8* }

@PCIR_VENDOR = common dso_local global i32 0, align 4
@PCIR_DEVICE = common dso_local global i32 0, align 4
@PCIR_COMMAND = common dso_local global i32 0, align 4
@PCIR_INTLINE = common dso_local global i32 0, align 4
@PCIR_INTPIN = common dso_local global i32 0, align 4
@PCIR_CACHELNSZ = common dso_local global i32 0, align 4
@PCIR_LATTIMER = common dso_local global i32 0, align 4
@PCIR_CLASS = common dso_local global i32 0, align 4
@PCIR_SUBCLASS = common dso_local global i32 0, align 4
@PCIR_PROGIF = common dso_local global i32 0, align 4
@PCIR_REVID = common dso_local global i32 0, align 4
@PCIM_HDRTYPE = common dso_local global i32 0, align 4
@PCIR_SUBVEND_0 = common dso_local global i32 0, align 4
@PCIR_SUBDEV_0 = common dso_local global i32 0, align 4
@PCIR_MINGNT = common dso_local global i32 0, align 4
@PCIR_MAXLAT = common dso_local global i32 0, align 4
@PCIR_SECLAT_1 = common dso_local global i32 0, align 4
@PCIR_SUBBUS_1 = common dso_local global i32 0, align 4
@PCIR_SECBUS_1 = common dso_local global i32 0, align 4
@PCIR_PRIBUS_1 = common dso_local global i32 0, align 4
@PCIR_BRIDGECTL_1 = common dso_local global i32 0, align 4
@PCIR_SECLAT_2 = common dso_local global i32 0, align 4
@PCIR_SUBBUS_2 = common dso_local global i32 0, align 4
@PCIR_SECBUS_2 = common dso_local global i32 0, align 4
@PCIR_PRIBUS_2 = common dso_local global i32 0, align 4
@PCIR_BRIDGECTL_2 = common dso_local global i32 0, align 4
@PCIR_SUBVEND_2 = common dso_local global i32 0, align 4
@PCIR_SUBDEV_2 = common dso_local global i32 0, align 4
@pci_do_power_nodriver = common dso_local global i32 0, align 4
@PCIC_STORAGE = common dso_local global i32 0, align 4
@PCIC_DISPLAY = common dso_local global i32 0, align 4
@PCIC_MEMORY = common dso_local global i32 0, align 4
@PCIC_BASEPERIPH = common dso_local global i32 0, align 4
@PCI_POWERSTATE_D0 = common dso_local global i32 0, align 4
@PCI_POWERSTATE_D3 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pci_cfg_save(i32 %0, %struct.pci_devinfo* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pci_devinfo*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.pci_devinfo* %1, %struct.pci_devinfo** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @PCIR_VENDOR, align 4
  %11 = call i8* @pci_read_config(i32 %9, i32 %10, i32 2)
  %12 = load %struct.pci_devinfo*, %struct.pci_devinfo** %5, align 8
  %13 = getelementptr inbounds %struct.pci_devinfo, %struct.pci_devinfo* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 19
  store i8* %11, i8** %14, align 8
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @PCIR_DEVICE, align 4
  %17 = call i8* @pci_read_config(i32 %15, i32 %16, i32 2)
  %18 = load %struct.pci_devinfo*, %struct.pci_devinfo** %5, align 8
  %19 = getelementptr inbounds %struct.pci_devinfo, %struct.pci_devinfo* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 18
  store i8* %17, i8** %20, align 8
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @PCIR_COMMAND, align 4
  %23 = call i8* @pci_read_config(i32 %21, i32 %22, i32 2)
  %24 = load %struct.pci_devinfo*, %struct.pci_devinfo** %5, align 8
  %25 = getelementptr inbounds %struct.pci_devinfo, %struct.pci_devinfo* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 17
  store i8* %23, i8** %26, align 8
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @PCIR_INTLINE, align 4
  %29 = call i8* @pci_read_config(i32 %27, i32 %28, i32 1)
  %30 = load %struct.pci_devinfo*, %struct.pci_devinfo** %5, align 8
  %31 = getelementptr inbounds %struct.pci_devinfo, %struct.pci_devinfo* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 16
  store i8* %29, i8** %32, align 8
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* @PCIR_INTPIN, align 4
  %35 = call i8* @pci_read_config(i32 %33, i32 %34, i32 1)
  %36 = load %struct.pci_devinfo*, %struct.pci_devinfo** %5, align 8
  %37 = getelementptr inbounds %struct.pci_devinfo, %struct.pci_devinfo* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 15
  store i8* %35, i8** %38, align 8
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* @PCIR_CACHELNSZ, align 4
  %41 = call i8* @pci_read_config(i32 %39, i32 %40, i32 1)
  %42 = load %struct.pci_devinfo*, %struct.pci_devinfo** %5, align 8
  %43 = getelementptr inbounds %struct.pci_devinfo, %struct.pci_devinfo* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 14
  store i8* %41, i8** %44, align 8
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* @PCIR_LATTIMER, align 4
  %47 = call i8* @pci_read_config(i32 %45, i32 %46, i32 1)
  %48 = load %struct.pci_devinfo*, %struct.pci_devinfo** %5, align 8
  %49 = getelementptr inbounds %struct.pci_devinfo, %struct.pci_devinfo* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 13
  store i8* %47, i8** %50, align 8
  %51 = load i32, i32* %4, align 4
  %52 = load i32, i32* @PCIR_CLASS, align 4
  %53 = call i8* @pci_read_config(i32 %51, i32 %52, i32 1)
  %54 = load %struct.pci_devinfo*, %struct.pci_devinfo** %5, align 8
  %55 = getelementptr inbounds %struct.pci_devinfo, %struct.pci_devinfo* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 12
  store i8* %53, i8** %56, align 8
  %57 = load i32, i32* %4, align 4
  %58 = load i32, i32* @PCIR_SUBCLASS, align 4
  %59 = call i8* @pci_read_config(i32 %57, i32 %58, i32 1)
  %60 = load %struct.pci_devinfo*, %struct.pci_devinfo** %5, align 8
  %61 = getelementptr inbounds %struct.pci_devinfo, %struct.pci_devinfo* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 11
  store i8* %59, i8** %62, align 8
  %63 = load i32, i32* %4, align 4
  %64 = load i32, i32* @PCIR_PROGIF, align 4
  %65 = call i8* @pci_read_config(i32 %63, i32 %64, i32 1)
  %66 = load %struct.pci_devinfo*, %struct.pci_devinfo** %5, align 8
  %67 = getelementptr inbounds %struct.pci_devinfo, %struct.pci_devinfo* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 10
  store i8* %65, i8** %68, align 8
  %69 = load i32, i32* %4, align 4
  %70 = load i32, i32* @PCIR_REVID, align 4
  %71 = call i8* @pci_read_config(i32 %69, i32 %70, i32 1)
  %72 = load %struct.pci_devinfo*, %struct.pci_devinfo** %5, align 8
  %73 = getelementptr inbounds %struct.pci_devinfo, %struct.pci_devinfo* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 9
  store i8* %71, i8** %74, align 8
  %75 = load %struct.pci_devinfo*, %struct.pci_devinfo** %5, align 8
  %76 = getelementptr inbounds %struct.pci_devinfo, %struct.pci_devinfo* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @PCIM_HDRTYPE, align 4
  %80 = and i32 %78, %79
  switch i32 %80, label %190 [
    i32 128, label %81
    i32 130, label %106
    i32 129, label %142
  ]

81:                                               ; preds = %3
  %82 = load i32, i32* %4, align 4
  %83 = load i32, i32* @PCIR_SUBVEND_0, align 4
  %84 = call i8* @pci_read_config(i32 %82, i32 %83, i32 2)
  %85 = load %struct.pci_devinfo*, %struct.pci_devinfo** %5, align 8
  %86 = getelementptr inbounds %struct.pci_devinfo, %struct.pci_devinfo* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 5
  store i8* %84, i8** %87, align 8
  %88 = load i32, i32* %4, align 4
  %89 = load i32, i32* @PCIR_SUBDEV_0, align 4
  %90 = call i8* @pci_read_config(i32 %88, i32 %89, i32 2)
  %91 = load %struct.pci_devinfo*, %struct.pci_devinfo** %5, align 8
  %92 = getelementptr inbounds %struct.pci_devinfo, %struct.pci_devinfo* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 4
  store i8* %90, i8** %93, align 8
  %94 = load i32, i32* %4, align 4
  %95 = load i32, i32* @PCIR_MINGNT, align 4
  %96 = call i8* @pci_read_config(i32 %94, i32 %95, i32 1)
  %97 = load %struct.pci_devinfo*, %struct.pci_devinfo** %5, align 8
  %98 = getelementptr inbounds %struct.pci_devinfo, %struct.pci_devinfo* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 8
  store i8* %96, i8** %99, align 8
  %100 = load i32, i32* %4, align 4
  %101 = load i32, i32* @PCIR_MAXLAT, align 4
  %102 = call i8* @pci_read_config(i32 %100, i32 %101, i32 1)
  %103 = load %struct.pci_devinfo*, %struct.pci_devinfo** %5, align 8
  %104 = getelementptr inbounds %struct.pci_devinfo, %struct.pci_devinfo* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 7
  store i8* %102, i8** %105, align 8
  br label %190

106:                                              ; preds = %3
  %107 = load i32, i32* %4, align 4
  %108 = load i32, i32* @PCIR_SECLAT_1, align 4
  %109 = call i8* @pci_read_config(i32 %107, i32 %108, i32 1)
  %110 = load %struct.pci_devinfo*, %struct.pci_devinfo** %5, align 8
  %111 = getelementptr inbounds %struct.pci_devinfo, %struct.pci_devinfo* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 6
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 4
  store i8* %109, i8** %113, align 8
  %114 = load i32, i32* %4, align 4
  %115 = load i32, i32* @PCIR_SUBBUS_1, align 4
  %116 = call i8* @pci_read_config(i32 %114, i32 %115, i32 1)
  %117 = load %struct.pci_devinfo*, %struct.pci_devinfo** %5, align 8
  %118 = getelementptr inbounds %struct.pci_devinfo, %struct.pci_devinfo* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 6
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 3
  store i8* %116, i8** %120, align 8
  %121 = load i32, i32* %4, align 4
  %122 = load i32, i32* @PCIR_SECBUS_1, align 4
  %123 = call i8* @pci_read_config(i32 %121, i32 %122, i32 1)
  %124 = load %struct.pci_devinfo*, %struct.pci_devinfo** %5, align 8
  %125 = getelementptr inbounds %struct.pci_devinfo, %struct.pci_devinfo* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i32 0, i32 6
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 2
  store i8* %123, i8** %127, align 8
  %128 = load i32, i32* %4, align 4
  %129 = load i32, i32* @PCIR_PRIBUS_1, align 4
  %130 = call i8* @pci_read_config(i32 %128, i32 %129, i32 1)
  %131 = load %struct.pci_devinfo*, %struct.pci_devinfo** %5, align 8
  %132 = getelementptr inbounds %struct.pci_devinfo, %struct.pci_devinfo* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i32 0, i32 6
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 1
  store i8* %130, i8** %134, align 8
  %135 = load i32, i32* %4, align 4
  %136 = load i32, i32* @PCIR_BRIDGECTL_1, align 4
  %137 = call i8* @pci_read_config(i32 %135, i32 %136, i32 2)
  %138 = load %struct.pci_devinfo*, %struct.pci_devinfo** %5, align 8
  %139 = getelementptr inbounds %struct.pci_devinfo, %struct.pci_devinfo* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %139, i32 0, i32 6
  %141 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %140, i32 0, i32 0
  store i8* %137, i8** %141, align 8
  br label %190

142:                                              ; preds = %3
  %143 = load i32, i32* %4, align 4
  %144 = load i32, i32* @PCIR_SECLAT_2, align 4
  %145 = call i8* @pci_read_config(i32 %143, i32 %144, i32 1)
  %146 = load %struct.pci_devinfo*, %struct.pci_devinfo** %5, align 8
  %147 = getelementptr inbounds %struct.pci_devinfo, %struct.pci_devinfo* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %147, i32 0, i32 6
  %149 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %148, i32 0, i32 4
  store i8* %145, i8** %149, align 8
  %150 = load i32, i32* %4, align 4
  %151 = load i32, i32* @PCIR_SUBBUS_2, align 4
  %152 = call i8* @pci_read_config(i32 %150, i32 %151, i32 1)
  %153 = load %struct.pci_devinfo*, %struct.pci_devinfo** %5, align 8
  %154 = getelementptr inbounds %struct.pci_devinfo, %struct.pci_devinfo* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %154, i32 0, i32 6
  %156 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %155, i32 0, i32 3
  store i8* %152, i8** %156, align 8
  %157 = load i32, i32* %4, align 4
  %158 = load i32, i32* @PCIR_SECBUS_2, align 4
  %159 = call i8* @pci_read_config(i32 %157, i32 %158, i32 1)
  %160 = load %struct.pci_devinfo*, %struct.pci_devinfo** %5, align 8
  %161 = getelementptr inbounds %struct.pci_devinfo, %struct.pci_devinfo* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %161, i32 0, i32 6
  %163 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %162, i32 0, i32 2
  store i8* %159, i8** %163, align 8
  %164 = load i32, i32* %4, align 4
  %165 = load i32, i32* @PCIR_PRIBUS_2, align 4
  %166 = call i8* @pci_read_config(i32 %164, i32 %165, i32 1)
  %167 = load %struct.pci_devinfo*, %struct.pci_devinfo** %5, align 8
  %168 = getelementptr inbounds %struct.pci_devinfo, %struct.pci_devinfo* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %168, i32 0, i32 6
  %170 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %169, i32 0, i32 1
  store i8* %166, i8** %170, align 8
  %171 = load i32, i32* %4, align 4
  %172 = load i32, i32* @PCIR_BRIDGECTL_2, align 4
  %173 = call i8* @pci_read_config(i32 %171, i32 %172, i32 2)
  %174 = load %struct.pci_devinfo*, %struct.pci_devinfo** %5, align 8
  %175 = getelementptr inbounds %struct.pci_devinfo, %struct.pci_devinfo* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %175, i32 0, i32 6
  %177 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %176, i32 0, i32 0
  store i8* %173, i8** %177, align 8
  %178 = load i32, i32* %4, align 4
  %179 = load i32, i32* @PCIR_SUBVEND_2, align 4
  %180 = call i8* @pci_read_config(i32 %178, i32 %179, i32 2)
  %181 = load %struct.pci_devinfo*, %struct.pci_devinfo** %5, align 8
  %182 = getelementptr inbounds %struct.pci_devinfo, %struct.pci_devinfo* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %182, i32 0, i32 5
  store i8* %180, i8** %183, align 8
  %184 = load i32, i32* %4, align 4
  %185 = load i32, i32* @PCIR_SUBDEV_2, align 4
  %186 = call i8* @pci_read_config(i32 %184, i32 %185, i32 2)
  %187 = load %struct.pci_devinfo*, %struct.pci_devinfo** %5, align 8
  %188 = getelementptr inbounds %struct.pci_devinfo, %struct.pci_devinfo* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %188, i32 0, i32 4
  store i8* %186, i8** %189, align 8
  br label %190

190:                                              ; preds = %3, %142, %106, %81
  %191 = load %struct.pci_devinfo*, %struct.pci_devinfo** %5, align 8
  %192 = getelementptr inbounds %struct.pci_devinfo, %struct.pci_devinfo* %191, i32 0, i32 0
  %193 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %192, i32 0, i32 3
  %194 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %193, i32 0, i32 0
  %195 = load i64, i64* %194, align 8
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %201

197:                                              ; preds = %190
  %198 = load i32, i32* %4, align 4
  %199 = load %struct.pci_devinfo*, %struct.pci_devinfo** %5, align 8
  %200 = call i32 @pci_cfg_save_pcie(i32 %198, %struct.pci_devinfo* %199)
  br label %201

201:                                              ; preds = %197, %190
  %202 = load %struct.pci_devinfo*, %struct.pci_devinfo** %5, align 8
  %203 = getelementptr inbounds %struct.pci_devinfo, %struct.pci_devinfo* %202, i32 0, i32 0
  %204 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %203, i32 0, i32 2
  %205 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %204, i32 0, i32 0
  %206 = load i64, i64* %205, align 8
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %212

208:                                              ; preds = %201
  %209 = load i32, i32* %4, align 4
  %210 = load %struct.pci_devinfo*, %struct.pci_devinfo** %5, align 8
  %211 = call i32 @pci_cfg_save_pcix(i32 %209, %struct.pci_devinfo* %210)
  br label %212

212:                                              ; preds = %208, %201
  %213 = load i32, i32* %4, align 4
  %214 = call i32 @pci_get_class(i32 %213)
  store i32 %214, i32* %7, align 4
  %215 = load i32, i32* %6, align 4
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %218, label %217

217:                                              ; preds = %212
  br label %265

218:                                              ; preds = %212
  %219 = load i32, i32* @pci_do_power_nodriver, align 4
  switch i32 %219, label %242 [
    i32 0, label %220
    i32 1, label %221
    i32 2, label %227
    i32 3, label %241
  ]

220:                                              ; preds = %218
  br label %265

221:                                              ; preds = %218
  %222 = load i32, i32* %7, align 4
  %223 = load i32, i32* @PCIC_STORAGE, align 4
  %224 = icmp eq i32 %222, %223
  br i1 %224, label %225, label %226

225:                                              ; preds = %221
  br label %265

226:                                              ; preds = %221
  br label %227

227:                                              ; preds = %218, %226
  %228 = load i32, i32* %7, align 4
  %229 = load i32, i32* @PCIC_DISPLAY, align 4
  %230 = icmp eq i32 %228, %229
  br i1 %230, label %239, label %231

231:                                              ; preds = %227
  %232 = load i32, i32* %7, align 4
  %233 = load i32, i32* @PCIC_MEMORY, align 4
  %234 = icmp eq i32 %232, %233
  br i1 %234, label %239, label %235

235:                                              ; preds = %231
  %236 = load i32, i32* %7, align 4
  %237 = load i32, i32* @PCIC_BASEPERIPH, align 4
  %238 = icmp eq i32 %236, %237
  br i1 %238, label %239, label %240

239:                                              ; preds = %235, %231, %227
  br label %265

240:                                              ; preds = %235
  br label %241

241:                                              ; preds = %218, %240
  br label %242

242:                                              ; preds = %218, %241
  %243 = load i32, i32* %4, align 4
  %244 = call i32 @pci_get_powerstate(i32 %243)
  store i32 %244, i32* %8, align 4
  %245 = load i32, i32* %8, align 4
  %246 = load i32, i32* @PCI_POWERSTATE_D0, align 4
  %247 = icmp ne i32 %245, %246
  br i1 %247, label %248, label %256

248:                                              ; preds = %242
  %249 = load i32, i32* %8, align 4
  %250 = load i32, i32* @PCI_POWERSTATE_D3, align 4
  %251 = icmp ne i32 %249, %250
  br i1 %251, label %252, label %256

252:                                              ; preds = %248
  %253 = load i32, i32* %4, align 4
  %254 = load i32, i32* @PCI_POWERSTATE_D0, align 4
  %255 = call i32 @pci_set_powerstate(i32 %253, i32 %254)
  br label %256

256:                                              ; preds = %252, %248, %242
  %257 = load i32, i32* %4, align 4
  %258 = call i32 @pci_get_powerstate(i32 %257)
  %259 = load i32, i32* @PCI_POWERSTATE_D3, align 4
  %260 = icmp ne i32 %258, %259
  br i1 %260, label %261, label %265

261:                                              ; preds = %256
  %262 = load i32, i32* %4, align 4
  %263 = load i32, i32* @PCI_POWERSTATE_D3, align 4
  %264 = call i32 @pci_set_powerstate(i32 %262, i32 %263)
  br label %265

265:                                              ; preds = %217, %220, %225, %239, %261, %256
  ret void
}

declare dso_local i8* @pci_read_config(i32, i32, i32) #1

declare dso_local i32 @pci_cfg_save_pcie(i32, %struct.pci_devinfo*) #1

declare dso_local i32 @pci_cfg_save_pcix(i32, %struct.pci_devinfo*) #1

declare dso_local i32 @pci_get_class(i32) #1

declare dso_local i32 @pci_get_powerstate(i32) #1

declare dso_local i32 @pci_set_powerstate(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
