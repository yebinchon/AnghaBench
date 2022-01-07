; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci.c_pci_fill_devinfo.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci.c_pci_fill_devinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_devinfo = type { %struct.TYPE_8__, %struct.TYPE_9__ }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i8*, i8*, i32, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i32, i32, i32*, i32 }

@PCIR_COMMAND = common dso_local global i32 0, align 4
@PCIR_STATUS = common dso_local global i32 0, align 4
@PCIR_CLASS = common dso_local global i32 0, align 4
@PCIR_SUBCLASS = common dso_local global i32 0, align 4
@PCIR_PROGIF = common dso_local global i32 0, align 4
@PCIR_REVID = common dso_local global i32 0, align 4
@PCIR_HDRTYPE = common dso_local global i32 0, align 4
@PCIR_CACHELNSZ = common dso_local global i32 0, align 4
@PCIR_LATTIMER = common dso_local global i32 0, align 4
@PCIR_INTPIN = common dso_local global i32 0, align 4
@PCIR_INTLINE = common dso_local global i32 0, align 4
@PCIM_MFDEV = common dso_local global i32 0, align 4
@PCIM_STATUS_CAPPRESENT = common dso_local global i32 0, align 4
@pci_devq = common dso_local global i32 0, align 4
@pci_links = common dso_local global i32 0, align 4
@pci_numdevs = common dso_local global i32 0, align 4
@pci_generation = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.pci_devinfo* (i32, i32, i32, i32, i32, i32, i8*, i8*)* @pci_fill_devinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.pci_devinfo* @pci_fill_devinfo(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i8* %6, i8* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca %struct.pci_devinfo*, align 8
  %18 = alloca %struct.TYPE_9__*, align 8
  store i32 %0, i32* %9, align 4
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i8* %6, i8** %15, align 8
  store i8* %7, i8** %16, align 8
  %19 = load i32, i32* %10, align 4
  %20 = call %struct.pci_devinfo* @PCI_ALLOC_DEVINFO(i32 %19)
  store %struct.pci_devinfo* %20, %struct.pci_devinfo** %17, align 8
  %21 = load %struct.pci_devinfo*, %struct.pci_devinfo** %17, align 8
  %22 = getelementptr inbounds %struct.pci_devinfo, %struct.pci_devinfo* %21, i32 0, i32 1
  store %struct.TYPE_9__* %22, %struct.TYPE_9__** %18, align 8
  %23 = load i32, i32* %11, align 4
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  %26 = load i32, i32* %12, align 4
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  %29 = load i32, i32* %13, align 4
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 2
  store i32 %29, i32* %31, align 8
  %32 = load i32, i32* %14, align 4
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 3
  store i32 %32, i32* %34, align 4
  %35 = load i8*, i8** %15, align 8
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 17
  store i8* %35, i8** %37, align 8
  %38 = load i8*, i8** %16, align 8
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 16
  store i8* %38, i8** %40, align 8
  %41 = load i32, i32* @PCIR_COMMAND, align 4
  %42 = call i32 @REG(i32 %41, i32 2)
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 4
  store i32 %42, i32* %44, align 8
  %45 = load i32, i32* @PCIR_STATUS, align 4
  %46 = call i32 @REG(i32 %45, i32 2)
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 5
  store i32 %46, i32* %48, align 4
  %49 = load i32, i32* @PCIR_CLASS, align 4
  %50 = call i32 @REG(i32 %49, i32 1)
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 6
  store i32 %50, i32* %52, align 8
  %53 = load i32, i32* @PCIR_SUBCLASS, align 4
  %54 = call i32 @REG(i32 %53, i32 1)
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 7
  store i32 %54, i32* %56, align 4
  %57 = load i32, i32* @PCIR_PROGIF, align 4
  %58 = call i32 @REG(i32 %57, i32 1)
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 8
  store i32 %58, i32* %60, align 8
  %61 = load i32, i32* @PCIR_REVID, align 4
  %62 = call i32 @REG(i32 %61, i32 1)
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 9
  store i32 %62, i32* %64, align 4
  %65 = load i32, i32* @PCIR_HDRTYPE, align 4
  %66 = call i32 @REG(i32 %65, i32 1)
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 10
  store i32 %66, i32* %68, align 8
  %69 = load i32, i32* @PCIR_CACHELNSZ, align 4
  %70 = call i32 @REG(i32 %69, i32 1)
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 11
  store i32 %70, i32* %72, align 4
  %73 = load i32, i32* @PCIR_LATTIMER, align 4
  %74 = call i32 @REG(i32 %73, i32 1)
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 12
  store i32 %74, i32* %76, align 8
  %77 = load i32, i32* @PCIR_INTPIN, align 4
  %78 = call i32 @REG(i32 %77, i32 1)
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 13
  store i32 %78, i32* %80, align 4
  %81 = load i32, i32* @PCIR_INTLINE, align 4
  %82 = call i32 @REG(i32 %81, i32 1)
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 14
  store i32 %82, i32* %84, align 8
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 10
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @PCIM_MFDEV, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  %91 = zext i1 %90 to i32
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 15
  store i32 %91, i32* %93, align 4
  %94 = load i32, i32* @PCIM_MFDEV, align 4
  %95 = xor i32 %94, -1
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 10
  %98 = load i32, i32* %97, align 8
  %99 = and i32 %98, %95
  store i32 %99, i32* %97, align 8
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 21
  %102 = call i32 @STAILQ_INIT(i32* %101)
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 20
  store i32* null, i32** %104, align 8
  %105 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %106 = call i32 @pci_fixancient(%struct.TYPE_9__* %105)
  %107 = load i32, i32* %9, align 4
  %108 = load i32, i32* %12, align 4
  %109 = load i32, i32* %13, align 4
  %110 = load i32, i32* %14, align 4
  %111 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %112 = call i32 @pci_hdrtypedata(i32 %107, i32 %108, i32 %109, i32 %110, %struct.TYPE_9__* %111)
  %113 = load i32, i32* @PCIR_STATUS, align 4
  %114 = call i32 @REG(i32 %113, i32 2)
  %115 = load i32, i32* @PCIM_STATUS_CAPPRESENT, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %122

118:                                              ; preds = %8
  %119 = load i32, i32* %9, align 4
  %120 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %121 = call i32 @pci_read_cap(i32 %119, %struct.TYPE_9__* %120)
  br label %122

122:                                              ; preds = %118, %8
  %123 = load %struct.pci_devinfo*, %struct.pci_devinfo** %17, align 8
  %124 = load i32, i32* @pci_links, align 4
  %125 = call i32 @STAILQ_INSERT_TAIL(i32* @pci_devq, %struct.pci_devinfo* %123, i32 %124)
  %126 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = load %struct.pci_devinfo*, %struct.pci_devinfo** %17, align 8
  %130 = getelementptr inbounds %struct.pci_devinfo, %struct.pci_devinfo* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 9
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %131, i32 0, i32 0
  store i32 %128, i32* %132, align 8
  %133 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %134 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.pci_devinfo*, %struct.pci_devinfo** %17, align 8
  %137 = getelementptr inbounds %struct.pci_devinfo, %struct.pci_devinfo* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 9
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %138, i32 0, i32 1
  store i32 %135, i32* %139, align 4
  %140 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %141 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 8
  %143 = load %struct.pci_devinfo*, %struct.pci_devinfo** %17, align 8
  %144 = getelementptr inbounds %struct.pci_devinfo, %struct.pci_devinfo* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %144, i32 0, i32 9
  %146 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %145, i32 0, i32 2
  store i32 %142, i32* %146, align 8
  %147 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %148 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %147, i32 0, i32 3
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.pci_devinfo*, %struct.pci_devinfo** %17, align 8
  %151 = getelementptr inbounds %struct.pci_devinfo, %struct.pci_devinfo* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %151, i32 0, i32 9
  %153 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %152, i32 0, i32 3
  store i32 %149, i32* %153, align 4
  %154 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %155 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %154, i32 0, i32 10
  %156 = load i32, i32* %155, align 8
  %157 = load %struct.pci_devinfo*, %struct.pci_devinfo** %17, align 8
  %158 = getelementptr inbounds %struct.pci_devinfo, %struct.pci_devinfo* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %158, i32 0, i32 0
  store i32 %156, i32* %159, align 8
  %160 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %161 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %160, i32 0, i32 19
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.pci_devinfo*, %struct.pci_devinfo** %17, align 8
  %164 = getelementptr inbounds %struct.pci_devinfo, %struct.pci_devinfo* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %164, i32 0, i32 8
  store i32 %162, i32* %165, align 4
  %166 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %167 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %166, i32 0, i32 18
  %168 = load i32, i32* %167, align 8
  %169 = load %struct.pci_devinfo*, %struct.pci_devinfo** %17, align 8
  %170 = getelementptr inbounds %struct.pci_devinfo, %struct.pci_devinfo* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %170, i32 0, i32 7
  store i32 %168, i32* %171, align 8
  %172 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %173 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %172, i32 0, i32 17
  %174 = load i8*, i8** %173, align 8
  %175 = load %struct.pci_devinfo*, %struct.pci_devinfo** %17, align 8
  %176 = getelementptr inbounds %struct.pci_devinfo, %struct.pci_devinfo* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %176, i32 0, i32 6
  store i8* %174, i8** %177, align 8
  %178 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %179 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %178, i32 0, i32 16
  %180 = load i8*, i8** %179, align 8
  %181 = load %struct.pci_devinfo*, %struct.pci_devinfo** %17, align 8
  %182 = getelementptr inbounds %struct.pci_devinfo, %struct.pci_devinfo* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %182, i32 0, i32 5
  store i8* %180, i8** %183, align 8
  %184 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %185 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %184, i32 0, i32 6
  %186 = load i32, i32* %185, align 8
  %187 = load %struct.pci_devinfo*, %struct.pci_devinfo** %17, align 8
  %188 = getelementptr inbounds %struct.pci_devinfo, %struct.pci_devinfo* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %188, i32 0, i32 1
  store i32 %186, i32* %189, align 4
  %190 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %191 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %190, i32 0, i32 7
  %192 = load i32, i32* %191, align 4
  %193 = load %struct.pci_devinfo*, %struct.pci_devinfo** %17, align 8
  %194 = getelementptr inbounds %struct.pci_devinfo, %struct.pci_devinfo* %193, i32 0, i32 0
  %195 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %194, i32 0, i32 2
  store i32 %192, i32* %195, align 8
  %196 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %197 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %196, i32 0, i32 8
  %198 = load i32, i32* %197, align 8
  %199 = load %struct.pci_devinfo*, %struct.pci_devinfo** %17, align 8
  %200 = getelementptr inbounds %struct.pci_devinfo, %struct.pci_devinfo* %199, i32 0, i32 0
  %201 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %200, i32 0, i32 3
  store i32 %198, i32* %201, align 4
  %202 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %203 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %202, i32 0, i32 9
  %204 = load i32, i32* %203, align 4
  %205 = load %struct.pci_devinfo*, %struct.pci_devinfo** %17, align 8
  %206 = getelementptr inbounds %struct.pci_devinfo, %struct.pci_devinfo* %205, i32 0, i32 0
  %207 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %206, i32 0, i32 4
  store i32 %204, i32* %207, align 8
  %208 = load i32, i32* @pci_numdevs, align 4
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* @pci_numdevs, align 4
  %210 = load i32, i32* @pci_generation, align 4
  %211 = add nsw i32 %210, 1
  store i32 %211, i32* @pci_generation, align 4
  %212 = load %struct.pci_devinfo*, %struct.pci_devinfo** %17, align 8
  ret %struct.pci_devinfo* %212
}

declare dso_local %struct.pci_devinfo* @PCI_ALLOC_DEVINFO(i32) #1

declare dso_local i32 @REG(i32, i32) #1

declare dso_local i32 @STAILQ_INIT(i32*) #1

declare dso_local i32 @pci_fixancient(%struct.TYPE_9__*) #1

declare dso_local i32 @pci_hdrtypedata(i32, i32, i32, i32, %struct.TYPE_9__*) #1

declare dso_local i32 @pci_read_cap(i32, %struct.TYPE_9__*) #1

declare dso_local i32 @STAILQ_INSERT_TAIL(i32*, %struct.pci_devinfo*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
