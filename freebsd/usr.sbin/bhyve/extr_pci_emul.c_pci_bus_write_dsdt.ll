; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_emul.c_pci_bus_write_dsdt.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_emul.c_pci_bus_write_dsdt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.businfo = type { i32, i32, i32, i32, i32, i32, %struct.slotinfo* }
%struct.slotinfo = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.pci_devinst* }
%struct.pci_devinst = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.pci_devinst*)* }

@pci_businfo = common dso_local global %struct.businfo** null, align 8
@.str = private unnamed_addr constant [18 x i8] c"  Device (PC%02X)\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"  {\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"    Name (_HID, EisaId (\22PNP0A03\22))\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"    Method (_BBN, 0, NotSerialized)\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"    {\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"        Return (0x%08X)\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"    }\00", align 1
@.str.7 = private unnamed_addr constant [36 x i8] c"    Name (_CRS, ResourceTemplate ()\00", align 1
@.str.8 = private unnamed_addr constant [70 x i8] c"      WordBusNumber (ResourceProducer, MinFixed, MaxFixed, PosDecode,\00", align 1
@.str.9 = private unnamed_addr constant [43 x i8] c"        0x0000,             // Granularity\00", align 1
@.str.10 = private unnamed_addr constant [45 x i8] c"        0x%04X,             // Range Minimum\00", align 1
@.str.11 = private unnamed_addr constant [45 x i8] c"        0x%04X,             // Range Maximum\00", align 1
@.str.12 = private unnamed_addr constant [50 x i8] c"        0x0000,             // Translation Offset\00", align 1
@.str.13 = private unnamed_addr constant [38 x i8] c"        0x0001,             // Length\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"        ,, )\00", align 1
@.str.15 = private unnamed_addr constant [76 x i8] c"      WordIO (ResourceProducer, MinFixed, MaxFixed, PosDecode, EntireRange,\00", align 1
@.str.16 = private unnamed_addr constant [45 x i8] c"        0x0000,             // Range Minimum\00", align 1
@.str.17 = private unnamed_addr constant [45 x i8] c"        0x0CF7,             // Range Maximum\00", align 1
@.str.18 = private unnamed_addr constant [38 x i8] c"        0x0CF8,             // Length\00", align 1
@.str.19 = private unnamed_addr constant [25 x i8] c"        ,, , TypeStatic)\00", align 1
@.str.20 = private unnamed_addr constant [45 x i8] c"        0x0D00,             // Range Minimum\00", align 1
@PCI_EMUL_IOBASE = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [38 x i8] c"        0x%04X,             // Length\00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c"    })\00", align 1
@.str.23 = private unnamed_addr constant [93 x i8] c"      DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, NonCacheable, ReadWrite,\00", align 1
@.str.24 = private unnamed_addr constant [43 x i8] c"        0x00000000,         // Granularity\00", align 1
@.str.25 = private unnamed_addr constant [42 x i8] c"        0x%08X,         // Range Minimum\0A\00", align 1
@.str.26 = private unnamed_addr constant [42 x i8] c"        0x%08X,         // Range Maximum\0A\00", align 1
@.str.27 = private unnamed_addr constant [50 x i8] c"        0x00000000,         // Translation Offset\00", align 1
@.str.28 = private unnamed_addr constant [35 x i8] c"        0x%08X,         // Length\0A\00", align 1
@.str.29 = private unnamed_addr constant [45 x i8] c"        ,, , AddressRangeMemory, TypeStatic)\00", align 1
@.str.30 = private unnamed_addr constant [93 x i8] c"      QWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, NonCacheable, ReadWrite,\00", align 1
@.str.31 = private unnamed_addr constant [43 x i8] c"        0x0000000000000000, // Granularity\00", align 1
@.str.32 = private unnamed_addr constant [36 x i8] c"        0x%016lX, // Range Minimum\0A\00", align 1
@.str.33 = private unnamed_addr constant [36 x i8] c"        0x%016lX, // Range Maximum\0A\00", align 1
@.str.34 = private unnamed_addr constant [50 x i8] c"        0x0000000000000000, // Translation Offset\00", align 1
@.str.35 = private unnamed_addr constant [29 x i8] c"        0x%016lX, // Length\0A\00", align 1
@.str.36 = private unnamed_addr constant [23 x i8] c"Name (PPRT, Package ()\00", align 1
@.str.37 = private unnamed_addr constant [2 x i8] c"{\00", align 1
@pci_pirq_prt_entry = common dso_local global i32 0, align 4
@.str.38 = private unnamed_addr constant [3 x i8] c"})\00", align 1
@.str.39 = private unnamed_addr constant [23 x i8] c"Name (APRT, Package ()\00", align 1
@pci_apic_prt_entry = common dso_local global i32 0, align 4
@.str.40 = private unnamed_addr constant [32 x i8] c"Method (_PRT, 0, NotSerialized)\00", align 1
@.str.41 = private unnamed_addr constant [12 x i8] c"  If (PICM)\00", align 1
@.str.42 = private unnamed_addr constant [18 x i8] c"    Return (APRT)\00", align 1
@.str.43 = private unnamed_addr constant [4 x i8] c"  }\00", align 1
@.str.44 = private unnamed_addr constant [7 x i8] c"  Else\00", align 1
@.str.45 = private unnamed_addr constant [18 x i8] c"    Return (PPRT)\00", align 1
@.str.46 = private unnamed_addr constant [2 x i8] c"}\00", align 1
@MAXSLOTS = common dso_local global i32 0, align 4
@MAXFUNCS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @pci_bus_write_dsdt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pci_bus_write_dsdt(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.businfo*, align 8
  %4 = alloca %struct.slotinfo*, align 8
  %5 = alloca %struct.pci_devinst*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %9 = load %struct.businfo**, %struct.businfo*** @pci_businfo, align 8
  %10 = load i32, i32* %2, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.businfo*, %struct.businfo** %9, i64 %11
  %13 = load %struct.businfo*, %struct.businfo** %12, align 8
  store %struct.businfo* %13, %struct.businfo** %3, align 8
  %14 = icmp eq %struct.businfo* %13, null
  br i1 %14, label %15, label %20

15:                                               ; preds = %1
  %16 = load i32, i32* %2, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  br label %224

19:                                               ; preds = %15
  br label %20

20:                                               ; preds = %19, %1
  %21 = load i32, i32* %2, align 4
  %22 = call i32 (i8*, ...) @dsdt_line(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = call i32 (i8*, ...) @dsdt_line(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %24 = call i32 (i8*, ...) @dsdt_line(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %25 = call i32 (i8*, ...) @dsdt_line(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  %26 = call i32 (i8*, ...) @dsdt_line(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %27 = load i32, i32* %2, align 4
  %28 = call i32 (i8*, ...) @dsdt_line(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i32 %27)
  %29 = call i32 (i8*, ...) @dsdt_line(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %30 = call i32 (i8*, ...) @dsdt_line(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i64 0, i64 0))
  %31 = call i32 (i8*, ...) @dsdt_line(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %32 = call i32 (i8*, ...) @dsdt_line(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.8, i64 0, i64 0))
  %33 = call i32 (i8*, ...) @dsdt_line(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.9, i64 0, i64 0))
  %34 = load i32, i32* %2, align 4
  %35 = call i32 (i8*, ...) @dsdt_line(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.10, i64 0, i64 0), i32 %34)
  %36 = load i32, i32* %2, align 4
  %37 = call i32 (i8*, ...) @dsdt_line(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.11, i64 0, i64 0), i32 %36)
  %38 = call i32 (i8*, ...) @dsdt_line(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.12, i64 0, i64 0))
  %39 = call i32 (i8*, ...) @dsdt_line(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.13, i64 0, i64 0))
  %40 = call i32 (i8*, ...) @dsdt_line(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i64 0, i64 0))
  %41 = load i32, i32* %2, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %70

