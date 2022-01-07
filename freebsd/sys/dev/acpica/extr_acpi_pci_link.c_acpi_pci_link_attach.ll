; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi_pci_link.c_acpi_pci_link_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi_pci_link.c_acpi_pci_link_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_pci_link_softc = type { i64, %struct.TYPE_4__*, i64, i32 }
%struct.TYPE_4__ = type { i32, %struct.TYPE_4__*, i32, i8*, i8*, i32, %struct.acpi_pci_link_softc*, i8* }
%struct.link_count_request = type { i64, %struct.acpi_pci_link_softc*, i64, i64, i8* }
%struct.link_res_request = type { i64, %struct.acpi_pci_link_softc*, i64, i64, i8* }

@pci_link = common dso_local global i32 0, align 4
@DPF_OUTSIDE = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [5 x i8] c"_CRS\00", align 1
@acpi_count_irq_resources = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"_PRS\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"Unable to parse _CRS or _PRS: %s\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@M_PCI_LINK = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@PCI_INVALID_IRQ = common dso_local global i8* null, align 8
@FALSE = common dso_local global i32 0, align 4
@link_add_crs = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"Unable to parse _CRS: %s\0A\00", align 1
@link_add_prs = common dso_local global i32 0, align 4
@AE_NOT_FOUND = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [26 x i8] c"Unable to parse _PRS: %s\0A\00", align 1
@bootverbose = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [14 x i8] c"Initial Probe\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"Validation\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"_DIS\00", align 1
@TRUE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [14 x i8] c"After Disable\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @acpi_pci_link_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_pci_link_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.acpi_pci_link_softc*, align 8
  %5 = alloca %struct.link_count_request, align 8
  %6 = alloca %struct.link_res_request, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call %struct.acpi_pci_link_softc* @device_get_softc(i32 %9)
  store %struct.acpi_pci_link_softc* %10, %struct.acpi_pci_link_softc** %4, align 8
  %11 = load i32, i32* %3, align 4
  %12 = load %struct.acpi_pci_link_softc*, %struct.acpi_pci_link_softc** %4, align 8
  %13 = getelementptr inbounds %struct.acpi_pci_link_softc, %struct.acpi_pci_link_softc* %12, i32 0, i32 3
  store i32 %11, i32* %13, align 8
  %14 = load i32, i32* @pci_link, align 4
  %15 = call i32 @ACPI_SERIAL_BEGIN(i32 %14)
  %16 = load i8*, i8** @DPF_OUTSIDE, align 8
  %17 = getelementptr inbounds %struct.link_count_request, %struct.link_count_request* %5, i32 0, i32 4
  store i8* %16, i8** %17, align 8
  %18 = getelementptr inbounds %struct.link_count_request, %struct.link_count_request* %5, i32 0, i32 0
  store i64 0, i64* %18, align 8
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @acpi_get_handle(i32 %19)
  %21 = load i32, i32* @acpi_count_irq_resources, align 4
  %22 = bitcast %struct.link_count_request* %5 to %struct.link_res_request*
  %23 = call i64 @AcpiWalkResources(i32 %20, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %21, %struct.link_res_request* %22)
  store i64 %23, i64* %7, align 8
  %24 = load i64, i64* %7, align 8
  %25 = call i64 @ACPI_FAILURE(i64 %24)
  %26 = load %struct.acpi_pci_link_softc*, %struct.acpi_pci_link_softc** %4, align 8
  %27 = getelementptr inbounds %struct.acpi_pci_link_softc, %struct.acpi_pci_link_softc* %26, i32 0, i32 2
  store i64 %25, i64* %27, align 8
  %28 = load %struct.acpi_pci_link_softc*, %struct.acpi_pci_link_softc** %4, align 8
  %29 = getelementptr inbounds %struct.acpi_pci_link_softc, %struct.acpi_pci_link_softc* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %53

