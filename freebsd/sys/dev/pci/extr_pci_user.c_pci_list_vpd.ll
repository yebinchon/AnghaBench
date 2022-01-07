; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci_user.c_pci_list_vpd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci_user.c_pci_list_vpd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_list_vpd_io = type { i64, %struct.pci_vpd_element* }
%struct.pci_vpd_element = type { i8*, i32, %struct.pci_vpd_element*, i64 }
%struct.pcicfg_vpd = type { i64, i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__*, %struct.pci_vpd_element* }
%struct.TYPE_4__ = type { i32, i8*, %struct.pci_vpd_element* }
%struct.TYPE_3__ = type { i32, i8*, %struct.pci_vpd_element* }

@ENXIO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PVE_FLAG_IDENT = common dso_local global i64 0, align 8
@PVE_FLAG_RW = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"length mismatch\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.pci_list_vpd_io*)* @pci_list_vpd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci_list_vpd(i32 %0, %struct.pci_list_vpd_io* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.pci_list_vpd_io*, align 8
  %6 = alloca %struct.pci_vpd_element, align 8
  %7 = alloca %struct.pci_vpd_element*, align 8
  %8 = alloca %struct.pcicfg_vpd*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.pci_list_vpd_io* %1, %struct.pci_list_vpd_io** %5, align 8
  %12 = load i32, i32* %4, align 4
  %13 = call %struct.pcicfg_vpd* @pci_fetch_vpd_list(i32 %12)
  store %struct.pcicfg_vpd* %13, %struct.pcicfg_vpd** %8, align 8
  %14 = load %struct.pcicfg_vpd*, %struct.pcicfg_vpd** %8, align 8
  %15 = getelementptr inbounds %struct.pcicfg_vpd, %struct.pcicfg_vpd* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %2
  %19 = load %struct.pcicfg_vpd*, %struct.pcicfg_vpd** %8, align 8
  %20 = getelementptr inbounds %struct.pcicfg_vpd, %struct.pcicfg_vpd* %19, i32 0, i32 5
  %21 = load %struct.pci_vpd_element*, %struct.pci_vpd_element** %20, align 8
  %22 = icmp eq %struct.pci_vpd_element* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %18, %2
  %24 = load i32, i32* @ENXIO, align 4
  store i32 %24, i32* %3, align 4
  br label %324

25:                                               ; preds = %18
  %26 = load %struct.pcicfg_vpd*, %struct.pcicfg_vpd** %8, align 8
  %27 = getelementptr inbounds %struct.pcicfg_vpd, %struct.pcicfg_vpd* %26, i32 0, i32 5
  %28 = load %struct.pci_vpd_element*, %struct.pci_vpd_element** %27, align 8
  %29 = call i32 @strlen(%struct.pci_vpd_element* %28)
  %30 = sext i32 %29 to i64
  %31 = add i64 32, %30
  store i64 %31, i64* %9, align 8
  store i32 0, i32* %11, align 4
  br label %32

32:                                               ; preds = %51, %25
  %33 = load i32, i32* %11, align 4
  %34 = load %struct.pcicfg_vpd*, %struct.pcicfg_vpd** %8, align 8
  %35 = getelementptr inbounds %struct.pcicfg_vpd, %struct.pcicfg_vpd* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = icmp slt i32 %33, %36
  br i1 %37, label %38, label %54

38:                                               ; preds = %32
  %39 = load %struct.pcicfg_vpd*, %struct.pcicfg_vpd** %8, align 8
  %40 = getelementptr inbounds %struct.pcicfg_vpd, %struct.pcicfg_vpd* %39, i32 0, i32 4
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = load i32, i32* %11, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = sext i32 %46 to i64
  %48 = add i64 32, %47
  %49 = load i64, i64* %9, align 8
  %50 = add i64 %49, %48
  store i64 %50, i64* %9, align 8
  br label %51

51:                                               ; preds = %38
  %52 = load i32, i32* %11, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %11, align 4
  br label %32

54:                                               ; preds = %32
  store i32 0, i32* %11, align 4
  br label %55

55:                                               ; preds = %74, %54
  %56 = load i32, i32* %11, align 4
  %57 = load %struct.pcicfg_vpd*, %struct.pcicfg_vpd** %8, align 8
  %58 = getelementptr inbounds %struct.pcicfg_vpd, %struct.pcicfg_vpd* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = icmp slt i32 %56, %59
  br i1 %60, label %61, label %77