43:                                               ; preds = %20
  %44 = call i32 @dsdt_indent(i32 3)
  %45 = call i32 @dsdt_fixed_ioport(i32 3320, i32 8)
  %46 = call i32 @dsdt_unindent(i32 3)
  %47 = call i32 (i8*, ...) @dsdt_line(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.15, i64 0, i64 0))
  %48 = call i32 (i8*, ...) @dsdt_line(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.9, i64 0, i64 0))
  %49 = call i32 (i8*, ...) @dsdt_line(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.16, i64 0, i64 0))
  %50 = call i32 (i8*, ...) @dsdt_line(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.17, i64 0, i64 0))
  %51 = call i32 (i8*, ...) @dsdt_line(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.12, i64 0, i64 0))
  %52 = call i32 (i8*, ...) @dsdt_line(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.18, i64 0, i64 0))
  %53 = call i32 (i8*, ...) @dsdt_line(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.19, i64 0, i64 0))
  %54 = call i32 (i8*, ...) @dsdt_line(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.15, i64 0, i64 0))
  %55 = call i32 (i8*, ...) @dsdt_line(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.9, i64 0, i64 0))
  %56 = call i32 (i8*, ...) @dsdt_line(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.20, i64 0, i64 0))
  %57 = load i32, i32* @PCI_EMUL_IOBASE, align 4
  %58 = sub nsw i32 %57, 1
  %59 = call i32 (i8*, ...) @dsdt_line(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.11, i64 0, i64 0), i32 %58)
  %60 = call i32 (i8*, ...) @dsdt_line(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.12, i64 0, i64 0))
  %61 = load i32, i32* @PCI_EMUL_IOBASE, align 4
  %62 = sub nsw i32 %61, 3328
  %63 = call i32 (i8*, ...) @dsdt_line(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.21, i64 0, i64 0), i32 %62)
  %64 = call i32 (i8*, ...) @dsdt_line(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.19, i64 0, i64 0))
  %65 = load %struct.businfo*, %struct.businfo** %3, align 8
  %66 = icmp eq %struct.businfo* %65, null
  br i1 %66, label %67, label %69