32:                                               ; preds = %1
  %33 = load i8*, i8** @DPF_OUTSIDE, align 8
  %34 = getelementptr inbounds %struct.link_count_request, %struct.link_count_request* %5, i32 0, i32 4
  store i8* %33, i8** %34, align 8
  %35 = getelementptr inbounds %struct.link_count_request, %struct.link_count_request* %5, i32 0, i32 0
  store i64 0, i64* %35, align 8
  %36 = load i32, i32* %3, align 4
  %37 = call i32 @acpi_get_handle(i32 %36)
  %38 = load i32, i32* @acpi_count_irq_resources, align 4
  %39 = bitcast %struct.link_count_request* %5 to %struct.link_res_request*
  %40 = call i64 @AcpiWalkResources(i32 %37, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %38, %struct.link_res_request* %39)
  store i64 %40, i64* %7, align 8
  %41 = load i64, i64* %7, align 8
  %42 = call i64 @ACPI_FAILURE(i64 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %32
  %45 = load i32, i32* %3, align 4
  %46 = load i64, i64* %7, align 8
  %47 = call i32 @AcpiFormatException(i64 %46)
  %48 = call i32 @device_printf(i32 %45, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %47)
  %49 = load i32, i32* @pci_link, align 4
  %50 = call i32 @ACPI_SERIAL_END(i32 %49)
  %51 = load i32, i32* @ENXIO, align 4
  store i32 %51, i32* %2, align 4
  br label %373

52:                                               ; preds = %32
  br label %53

53:                                               ; preds = %52, %1
  %54 = getelementptr inbounds %struct.link_count_request, %struct.link_count_request* %5, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.acpi_pci_link_softc*, %struct.acpi_pci_link_softc** %4, align 8
  %57 = getelementptr inbounds %struct.acpi_pci_link_softc, %struct.acpi_pci_link_softc* %56, i32 0, i32 0
  store i64 %55, i64* %57, align 8
  %58 = getelementptr inbounds %struct.link_count_request, %struct.link_count_request* %5, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %53
  %62 = load i32, i32* @pci_link, align 4
  %63 = call i32 @ACPI_SERIAL_END(i32 %62)
  store i32 0, i32* %2, align 4
  br label %373

64:                                               ; preds = %53
  %65 = load %struct.acpi_pci_link_softc*, %struct.acpi_pci_link_softc** %4, align 8
  %66 = getelementptr inbounds %struct.acpi_pci_link_softc, %struct.acpi_pci_link_softc* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = mul i64 4, %67
  %69 = trunc i64 %68 to i32
  %70 = load i32, i32* @M_PCI_LINK, align 4
  %71 = load i32, i32* @M_WAITOK, align 4
  %72 = load i32, i32* @M_ZERO, align 4
  %73 = or i32 %71, %72
  %74 = call %struct.TYPE_4__* @malloc(i32 %69, i32 %70, i32 %73)
  %75 = load %struct.acpi_pci_link_softc*, %struct.acpi_pci_link_softc** %4, align 8
  %76 = getelementptr inbounds %struct.acpi_pci_link_softc, %struct.acpi_pci_link_softc* %75, i32 0, i32 1
  store %struct.TYPE_4__* %74, %struct.TYPE_4__** %76, align 8
  store i32 0, i32* %8, align 4
  br label %77

77:                                               ; preds = %124, %64
  %78 = load i32, i32* %8, align 4
  %79 = sext i32 %78 to i64
  %80 = load %struct.acpi_pci_link_softc*, %struct.acpi_pci_link_softc** %4, align 8
  %81 = getelementptr inbounds %struct.acpi_pci_link_softc, %struct.acpi_pci_link_softc* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = icmp slt i64 %79, %82
  br i1 %83, label %84, label %127

84:                                               ; preds = %77
  %85 = load i8*, i8** @PCI_INVALID_IRQ, align 8
  %86 = load %struct.acpi_pci_link_softc*, %struct.acpi_pci_link_softc** %4, align 8
  %87 = getelementptr inbounds %struct.acpi_pci_link_softc, %struct.acpi_pci_link_softc* %86, i32 0, i32 1
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %87, align 8
  %89 = load i32, i32* %8, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 3
  store i8* %85, i8** %92, align 8
  %93 = load i8*, i8** @PCI_INVALID_IRQ, align 8
  %94 = load %struct.acpi_pci_link_softc*, %struct.acpi_pci_link_softc** %4, align 8
  %95 = getelementptr inbounds %struct.acpi_pci_link_softc, %struct.acpi_pci_link_softc* %94, i32 0, i32 1
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %95, align 8
  %97 = load i32, i32* %8, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 7
  store i8* %93, i8** %100, align 8
  %101 = load %struct.acpi_pci_link_softc*, %struct.acpi_pci_link_softc** %4, align 8
  %102 = load %struct.acpi_pci_link_softc*, %struct.acpi_pci_link_softc** %4, align 8
  %103 = getelementptr inbounds %struct.acpi_pci_link_softc, %struct.acpi_pci_link_softc* %102, i32 0, i32 1
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %103, align 8
  %105 = load i32, i32* %8, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 6
  store %struct.acpi_pci_link_softc* %101, %struct.acpi_pci_link_softc** %108, align 8
  %109 = load i32, i32* @FALSE, align 4
  %110 = load %struct.acpi_pci_link_softc*, %struct.acpi_pci_link_softc** %4, align 8
  %111 = getelementptr inbounds %struct.acpi_pci_link_softc, %struct.acpi_pci_link_softc* %110, i32 0, i32 1
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** %111, align 8
  %113 = load i32, i32* %8, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 5
  store i32 %109, i32* %116, align 8
  %117 = load %struct.acpi_pci_link_softc*, %struct.acpi_pci_link_softc** %4, align 8
  %118 = getelementptr inbounds %struct.acpi_pci_link_softc, %struct.acpi_pci_link_softc* %117, i32 0, i32 1
  %119 = load %struct.TYPE_4__*, %struct.TYPE_4__** %118, align 8
  %120 = load i32, i32* %8, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 0
  store i32 -1, i32* %123, align 8
  br label %124

124:                                              ; preds = %84
  %125 = load i32, i32* %8, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %8, align 4
  br label %77

127:                                              ; preds = %77
  %128 = load %struct.acpi_pci_link_softc*, %struct.acpi_pci_link_softc** %4, align 8
  %129 = getelementptr inbounds %struct.acpi_pci_link_softc, %struct.acpi_pci_link_softc* %128, i32 0, i32 2
  %130 = load i64, i64* %129, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %152, label %132

132:                                              ; preds = %127
  %133 = load i8*, i8** @DPF_OUTSIDE, align 8
  %134 = getelementptr inbounds %struct.link_res_request, %struct.link_res_request* %6, i32 0, i32 4
  store i8* %133, i8** %134, align 8
  %135 = getelementptr inbounds %struct.link_res_request, %struct.link_res_request* %6, i32 0, i32 3
  store i64 0, i64* %135, align 8
  %136 = getelementptr inbounds %struct.link_res_request, %struct.link_res_request* %6, i32 0, i32 2
  store i64 0, i64* %136, align 8
  %137 = load %struct.acpi_pci_link_softc*, %struct.acpi_pci_link_softc** %4, align 8
  %138 = getelementptr inbounds %struct.link_res_request, %struct.link_res_request* %6, i32 0, i32 1
  store %struct.acpi_pci_link_softc* %137, %struct.acpi_pci_link_softc** %138, align 8
  %139 = load i32, i32* %3, align 4
  %140 = call i32 @acpi_get_handle(i32 %139)
  %141 = load i32, i32* @link_add_crs, align 4
  %142 = call i64 @AcpiWalkResources(i32 %140, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %141, %struct.link_res_request* %6)
  store i64 %142, i64* %7, align 8
  %143 = load i64, i64* %7, align 8
  %144 = call i64 @ACPI_FAILURE(i64 %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %151

146:                                              ; preds = %132
  %147 = load i32, i32* %3, align 4
  %148 = load i64, i64* %7, align 8
  %149 = call i32 @AcpiFormatException(i64 %148)
  %150 = call i32 @device_printf(i32 %147, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %149)
  br label %331

151:                                              ; preds = %132
  br label %152

152:                                              ; preds = %151, %127
  %153 = load i8*, i8** @DPF_OUTSIDE, align 8
  %154 = getelementptr inbounds %struct.link_res_request, %struct.link_res_request* %6, i32 0, i32 4
  store i8* %153, i8** %154, align 8
  %155 = getelementptr inbounds %struct.link_res_request, %struct.link_res_request* %6, i32 0, i32 3
  store i64 0, i64* %155, align 8
  %156 = getelementptr inbounds %struct.link_res_request, %struct.link_res_request* %6, i32 0, i32 2
  store i64 0, i64* %156, align 8
  %157 = load %struct.acpi_pci_link_softc*, %struct.acpi_pci_link_softc** %4, align 8
  %158 = getelementptr inbounds %struct.link_res_request, %struct.link_res_request* %6, i32 0, i32 1
  store %struct.acpi_pci_link_softc* %157, %struct.acpi_pci_link_softc** %158, align 8
  %159 = load i32, i32* %3, align 4
  %160 = call i32 @acpi_get_handle(i32 %159)
  %161 = load i32, i32* @link_add_prs, align 4
  %162 = call i64 @AcpiWalkResources(i32 %160, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %161, %struct.link_res_request* %6)
  store i64 %162, i64* %7, align 8
  %163 = load i64, i64* %7, align 8
  %164 = call i64 @ACPI_FAILURE(i64 %163)
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %180

166:                                              ; preds = %152
  %167 = load i64, i64* %7, align 8
  %168 = load i64, i64* @AE_NOT_FOUND, align 8
  %169 = icmp ne i64 %167, %168
  br i1 %169, label %175, label %170

170:                                              ; preds = %166
  %171 = load %struct.acpi_pci_link_softc*, %struct.acpi_pci_link_softc** %4, align 8
  %172 = getelementptr inbounds %struct.acpi_pci_link_softc, %struct.acpi_pci_link_softc* %171, i32 0, i32 2
  %173 = load i64, i64* %172, align 8
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %180

175:                                              ; preds = %170, %166
  %176 = load i32, i32* %3, align 4
  %177 = load i64, i64* %7, align 8
  %178 = call i32 @AcpiFormatException(i64 %177)
  %179 = call i32 @device_printf(i32 %176, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i32 %178)
  br label %331

180:                                              ; preds = %170, %152
  %181 = load i64, i64* @bootverbose, align 8
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %186

183:                                              ; preds = %180
  %184 = load %struct.acpi_pci_link_softc*, %struct.acpi_pci_link_softc** %4, align 8
  %185 = call i32 @acpi_pci_link_dump(%struct.acpi_pci_link_softc* %184, i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  br label %186

186:                                              ; preds = %183, %180
  %187 = load i64, i64* %7, align 8
  %188 = load i64, i64* @AE_NOT_FOUND, align 8
  %189 = icmp ne i64 %187, %188
  br i1 %189, label %190, label %229

190:                                              ; preds = %186
  store i32 0, i32* %8, align 4
  br label %191

191:                                              ; preds = %225, %190
  %192 = load i32, i32* %8, align 4
  %193 = sext i32 %192 to i64
  %194 = load %struct.acpi_pci_link_softc*, %struct.acpi_pci_link_softc** %4, align 8
  %195 = getelementptr inbounds %struct.acpi_pci_link_softc, %struct.acpi_pci_link_softc* %194, i32 0, i32 0
  %196 = load i64, i64* %195, align 8
  %197 = icmp slt i64 %193, %196
  br i1 %197, label %198, label %228

198:                                              ; preds = %191
  %199 = load %struct.acpi_pci_link_softc*, %struct.acpi_pci_link_softc** %4, align 8
  %200 = getelementptr inbounds %struct.acpi_pci_link_softc, %struct.acpi_pci_link_softc* %199, i32 0, i32 1
  %201 = load %struct.TYPE_4__*, %struct.TYPE_4__** %200, align 8
  %202 = load i32, i32* %8, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %201, i64 %203
  %205 = load %struct.acpi_pci_link_softc*, %struct.acpi_pci_link_softc** %4, align 8
  %206 = getelementptr inbounds %struct.acpi_pci_link_softc, %struct.acpi_pci_link_softc* %205, i32 0, i32 1
  %207 = load %struct.TYPE_4__*, %struct.TYPE_4__** %206, align 8
  %208 = load i32, i32* %8, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %207, i64 %209
  %211 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %210, i32 0, i32 3
  %212 = load i8*, i8** %211, align 8
  %213 = call i32 @link_valid_irq(%struct.TYPE_4__* %204, i8* %212)
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %224, label %215

215:                                              ; preds = %198
  %216 = load i8*, i8** @PCI_INVALID_IRQ, align 8
  %217 = load %struct.acpi_pci_link_softc*, %struct.acpi_pci_link_softc** %4, align 8
  %218 = getelementptr inbounds %struct.acpi_pci_link_softc, %struct.acpi_pci_link_softc* %217, i32 0, i32 1
  %219 = load %struct.TYPE_4__*, %struct.TYPE_4__** %218, align 8
  %220 = load i32, i32* %8, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %219, i64 %221
  %223 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %222, i32 0, i32 3
  store i8* %216, i8** %223, align 8
  br label %224

224:                                              ; preds = %215, %198
  br label %225

225:                                              ; preds = %224
  %226 = load i32, i32* %8, align 4
  %227 = add nsw i32 %226, 1
  store i32 %227, i32* %8, align 4
  br label %191

228:                                              ; preds = %191
  br label %229

229:                                              ; preds = %228, %186
  %230 = load i64, i64* @bootverbose, align 8
  %231 = icmp ne i64 %230, 0
  br i1 %231, label %232, label %235

232:                                              ; preds = %229
  %233 = load %struct.acpi_pci_link_softc*, %struct.acpi_pci_link_softc** %4, align 8
  %234 = call i32 @acpi_pci_link_dump(%struct.acpi_pci_link_softc* %233, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0))
  br label %235

235:                                              ; preds = %232, %229
  store i32 0, i32* %8, align 4
  br label %236

236:                                              ; preds = %259, %235
  %237 = load i32, i32* %8, align 4
  %238 = sext i32 %237 to i64
  %239 = load %struct.acpi_pci_link_softc*, %struct.acpi_pci_link_softc** %4, align 8
  %240 = getelementptr inbounds %struct.acpi_pci_link_softc, %struct.acpi_pci_link_softc* %239, i32 0, i32 0
  %241 = load i64, i64* %240, align 8
  %242 = icmp slt i64 %238, %241
  br i1 %242, label %243, label %262

243:                                              ; preds = %236
  %244 = load %struct.acpi_pci_link_softc*, %struct.acpi_pci_link_softc** %4, align 8
  %245 = getelementptr inbounds %struct.acpi_pci_link_softc, %struct.acpi_pci_link_softc* %244, i32 0, i32 1
  %246 = load %struct.TYPE_4__*, %struct.TYPE_4__** %245, align 8
  %247 = load i32, i32* %8, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %246, i64 %248
  %250 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %249, i32 0, i32 3
  %251 = load i8*, i8** %250, align 8
  %252 = load %struct.acpi_pci_link_softc*, %struct.acpi_pci_link_softc** %4, align 8
  %253 = getelementptr inbounds %struct.acpi_pci_link_softc, %struct.acpi_pci_link_softc* %252, i32 0, i32 1
  %254 = load %struct.TYPE_4__*, %struct.TYPE_4__** %253, align 8
  %255 = load i32, i32* %8, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %254, i64 %256
  %258 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %257, i32 0, i32 4
  store i8* %251, i8** %258, align 8
  br label %259

259:                                              ; preds = %243
  %260 = load i32, i32* %8, align 4
  %261 = add nsw i32 %260, 1
  store i32 %261, i32* %8, align 4
  br label %236

262:                                              ; preds = %236
  %263 = load i32, i32* %3, align 4
  %264 = call i32 @acpi_get_handle(i32 %263)
  %265 = call i32 @AcpiEvaluateObject(i32 %264, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i32* null, i32* null)
  %266 = call i64 @ACPI_SUCCESS(i32 %265)
  %267 = icmp ne i64 %266, 0
  br i1 %267, label %268, label %289

268:                                              ; preds = %262
  store i32 0, i32* %8, align 4
  br label %269

269:                                              ; preds = %285, %268
  %270 = load i32, i32* %8, align 4
  %271 = sext i32 %270 to i64
  %272 = load %struct.acpi_pci_link_softc*, %struct.acpi_pci_link_softc** %4, align 8
  %273 = getelementptr inbounds %struct.acpi_pci_link_softc, %struct.acpi_pci_link_softc* %272, i32 0, i32 0
  %274 = load i64, i64* %273, align 8
  %275 = icmp slt i64 %271, %274
  br i1 %275, label %276, label %288

276:                                              ; preds = %269
  %277 = load i8*, i8** @PCI_INVALID_IRQ, align 8
  %278 = load %struct.acpi_pci_link_softc*, %struct.acpi_pci_link_softc** %4, align 8
  %279 = getelementptr inbounds %struct.acpi_pci_link_softc, %struct.acpi_pci_link_softc* %278, i32 0, i32 1
  %280 = load %struct.TYPE_4__*, %struct.TYPE_4__** %279, align 8
  %281 = load i32, i32* %8, align 4
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %280, i64 %282
  %284 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %283, i32 0, i32 3
  store i8* %277, i8** %284, align 8
  br label %285

285:                                              ; preds = %276
  %286 = load i32, i32* %8, align 4
  %287 = add nsw i32 %286, 1
  store i32 %287, i32* %8, align 4
  br label %269

288:                                              ; preds = %269
  br label %322

289:                                              ; preds = %262
  store i32 0, i32* %8, align 4
  br label %290

290:                                              ; preds = %318, %289
  %291 = load i32, i32* %8, align 4
  %292 = sext i32 %291 to i64
  %293 = load %struct.acpi_pci_link_softc*, %struct.acpi_pci_link_softc** %4, align 8
  %294 = getelementptr inbounds %struct.acpi_pci_link_softc, %struct.acpi_pci_link_softc* %293, i32 0, i32 0
  %295 = load i64, i64* %294, align 8
  %296 = icmp slt i64 %292, %295
  br i1 %296, label %297, label %321

297:                                              ; preds = %290
  %298 = load %struct.acpi_pci_link_softc*, %struct.acpi_pci_link_softc** %4, align 8
  %299 = getelementptr inbounds %struct.acpi_pci_link_softc, %struct.acpi_pci_link_softc* %298, i32 0, i32 1
  %300 = load %struct.TYPE_4__*, %struct.TYPE_4__** %299, align 8
  %301 = load i32, i32* %8, align 4
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %300, i64 %302
  %304 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %303, i32 0, i32 3
  %305 = load i8*, i8** %304, align 8
  %306 = call i64 @PCI_INTERRUPT_VALID(i8* %305)
  %307 = icmp ne i64 %306, 0
  br i1 %307, label %308, label %317

308:                                              ; preds = %297
  %309 = load i32, i32* @TRUE, align 4
  %310 = load %struct.acpi_pci_link_softc*, %struct.acpi_pci_link_softc** %4, align 8
  %311 = getelementptr inbounds %struct.acpi_pci_link_softc, %struct.acpi_pci_link_softc* %310, i32 0, i32 1
  %312 = load %struct.TYPE_4__*, %struct.TYPE_4__** %311, align 8
  %313 = load i32, i32* %8, align 4
  %314 = sext i32 %313 to i64
  %315 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %312, i64 %314
  %316 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %315, i32 0, i32 2
  store i32 %309, i32* %316, align 8
  br label %317

317:                                              ; preds = %308, %297
  br label %318

318:                                              ; preds = %317
  %319 = load i32, i32* %8, align 4
  %320 = add nsw i32 %319, 1
  store i32 %320, i32* %8, align 4
  br label %290

321:                                              ; preds = %290
  br label %322

322:                                              ; preds = %321, %288
  %323 = load i64, i64* @bootverbose, align 8
  %324 = icmp ne i64 %323, 0
  br i1 %324, label %325, label %328

325:                                              ; preds = %322
  %326 = load %struct.acpi_pci_link_softc*, %struct.acpi_pci_link_softc** %4, align 8
  %327 = call i32 @acpi_pci_link_dump(%struct.acpi_pci_link_softc* %326, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0))
  br label %328

328:                                              ; preds = %325, %322
  %329 = load i32, i32* @pci_link, align 4
  %330 = call i32 @ACPI_SERIAL_END(i32 %329)
  store i32 0, i32* %2, align 4
  br label %373

331:                                              ; preds = %175, %146
  %332 = load i32, i32* @pci_link, align 4
  %333 = call i32 @ACPI_SERIAL_END(i32 %332)
  store i32 0, i32* %8, align 4
  br label %334

334:                                              ; preds = %363, %331
  %335 = load i32, i32* %8, align 4
  %336 = sext i32 %335 to i64
  %337 = load %struct.acpi_pci_link_softc*, %struct.acpi_pci_link_softc** %4, align 8
  %338 = getelementptr inbounds %struct.acpi_pci_link_softc, %struct.acpi_pci_link_softc* %337, i32 0, i32 0
  %339 = load i64, i64* %338, align 8
  %340 = icmp slt i64 %336, %339
  br i1 %340, label %341, label %366

341:                                              ; preds = %334
  %342 = load %struct.acpi_pci_link_softc*, %struct.acpi_pci_link_softc** %4, align 8
  %343 = getelementptr inbounds %struct.acpi_pci_link_softc, %struct.acpi_pci_link_softc* %342, i32 0, i32 1
  %344 = load %struct.TYPE_4__*, %struct.TYPE_4__** %343, align 8
  %345 = load i32, i32* %8, align 4
  %346 = sext i32 %345 to i64
  %347 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %344, i64 %346
  %348 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %347, i32 0, i32 1
  %349 = load %struct.TYPE_4__*, %struct.TYPE_4__** %348, align 8
  %350 = icmp ne %struct.TYPE_4__* %349, null
  br i1 %350, label %351, label %362

351:                                              ; preds = %341
  %352 = load %struct.acpi_pci_link_softc*, %struct.acpi_pci_link_softc** %4, align 8
  %353 = getelementptr inbounds %struct.acpi_pci_link_softc, %struct.acpi_pci_link_softc* %352, i32 0, i32 1
  %354 = load %struct.TYPE_4__*, %struct.TYPE_4__** %353, align 8
  %355 = load i32, i32* %8, align 4
  %356 = sext i32 %355 to i64
  %357 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %354, i64 %356
  %358 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %357, i32 0, i32 1
  %359 = load %struct.TYPE_4__*, %struct.TYPE_4__** %358, align 8
  %360 = load i32, i32* @M_PCI_LINK, align 4
  %361 = call i32 @free(%struct.TYPE_4__* %359, i32 %360)
  br label %362

362:                                              ; preds = %351, %341
  br label %363

363:                                              ; preds = %362
  %364 = load i32, i32* %8, align 4
  %365 = add nsw i32 %364, 1
  store i32 %365, i32* %8, align 4
  br label %334

366:                                              ; preds = %334
  %367 = load %struct.acpi_pci_link_softc*, %struct.acpi_pci_link_softc** %4, align 8
  %368 = getelementptr inbounds %struct.acpi_pci_link_softc, %struct.acpi_pci_link_softc* %367, i32 0, i32 1
  %369 = load %struct.TYPE_4__*, %struct.TYPE_4__** %368, align 8
  %370 = load i32, i32* @M_PCI_LINK, align 4
  %371 = call i32 @free(%struct.TYPE_4__* %369, i32 %370)
  %372 = load i32, i32* @ENXIO, align 4
  store i32 %372, i32* %2, align 4
  br label %373

373:                                              ; preds = %366, %328, %61, %44
  %374 = load i32, i32* %2, align 4
  ret i32 %374
}

declare dso_local %struct.acpi_pci_link_softc* @device_get_softc(i32) #1

declare dso_local i32 @ACPI_SERIAL_BEGIN(i32) #1

declare dso_local i64 @AcpiWalkResources(i32, i8*, i32, %struct.link_res_request*) #1

declare dso_local i32 @acpi_get_handle(i32) #1

declare dso_local i64 @ACPI_FAILURE(i64) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

declare dso_local i32 @AcpiFormatException(i64) #1

declare dso_local i32 @ACPI_SERIAL_END(i32) #1

declare dso_local %struct.TYPE_4__* @malloc(i32, i32, i32) #1

declare dso_local i32 @acpi_pci_link_dump(%struct.acpi_pci_link_softc*, i32, i8*) #1

declare dso_local i32 @link_valid_irq(%struct.TYPE_4__*, i8*) #1

declare dso_local i64 @ACPI_SUCCESS(i32) #1

declare dso_local i32 @AcpiEvaluateObject(i32, i8*, i32*, i32*) #1

declare dso_local i64 @PCI_INTERRUPT_VALID(i8*) #1

declare dso_local i32 @free(%struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