61:                                               ; preds = %55
  %62 = load %struct.pcicfg_vpd*, %struct.pcicfg_vpd** %8, align 8
  %63 = getelementptr inbounds %struct.pcicfg_vpd, %struct.pcicfg_vpd* %62, i32 0, i32 3
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = load i32, i32* %11, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = sext i32 %69 to i64
  %71 = add i64 32, %70
  %72 = load i64, i64* %9, align 8
  %73 = add i64 %72, %71
  store i64 %73, i64* %9, align 8
  br label %74

74:                                               ; preds = %61
  %75 = load i32, i32* %11, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %11, align 4
  br label %55

77:                                               ; preds = %55
  %78 = load %struct.pci_list_vpd_io*, %struct.pci_list_vpd_io** %5, align 8
  %79 = getelementptr inbounds %struct.pci_list_vpd_io, %struct.pci_list_vpd_io* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %77
  %83 = load i64, i64* %9, align 8
  %84 = load %struct.pci_list_vpd_io*, %struct.pci_list_vpd_io** %5, align 8
  %85 = getelementptr inbounds %struct.pci_list_vpd_io, %struct.pci_list_vpd_io* %84, i32 0, i32 0
  store i64 %83, i64* %85, align 8
  store i32 0, i32* %3, align 4
  br label %324

86:                                               ; preds = %77
  %87 = load %struct.pci_list_vpd_io*, %struct.pci_list_vpd_io** %5, align 8
  %88 = getelementptr inbounds %struct.pci_list_vpd_io, %struct.pci_list_vpd_io* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* %9, align 8
  %91 = icmp ult i64 %89, %90
  br i1 %91, label %92, label %97

92:                                               ; preds = %86
  %93 = load i64, i64* %9, align 8
  %94 = load %struct.pci_list_vpd_io*, %struct.pci_list_vpd_io** %5, align 8
  %95 = getelementptr inbounds %struct.pci_list_vpd_io, %struct.pci_list_vpd_io* %94, i32 0, i32 0
  store i64 %93, i64* %95, align 8
  %96 = load i32, i32* @ENOMEM, align 4
  store i32 %96, i32* %3, align 4
  br label %324

97:                                               ; preds = %86
  %98 = load %struct.pci_list_vpd_io*, %struct.pci_list_vpd_io** %5, align 8
  %99 = getelementptr inbounds %struct.pci_list_vpd_io, %struct.pci_list_vpd_io* %98, i32 0, i32 1
  %100 = load %struct.pci_vpd_element*, %struct.pci_vpd_element** %99, align 8
  store %struct.pci_vpd_element* %100, %struct.pci_vpd_element** %7, align 8
  %101 = getelementptr inbounds %struct.pci_vpd_element, %struct.pci_vpd_element* %6, i32 0, i32 0
  %102 = load i8*, i8** %101, align 8
  %103 = getelementptr inbounds i8, i8* %102, i64 0
  store i8 0, i8* %103, align 1
  %104 = getelementptr inbounds %struct.pci_vpd_element, %struct.pci_vpd_element* %6, i32 0, i32 0
  %105 = load i8*, i8** %104, align 8
  %106 = getelementptr inbounds i8, i8* %105, i64 1
  store i8 0, i8* %106, align 1
  %107 = load i64, i64* @PVE_FLAG_IDENT, align 8
  %108 = getelementptr inbounds %struct.pci_vpd_element, %struct.pci_vpd_element* %6, i32 0, i32 3
  store i64 %107, i64* %108, align 8
  %109 = load %struct.pcicfg_vpd*, %struct.pcicfg_vpd** %8, align 8
  %110 = getelementptr inbounds %struct.pcicfg_vpd, %struct.pcicfg_vpd* %109, i32 0, i32 5
  %111 = load %struct.pci_vpd_element*, %struct.pci_vpd_element** %110, align 8
  %112 = call i32 @strlen(%struct.pci_vpd_element* %111)
  %113 = getelementptr inbounds %struct.pci_vpd_element, %struct.pci_vpd_element* %6, i32 0, i32 1
  store i32 %112, i32* %113, align 8
  %114 = load %struct.pci_vpd_element*, %struct.pci_vpd_element** %7, align 8
  %115 = call i32 @copyout(%struct.pci_vpd_element* %6, %struct.pci_vpd_element* %114, i32 32)
  store i32 %115, i32* %10, align 4
  %116 = load i32, i32* %10, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %97
  %119 = load i32, i32* %10, align 4
  store i32 %119, i32* %3, align 4
  br label %324

