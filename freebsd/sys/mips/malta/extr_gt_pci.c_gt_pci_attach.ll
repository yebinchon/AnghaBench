; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/malta/extr_gt_pci.c_gt_pci_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/malta/extr_gt_pci.c_gt_pci_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gt_pci_softc = type { i32, i32, i32, i32, i32, i32*, i8*, i32, i8*, i8*, i64, %struct.TYPE_3__, %struct.TYPE_3__, %struct.TYPE_3__, i64, i32 }
%struct.TYPE_3__ = type { i8*, i8* }

@mips_bus_space_generic = common dso_local global i32 0, align 4
@MALTA_PCI0_IO_BASE = common dso_local global i64 0, align 8
@RMAN_ARRAY = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [22 x i8] c"GT64120 PCI I/O Ports\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"gt_pci_attach: failed to set up I/O rman\00", align 1
@MALTA_PCIMEM1_BASE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"GT64120 PCI Memory\00", align 1
@MALTA_PCIMEM1_SIZE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [44 x i8] c"gt_pci_attach: failed to set up memory rman\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"GT64120 PCI IRQs\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"gt_pci_attach: failed to set up IRQ rman\00", align 1
@IO_ICU1 = common dso_local global i32 0, align 4
@IO_ICU2 = common dso_local global i32 0, align 4
@ICW1_RESET = common dso_local global i32 0, align 4
@ICW1_IC4 = common dso_local global i32 0, align 4
@ICW4_8086 = common dso_local global i32 0, align 4
@OCW3_SEL = common dso_local global i32 0, align 4
@OCW3_ESMM = common dso_local global i32 0, align 4
@OCW3_SMM = common dso_local global i32 0, align 4
@OCW3_RR = common dso_local global i32 0, align 4
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@MALTA_SOUTHBRIDGE_INTR = common dso_local global i32 0, align 4
@RF_SHAREABLE = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [33 x i8] c"unable to allocate IRQ resource\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@INTR_TYPE_MISC = common dso_local global i32 0, align 4
@gt_pci_intr = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [47 x i8] c"WARNING: unable to register interrupt handler\0A\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"pci\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @gt_pci_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gt_pci_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.gt_pci_softc*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call %struct.gt_pci_softc* @device_get_softc(i32 %7)
  store %struct.gt_pci_softc* %8, %struct.gt_pci_softc** %5, align 8
  store i64 0, i64* %4, align 8
  %9 = load i32, i32* %3, align 4
  %10 = load %struct.gt_pci_softc*, %struct.gt_pci_softc** %5, align 8
  %11 = getelementptr inbounds %struct.gt_pci_softc, %struct.gt_pci_softc* %10, i32 0, i32 15
  store i32 %9, i32* %11, align 8
  %12 = load i64, i64* %4, align 8
  %13 = load %struct.gt_pci_softc*, %struct.gt_pci_softc** %5, align 8
  %14 = getelementptr inbounds %struct.gt_pci_softc, %struct.gt_pci_softc* %13, i32 0, i32 14
  store i64 %12, i64* %14, align 8
  %15 = load i32, i32* @mips_bus_space_generic, align 4
  %16 = load %struct.gt_pci_softc*, %struct.gt_pci_softc** %5, align 8
  %17 = getelementptr inbounds %struct.gt_pci_softc, %struct.gt_pci_softc* %16, i32 0, i32 7
  store i32 %15, i32* %17, align 8
  %18 = load i64, i64* @MALTA_PCI0_IO_BASE, align 8
  %19 = load %struct.gt_pci_softc*, %struct.gt_pci_softc** %5, align 8
  %20 = getelementptr inbounds %struct.gt_pci_softc, %struct.gt_pci_softc* %19, i32 0, i32 10
  store i64 %18, i64* %20, align 8
  %21 = load i8*, i8** @RMAN_ARRAY, align 8
  %22 = load %struct.gt_pci_softc*, %struct.gt_pci_softc** %5, align 8
  %23 = getelementptr inbounds %struct.gt_pci_softc, %struct.gt_pci_softc* %22, i32 0, i32 13
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  store i8* %21, i8** %24, align 8
  %25 = load %struct.gt_pci_softc*, %struct.gt_pci_softc** %5, align 8
  %26 = getelementptr inbounds %struct.gt_pci_softc, %struct.gt_pci_softc* %25, i32 0, i32 13
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8** %27, align 8
  %28 = load %struct.gt_pci_softc*, %struct.gt_pci_softc** %5, align 8
  %29 = getelementptr inbounds %struct.gt_pci_softc, %struct.gt_pci_softc* %28, i32 0, i32 13
  %30 = call i64 @rman_init(%struct.TYPE_3__* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %1
  %33 = load %struct.gt_pci_softc*, %struct.gt_pci_softc** %5, align 8
  %34 = getelementptr inbounds %struct.gt_pci_softc, %struct.gt_pci_softc* %33, i32 0, i32 13
  %35 = call i64 @rman_manage_region(%struct.TYPE_3__* %34, i32 256, i32 65535)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %32, %1
  %38 = call i32 @panic(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  br label %39

39:                                               ; preds = %37, %32
  %40 = load i32, i32* @MALTA_PCIMEM1_BASE, align 4
  %41 = load %struct.gt_pci_softc*, %struct.gt_pci_softc** %5, align 8
  %42 = getelementptr inbounds %struct.gt_pci_softc, %struct.gt_pci_softc* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  %43 = load i8*, i8** @RMAN_ARRAY, align 8
  %44 = load %struct.gt_pci_softc*, %struct.gt_pci_softc** %5, align 8
  %45 = getelementptr inbounds %struct.gt_pci_softc, %struct.gt_pci_softc* %44, i32 0, i32 12
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 1
  store i8* %43, i8** %46, align 8
  %47 = load %struct.gt_pci_softc*, %struct.gt_pci_softc** %5, align 8
  %48 = getelementptr inbounds %struct.gt_pci_softc, %struct.gt_pci_softc* %47, i32 0, i32 12
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i8** %49, align 8
  %50 = load %struct.gt_pci_softc*, %struct.gt_pci_softc** %5, align 8
  %51 = getelementptr inbounds %struct.gt_pci_softc, %struct.gt_pci_softc* %50, i32 0, i32 12
  %52 = call i64 @rman_init(%struct.TYPE_3__* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %67, label %54

54:                                               ; preds = %39
  %55 = load %struct.gt_pci_softc*, %struct.gt_pci_softc** %5, align 8
  %56 = getelementptr inbounds %struct.gt_pci_softc, %struct.gt_pci_softc* %55, i32 0, i32 12
  %57 = load %struct.gt_pci_softc*, %struct.gt_pci_softc** %5, align 8
  %58 = getelementptr inbounds %struct.gt_pci_softc, %struct.gt_pci_softc* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.gt_pci_softc*, %struct.gt_pci_softc** %5, align 8
  %61 = getelementptr inbounds %struct.gt_pci_softc, %struct.gt_pci_softc* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @MALTA_PCIMEM1_SIZE, align 4
  %64 = add nsw i32 %62, %63
  %65 = call i64 @rman_manage_region(%struct.TYPE_3__* %56, i32 %59, i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %54, %39
  %68 = call i32 @panic(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0))
  br label %69

69:                                               ; preds = %67, %54
  %70 = load i8*, i8** @RMAN_ARRAY, align 8
  %71 = load %struct.gt_pci_softc*, %struct.gt_pci_softc** %5, align 8
  %72 = getelementptr inbounds %struct.gt_pci_softc, %struct.gt_pci_softc* %71, i32 0, i32 11
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 1
  store i8* %70, i8** %73, align 8
  %74 = load %struct.gt_pci_softc*, %struct.gt_pci_softc** %5, align 8
  %75 = getelementptr inbounds %struct.gt_pci_softc, %struct.gt_pci_softc* %74, i32 0, i32 11
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i8** %76, align 8
  %77 = load %struct.gt_pci_softc*, %struct.gt_pci_softc** %5, align 8
  %78 = getelementptr inbounds %struct.gt_pci_softc, %struct.gt_pci_softc* %77, i32 0, i32 11
  %79 = call i64 @rman_init(%struct.TYPE_3__* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %86, label %81

81:                                               ; preds = %69
  %82 = load %struct.gt_pci_softc*, %struct.gt_pci_softc** %5, align 8
  %83 = getelementptr inbounds %struct.gt_pci_softc, %struct.gt_pci_softc* %82, i32 0, i32 11
  %84 = call i64 @rman_manage_region(%struct.TYPE_3__* %83, i32 1, i32 31)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %81, %69
  %87 = call i32 @panic(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0))
  br label %88

88:                                               ; preds = %86, %81
  %89 = load %struct.gt_pci_softc*, %struct.gt_pci_softc** %5, align 8
  %90 = getelementptr inbounds %struct.gt_pci_softc, %struct.gt_pci_softc* %89, i32 0, i32 10
  %91 = load i64, i64* %90, align 8
  %92 = add nsw i64 %91, 1232
  %93 = call i8* @MIPS_PHYS_TO_KSEG1(i64 %92)
  %94 = load %struct.gt_pci_softc*, %struct.gt_pci_softc** %5, align 8
  %95 = getelementptr inbounds %struct.gt_pci_softc, %struct.gt_pci_softc* %94, i32 0, i32 6
  store i8* %93, i8** %95, align 8
  %96 = load %struct.gt_pci_softc*, %struct.gt_pci_softc** %5, align 8
  %97 = getelementptr inbounds %struct.gt_pci_softc, %struct.gt_pci_softc* %96, i32 0, i32 10
  %98 = load i64, i64* %97, align 8
  %99 = load i32, i32* @IO_ICU1, align 4
  %100 = sext i32 %99 to i64
  %101 = add nsw i64 %98, %100
  %102 = call i8* @MIPS_PHYS_TO_KSEG1(i64 %101)
  %103 = load %struct.gt_pci_softc*, %struct.gt_pci_softc** %5, align 8
  %104 = getelementptr inbounds %struct.gt_pci_softc, %struct.gt_pci_softc* %103, i32 0, i32 9
  store i8* %102, i8** %104, align 8
  %105 = load %struct.gt_pci_softc*, %struct.gt_pci_softc** %5, align 8
  %106 = getelementptr inbounds %struct.gt_pci_softc, %struct.gt_pci_softc* %105, i32 0, i32 10
  %107 = load i64, i64* %106, align 8
  %108 = load i32, i32* @IO_ICU2, align 4
  %109 = sext i32 %108 to i64
  %110 = add nsw i64 %107, %109
  %111 = call i8* @MIPS_PHYS_TO_KSEG1(i64 %110)
  %112 = load %struct.gt_pci_softc*, %struct.gt_pci_softc** %5, align 8
  %113 = getelementptr inbounds %struct.gt_pci_softc, %struct.gt_pci_softc* %112, i32 0, i32 8
  store i8* %111, i8** %113, align 8
  %114 = load %struct.gt_pci_softc*, %struct.gt_pci_softc** %5, align 8
  %115 = getelementptr inbounds %struct.gt_pci_softc, %struct.gt_pci_softc* %114, i32 0, i32 1
  store i32 65535, i32* %115, align 4
  %116 = load %struct.gt_pci_softc*, %struct.gt_pci_softc** %5, align 8
  %117 = getelementptr inbounds %struct.gt_pci_softc, %struct.gt_pci_softc* %116, i32 0, i32 2
  store i32 0, i32* %117, align 8
  %118 = load %struct.gt_pci_softc*, %struct.gt_pci_softc** %5, align 8
  %119 = getelementptr inbounds %struct.gt_pci_softc, %struct.gt_pci_softc* %118, i32 0, i32 7
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.gt_pci_softc*, %struct.gt_pci_softc** %5, align 8
  %122 = getelementptr inbounds %struct.gt_pci_softc, %struct.gt_pci_softc* %121, i32 0, i32 9
  %123 = load i8*, i8** %122, align 8
  %124 = load i32, i32* @ICW1_RESET, align 4
  %125 = load i32, i32* @ICW1_IC4, align 4
  %126 = or i32 %124, %125
  %127 = call i32 @bus_space_write_1(i32 %120, i8* %123, i32 0, i32 %126)
  %128 = load %struct.gt_pci_softc*, %struct.gt_pci_softc** %5, align 8
  %129 = getelementptr inbounds %struct.gt_pci_softc, %struct.gt_pci_softc* %128, i32 0, i32 7
  %130 = load i32, i32* %129, align 8
  %131 = load %struct.gt_pci_softc*, %struct.gt_pci_softc** %5, align 8
  %132 = getelementptr inbounds %struct.gt_pci_softc, %struct.gt_pci_softc* %131, i32 0, i32 9
  %133 = load i8*, i8** %132, align 8
  %134 = call i32 @bus_space_write_1(i32 %130, i8* %133, i32 1, i32 0)
  %135 = load %struct.gt_pci_softc*, %struct.gt_pci_softc** %5, align 8
  %136 = getelementptr inbounds %struct.gt_pci_softc, %struct.gt_pci_softc* %135, i32 0, i32 7
  %137 = load i32, i32* %136, align 8
  %138 = load %struct.gt_pci_softc*, %struct.gt_pci_softc** %5, align 8
  %139 = getelementptr inbounds %struct.gt_pci_softc, %struct.gt_pci_softc* %138, i32 0, i32 9
  %140 = load i8*, i8** %139, align 8
  %141 = call i32 @bus_space_write_1(i32 %137, i8* %140, i32 1, i32 4)
  %142 = load %struct.gt_pci_softc*, %struct.gt_pci_softc** %5, align 8
  %143 = getelementptr inbounds %struct.gt_pci_softc, %struct.gt_pci_softc* %142, i32 0, i32 7
  %144 = load i32, i32* %143, align 8
  %145 = load %struct.gt_pci_softc*, %struct.gt_pci_softc** %5, align 8
  %146 = getelementptr inbounds %struct.gt_pci_softc, %struct.gt_pci_softc* %145, i32 0, i32 9
  %147 = load i8*, i8** %146, align 8
  %148 = load i32, i32* @ICW4_8086, align 4
  %149 = call i32 @bus_space_write_1(i32 %144, i8* %147, i32 1, i32 %148)
  %150 = load %struct.gt_pci_softc*, %struct.gt_pci_softc** %5, align 8
  %151 = getelementptr inbounds %struct.gt_pci_softc, %struct.gt_pci_softc* %150, i32 0, i32 7
  %152 = load i32, i32* %151, align 8
  %153 = load %struct.gt_pci_softc*, %struct.gt_pci_softc** %5, align 8
  %154 = getelementptr inbounds %struct.gt_pci_softc, %struct.gt_pci_softc* %153, i32 0, i32 9
  %155 = load i8*, i8** %154, align 8
  %156 = load %struct.gt_pci_softc*, %struct.gt_pci_softc** %5, align 8
  %157 = getelementptr inbounds %struct.gt_pci_softc, %struct.gt_pci_softc* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = and i32 %158, 255
  %160 = call i32 @bus_space_write_1(i32 %152, i8* %155, i32 1, i32 %159)
  %161 = load %struct.gt_pci_softc*, %struct.gt_pci_softc** %5, align 8
  %162 = getelementptr inbounds %struct.gt_pci_softc, %struct.gt_pci_softc* %161, i32 0, i32 7
  %163 = load i32, i32* %162, align 8
  %164 = load %struct.gt_pci_softc*, %struct.gt_pci_softc** %5, align 8
  %165 = getelementptr inbounds %struct.gt_pci_softc, %struct.gt_pci_softc* %164, i32 0, i32 9
  %166 = load i8*, i8** %165, align 8
  %167 = load i32, i32* @OCW3_SEL, align 4
  %168 = load i32, i32* @OCW3_ESMM, align 4
  %169 = or i32 %167, %168
  %170 = load i32, i32* @OCW3_SMM, align 4
  %171 = or i32 %169, %170
  %172 = call i32 @bus_space_write_1(i32 %163, i8* %166, i32 0, i32 %171)
  %173 = load %struct.gt_pci_softc*, %struct.gt_pci_softc** %5, align 8
  %174 = getelementptr inbounds %struct.gt_pci_softc, %struct.gt_pci_softc* %173, i32 0, i32 7
  %175 = load i32, i32* %174, align 8
  %176 = load %struct.gt_pci_softc*, %struct.gt_pci_softc** %5, align 8
  %177 = getelementptr inbounds %struct.gt_pci_softc, %struct.gt_pci_softc* %176, i32 0, i32 9
  %178 = load i8*, i8** %177, align 8
  %179 = load i32, i32* @OCW3_SEL, align 4
  %180 = load i32, i32* @OCW3_RR, align 4
  %181 = or i32 %179, %180
  %182 = call i32 @bus_space_write_1(i32 %175, i8* %178, i32 0, i32 %181)
  %183 = load %struct.gt_pci_softc*, %struct.gt_pci_softc** %5, align 8
  %184 = getelementptr inbounds %struct.gt_pci_softc, %struct.gt_pci_softc* %183, i32 0, i32 7
  %185 = load i32, i32* %184, align 8
  %186 = load %struct.gt_pci_softc*, %struct.gt_pci_softc** %5, align 8
  %187 = getelementptr inbounds %struct.gt_pci_softc, %struct.gt_pci_softc* %186, i32 0, i32 8
  %188 = load i8*, i8** %187, align 8
  %189 = load i32, i32* @ICW1_RESET, align 4
  %190 = load i32, i32* @ICW1_IC4, align 4
  %191 = or i32 %189, %190
  %192 = call i32 @bus_space_write_1(i32 %185, i8* %188, i32 0, i32 %191)
  %193 = load %struct.gt_pci_softc*, %struct.gt_pci_softc** %5, align 8
  %194 = getelementptr inbounds %struct.gt_pci_softc, %struct.gt_pci_softc* %193, i32 0, i32 7
  %195 = load i32, i32* %194, align 8
  %196 = load %struct.gt_pci_softc*, %struct.gt_pci_softc** %5, align 8
  %197 = getelementptr inbounds %struct.gt_pci_softc, %struct.gt_pci_softc* %196, i32 0, i32 8
  %198 = load i8*, i8** %197, align 8
  %199 = call i32 @bus_space_write_1(i32 %195, i8* %198, i32 1, i32 0)
  %200 = load %struct.gt_pci_softc*, %struct.gt_pci_softc** %5, align 8
  %201 = getelementptr inbounds %struct.gt_pci_softc, %struct.gt_pci_softc* %200, i32 0, i32 7
  %202 = load i32, i32* %201, align 8
  %203 = load %struct.gt_pci_softc*, %struct.gt_pci_softc** %5, align 8
  %204 = getelementptr inbounds %struct.gt_pci_softc, %struct.gt_pci_softc* %203, i32 0, i32 8
  %205 = load i8*, i8** %204, align 8
  %206 = call i32 @bus_space_write_1(i32 %202, i8* %205, i32 1, i32 4)
  %207 = load %struct.gt_pci_softc*, %struct.gt_pci_softc** %5, align 8
  %208 = getelementptr inbounds %struct.gt_pci_softc, %struct.gt_pci_softc* %207, i32 0, i32 7
  %209 = load i32, i32* %208, align 8
  %210 = load %struct.gt_pci_softc*, %struct.gt_pci_softc** %5, align 8
  %211 = getelementptr inbounds %struct.gt_pci_softc, %struct.gt_pci_softc* %210, i32 0, i32 8
  %212 = load i8*, i8** %211, align 8
  %213 = load i32, i32* @ICW4_8086, align 4
  %214 = call i32 @bus_space_write_1(i32 %209, i8* %212, i32 1, i32 %213)
  %215 = load %struct.gt_pci_softc*, %struct.gt_pci_softc** %5, align 8
  %216 = getelementptr inbounds %struct.gt_pci_softc, %struct.gt_pci_softc* %215, i32 0, i32 7
  %217 = load i32, i32* %216, align 8
  %218 = load %struct.gt_pci_softc*, %struct.gt_pci_softc** %5, align 8
  %219 = getelementptr inbounds %struct.gt_pci_softc, %struct.gt_pci_softc* %218, i32 0, i32 8
  %220 = load i8*, i8** %219, align 8
  %221 = load %struct.gt_pci_softc*, %struct.gt_pci_softc** %5, align 8
  %222 = getelementptr inbounds %struct.gt_pci_softc, %struct.gt_pci_softc* %221, i32 0, i32 1
  %223 = load i32, i32* %222, align 4
  %224 = and i32 %223, 255
  %225 = call i32 @bus_space_write_1(i32 %217, i8* %220, i32 1, i32 %224)
  %226 = load %struct.gt_pci_softc*, %struct.gt_pci_softc** %5, align 8
  %227 = getelementptr inbounds %struct.gt_pci_softc, %struct.gt_pci_softc* %226, i32 0, i32 7
  %228 = load i32, i32* %227, align 8
  %229 = load %struct.gt_pci_softc*, %struct.gt_pci_softc** %5, align 8
  %230 = getelementptr inbounds %struct.gt_pci_softc, %struct.gt_pci_softc* %229, i32 0, i32 8
  %231 = load i8*, i8** %230, align 8
  %232 = load i32, i32* @OCW3_SEL, align 4
  %233 = load i32, i32* @OCW3_ESMM, align 4
  %234 = or i32 %232, %233
  %235 = load i32, i32* @OCW3_SMM, align 4
  %236 = or i32 %234, %235
  %237 = call i32 @bus_space_write_1(i32 %228, i8* %231, i32 0, i32 %236)
  %238 = load %struct.gt_pci_softc*, %struct.gt_pci_softc** %5, align 8
  %239 = getelementptr inbounds %struct.gt_pci_softc, %struct.gt_pci_softc* %238, i32 0, i32 7
  %240 = load i32, i32* %239, align 8
  %241 = load %struct.gt_pci_softc*, %struct.gt_pci_softc** %5, align 8
  %242 = getelementptr inbounds %struct.gt_pci_softc, %struct.gt_pci_softc* %241, i32 0, i32 8
  %243 = load i8*, i8** %242, align 8
  %244 = load i32, i32* @OCW3_SEL, align 4
  %245 = load i32, i32* @OCW3_RR, align 4
  %246 = or i32 %244, %245
  %247 = call i32 @bus_space_write_1(i32 %240, i8* %243, i32 0, i32 %246)
  %248 = load %struct.gt_pci_softc*, %struct.gt_pci_softc** %5, align 8
  %249 = getelementptr inbounds %struct.gt_pci_softc, %struct.gt_pci_softc* %248, i32 0, i32 7
  %250 = load i32, i32* %249, align 8
  %251 = load %struct.gt_pci_softc*, %struct.gt_pci_softc** %5, align 8
  %252 = getelementptr inbounds %struct.gt_pci_softc, %struct.gt_pci_softc* %251, i32 0, i32 6
  %253 = load i8*, i8** %252, align 8
  %254 = load %struct.gt_pci_softc*, %struct.gt_pci_softc** %5, align 8
  %255 = getelementptr inbounds %struct.gt_pci_softc, %struct.gt_pci_softc* %254, i32 0, i32 2
  %256 = load i32, i32* %255, align 8
  %257 = and i32 %256, 255
  %258 = call i32 @bus_space_write_1(i32 %250, i8* %253, i32 0, i32 %257)
  %259 = load %struct.gt_pci_softc*, %struct.gt_pci_softc** %5, align 8
  %260 = getelementptr inbounds %struct.gt_pci_softc, %struct.gt_pci_softc* %259, i32 0, i32 7
  %261 = load i32, i32* %260, align 8
  %262 = load %struct.gt_pci_softc*, %struct.gt_pci_softc** %5, align 8
  %263 = getelementptr inbounds %struct.gt_pci_softc, %struct.gt_pci_softc* %262, i32 0, i32 6
  %264 = load i8*, i8** %263, align 8
  %265 = load %struct.gt_pci_softc*, %struct.gt_pci_softc** %5, align 8
  %266 = getelementptr inbounds %struct.gt_pci_softc, %struct.gt_pci_softc* %265, i32 0, i32 2
  %267 = load i32, i32* %266, align 8
  %268 = ashr i32 %267, 8
  %269 = and i32 %268, 255
  %270 = call i32 @bus_space_write_1(i32 %261, i8* %264, i32 1, i32 %269)
  %271 = load %struct.gt_pci_softc*, %struct.gt_pci_softc** %5, align 8
  %272 = getelementptr inbounds %struct.gt_pci_softc, %struct.gt_pci_softc* %271, i32 0, i32 3
  store i32 54239, i32* %272, align 4
  %273 = load i32, i32* %3, align 4
  %274 = load i32, i32* @SYS_RES_IRQ, align 4
  %275 = load i32, i32* @MALTA_SOUTHBRIDGE_INTR, align 4
  %276 = load i32, i32* @MALTA_SOUTHBRIDGE_INTR, align 4
  %277 = load i32, i32* @RF_SHAREABLE, align 4
  %278 = load i32, i32* @RF_ACTIVE, align 4
  %279 = or i32 %277, %278
  %280 = call i32* @bus_alloc_resource(i32 %273, i32 %274, i32* %6, i32 %275, i32 %276, i32 1, i32 %279)
  %281 = load %struct.gt_pci_softc*, %struct.gt_pci_softc** %5, align 8
  %282 = getelementptr inbounds %struct.gt_pci_softc, %struct.gt_pci_softc* %281, i32 0, i32 5
  store i32* %280, i32** %282, align 8
  %283 = icmp eq i32* %280, null
  br i1 %283, label %284, label %288

284:                                              ; preds = %88
  %285 = load i32, i32* %3, align 4
  %286 = call i32 @device_printf(i32 %285, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0))
  %287 = load i32, i32* @ENXIO, align 4
  store i32 %287, i32* %2, align 4
  br label %309

288:                                              ; preds = %88
  %289 = load i32, i32* %3, align 4
  %290 = load %struct.gt_pci_softc*, %struct.gt_pci_softc** %5, align 8
  %291 = getelementptr inbounds %struct.gt_pci_softc, %struct.gt_pci_softc* %290, i32 0, i32 5
  %292 = load i32*, i32** %291, align 8
  %293 = load i32, i32* @INTR_TYPE_MISC, align 4
  %294 = load i32, i32* @gt_pci_intr, align 4
  %295 = load %struct.gt_pci_softc*, %struct.gt_pci_softc** %5, align 8
  %296 = load %struct.gt_pci_softc*, %struct.gt_pci_softc** %5, align 8
  %297 = getelementptr inbounds %struct.gt_pci_softc, %struct.gt_pci_softc* %296, i32 0, i32 4
  %298 = call i64 @bus_setup_intr(i32 %289, i32* %292, i32 %293, i32 %294, i32* null, %struct.gt_pci_softc* %295, i32* %297)
  %299 = icmp ne i64 %298, 0
  br i1 %299, label %300, label %304

300:                                              ; preds = %288
  %301 = load i32, i32* %3, align 4
  %302 = call i32 @device_printf(i32 %301, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.7, i64 0, i64 0))
  %303 = load i32, i32* @ENXIO, align 4
  store i32 %303, i32* %2, align 4
  br label %309

304:                                              ; preds = %288
  %305 = load i32, i32* %3, align 4
  %306 = call i32 @device_add_child(i32 %305, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i32 -1)
  %307 = load i32, i32* %3, align 4
  %308 = call i32 @bus_generic_attach(i32 %307)
  store i32 %308, i32* %2, align 4
  br label %309

309:                                              ; preds = %304, %300, %284
  %310 = load i32, i32* %2, align 4
  ret i32 %310
}

declare dso_local %struct.gt_pci_softc* @device_get_softc(i32) #1

declare dso_local i64 @rman_init(%struct.TYPE_3__*) #1

declare dso_local i64 @rman_manage_region(%struct.TYPE_3__*, i32, i32) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i8* @MIPS_PHYS_TO_KSEG1(i64) #1

declare dso_local i32 @bus_space_write_1(i32, i8*, i32, i32) #1

declare dso_local i32* @bus_alloc_resource(i32, i32, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i64 @bus_setup_intr(i32, i32*, i32, i32, i32*, %struct.gt_pci_softc*, i32*) #1

declare dso_local i32 @device_add_child(i32, i8*, i32) #1

declare dso_local i32 @bus_generic_attach(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
