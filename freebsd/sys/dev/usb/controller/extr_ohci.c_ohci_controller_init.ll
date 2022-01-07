; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_ohci.c_ohci_controller_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_ohci.c_ohci_controller_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i64, %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i32, i32, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.usb_page_search = type { i32 }

@OHCI_CONTROL = common dso_local global i32 0, align 4
@OHCI_IR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"SMM active, request owner change\0A\00", align 1
@OHCI_COMMAND_STATUS = common dso_local global i32 0, align 4
@OHCI_OCR = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"SMM does not respond, resetting\0A\00", align 1
@OHCI_HCFS_RESET = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"cold started\0A\00", align 1
@USB_BUS_RESET_DELAY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"%s: resetting\0A\00", align 1
@OHCI_FM_INTERVAL = common dso_local global i32 0, align 4
@OHCI_HCR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [15 x i8] c"reset timeout\0A\00", align 1
@USB_ERR_IOERROR = common dso_local global i32 0, align 4
@OHCI_HCFS_SUSPEND = common dso_local global i32 0, align 4
@USB_ERR_NORMAL_COMPLETION = common dso_local global i32 0, align 4
@OHCI_HCCA = common dso_local global i32 0, align 4
@OHCI_CONTROL_HEAD_ED = common dso_local global i32 0, align 4
@OHCI_BULK_HEAD_ED = common dso_local global i32 0, align 4
@OHCI_INTERRUPT_DISABLE = common dso_local global i32 0, align 4
@OHCI_ALL_INTRS = common dso_local global i32 0, align 4
@OHCI_INTERRUPT_ENABLE = common dso_local global i32 0, align 4
@OHCI_MIE = common dso_local global i32 0, align 4
@OHCI_CBSR_MASK = common dso_local global i32 0, align 4
@OHCI_LES = common dso_local global i32 0, align 4
@OHCI_HCFS_MASK = common dso_local global i32 0, align 4
@OHCI_PLE = common dso_local global i32 0, align 4
@OHCI_IE = common dso_local global i32 0, align 4
@OHCI_CLE = common dso_local global i32 0, align 4
@OHCI_BLE = common dso_local global i32 0, align 4
@OHCI_RATIO_1_4 = common dso_local global i32 0, align 4
@OHCI_HCFS_OPERATIONAL = common dso_local global i32 0, align 4
@OHCI_FIT = common dso_local global i32 0, align 4
@OHCI_PERIODIC_START = common dso_local global i32 0, align 4
@OHCI_RH_DESCRIPTOR_A = common dso_local global i32 0, align 4
@OHCI_NOCP = common dso_local global i32 0, align 4
@OHCI_RH_STATUS = common dso_local global i32 0, align 4
@OHCI_LPSC = common dso_local global i32 0, align 4
@OHCI_ENABLE_POWER_DELAY = common dso_local global i32 0, align 4
@OHCI_READ_DESC_DELAY = common dso_local global i32 0, align 4
@ohcidebug = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, i32)* @ohci_controller_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ohci_controller_init(%struct.TYPE_10__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.usb_page_search, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store i32 %1, i32* %5, align 4
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %15 = load i32, i32* @OHCI_CONTROL, align 4
  %16 = call i32 @OREAD4(%struct.TYPE_10__* %14, i32 %15)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* @OHCI_IR, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %63

21:                                               ; preds = %2
  %22 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %24 = load i32, i32* @OHCI_COMMAND_STATUS, align 4
  %25 = load i32, i32* @OHCI_OCR, align 4
  %26 = call i32 @OWRITE4(%struct.TYPE_10__* %23, i32 %24, i32 %25)
  store i32 0, i32* %7, align 4
  br label %27

27:                                               ; preds = %44, %21
  %28 = load i32, i32* %7, align 4
  %29 = icmp slt i32 %28, 100
  br i1 %29, label %30, label %35

30:                                               ; preds = %27
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* @OHCI_IR, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br label %35

35:                                               ; preds = %30, %27
  %36 = phi i1 [ false, %27 ], [ %34, %30 ]
  br i1 %36, label %37, label %47

37:                                               ; preds = %35
  %38 = load i32, i32* @hz, align 4
  %39 = sdiv i32 %38, 1000
  %40 = call i32 @usb_pause_mtx(i32* null, i32 %39)
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %42 = load i32, i32* @OHCI_CONTROL, align 4
  %43 = call i32 @OREAD4(%struct.TYPE_10__* %41, i32 %42)
  store i32 %43, i32* %8, align 4
  br label %44

44:                                               ; preds = %37
  %45 = load i32, i32* %7, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %7, align 4
  br label %27

47:                                               ; preds = %35
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* @OHCI_IR, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %62

52:                                               ; preds = %47
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 3
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @device_printf(i32 %56, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %59 = load i32, i32* @OHCI_CONTROL, align 4
  %60 = load i32, i32* @OHCI_HCFS_RESET, align 4
  %61 = call i32 @OWRITE4(%struct.TYPE_10__* %58, i32 %59, i32 %60)
  br label %65

62:                                               ; preds = %47
  br label %69

63:                                               ; preds = %2
  %64 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  br label %65

65:                                               ; preds = %63, %52
  %66 = load i32, i32* @USB_BUS_RESET_DELAY, align 4
  %67 = call i32 @USB_MS_TO_TICKS(i32 %66)
  %68 = call i32 @usb_pause_mtx(i32* null, i32 %67)
  br label %69

69:                                               ; preds = %65, %62
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 3
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @device_get_nameunit(i32 %73)
  %75 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 %74)
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %77 = load i32, i32* @OHCI_CONTROL, align 4
  %78 = load i32, i32* @OHCI_HCFS_RESET, align 4
  %79 = call i32 @OWRITE4(%struct.TYPE_10__* %76, i32 %77, i32 %78)
  %80 = load i32, i32* @USB_BUS_RESET_DELAY, align 4
  %81 = call i32 @USB_MS_TO_TICKS(i32 %80)
  %82 = call i32 @usb_pause_mtx(i32* null, i32 %81)
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %84 = load i32, i32* @OHCI_FM_INTERVAL, align 4
  %85 = call i32 @OREAD4(%struct.TYPE_10__* %83, i32 %84)
  %86 = call i32 @OHCI_GET_IVAL(i32 %85)
  store i32 %86, i32* %9, align 4
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %88 = load i32, i32* @OHCI_COMMAND_STATUS, align 4
  %89 = load i32, i32* @OHCI_HCR, align 4
  %90 = call i32 @OWRITE4(%struct.TYPE_10__* %87, i32 %88, i32 %89)
  store i32 0, i32* %7, align 4
  br label %91

91:                                               ; preds = %105, %69
  %92 = load i32, i32* %7, align 4
  %93 = icmp slt i32 %92, 10
  br i1 %93, label %94, label %108

94:                                               ; preds = %91
  %95 = call i32 @DELAY(i32 10)
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %97 = load i32, i32* @OHCI_COMMAND_STATUS, align 4
  %98 = call i32 @OREAD4(%struct.TYPE_10__* %96, i32 %97)
  %99 = load i32, i32* @OHCI_HCR, align 4
  %100 = and i32 %98, %99
  store i32 %100, i32* %10, align 4
  %101 = load i32, i32* %10, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %104, label %103

103:                                              ; preds = %94
  br label %108

104:                                              ; preds = %94
  br label %105

105:                                              ; preds = %104
  %106 = load i32, i32* %7, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %7, align 4
  br label %91

108:                                              ; preds = %103, %91
  %109 = load i32, i32* %10, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %118

111:                                              ; preds = %108
  %112 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i32 0, i32 3
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @device_printf(i32 %115, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  %117 = load i32, i32* @USB_ERR_IOERROR, align 4
  store i32 %117, i32* %3, align 4
  br label %267

118:                                              ; preds = %108
  %119 = load i32, i32* %5, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %127

121:                                              ; preds = %118
  %122 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %123 = load i32, i32* @OHCI_CONTROL, align 4
  %124 = load i32, i32* @OHCI_HCFS_SUSPEND, align 4
  %125 = call i32 @OWRITE4(%struct.TYPE_10__* %122, i32 %123, i32 %124)
  %126 = load i32, i32* @USB_ERR_NORMAL_COMPLETION, align 4
  store i32 %126, i32* %3, align 4
  br label %267

127:                                              ; preds = %118
  %128 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %128, i32 0, i32 2
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %129, i32 0, i32 2
  %131 = call i32 @usbd_get_page(i32* %130, i32 0, %struct.usb_page_search* %6)
  %132 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %133 = load i32, i32* @OHCI_HCCA, align 4
  %134 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %6, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @OWRITE4(%struct.TYPE_10__* %132, i32 %133, i32 %135)
  %137 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %138 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %137, i32 0, i32 2
  %139 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %138, i32 0, i32 1
  %140 = call i32 @usbd_get_page(i32* %139, i32 0, %struct.usb_page_search* %6)
  %141 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %142 = load i32, i32* @OHCI_CONTROL_HEAD_ED, align 4
  %143 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %6, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @OWRITE4(%struct.TYPE_10__* %141, i32 %142, i32 %144)
  %146 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %147 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %146, i32 0, i32 2
  %148 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %147, i32 0, i32 0
  %149 = call i32 @usbd_get_page(i32* %148, i32 0, %struct.usb_page_search* %6)
  %150 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %151 = load i32, i32* @OHCI_BULK_HEAD_ED, align 4
  %152 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %6, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @OWRITE4(%struct.TYPE_10__* %150, i32 %151, i32 %153)
  %155 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %156 = load i32, i32* @OHCI_INTERRUPT_DISABLE, align 4
  %157 = load i32, i32* @OHCI_ALL_INTRS, align 4
  %158 = call i32 @OWRITE4(%struct.TYPE_10__* %155, i32 %156, i32 %157)
  %159 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %160 = load i32, i32* @OHCI_INTERRUPT_ENABLE, align 4
  %161 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %162 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = load i32, i32* @OHCI_MIE, align 4
  %165 = or i32 %163, %164
  %166 = call i32 @OWRITE4(%struct.TYPE_10__* %159, i32 %160, i32 %165)
  %167 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %168 = load i32, i32* @OHCI_CONTROL, align 4
  %169 = call i32 @OREAD4(%struct.TYPE_10__* %167, i32 %168)
  store i32 %169, i32* %8, align 4
  %170 = load i32, i32* @OHCI_CBSR_MASK, align 4
  %171 = load i32, i32* @OHCI_LES, align 4
  %172 = or i32 %170, %171
  %173 = load i32, i32* @OHCI_HCFS_MASK, align 4
  %174 = or i32 %172, %173
  %175 = load i32, i32* @OHCI_IR, align 4
  %176 = or i32 %174, %175
  %177 = xor i32 %176, -1
  %178 = load i32, i32* %8, align 4
  %179 = and i32 %178, %177
  store i32 %179, i32* %8, align 4
  %180 = load i32, i32* @OHCI_PLE, align 4
  %181 = load i32, i32* @OHCI_IE, align 4
  %182 = or i32 %180, %181
  %183 = load i32, i32* @OHCI_CLE, align 4
  %184 = or i32 %182, %183
  %185 = load i32, i32* @OHCI_BLE, align 4
  %186 = or i32 %184, %185
  %187 = load i32, i32* @OHCI_RATIO_1_4, align 4
  %188 = or i32 %186, %187
  %189 = load i32, i32* @OHCI_HCFS_OPERATIONAL, align 4
  %190 = or i32 %188, %189
  %191 = load i32, i32* %8, align 4
  %192 = or i32 %191, %190
  store i32 %192, i32* %8, align 4
  %193 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %194 = load i32, i32* @OHCI_CONTROL, align 4
  %195 = load i32, i32* %8, align 4
  %196 = call i32 @OWRITE4(%struct.TYPE_10__* %193, i32 %194, i32 %195)
  %197 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %198 = load i32, i32* @OHCI_FM_INTERVAL, align 4
  %199 = call i32 @OREAD4(%struct.TYPE_10__* %197, i32 %198)
  %200 = load i32, i32* @OHCI_FIT, align 4
  %201 = and i32 %199, %200
  %202 = load i32, i32* @OHCI_FIT, align 4
  %203 = xor i32 %201, %202
  store i32 %203, i32* %11, align 4
  %204 = load i32, i32* %9, align 4
  %205 = call i32 @OHCI_FSMPS(i32 %204)
  %206 = load i32, i32* %9, align 4
  %207 = or i32 %205, %206
  %208 = load i32, i32* %11, align 4
  %209 = or i32 %208, %207
  store i32 %209, i32* %11, align 4
  %210 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %211 = load i32, i32* @OHCI_FM_INTERVAL, align 4
  %212 = load i32, i32* %11, align 4
  %213 = call i32 @OWRITE4(%struct.TYPE_10__* %210, i32 %211, i32 %212)
  %214 = load i32, i32* %9, align 4
  %215 = call i32 @OHCI_PERIODIC(i32 %214)
  store i32 %215, i32* %12, align 4
  %216 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %217 = load i32, i32* @OHCI_PERIODIC_START, align 4
  %218 = load i32, i32* %12, align 4
  %219 = call i32 @OWRITE4(%struct.TYPE_10__* %216, i32 %217, i32 %218)
  %220 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %221 = load i32, i32* @OHCI_RH_DESCRIPTOR_A, align 4
  %222 = call i32 @OREAD4(%struct.TYPE_10__* %220, i32 %221)
  store i32 %222, i32* %13, align 4
  %223 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %224 = load i32, i32* @OHCI_RH_DESCRIPTOR_A, align 4
  %225 = load i32, i32* %13, align 4
  %226 = load i32, i32* @OHCI_NOCP, align 4
  %227 = or i32 %225, %226
  %228 = call i32 @OWRITE4(%struct.TYPE_10__* %223, i32 %224, i32 %227)
  %229 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %230 = load i32, i32* @OHCI_RH_STATUS, align 4
  %231 = load i32, i32* @OHCI_LPSC, align 4
  %232 = call i32 @OWRITE4(%struct.TYPE_10__* %229, i32 %230, i32 %231)
  %233 = load i32, i32* @OHCI_ENABLE_POWER_DELAY, align 4
  %234 = call i32 @USB_MS_TO_TICKS(i32 %233)
  %235 = call i32 @usb_pause_mtx(i32* null, i32 %234)
  %236 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %237 = load i32, i32* @OHCI_RH_DESCRIPTOR_A, align 4
  %238 = load i32, i32* %13, align 4
  %239 = call i32 @OWRITE4(%struct.TYPE_10__* %236, i32 %237, i32 %238)
  %240 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %241 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %240, i32 0, i32 1
  store i64 0, i64* %241, align 8
  store i32 0, i32* %7, align 4
  br label %242

242:                                              ; preds = %262, %127
  %243 = load i32, i32* %7, align 4
  %244 = icmp slt i32 %243, 10
  br i1 %244, label %245, label %250

245:                                              ; preds = %242
  %246 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %247 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %246, i32 0, i32 1
  %248 = load i64, i64* %247, align 8
  %249 = icmp eq i64 %248, 0
  br label %250

250:                                              ; preds = %245, %242
  %251 = phi i1 [ false, %242 ], [ %249, %245 ]
  br i1 %251, label %252, label %265

252:                                              ; preds = %250
  %253 = load i32, i32* @OHCI_READ_DESC_DELAY, align 4
  %254 = call i32 @USB_MS_TO_TICKS(i32 %253)
  %255 = call i32 @usb_pause_mtx(i32* null, i32 %254)
  %256 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %257 = load i32, i32* @OHCI_RH_DESCRIPTOR_A, align 4
  %258 = call i32 @OREAD4(%struct.TYPE_10__* %256, i32 %257)
  %259 = call i64 @OHCI_GET_NDP(i32 %258)
  %260 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %261 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %260, i32 0, i32 1
  store i64 %259, i64* %261, align 8
  br label %262

262:                                              ; preds = %252
  %263 = load i32, i32* %7, align 4
  %264 = add nsw i32 %263, 1
  store i32 %264, i32* %7, align 4
  br label %242

265:                                              ; preds = %250
  %266 = load i32, i32* @USB_ERR_NORMAL_COMPLETION, align 4
  store i32 %266, i32* %3, align 4
  br label %267

267:                                              ; preds = %265, %121, %111
  %268 = load i32, i32* %3, align 4
  ret i32 %268
}

declare dso_local i32 @OREAD4(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @DPRINTF(i8*, ...) #1

declare dso_local i32 @OWRITE4(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @usb_pause_mtx(i32*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @USB_MS_TO_TICKS(i32) #1

declare dso_local i32 @device_get_nameunit(i32) #1

declare dso_local i32 @OHCI_GET_IVAL(i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @usbd_get_page(i32*, i32, %struct.usb_page_search*) #1

declare dso_local i32 @OHCI_FSMPS(i32) #1

declare dso_local i32 @OHCI_PERIODIC(i32) #1

declare dso_local i64 @OHCI_GET_NDP(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