120:                                              ; preds = %97
  %121 = load %struct.pcicfg_vpd*, %struct.pcicfg_vpd** %8, align 8
  %122 = getelementptr inbounds %struct.pcicfg_vpd, %struct.pcicfg_vpd* %121, i32 0, i32 5
  %123 = load %struct.pci_vpd_element*, %struct.pci_vpd_element** %122, align 8
  %124 = load %struct.pci_vpd_element*, %struct.pci_vpd_element** %7, align 8
  %125 = getelementptr inbounds %struct.pci_vpd_element, %struct.pci_vpd_element* %124, i32 0, i32 2
  %126 = load %struct.pci_vpd_element*, %struct.pci_vpd_element** %125, align 8
  %127 = load %struct.pcicfg_vpd*, %struct.pcicfg_vpd** %8, align 8
  %128 = getelementptr inbounds %struct.pcicfg_vpd, %struct.pcicfg_vpd* %127, i32 0, i32 5
  %129 = load %struct.pci_vpd_element*, %struct.pci_vpd_element** %128, align 8
  %130 = call i32 @strlen(%struct.pci_vpd_element* %129)
  %131 = call i32 @copyout(%struct.pci_vpd_element* %123, %struct.pci_vpd_element* %126, i32 %130)
  store i32 %131, i32* %10, align 4
  %132 = load i32, i32* %10, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %136

134:                                              ; preds = %120
  %135 = load i32, i32* %10, align 4
  store i32 %135, i32* %3, align 4
  br label %324

136:                                              ; preds = %120
  %137 = load %struct.pci_vpd_element*, %struct.pci_vpd_element** %7, align 8
  %138 = getelementptr inbounds %struct.pci_vpd_element, %struct.pci_vpd_element* %6, i32 0, i32 1
  %139 = load i32, i32* %138, align 8
  %140 = call %struct.pci_vpd_element* @PVE_NEXT_LEN(%struct.pci_vpd_element* %137, i32 %139)
  store %struct.pci_vpd_element* %140, %struct.pci_vpd_element** %7, align 8
  %141 = getelementptr inbounds %struct.pci_vpd_element, %struct.pci_vpd_element* %6, i32 0, i32 3
  store i64 0, i64* %141, align 8
  store i32 0, i32* %11, align 4
  br label %142

142:                                              ; preds = %220, %136
  %143 = load i32, i32* %11, align 4
  %144 = load %struct.pcicfg_vpd*, %struct.pcicfg_vpd** %8, align 8
  %145 = getelementptr inbounds %struct.pcicfg_vpd, %struct.pcicfg_vpd* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 8
  %147 = icmp slt i32 %143, %146
  br i1 %147, label %148, label %223