67:                                               ; preds = %43
  %68 = call i32 (i8*, ...) @dsdt_line(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.22, i64 0, i64 0))
  br label %222

69:                                               ; preds = %43
  br label %70

70:                                               ; preds = %69, %20
  %71 = load %struct.businfo*, %struct.businfo** %3, align 8
  %72 = icmp ne %struct.businfo* %71, null
  %73 = zext i1 %72 to i32
  %74 = call i32 @assert(i32 %73)
  %75 = call i32 (i8*, ...) @dsdt_line(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.15, i64 0, i64 0))
  %76 = call i32 (i8*, ...) @dsdt_line(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.9, i64 0, i64 0))
  %77 = load %struct.businfo*, %struct.businfo** %3, align 8
  %78 = getelementptr inbounds %struct.businfo, %struct.businfo* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = call i32 (i8*, ...) @dsdt_line(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.10, i64 0, i64 0), i32 %79)
  %81 = load %struct.businfo*, %struct.businfo** %3, align 8
  %82 = getelementptr inbounds %struct.businfo, %struct.businfo* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = sub nsw i32 %83, 1
  %85 = call i32 (i8*, ...) @dsdt_line(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.11, i64 0, i64 0), i32 %84)
  %86 = call i32 (i8*, ...) @dsdt_line(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.12, i64 0, i64 0))
  %87 = load %struct.businfo*, %struct.businfo** %3, align 8
  %88 = getelementptr inbounds %struct.businfo, %struct.businfo* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.businfo*, %struct.businfo** %3, align 8
  %91 = getelementptr inbounds %struct.businfo, %struct.businfo* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = sub nsw i32 %89, %92
  %94 = call i32 (i8*, ...) @dsdt_line(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.21, i64 0, i64 0), i32 %93)
  %95 = call i32 (i8*, ...) @dsdt_line(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.19, i64 0, i64 0))
  %96 = call i32 (i8*, ...) @dsdt_line(i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str.23, i64 0, i64 0))
  %97 = call i32 (i8*, ...) @dsdt_line(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.24, i64 0, i64 0))
  %98 = load %struct.businfo*, %struct.businfo** %3, align 8
  %99 = getelementptr inbounds %struct.businfo, %struct.businfo* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = call i32 (i8*, ...) @dsdt_line(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.25, i64 0, i64 0), i32 %100)
  %102 = load %struct.businfo*, %struct.businfo** %3, align 8
  %103 = getelementptr inbounds %struct.businfo, %struct.businfo* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 4
  %105 = sub nsw i32 %104, 1
  %106 = call i32 (i8*, ...) @dsdt_line(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.26, i64 0, i64 0), i32 %105)
  %107 = call i32 (i8*, ...) @dsdt_line(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.27, i64 0, i64 0))
  %108 = load %struct.businfo*, %struct.businfo** %3, align 8
  %109 = getelementptr inbounds %struct.businfo, %struct.businfo* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.businfo*, %struct.businfo** %3, align 8
  %112 = getelementptr inbounds %struct.businfo, %struct.businfo* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = sub nsw i32 %110, %113
  %115 = call i32 (i8*, ...) @dsdt_line(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.28, i64 0, i64 0), i32 %114)
  %116 = call i32 (i8*, ...) @dsdt_line(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.29, i64 0, i64 0))
  %117 = call i32 (i8*, ...) @dsdt_line(i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str.30, i64 0, i64 0))
  %118 = call i32 (i8*, ...) @dsdt_line(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.31, i64 0, i64 0))
  %119 = load %struct.businfo*, %struct.businfo** %3, align 8
  %120 = getelementptr inbounds %struct.businfo, %struct.businfo* %119, i32 0, i32 4
  %121 = load i32, i32* %120, align 8
  %122 = call i32 (i8*, ...) @dsdt_line(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.32, i64 0, i64 0), i32 %121)
  %123 = load %struct.businfo*, %struct.businfo** %3, align 8
  %124 = getelementptr inbounds %struct.businfo, %struct.businfo* %123, i32 0, i32 5
  %125 = load i32, i32* %124, align 4
  %126 = sub nsw i32 %125, 1
  %127 = call i32 (i8*, ...) @dsdt_line(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.33, i64 0, i64 0), i32 %126)
  %128 = call i32 (i8*, ...) @dsdt_line(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.34, i64 0, i64 0))
  %129 = load %struct.businfo*, %struct.businfo** %3, align 8
  %130 = getelementptr inbounds %struct.businfo, %struct.businfo* %129, i32 0, i32 5
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.businfo*, %struct.businfo** %3, align 8
  %133 = getelementptr inbounds %struct.businfo, %struct.businfo* %132, i32 0, i32 4
  %134 = load i32, i32* %133, align 8
  %135 = sub nsw i32 %131, %134
  %136 = call i32 (i8*, ...) @dsdt_line(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.35, i64 0, i64 0), i32 %135)
  %137 = call i32 (i8*, ...) @dsdt_line(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.29, i64 0, i64 0))
  %138 = call i32 (i8*, ...) @dsdt_line(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.22, i64 0, i64 0))
  %139 = load i32, i32* %2, align 4
  %140 = call i32 @pci_count_lintr(i32 %139)
  store i32 %140, i32* %6, align 4
  %141 = load i32, i32* %6, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %169

