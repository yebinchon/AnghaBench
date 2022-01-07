; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci.c_pci_setup_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci.c_pci_setup_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { i32 }
%struct.pci_devinfo = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i64, i32, %struct.msix_vector*, %struct.msix_table_entry* }
%struct.msix_vector = type { i64, i64, i8* }
%struct.msix_table_entry = type { i32, i32 }
%struct.TYPE_4__ = type { i64, i64, i64, i8* }

@PCIM_CMD_INTxDIS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"MSI has handlers, but vectors not mapped\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"No MSI or MSI-X interrupts allocated\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"MSI-X index too high\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"no message vector\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"IRQ mismatch\00", align 1
@.str.5 = private unnamed_addr constant [54 x i8] c"MSI-X table entry has handlers, but vector not mapped\00", align 1
@PCI_QUIRK_MSI_INTX_BUG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pci_setup_intr(i64 %0, i64 %1, %struct.resource* %2, i32 %3, i32* %4, i32* %5, i8* %6, i8** %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.resource*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8**, align 8
  %18 = alloca %struct.pci_devinfo*, align 8
  %19 = alloca %struct.msix_table_entry*, align 8
  %20 = alloca %struct.msix_vector*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store i64 %0, i64* %10, align 8
  store i64 %1, i64* %11, align 8
  store %struct.resource* %2, %struct.resource** %12, align 8
  store i32 %3, i32* %13, align 4
  store i32* %4, i32** %14, align 8
  store i32* %5, i32** %15, align 8
  store i8* %6, i8** %16, align 8
  store i8** %7, i8*** %17, align 8
  %26 = load i64, i64* %10, align 8
  %27 = load i64, i64* %11, align 8
  %28 = load %struct.resource*, %struct.resource** %12, align 8
  %29 = load i32, i32* %13, align 4
  %30 = load i32*, i32** %14, align 8
  %31 = load i32*, i32** %15, align 8
  %32 = load i8*, i8** %16, align 8
  %33 = call i32 @bus_generic_setup_intr(i64 %26, i64 %27, %struct.resource* %28, i32 %29, i32* %30, i32* %31, i8* %32, i8** %23)
  store i32 %33, i32* %24, align 4
  %34 = load i32, i32* %24, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %8
  %37 = load i32, i32* %24, align 4
  store i32 %37, i32* %9, align 4
  br label %265

38:                                               ; preds = %8
  %39 = load i64, i64* %11, align 8
  %40 = call i64 @device_get_parent(i64 %39)
  %41 = load i64, i64* %10, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %38
  %44 = load i8*, i8** %23, align 8
  %45 = load i8**, i8*** %17, align 8
  store i8* %44, i8** %45, align 8
  store i32 0, i32* %9, align 4
  br label %265

46:                                               ; preds = %38
  %47 = load %struct.resource*, %struct.resource** %12, align 8
  %48 = call i32 @rman_get_rid(%struct.resource* %47)
  store i32 %48, i32* %25, align 4
  %49 = load i32, i32* %25, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %46
  %52 = load i64, i64* %10, align 8
  %53 = load i64, i64* %11, align 8
  %54 = load i32, i32* @PCIM_CMD_INTxDIS, align 4
  %55 = call i32 @pci_clear_command_bit(i64 %52, i64 %53, i32 %54)
  br label %262

56:                                               ; preds = %46
  %57 = load i64, i64* %11, align 8
  %58 = call %struct.pci_devinfo* @device_get_ivars(i64 %57)
  store %struct.pci_devinfo* %58, %struct.pci_devinfo** %18, align 8
  %59 = load %struct.pci_devinfo*, %struct.pci_devinfo** %18, align 8
  %60 = getelementptr inbounds %struct.pci_devinfo, %struct.pci_devinfo* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp sgt i64 %63, 0
  br i1 %64, label %65, label %129

65:                                               ; preds = %56
  %66 = load %struct.pci_devinfo*, %struct.pci_devinfo** %18, align 8
  %67 = getelementptr inbounds %struct.pci_devinfo, %struct.pci_devinfo* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %72, label %102

72:                                               ; preds = %65
  %73 = load %struct.pci_devinfo*, %struct.pci_devinfo** %18, align 8
  %74 = getelementptr inbounds %struct.pci_devinfo, %struct.pci_devinfo* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = icmp eq i64 %77, 0
  %79 = zext i1 %78 to i32
  %80 = call i32 @KASSERT(i32 %79, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %81 = load i64, i64* %10, align 8
  %82 = call i64 @device_get_parent(i64 %81)
  %83 = load i64, i64* %11, align 8
  %84 = load %struct.resource*, %struct.resource** %12, align 8
  %85 = call i64 @rman_get_start(%struct.resource* %84)
  %86 = call i32 @PCIB_MAP_MSI(i64 %82, i64 %83, i64 %85, i8** %21, i8** %22)
  store i32 %86, i32* %24, align 4
  %87 = load i32, i32* %24, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %72
  br label %251

90:                                               ; preds = %72
  %91 = load i8*, i8** %21, align 8
  %92 = ptrtoint i8* %91 to i64
  %93 = load %struct.pci_devinfo*, %struct.pci_devinfo** %18, align 8
  %94 = getelementptr inbounds %struct.pci_devinfo, %struct.pci_devinfo* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 1
  store i64 %92, i64* %96, align 8
  %97 = load i8*, i8** %22, align 8
  %98 = load %struct.pci_devinfo*, %struct.pci_devinfo** %18, align 8
  %99 = getelementptr inbounds %struct.pci_devinfo, %struct.pci_devinfo* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 3
  store i8* %97, i8** %101, align 8
  br label %102

102:                                              ; preds = %90, %65
  %103 = load %struct.pci_devinfo*, %struct.pci_devinfo** %18, align 8
  %104 = getelementptr inbounds %struct.pci_devinfo, %struct.pci_devinfo* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 2
  %107 = load i64, i64* %106, align 8
  %108 = icmp eq i64 %107, 0
  br i1 %108, label %109, label %122

109:                                              ; preds = %102
  %110 = load i64, i64* %11, align 8
  %111 = load %struct.pci_devinfo*, %struct.pci_devinfo** %18, align 8
  %112 = getelementptr inbounds %struct.pci_devinfo, %struct.pci_devinfo* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = load %struct.pci_devinfo*, %struct.pci_devinfo** %18, align 8
  %117 = getelementptr inbounds %struct.pci_devinfo, %struct.pci_devinfo* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 3
  %120 = load i8*, i8** %119, align 8
  %121 = call i32 @pci_enable_msi(i64 %110, i64 %115, i8* %120)
  br label %122

122:                                              ; preds = %109, %102
  %123 = load %struct.pci_devinfo*, %struct.pci_devinfo** %18, align 8
  %124 = getelementptr inbounds %struct.pci_devinfo, %struct.pci_devinfo* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 2
  %127 = load i64, i64* %126, align 8
  %128 = add nsw i64 %127, 1
  store i64 %128, i64* %126, align 8
  br label %234

129:                                              ; preds = %56
  %130 = load %struct.pci_devinfo*, %struct.pci_devinfo** %18, align 8
  %131 = getelementptr inbounds %struct.pci_devinfo, %struct.pci_devinfo* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = icmp sgt i64 %134, 0
  %136 = zext i1 %135 to i32
  %137 = call i32 @KASSERT(i32 %136, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %138 = load i32, i32* %25, align 4
  %139 = load %struct.pci_devinfo*, %struct.pci_devinfo** %18, align 8
  %140 = getelementptr inbounds %struct.pci_devinfo, %struct.pci_devinfo* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 8
  %144 = icmp sle i32 %138, %143
  %145 = zext i1 %144 to i32
  %146 = call i32 @KASSERT(i32 %145, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %147 = load %struct.pci_devinfo*, %struct.pci_devinfo** %18, align 8
  %148 = getelementptr inbounds %struct.pci_devinfo, %struct.pci_devinfo* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %149, i32 0, i32 3
  %151 = load %struct.msix_table_entry*, %struct.msix_table_entry** %150, align 8
  %152 = load i32, i32* %25, align 4
  %153 = sub nsw i32 %152, 1
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.msix_table_entry, %struct.msix_table_entry* %151, i64 %154
  store %struct.msix_table_entry* %155, %struct.msix_table_entry** %19, align 8
  %156 = load %struct.msix_table_entry*, %struct.msix_table_entry** %19, align 8
  %157 = getelementptr inbounds %struct.msix_table_entry, %struct.msix_table_entry* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = icmp ne i32 %158, 0
  %160 = zext i1 %159 to i32
  %161 = call i32 @KASSERT(i32 %160, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %162 = load %struct.pci_devinfo*, %struct.pci_devinfo** %18, align 8
  %163 = getelementptr inbounds %struct.pci_devinfo, %struct.pci_devinfo* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %164, i32 0, i32 2
  %166 = load %struct.msix_vector*, %struct.msix_vector** %165, align 8
  %167 = load %struct.msix_table_entry*, %struct.msix_table_entry** %19, align 8
  %168 = getelementptr inbounds %struct.msix_table_entry, %struct.msix_table_entry* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = sub nsw i32 %169, 1
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds %struct.msix_vector, %struct.msix_vector* %166, i64 %171
  store %struct.msix_vector* %172, %struct.msix_vector** %20, align 8
  %173 = load %struct.msix_vector*, %struct.msix_vector** %20, align 8
  %174 = getelementptr inbounds %struct.msix_vector, %struct.msix_vector* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = load %struct.resource*, %struct.resource** %12, align 8
  %177 = call i64 @rman_get_start(%struct.resource* %176)
  %178 = icmp eq i64 %175, %177
  %179 = zext i1 %178 to i32
  %180 = call i32 @KASSERT(i32 %179, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  %181 = load %struct.msix_vector*, %struct.msix_vector** %20, align 8
  %182 = getelementptr inbounds %struct.msix_vector, %struct.msix_vector* %181, i32 0, i32 1
  %183 = load i64, i64* %182, align 8
  %184 = icmp eq i64 %183, 0
  br i1 %184, label %185, label %209

185:                                              ; preds = %129
  %186 = load %struct.msix_table_entry*, %struct.msix_table_entry** %19, align 8
  %187 = getelementptr inbounds %struct.msix_table_entry, %struct.msix_table_entry* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = icmp eq i32 %188, 0
  %190 = zext i1 %189 to i32
  %191 = call i32 @KASSERT(i32 %190, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.5, i64 0, i64 0))
  %192 = load i64, i64* %10, align 8
  %193 = call i64 @device_get_parent(i64 %192)
  %194 = load i64, i64* %11, align 8
  %195 = load %struct.resource*, %struct.resource** %12, align 8
  %196 = call i64 @rman_get_start(%struct.resource* %195)
  %197 = call i32 @PCIB_MAP_MSI(i64 %193, i64 %194, i64 %196, i8** %21, i8** %22)
  store i32 %197, i32* %24, align 4
  %198 = load i32, i32* %24, align 4
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %201

200:                                              ; preds = %185
  br label %251

201:                                              ; preds = %185
  %202 = load i8*, i8** %21, align 8
  %203 = ptrtoint i8* %202 to i64
  %204 = load %struct.msix_vector*, %struct.msix_vector** %20, align 8
  %205 = getelementptr inbounds %struct.msix_vector, %struct.msix_vector* %204, i32 0, i32 1
  store i64 %203, i64* %205, align 8
  %206 = load i8*, i8** %22, align 8
  %207 = load %struct.msix_vector*, %struct.msix_vector** %20, align 8
  %208 = getelementptr inbounds %struct.msix_vector, %struct.msix_vector* %207, i32 0, i32 2
  store i8* %206, i8** %208, align 8
  br label %209

209:                                              ; preds = %201, %129
  %210 = load %struct.msix_table_entry*, %struct.msix_table_entry** %19, align 8
  %211 = getelementptr inbounds %struct.msix_table_entry, %struct.msix_table_entry* %210, i32 0, i32 1
  %212 = load i32, i32* %211, align 4
  %213 = add nsw i32 %212, 1
  store i32 %213, i32* %211, align 4
  %214 = load %struct.msix_table_entry*, %struct.msix_table_entry** %19, align 8
  %215 = getelementptr inbounds %struct.msix_table_entry, %struct.msix_table_entry* %214, i32 0, i32 1
  %216 = load i32, i32* %215, align 4
  %217 = icmp eq i32 %216, 1
  br i1 %217, label %218, label %233

218:                                              ; preds = %209
  %219 = load i64, i64* %11, align 8
  %220 = load i32, i32* %25, align 4
  %221 = sub nsw i32 %220, 1
  %222 = load %struct.msix_vector*, %struct.msix_vector** %20, align 8
  %223 = getelementptr inbounds %struct.msix_vector, %struct.msix_vector* %222, i32 0, i32 1
  %224 = load i64, i64* %223, align 8
  %225 = load %struct.msix_vector*, %struct.msix_vector** %20, align 8
  %226 = getelementptr inbounds %struct.msix_vector, %struct.msix_vector* %225, i32 0, i32 2
  %227 = load i8*, i8** %226, align 8
  %228 = call i32 @pci_enable_msix(i64 %219, i32 %221, i64 %224, i8* %227)
  %229 = load i64, i64* %11, align 8
  %230 = load i32, i32* %25, align 4
  %231 = sub nsw i32 %230, 1
  %232 = call i32 @pci_unmask_msix(i64 %229, i32 %231)
  br label %233

233:                                              ; preds = %218, %209
  br label %234

234:                                              ; preds = %233, %122
  %235 = load i64, i64* %11, align 8
  %236 = call i32 @pci_get_devid(i64 %235)
  %237 = load i32, i32* @PCI_QUIRK_MSI_INTX_BUG, align 4
  %238 = call i32 @pci_has_quirk(i32 %236, i32 %237)
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %245, label %240

240:                                              ; preds = %234
  %241 = load i64, i64* %10, align 8
  %242 = load i64, i64* %11, align 8
  %243 = load i32, i32* @PCIM_CMD_INTxDIS, align 4
  %244 = call i32 @pci_set_command_bit(i64 %241, i64 %242, i32 %243)
  br label %250

245:                                              ; preds = %234
  %246 = load i64, i64* %10, align 8
  %247 = load i64, i64* %11, align 8
  %248 = load i32, i32* @PCIM_CMD_INTxDIS, align 4
  %249 = call i32 @pci_clear_command_bit(i64 %246, i64 %247, i32 %248)
  br label %250

250:                                              ; preds = %245, %240
  br label %251

251:                                              ; preds = %250, %200, %89
  %252 = load i32, i32* %24, align 4
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %254, label %261

254:                                              ; preds = %251
  %255 = load i64, i64* %10, align 8
  %256 = load i64, i64* %11, align 8
  %257 = load %struct.resource*, %struct.resource** %12, align 8
  %258 = load i8*, i8** %23, align 8
  %259 = call i32 @bus_generic_teardown_intr(i64 %255, i64 %256, %struct.resource* %257, i8* %258)
  %260 = load i32, i32* %24, align 4
  store i32 %260, i32* %9, align 4
  br label %265

261:                                              ; preds = %251
  br label %262

262:                                              ; preds = %261, %51
  %263 = load i8*, i8** %23, align 8
  %264 = load i8**, i8*** %17, align 8
  store i8* %263, i8** %264, align 8
  store i32 0, i32* %9, align 4
  br label %265

265:                                              ; preds = %262, %254, %43, %36
  %266 = load i32, i32* %9, align 4
  ret i32 %266
}

declare dso_local i32 @bus_generic_setup_intr(i64, i64, %struct.resource*, i32, i32*, i32*, i8*, i8**) #1

declare dso_local i64 @device_get_parent(i64) #1

declare dso_local i32 @rman_get_rid(%struct.resource*) #1

declare dso_local i32 @pci_clear_command_bit(i64, i64, i32) #1

declare dso_local %struct.pci_devinfo* @device_get_ivars(i64) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @PCIB_MAP_MSI(i64, i64, i64, i8**, i8**) #1

declare dso_local i64 @rman_get_start(%struct.resource*) #1

declare dso_local i32 @pci_enable_msi(i64, i64, i8*) #1

declare dso_local i32 @pci_enable_msix(i64, i32, i64, i8*) #1

declare dso_local i32 @pci_unmask_msix(i64, i32) #1

declare dso_local i32 @pci_has_quirk(i32, i32) #1

declare dso_local i32 @pci_get_devid(i64) #1

declare dso_local i32 @pci_set_command_bit(i64, i64, i32) #1

declare dso_local i32 @bus_generic_teardown_intr(i64, i64, %struct.resource*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