148:                                              ; preds = %142
  %149 = load %struct.pcicfg_vpd*, %struct.pcicfg_vpd** %8, align 8
  %150 = getelementptr inbounds %struct.pcicfg_vpd, %struct.pcicfg_vpd* %149, i32 0, i32 4
  %151 = load %struct.TYPE_3__*, %struct.TYPE_3__** %150, align 8
  %152 = load i32, i32* %11, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %151, i64 %153
  %155 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %154, i32 0, i32 1
  %156 = load i8*, i8** %155, align 8
  %157 = getelementptr inbounds i8, i8* %156, i64 0
  %158 = load i8, i8* %157, align 1
  %159 = getelementptr inbounds %struct.pci_vpd_element, %struct.pci_vpd_element* %6, i32 0, i32 0
  %160 = load i8*, i8** %159, align 8
  %161 = getelementptr inbounds i8, i8* %160, i64 0
  store i8 %158, i8* %161, align 1
  %162 = load %struct.pcicfg_vpd*, %struct.pcicfg_vpd** %8, align 8
  %163 = getelementptr inbounds %struct.pcicfg_vpd, %struct.pcicfg_vpd* %162, i32 0, i32 4
  %164 = load %struct.TYPE_3__*, %struct.TYPE_3__** %163, align 8
  %165 = load i32, i32* %11, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %164, i64 %166
  %168 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %167, i32 0, i32 1
  %169 = load i8*, i8** %168, align 8
  %170 = getelementptr inbounds i8, i8* %169, i64 1
  %171 = load i8, i8* %170, align 1
  %172 = getelementptr inbounds %struct.pci_vpd_element, %struct.pci_vpd_element* %6, i32 0, i32 0
  %173 = load i8*, i8** %172, align 8
  %174 = getelementptr inbounds i8, i8* %173, i64 1
  store i8 %171, i8* %174, align 1
  %175 = load %struct.pcicfg_vpd*, %struct.pcicfg_vpd** %8, align 8
  %176 = getelementptr inbounds %struct.pcicfg_vpd, %struct.pcicfg_vpd* %175, i32 0, i32 4
  %177 = load %struct.TYPE_3__*, %struct.TYPE_3__** %176, align 8
  %178 = load i32, i32* %11, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %177, i64 %179
  %181 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = getelementptr inbounds %struct.pci_vpd_element, %struct.pci_vpd_element* %6, i32 0, i32 1
  store i32 %182, i32* %183, align 8
  %184 = load %struct.pci_vpd_element*, %struct.pci_vpd_element** %7, align 8
  %185 = call i32 @copyout(%struct.pci_vpd_element* %6, %struct.pci_vpd_element* %184, i32 32)
  store i32 %185, i32* %10, align 4
  %186 = load i32, i32* %10, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %190

188:                                              ; preds = %148
  %189 = load i32, i32* %10, align 4
  store i32 %189, i32* %3, align 4
  br label %324

190:                                              ; preds = %148
  %191 = load %struct.pcicfg_vpd*, %struct.pcicfg_vpd** %8, align 8
  %192 = getelementptr inbounds %struct.pcicfg_vpd, %struct.pcicfg_vpd* %191, i32 0, i32 4
  %193 = load %struct.TYPE_3__*, %struct.TYPE_3__** %192, align 8
  %194 = load i32, i32* %11, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %193, i64 %195
  %197 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %196, i32 0, i32 2
  %198 = load %struct.pci_vpd_element*, %struct.pci_vpd_element** %197, align 8
  %199 = load %struct.pci_vpd_element*, %struct.pci_vpd_element** %7, align 8
  %200 = getelementptr inbounds %struct.pci_vpd_element, %struct.pci_vpd_element* %199, i32 0, i32 2
  %201 = load %struct.pci_vpd_element*, %struct.pci_vpd_element** %200, align 8
  %202 = load %struct.pcicfg_vpd*, %struct.pcicfg_vpd** %8, align 8
  %203 = getelementptr inbounds %struct.pcicfg_vpd, %struct.pcicfg_vpd* %202, i32 0, i32 4
  %204 = load %struct.TYPE_3__*, %struct.TYPE_3__** %203, align 8
  %205 = load i32, i32* %11, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %204, i64 %206
  %208 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 8
  %210 = call i32 @copyout(%struct.pci_vpd_element* %198, %struct.pci_vpd_element* %201, i32 %209)
  store i32 %210, i32* %10, align 4
  %211 = load i32, i32* %10, align 4
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %215

213:                                              ; preds = %190
  %214 = load i32, i32* %10, align 4
  store i32 %214, i32* %3, align 4
  br label %324

215:                                              ; preds = %190
  %216 = load %struct.pci_vpd_element*, %struct.pci_vpd_element** %7, align 8
  %217 = getelementptr inbounds %struct.pci_vpd_element, %struct.pci_vpd_element* %6, i32 0, i32 1
  %218 = load i32, i32* %217, align 8
  %219 = call %struct.pci_vpd_element* @PVE_NEXT_LEN(%struct.pci_vpd_element* %216, i32 %218)
  store %struct.pci_vpd_element* %219, %struct.pci_vpd_element** %7, align 8
  br label %220

220:                                              ; preds = %215
  %221 = load i32, i32* %11, align 4
  %222 = add nsw i32 %221, 1
  store i32 %222, i32* %11, align 4
  br label %142

