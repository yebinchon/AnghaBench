; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_fbuf.c_pci_fbuf_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_fbuf.c_pci_fbuf_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_fbuf_softc = type { i32, i64, i64, i32, i32, i32, i32, i32, i32, %struct.TYPE_4__, i32, %struct.pci_devinst* }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.pci_devinst = type { %struct.TYPE_3__*, %struct.pci_fbuf_softc* }
%struct.TYPE_3__ = type { i32 }
%struct.vmctx = type { i32 }

@fbuf_sc = common dso_local global %struct.pci_fbuf_softc* null, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Only one frame buffer device is allowed.\0A\00", align 1
@PCIR_DEVICE = common dso_local global i32 0, align 4
@PCIR_VENDOR = common dso_local global i32 0, align 4
@PCIR_CLASS = common dso_local global i32 0, align 4
@PCIC_DISPLAY = common dso_local global i32 0, align 4
@PCIR_SUBCLASS = common dso_local global i32 0, align 4
@PCIS_DISPLAY_VGA = common dso_local global i32 0, align 4
@PCIBAR_MEM32 = common dso_local global i32 0, align 4
@DMEMSZ = common dso_local global i32 0, align 4
@FB_SIZE = common dso_local global i32 0, align 4
@PCI_FBUF_MSI_MSGS = common dso_local global i32 0, align 4
@COLS_DEFAULT = common dso_local global i32 0, align 4
@ROWS_DEFAULT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"pci_fbuf: VGA rendering not enabled\00", align 1
@VM_FRAMEBUFFER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"framebuffer\00", align 1
@MAP_FAILED = common dso_local global i64 0, align 8
@DEBUG_INFO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [38 x i8] c"fbuf frame buffer base: %p [sz %lu]\0D\0A\00", align 1
@PROT_READ = common dso_local global i32 0, align 4
@PROT_WRITE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [58 x i8] c"pci_fbuf: mapseg failed - try deleting VM and restarting\0A\00", align 1
@pci_fbuf_render = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vmctx*, %struct.pci_devinst*, i8*)* @pci_fbuf_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci_fbuf_init(%struct.vmctx* %0, %struct.pci_devinst* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vmctx*, align 8
  %6 = alloca %struct.pci_devinst*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.pci_fbuf_softc*, align 8
  store %struct.vmctx* %0, %struct.vmctx** %5, align 8
  store %struct.pci_devinst* %1, %struct.pci_devinst** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load %struct.pci_fbuf_softc*, %struct.pci_fbuf_softc** @fbuf_sc, align 8
  %12 = icmp ne %struct.pci_fbuf_softc* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = load i32, i32* @stderr, align 4
  %15 = call i32 @fprintf(i32 %14, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %201

16:                                               ; preds = %3
  %17 = call %struct.pci_fbuf_softc* @calloc(i32 1, i32 80)
  store %struct.pci_fbuf_softc* %17, %struct.pci_fbuf_softc** %10, align 8
  %18 = load %struct.pci_fbuf_softc*, %struct.pci_fbuf_softc** %10, align 8
  %19 = load %struct.pci_devinst*, %struct.pci_devinst** %6, align 8
  %20 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %19, i32 0, i32 1
  store %struct.pci_fbuf_softc* %18, %struct.pci_fbuf_softc** %20, align 8
  %21 = load %struct.pci_devinst*, %struct.pci_devinst** %6, align 8
  %22 = load i32, i32* @PCIR_DEVICE, align 4
  %23 = call i32 @pci_set_cfgdata16(%struct.pci_devinst* %21, i32 %22, i32 16635)
  %24 = load %struct.pci_devinst*, %struct.pci_devinst** %6, align 8
  %25 = load i32, i32* @PCIR_VENDOR, align 4
  %26 = call i32 @pci_set_cfgdata16(%struct.pci_devinst* %24, i32 %25, i32 64349)
  %27 = load %struct.pci_devinst*, %struct.pci_devinst** %6, align 8
  %28 = load i32, i32* @PCIR_CLASS, align 4
  %29 = load i32, i32* @PCIC_DISPLAY, align 4
  %30 = call i32 @pci_set_cfgdata8(%struct.pci_devinst* %27, i32 %28, i32 %29)
  %31 = load %struct.pci_devinst*, %struct.pci_devinst** %6, align 8
  %32 = load i32, i32* @PCIR_SUBCLASS, align 4
  %33 = load i32, i32* @PCIS_DISPLAY_VGA, align 4
  %34 = call i32 @pci_set_cfgdata8(%struct.pci_devinst* %31, i32 %32, i32 %33)
  %35 = load %struct.pci_devinst*, %struct.pci_devinst** %6, align 8
  %36 = load i32, i32* @PCIBAR_MEM32, align 4
  %37 = load i32, i32* @DMEMSZ, align 4
  %38 = call i32 @pci_emul_alloc_bar(%struct.pci_devinst* %35, i32 0, i32 %36, i32 %37)
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %8, align 4
  %40 = icmp eq i32 %39, 0
  %41 = zext i1 %40 to i32
  %42 = call i32 @assert(i32 %41)
  %43 = load %struct.pci_devinst*, %struct.pci_devinst** %6, align 8
  %44 = load i32, i32* @PCIBAR_MEM32, align 4
  %45 = load i32, i32* @FB_SIZE, align 4
  %46 = call i32 @pci_emul_alloc_bar(%struct.pci_devinst* %43, i32 1, i32 %44, i32 %45)
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %8, align 4
  %48 = icmp eq i32 %47, 0
  %49 = zext i1 %48 to i32
  %50 = call i32 @assert(i32 %49)
  %51 = load %struct.pci_devinst*, %struct.pci_devinst** %6, align 8
  %52 = load i32, i32* @PCI_FBUF_MSI_MSGS, align 4
  %53 = call i32 @pci_emul_add_msicap(%struct.pci_devinst* %51, i32 %52)
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* %8, align 4
  %55 = icmp eq i32 %54, 0
  %56 = zext i1 %55 to i32
  %57 = call i32 @assert(i32 %56)
  %58 = load %struct.pci_devinst*, %struct.pci_devinst** %6, align 8
  %59 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %58, i32 0, i32 0
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i64 1
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.pci_fbuf_softc*, %struct.pci_fbuf_softc** %10, align 8
  %65 = getelementptr inbounds %struct.pci_fbuf_softc, %struct.pci_fbuf_softc* %64, i32 0, i32 10
  store i32 %63, i32* %65, align 8
  %66 = load i32, i32* @FB_SIZE, align 4
  %67 = load %struct.pci_fbuf_softc*, %struct.pci_fbuf_softc** %10, align 8
  %68 = getelementptr inbounds %struct.pci_fbuf_softc, %struct.pci_fbuf_softc* %67, i32 0, i32 9
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 3
  store i32 %66, i32* %69, align 4
  %70 = load i32, i32* @COLS_DEFAULT, align 4
  %71 = load %struct.pci_fbuf_softc*, %struct.pci_fbuf_softc** %10, align 8
  %72 = getelementptr inbounds %struct.pci_fbuf_softc, %struct.pci_fbuf_softc* %71, i32 0, i32 9
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 2
  store i32 %70, i32* %73, align 8
  %74 = load i32, i32* @ROWS_DEFAULT, align 4
  %75 = load %struct.pci_fbuf_softc*, %struct.pci_fbuf_softc** %10, align 8
  %76 = getelementptr inbounds %struct.pci_fbuf_softc, %struct.pci_fbuf_softc* %75, i32 0, i32 9
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 1
  store i32 %74, i32* %77, align 4
  %78 = load %struct.pci_fbuf_softc*, %struct.pci_fbuf_softc** %10, align 8
  %79 = getelementptr inbounds %struct.pci_fbuf_softc, %struct.pci_fbuf_softc* %78, i32 0, i32 9
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  store i32 32, i32* %80, align 8
  %81 = load %struct.pci_fbuf_softc*, %struct.pci_fbuf_softc** %10, align 8
  %82 = getelementptr inbounds %struct.pci_fbuf_softc, %struct.pci_fbuf_softc* %81, i32 0, i32 0
  store i32 1, i32* %82, align 8
  %83 = load %struct.pci_fbuf_softc*, %struct.pci_fbuf_softc** %10, align 8
  %84 = getelementptr inbounds %struct.pci_fbuf_softc, %struct.pci_fbuf_softc* %83, i32 0, i32 1
  store i64 0, i64* %84, align 8
  %85 = load %struct.pci_devinst*, %struct.pci_devinst** %6, align 8
  %86 = load %struct.pci_fbuf_softc*, %struct.pci_fbuf_softc** %10, align 8
  %87 = getelementptr inbounds %struct.pci_fbuf_softc, %struct.pci_fbuf_softc* %86, i32 0, i32 11
  store %struct.pci_devinst* %85, %struct.pci_devinst** %87, align 8
  %88 = load %struct.pci_fbuf_softc*, %struct.pci_fbuf_softc** %10, align 8
  %89 = load i8*, i8** %7, align 8
  %90 = call i32 @pci_fbuf_parse_opts(%struct.pci_fbuf_softc* %88, i8* %89)
  store i32 %90, i32* %8, align 4
  %91 = load i32, i32* %8, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %16
  br label %193

94:                                               ; preds = %16
  %95 = load %struct.pci_fbuf_softc*, %struct.pci_fbuf_softc** %10, align 8
  %96 = getelementptr inbounds %struct.pci_fbuf_softc, %struct.pci_fbuf_softc* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %94
  %100 = load i32, i32* @stderr, align 4
  %101 = call i32 @fprintf(i32 %100, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %193

102:                                              ; preds = %94
  %103 = load %struct.vmctx*, %struct.vmctx** %5, align 8
  %104 = load i32, i32* @VM_FRAMEBUFFER, align 4
  %105 = load i32, i32* @FB_SIZE, align 4
  %106 = call i64 @vm_create_devmem(%struct.vmctx* %103, i32 %104, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 %105)
  %107 = load %struct.pci_fbuf_softc*, %struct.pci_fbuf_softc** %10, align 8
  %108 = getelementptr inbounds %struct.pci_fbuf_softc, %struct.pci_fbuf_softc* %107, i32 0, i32 2
  store i64 %106, i64* %108, align 8
  %109 = load %struct.pci_fbuf_softc*, %struct.pci_fbuf_softc** %10, align 8
  %110 = getelementptr inbounds %struct.pci_fbuf_softc, %struct.pci_fbuf_softc* %109, i32 0, i32 2
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @MAP_FAILED, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %114, label %115

114:                                              ; preds = %102
  store i32 -1, i32* %8, align 4
  br label %193

115:                                              ; preds = %102
  %116 = load i32, i32* @DEBUG_INFO, align 4
  %117 = load %struct.pci_fbuf_softc*, %struct.pci_fbuf_softc** %10, align 8
  %118 = getelementptr inbounds %struct.pci_fbuf_softc, %struct.pci_fbuf_softc* %117, i32 0, i32 2
  %119 = load i64, i64* %118, align 8
  %120 = load i32, i32* @FB_SIZE, align 4
  %121 = sext i32 %120 to i64
  %122 = inttoptr i64 %121 to i8*
  %123 = call i32 @DPRINTF(i32 %116, i8* %122)
  %124 = load i32, i32* @PROT_READ, align 4
  %125 = load i32, i32* @PROT_WRITE, align 4
  %126 = or i32 %124, %125
  store i32 %126, i32* %9, align 4
  %127 = load %struct.vmctx*, %struct.vmctx** %5, align 8
  %128 = load %struct.pci_fbuf_softc*, %struct.pci_fbuf_softc** %10, align 8
  %129 = getelementptr inbounds %struct.pci_fbuf_softc, %struct.pci_fbuf_softc* %128, i32 0, i32 10
  %130 = load i32, i32* %129, align 8
  %131 = load i32, i32* @VM_FRAMEBUFFER, align 4
  %132 = load i32, i32* @FB_SIZE, align 4
  %133 = load i32, i32* %9, align 4
  %134 = call i64 @vm_mmap_memseg(%struct.vmctx* %127, i32 %130, i32 %131, i32 0, i32 %132, i32 %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %139

136:                                              ; preds = %115
  %137 = load i32, i32* @stderr, align 4
  %138 = call i32 @fprintf(i32 %137, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.4, i64 0, i64 0))
  store i32 -1, i32* %8, align 4
  br label %193

139:                                              ; preds = %115
  %140 = load %struct.pci_fbuf_softc*, %struct.pci_fbuf_softc** %10, align 8
  %141 = getelementptr inbounds %struct.pci_fbuf_softc, %struct.pci_fbuf_softc* %140, i32 0, i32 9
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 8
  %144 = load %struct.pci_fbuf_softc*, %struct.pci_fbuf_softc** %10, align 8
  %145 = getelementptr inbounds %struct.pci_fbuf_softc, %struct.pci_fbuf_softc* %144, i32 0, i32 9
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.pci_fbuf_softc*, %struct.pci_fbuf_softc** %10, align 8
  %149 = getelementptr inbounds %struct.pci_fbuf_softc, %struct.pci_fbuf_softc* %148, i32 0, i32 2
  %150 = load i64, i64* %149, align 8
  %151 = call i32 @console_init(i32 %143, i32 %147, i64 %150)
  %152 = load i32, i32* @pci_fbuf_render, align 4
  %153 = load %struct.pci_fbuf_softc*, %struct.pci_fbuf_softc** %10, align 8
  %154 = call i32 @console_fb_register(i32 %152, %struct.pci_fbuf_softc* %153)
  %155 = load %struct.pci_fbuf_softc*, %struct.pci_fbuf_softc** %10, align 8
  %156 = getelementptr inbounds %struct.pci_fbuf_softc, %struct.pci_fbuf_softc* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %169

159:                                              ; preds = %139
  %160 = load %struct.pci_fbuf_softc*, %struct.pci_fbuf_softc** %10, align 8
  %161 = getelementptr inbounds %struct.pci_fbuf_softc, %struct.pci_fbuf_softc* %160, i32 0, i32 1
  %162 = load i64, i64* %161, align 8
  %163 = icmp ne i64 %162, 0
  %164 = xor i1 %163, true
  %165 = zext i1 %164 to i32
  %166 = call i32 @vga_init(i32 %165)
  %167 = load %struct.pci_fbuf_softc*, %struct.pci_fbuf_softc** %10, align 8
  %168 = getelementptr inbounds %struct.pci_fbuf_softc, %struct.pci_fbuf_softc* %167, i32 0, i32 8
  store i32 %166, i32* %168, align 4
  br label %169

169:                                              ; preds = %159, %139
  %170 = call i32 (...) @console_get_image()
  %171 = load %struct.pci_fbuf_softc*, %struct.pci_fbuf_softc** %10, align 8
  %172 = getelementptr inbounds %struct.pci_fbuf_softc, %struct.pci_fbuf_softc* %171, i32 0, i32 7
  store i32 %170, i32* %172, align 8
  %173 = load %struct.pci_fbuf_softc*, %struct.pci_fbuf_softc** %10, align 8
  store %struct.pci_fbuf_softc* %173, %struct.pci_fbuf_softc** @fbuf_sc, align 8
  %174 = load %struct.pci_fbuf_softc*, %struct.pci_fbuf_softc** %10, align 8
  %175 = getelementptr inbounds %struct.pci_fbuf_softc, %struct.pci_fbuf_softc* %174, i32 0, i32 2
  %176 = load i64, i64* %175, align 8
  %177 = inttoptr i64 %176 to i8*
  %178 = load i32, i32* @FB_SIZE, align 4
  %179 = call i32 @memset(i8* %177, i32 0, i32 %178)
  %180 = load %struct.pci_fbuf_softc*, %struct.pci_fbuf_softc** %10, align 8
  %181 = getelementptr inbounds %struct.pci_fbuf_softc, %struct.pci_fbuf_softc* %180, i32 0, i32 6
  %182 = load i32, i32* %181, align 4
  %183 = load %struct.pci_fbuf_softc*, %struct.pci_fbuf_softc** %10, align 8
  %184 = getelementptr inbounds %struct.pci_fbuf_softc, %struct.pci_fbuf_softc* %183, i32 0, i32 5
  %185 = load i32, i32* %184, align 8
  %186 = load %struct.pci_fbuf_softc*, %struct.pci_fbuf_softc** %10, align 8
  %187 = getelementptr inbounds %struct.pci_fbuf_softc, %struct.pci_fbuf_softc* %186, i32 0, i32 4
  %188 = load i32, i32* %187, align 4
  %189 = load %struct.pci_fbuf_softc*, %struct.pci_fbuf_softc** %10, align 8
  %190 = getelementptr inbounds %struct.pci_fbuf_softc, %struct.pci_fbuf_softc* %189, i32 0, i32 3
  %191 = load i32, i32* %190, align 8
  %192 = call i32 @rfb_init(i32 %182, i32 %185, i32 %188, i32 %191)
  store i32 %192, i32* %8, align 4
  br label %193

193:                                              ; preds = %169, %136, %114, %99, %93
  %194 = load i32, i32* %8, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %199

196:                                              ; preds = %193
  %197 = load %struct.pci_fbuf_softc*, %struct.pci_fbuf_softc** %10, align 8
  %198 = call i32 @free(%struct.pci_fbuf_softc* %197)
  br label %199

199:                                              ; preds = %196, %193
  %200 = load i32, i32* %8, align 4
  store i32 %200, i32* %4, align 4
  br label %201

201:                                              ; preds = %199, %13
  %202 = load i32, i32* %4, align 4
  ret i32 %202
}

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local %struct.pci_fbuf_softc* @calloc(i32, i32) #1

declare dso_local i32 @pci_set_cfgdata16(%struct.pci_devinst*, i32, i32) #1

declare dso_local i32 @pci_set_cfgdata8(%struct.pci_devinst*, i32, i32) #1

declare dso_local i32 @pci_emul_alloc_bar(%struct.pci_devinst*, i32, i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @pci_emul_add_msicap(%struct.pci_devinst*, i32) #1

declare dso_local i32 @pci_fbuf_parse_opts(%struct.pci_fbuf_softc*, i8*) #1

declare dso_local i64 @vm_create_devmem(%struct.vmctx*, i32, i8*, i32) #1

declare dso_local i32 @DPRINTF(i32, i8*) #1

declare dso_local i64 @vm_mmap_memseg(%struct.vmctx*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @console_init(i32, i32, i64) #1

declare dso_local i32 @console_fb_register(i32, %struct.pci_fbuf_softc*) #1

declare dso_local i32 @vga_init(i32) #1

declare dso_local i32 @console_get_image(...) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @rfb_init(i32, i32, i32, i32) #1

declare dso_local i32 @free(%struct.pci_fbuf_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