143:                                              ; preds = %70
  %144 = call i32 @dsdt_indent(i32 2)
  %145 = call i32 (i8*, ...) @dsdt_line(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.36, i64 0, i64 0))
  %146 = call i32 (i8*, ...) @dsdt_line(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.37, i64 0, i64 0))
  %147 = load i32, i32* %2, align 4
  %148 = load i32, i32* @pci_pirq_prt_entry, align 4
  %149 = call i32 @pci_walk_lintr(i32 %147, i32 %148, i32* null)
  %150 = call i32 (i8*, ...) @dsdt_line(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.38, i64 0, i64 0))
  %151 = call i32 (i8*, ...) @dsdt_line(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.39, i64 0, i64 0))
  %152 = call i32 (i8*, ...) @dsdt_line(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.37, i64 0, i64 0))
  %153 = load i32, i32* %2, align 4
  %154 = load i32, i32* @pci_apic_prt_entry, align 4
  %155 = call i32 @pci_walk_lintr(i32 %153, i32 %154, i32* null)
  %156 = call i32 (i8*, ...) @dsdt_line(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.38, i64 0, i64 0))
  %157 = call i32 (i8*, ...) @dsdt_line(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.40, i64 0, i64 0))
  %158 = call i32 (i8*, ...) @dsdt_line(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.37, i64 0, i64 0))
  %159 = call i32 (i8*, ...) @dsdt_line(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.41, i64 0, i64 0))
  %160 = call i32 (i8*, ...) @dsdt_line(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %161 = call i32 (i8*, ...) @dsdt_line(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.42, i64 0, i64 0))
  %162 = call i32 (i8*, ...) @dsdt_line(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.43, i64 0, i64 0))
  %163 = call i32 (i8*, ...) @dsdt_line(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.44, i64 0, i64 0))
  %164 = call i32 (i8*, ...) @dsdt_line(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %165 = call i32 (i8*, ...) @dsdt_line(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.45, i64 0, i64 0))
  %166 = call i32 (i8*, ...) @dsdt_line(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.43, i64 0, i64 0))
  %167 = call i32 (i8*, ...) @dsdt_line(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.46, i64 0, i64 0))
  %168 = call i32 @dsdt_unindent(i32 2)
  br label %169