223:                                              ; preds = %142
  %224 = load i64, i64* @PVE_FLAG_RW, align 8
  %225 = getelementptr inbounds %struct.pci_vpd_element, %struct.pci_vpd_element* %6, i32 0, i32 3
  store i64 %224, i64* %225, align 8
  store i32 0, i32* %11, align 4
  br label %226

226:                                              ; preds = %304, %223
  %227 = load i32, i32* %11, align 4
  %228 = load %struct.pcicfg_vpd*, %struct.pcicfg_vpd** %8, align 8
  %229 = getelementptr inbounds %struct.pcicfg_vpd, %struct.pcicfg_vpd* %228, i32 0, i32 2
  %230 = load i32, i32* %229, align 4
  %231 = icmp slt i32 %227, %230
  br i1 %231, label %232, label %307

232:                                              ; preds = %226
  %233 = load %struct.pcicfg_vpd*, %struct.pcicfg_vpd** %8, align 8
  %234 = getelementptr inbounds %struct.pcicfg_vpd, %struct.pcicfg_vpd* %233, i32 0, i32 3
  %235 = load %struct.TYPE_4__*, %struct.TYPE_4__** %234, align 8
  %236 = load i32, i32* %11, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %235, i64 %237
  %239 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %238, i32 0, i32 1
  %240 = load i8*, i8** %239, align 8
  %241 = getelementptr inbounds i8, i8* %240, i64 0
  %242 = load i8, i8* %241, align 1
  %243 = getelementptr inbounds %struct.pci_vpd_element, %struct.pci_vpd_element* %6, i32 0, i32 0
  %244 = load i8*, i8** %243, align 8
  %245 = getelementptr inbounds i8, i8* %244, i64 0
  store i8 %242, i8* %245, align 1
  %246 = load %struct.pcicfg_vpd*, %struct.pcicfg_vpd** %8, align 8
  %247 = getelementptr inbounds %struct.pcicfg_vpd, %struct.pcicfg_vpd* %246, i32 0, i32 3
  %248 = load %struct.TYPE_4__*, %struct.TYPE_4__** %247, align 8
  %249 = load i32, i32* %11, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %248, i64 %250
  %252 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %251, i32 0, i32 1
  %253 = load i8*, i8** %252, align 8
  %254 = getelementptr inbounds i8, i8* %253, i64 1
  %255 = load i8, i8* %254, align 1
  %256 = getelementptr inbounds %struct.pci_vpd_element, %struct.pci_vpd_element* %6, i32 0, i32 0
  %257 = load i8*, i8** %256, align 8
  %258 = getelementptr inbounds i8, i8* %257, i64 1
  store i8 %255, i8* %258, align 1
  %259 = load %struct.pcicfg_vpd*, %struct.pcicfg_vpd** %8, align 8
  %260 = getelementptr inbounds %struct.pcicfg_vpd, %struct.pcicfg_vpd* %259, i32 0, i32 3
  %261 = load %struct.TYPE_4__*, %struct.TYPE_4__** %260, align 8
  %262 = load i32, i32* %11, align 4
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %261, i64 %263
  %265 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %264, i32 0, i32 0
  %266 = load i32, i32* %265, align 8
  %267 = getelementptr inbounds %struct.pci_vpd_element, %struct.pci_vpd_element* %6, i32 0, i32 1
  store i32 %266, i32* %267, align 8
  %268 = load %struct.pci_vpd_element*, %struct.pci_vpd_element** %7, align 8
  %269 = call i32 @copyout(%struct.pci_vpd_element* %6, %struct.pci_vpd_element* %268, i32 32)
  store i32 %269, i32* %10, align 4
  %270 = load i32, i32* %10, align 4
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %272, label %274

272:                                              ; preds = %232
  %273 = load i32, i32* %10, align 4
  store i32 %273, i32* %3, align 4
  br label %324

274:                                              ; preds = %232
  %275 = load %struct.pcicfg_vpd*, %struct.pcicfg_vpd** %8, align 8
  %276 = getelementptr inbounds %struct.pcicfg_vpd, %struct.pcicfg_vpd* %275, i32 0, i32 3
  %277 = load %struct.TYPE_4__*, %struct.TYPE_4__** %276, align 8
  %278 = load i32, i32* %11, align 4
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %277, i64 %279
  %281 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %280, i32 0, i32 2
  %282 = load %struct.pci_vpd_element*, %struct.pci_vpd_element** %281, align 8
  %283 = load %struct.pci_vpd_element*, %struct.pci_vpd_element** %7, align 8
  %284 = getelementptr inbounds %struct.pci_vpd_element, %struct.pci_vpd_element* %283, i32 0, i32 2
  %285 = load %struct.pci_vpd_element*, %struct.pci_vpd_element** %284, align 8
  %286 = load %struct.pcicfg_vpd*, %struct.pcicfg_vpd** %8, align 8
  %287 = getelementptr inbounds %struct.pcicfg_vpd, %struct.pcicfg_vpd* %286, i32 0, i32 3
  %288 = load %struct.TYPE_4__*, %struct.TYPE_4__** %287, align 8
  %289 = load i32, i32* %11, align 4
  %290 = sext i32 %289 to i64
  %291 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %288, i64 %290
  %292 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %291, i32 0, i32 0
  %293 = load i32, i32* %292, align 8
  %294 = call i32 @copyout(%struct.pci_vpd_element* %282, %struct.pci_vpd_element* %285, i32 %293)
  store i32 %294, i32* %10, align 4
  %295 = load i32, i32* %10, align 4
  %296 = icmp ne i32 %295, 0
  br i1 %296, label %297, label %299

297:                                              ; preds = %274
  %298 = load i32, i32* %10, align 4
  store i32 %298, i32* %3, align 4
  br label %324

299:                                              ; preds = %274
  %300 = load %struct.pci_vpd_element*, %struct.pci_vpd_element** %7, align 8
  %301 = getelementptr inbounds %struct.pci_vpd_element, %struct.pci_vpd_element* %6, i32 0, i32 1
  %302 = load i32, i32* %301, align 8
  %303 = call %struct.pci_vpd_element* @PVE_NEXT_LEN(%struct.pci_vpd_element* %300, i32 %302)
  store %struct.pci_vpd_element* %303, %struct.pci_vpd_element** %7, align 8
  br label %304

304:                                              ; preds = %299
  %305 = load i32, i32* %11, align 4
  %306 = add nsw i32 %305, 1
  store i32 %306, i32* %11, align 4
  br label %226

307:                                              ; preds = %226
  %308 = load %struct.pci_vpd_element*, %struct.pci_vpd_element** %7, align 8
  %309 = bitcast %struct.pci_vpd_element* %308 to i8*
  %310 = load %struct.pci_list_vpd_io*, %struct.pci_list_vpd_io** %5, align 8
  %311 = getelementptr inbounds %struct.pci_list_vpd_io, %struct.pci_list_vpd_io* %310, i32 0, i32 1
  %312 = load %struct.pci_vpd_element*, %struct.pci_vpd_element** %311, align 8
  %313 = bitcast %struct.pci_vpd_element* %312 to i8*
  %314 = ptrtoint i8* %309 to i64
  %315 = ptrtoint i8* %313 to i64
  %316 = sub i64 %314, %315
  %317 = load i64, i64* %9, align 8
  %318 = icmp eq i64 %316, %317
  %319 = zext i1 %318 to i32
  %320 = call i32 @KASSERT(i32 %319, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %321 = load i64, i64* %9, align 8
  %322 = load %struct.pci_list_vpd_io*, %struct.pci_list_vpd_io** %5, align 8
  %323 = getelementptr inbounds %struct.pci_list_vpd_io, %struct.pci_list_vpd_io* %322, i32 0, i32 0
  store i64 %321, i64* %323, align 8
  store i32 0, i32* %3, align 4
  br label %324

324:                                              ; preds = %307, %297, %272, %213, %188, %134, %118, %92, %82, %23
  %325 = load i32, i32* %3, align 4
  ret i32 %325
}

declare dso_local %struct.pcicfg_vpd* @pci_fetch_vpd_list(i32) #1

declare dso_local i32 @strlen(%struct.pci_vpd_element*) #1

declare dso_local i32 @copyout(%struct.pci_vpd_element*, %struct.pci_vpd_element*, i32) #1

declare dso_local %struct.pci_vpd_element* @PVE_NEXT_LEN(%struct.pci_vpd_element*, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