169:                                              ; preds = %143, %70
  %170 = call i32 @dsdt_indent(i32 2)
  store i32 0, i32* %8, align 4
  br label %171

171:                                              ; preds = %217, %169
  %172 = load i32, i32* %8, align 4
  %173 = load i32, i32* @MAXSLOTS, align 4
  %174 = icmp slt i32 %172, %173
  br i1 %174, label %175, label %220

175:                                              ; preds = %171
  %176 = load %struct.businfo*, %struct.businfo** %3, align 8
  %177 = getelementptr inbounds %struct.businfo, %struct.businfo* %176, i32 0, i32 6
  %178 = load %struct.slotinfo*, %struct.slotinfo** %177, align 8
  %179 = load i32, i32* %8, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds %struct.slotinfo, %struct.slotinfo* %178, i64 %180
  store %struct.slotinfo* %181, %struct.slotinfo** %4, align 8
  store i32 0, i32* %7, align 4
  br label %182

182:                                              ; preds = %213, %175
  %183 = load i32, i32* %7, align 4
  %184 = load i32, i32* @MAXFUNCS, align 4
  %185 = icmp slt i32 %183, %184
  br i1 %185, label %186, label %216

186:                                              ; preds = %182
  %187 = load %struct.slotinfo*, %struct.slotinfo** %4, align 8
  %188 = getelementptr inbounds %struct.slotinfo, %struct.slotinfo* %187, i32 0, i32 0
  %189 = load %struct.TYPE_3__*, %struct.TYPE_3__** %188, align 8
  %190 = load i32, i32* %7, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %189, i64 %191
  %193 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %192, i32 0, i32 0
  %194 = load %struct.pci_devinst*, %struct.pci_devinst** %193, align 8
  store %struct.pci_devinst* %194, %struct.pci_devinst** %5, align 8
  %195 = load %struct.pci_devinst*, %struct.pci_devinst** %5, align 8
  %196 = icmp ne %struct.pci_devinst* %195, null
  br i1 %196, label %197, label %212

197:                                              ; preds = %186
  %198 = load %struct.pci_devinst*, %struct.pci_devinst** %5, align 8
  %199 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %198, i32 0, i32 0
  %200 = load %struct.TYPE_4__*, %struct.TYPE_4__** %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %200, i32 0, i32 0
  %202 = load i32 (%struct.pci_devinst*)*, i32 (%struct.pci_devinst*)** %201, align 8
  %203 = icmp ne i32 (%struct.pci_devinst*)* %202, null
  br i1 %203, label %204, label %212

204:                                              ; preds = %197
  %205 = load %struct.pci_devinst*, %struct.pci_devinst** %5, align 8
  %206 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %205, i32 0, i32 0
  %207 = load %struct.TYPE_4__*, %struct.TYPE_4__** %206, align 8
  %208 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %207, i32 0, i32 0
  %209 = load i32 (%struct.pci_devinst*)*, i32 (%struct.pci_devinst*)** %208, align 8
  %210 = load %struct.pci_devinst*, %struct.pci_devinst** %5, align 8
  %211 = call i32 %209(%struct.pci_devinst* %210)
  br label %212

212:                                              ; preds = %204, %197, %186
  br label %213

213:                                              ; preds = %212
  %214 = load i32, i32* %7, align 4
  %215 = add nsw i32 %214, 1
  store i32 %215, i32* %7, align 4
  br label %182

216:                                              ; preds = %182
  br label %217

217:                                              ; preds = %216
  %218 = load i32, i32* %8, align 4
  %219 = add nsw i32 %218, 1
  store i32 %219, i32* %8, align 4
  br label %171

220:                                              ; preds = %171
  %221 = call i32 @dsdt_unindent(i32 2)
  br label %222

222:                                              ; preds = %220, %67
  %223 = call i32 (i8*, ...) @dsdt_line(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.43, i64 0, i64 0))
  br label %224

224:                                              ; preds = %222, %18
  ret void
}

declare dso_local i32 @dsdt_line(i8*, ...) #1

declare dso_local i32 @dsdt_indent(i32) #1

declare dso_local i32 @dsdt_fixed_ioport(i32, i32) #1

declare dso_local i32 @dsdt_unindent(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @pci_count_lintr(i32) #1

declare dso_local i32 @pci_walk_lintr(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
