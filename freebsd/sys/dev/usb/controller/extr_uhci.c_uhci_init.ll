; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_uhci.c_uhci_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_uhci.c_uhci_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_17__, %struct.TYPE_14__**, %struct.TYPE_13__, %struct.TYPE_14__*, %struct.TYPE_16__*, %struct.TYPE_16__*, %struct.TYPE_16__*, %struct.TYPE_16__*, %struct.TYPE_16__**, %struct.TYPE_16__*, i32 }
%struct.TYPE_17__ = type { i32*, i32 }
%struct.TYPE_13__ = type { i32, i32*, i32*, i32, i32, i32, i32, i32 }
%struct.TYPE_14__ = type { i8*, i8*, i8*, i8*, i8*, i32* }
%struct.TYPE_16__ = type { i8*, %struct.TYPE_14__*, i8*, %struct.TYPE_16__*, i8* }
%struct.usb_page_search = type { i8** }

@.str = private unnamed_addr constant [7 x i8] c"start\0A\00", align 1
@UHCI_VFRAMELIST_COUNT = common dso_local global i64 0, align 8
@UHCI_IFRAMELIST_COUNT = common dso_local global i64 0, align 8
@UHCI_PTR_T = common dso_local global i32 0, align 4
@UHCI_TD_IOS = common dso_local global i32 0, align 4
@UHCI_FRAMELIST_COUNT = common dso_local global i64 0, align 8
@uhci_iterate_hw_softc = common dso_local global i32 0, align 4
@uhci_bus_methods = common dso_local global i32 0, align 4
@uhcidebug = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uhci_init(%struct.TYPE_15__* %0) #0 {
  %2 = alloca %struct.TYPE_15__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca %struct.TYPE_16__*, align 8
  %9 = alloca %struct.TYPE_16__*, align 8
  %10 = alloca %struct.TYPE_14__*, align 8
  %11 = alloca %struct.TYPE_16__*, align 8
  %12 = alloca %struct.TYPE_16__*, align 8
  %13 = alloca %struct.TYPE_16__*, align 8
  %14 = alloca %struct.TYPE_16__*, align 8
  %15 = alloca %struct.TYPE_16__*, align 8
  %16 = alloca %struct.TYPE_16__*, align 8
  %17 = alloca %struct.TYPE_14__*, align 8
  %18 = alloca %struct.usb_page_search, align 8
  %19 = alloca i8**, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %2, align 8
  %20 = call i32 @DPRINTF(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %21, i32 0, i32 10
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %24, i32 0, i32 1
  %26 = call i32 @usb_callout_init_mtx(i32* %22, i32* %25, i32 0)
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 7
  %30 = call i8* @uhci_init_qh(i32* %29)
  %31 = bitcast i8* %30 to %struct.TYPE_16__*
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %32, i32 0, i32 7
  store %struct.TYPE_16__* %31, %struct.TYPE_16__** %33, align 8
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i32 0, i32 6
  %37 = call i8* @uhci_init_qh(i32* %36)
  %38 = bitcast i8* %37 to %struct.TYPE_16__*
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %39, i32 0, i32 6
  store %struct.TYPE_16__* %38, %struct.TYPE_16__** %40, align 8
  %41 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 5
  %44 = call i8* @uhci_init_qh(i32* %43)
  %45 = bitcast i8* %44 to %struct.TYPE_16__*
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %46, i32 0, i32 5
  store %struct.TYPE_16__* %45, %struct.TYPE_16__** %47, align 8
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %48, i32 0, i32 5
  %50 = load %struct.TYPE_16__*, %struct.TYPE_16__** %49, align 8
  %51 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %51, i32 0, i32 9
  store %struct.TYPE_16__* %50, %struct.TYPE_16__** %52, align 8
  %53 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %54 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i32 0, i32 4
  %56 = call i8* @uhci_init_qh(i32* %55)
  %57 = bitcast i8* %56 to %struct.TYPE_16__*
  %58 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %59 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %58, i32 0, i32 4
  store %struct.TYPE_16__* %57, %struct.TYPE_16__** %59, align 8
  %60 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %61 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 3
  %63 = call i8* @uhci_init_td(i32* %62)
  %64 = bitcast i8* %63 to %struct.TYPE_14__*
  %65 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %66 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %65, i32 0, i32 3
  store %struct.TYPE_14__* %64, %struct.TYPE_14__** %66, align 8
  store i64 0, i64* %4, align 8
  br label %67

67:                                               ; preds = %85, %1
  %68 = load i64, i64* %4, align 8
  %69 = load i64, i64* @UHCI_VFRAMELIST_COUNT, align 8
  %70 = icmp ne i64 %68, %69
  br i1 %70, label %71, label %88

71:                                               ; preds = %67
  %72 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %73 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %73, i32 0, i32 2
  %75 = load i32*, i32** %74, align 8
  %76 = load i64, i64* %4, align 8
  %77 = getelementptr inbounds i32, i32* %75, i64 %76
  %78 = call i8* @uhci_init_td(i32* %77)
  %79 = bitcast i8* %78 to %struct.TYPE_14__*
  %80 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %81 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %80, i32 0, i32 1
  %82 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %81, align 8
  %83 = load i64, i64* %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %82, i64 %83
  store %struct.TYPE_14__* %79, %struct.TYPE_14__** %84, align 8
  br label %85

85:                                               ; preds = %71
  %86 = load i64, i64* %4, align 8
  %87 = add i64 %86, 1
  store i64 %87, i64* %4, align 8
  br label %67

88:                                               ; preds = %67
  store i64 0, i64* %4, align 8
  br label %89

89:                                               ; preds = %107, %88
  %90 = load i64, i64* %4, align 8
  %91 = load i64, i64* @UHCI_IFRAMELIST_COUNT, align 8
  %92 = icmp ne i64 %90, %91
  br i1 %92, label %93, label %110

93:                                               ; preds = %89
  %94 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %95 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %94, i32 0, i32 2
  %96 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %95, i32 0, i32 1
  %97 = load i32*, i32** %96, align 8
  %98 = load i64, i64* %4, align 8
  %99 = getelementptr inbounds i32, i32* %97, i64 %98
  %100 = call i8* @uhci_init_qh(i32* %99)
  %101 = bitcast i8* %100 to %struct.TYPE_16__*
  %102 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %103 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %102, i32 0, i32 8
  %104 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %103, align 8
  %105 = load i64, i64* %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %104, i64 %105
  store %struct.TYPE_16__* %101, %struct.TYPE_16__** %106, align 8
  br label %107

107:                                              ; preds = %93
  %108 = load i64, i64* %4, align 8
  %109 = add i64 %108, 1
  store i64 %109, i64* %4, align 8
  br label %89

110:                                              ; preds = %89
  %111 = load i64, i64* @UHCI_IFRAMELIST_COUNT, align 8
  %112 = udiv i64 %111, 2
  store i64 %112, i64* %3, align 8
  br label %113

113:                                              ; preds = %157, %110
  %114 = load i64, i64* %3, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %160

116:                                              ; preds = %113
  %117 = load i64, i64* %3, align 8
  store i64 %117, i64* %4, align 8
  br label %118

118:                                              ; preds = %123, %116
  %119 = load i64, i64* %4, align 8
  %120 = load i64, i64* %3, align 8
  %121 = and i64 %119, %120
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %157

123:                                              ; preds = %118
  %124 = load i64, i64* %4, align 8
  %125 = load i64, i64* %3, align 8
  %126 = xor i64 %124, %125
  %127 = load i64, i64* %3, align 8
  %128 = udiv i64 %127, 2
  %129 = or i64 %126, %128
  store i64 %129, i64* %5, align 8
  %130 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %131 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %130, i32 0, i32 8
  %132 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %131, align 8
  %133 = load i64, i64* %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %132, i64 %133
  %135 = load %struct.TYPE_16__*, %struct.TYPE_16__** %134, align 8
  store %struct.TYPE_16__* %135, %struct.TYPE_16__** %6, align 8
  %136 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %137 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %136, i32 0, i32 8
  %138 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %137, align 8
  %139 = load i64, i64* %5, align 8
  %140 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %138, i64 %139
  %141 = load %struct.TYPE_16__*, %struct.TYPE_16__** %140, align 8
  store %struct.TYPE_16__* %141, %struct.TYPE_16__** %7, align 8
  %142 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %143 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %142, i32 0, i32 3
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %143, align 8
  %144 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %145 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %144, i32 0, i32 4
  %146 = load i8*, i8** %145, align 8
  %147 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %148 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %147, i32 0, i32 2
  store i8* %146, i8** %148, align 8
  %149 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %150 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %149, i32 0, i32 1
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %150, align 8
  %151 = load i32, i32* @UHCI_PTR_T, align 4
  %152 = call i8* @htole32(i32 %151)
  %153 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %154 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %153, i32 0, i32 0
  store i8* %152, i8** %154, align 8
  %155 = load i64, i64* %4, align 8
  %156 = add i64 %155, 1
  store i64 %156, i64* %4, align 8
  br label %118

157:                                              ; preds = %118
  %158 = load i64, i64* %3, align 8
  %159 = lshr i64 %158, 1
  store i64 %159, i64* %3, align 8
  br label %113

160:                                              ; preds = %113
  %161 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %162 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %161, i32 0, i32 7
  %163 = load %struct.TYPE_16__*, %struct.TYPE_16__** %162, align 8
  store %struct.TYPE_16__* %163, %struct.TYPE_16__** %8, align 8
  %164 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %165 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %164, i32 0, i32 8
  %166 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %166, i64 0
  %168 = load %struct.TYPE_16__*, %struct.TYPE_16__** %167, align 8
  store %struct.TYPE_16__* %168, %struct.TYPE_16__** %9, align 8
  %169 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %170 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %171 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %170, i32 0, i32 3
  store %struct.TYPE_16__* %169, %struct.TYPE_16__** %171, align 8
  %172 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %173 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %172, i32 0, i32 4
  %174 = load i8*, i8** %173, align 8
  %175 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %176 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %175, i32 0, i32 2
  store i8* %174, i8** %176, align 8
  %177 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %178 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %177, i32 0, i32 1
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %178, align 8
  %179 = load i32, i32* @UHCI_PTR_T, align 4
  %180 = call i8* @htole32(i32 %179)
  %181 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %182 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %181, i32 0, i32 0
  store i8* %180, i8** %182, align 8
  store i64 0, i64* %4, align 8
  br label %183

183:                                              ; preds = %220, %160
  %184 = load i64, i64* %4, align 8
  %185 = load i64, i64* @UHCI_VFRAMELIST_COUNT, align 8
  %186 = icmp ne i64 %184, %185
  br i1 %186, label %187, label %223

187:                                              ; preds = %183
  %188 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %189 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %188, i32 0, i32 1
  %190 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %189, align 8
  %191 = load i64, i64* %4, align 8
  %192 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %190, i64 %191
  %193 = load %struct.TYPE_14__*, %struct.TYPE_14__** %192, align 8
  store %struct.TYPE_14__* %193, %struct.TYPE_14__** %10, align 8
  %194 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %195 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %194, i32 0, i32 8
  %196 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %195, align 8
  %197 = load i64, i64* %4, align 8
  %198 = load i64, i64* @UHCI_IFRAMELIST_COUNT, align 8
  %199 = udiv i64 %198, 2
  %200 = or i64 %197, %199
  %201 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %196, i64 %200
  %202 = load %struct.TYPE_16__*, %struct.TYPE_16__** %201, align 8
  store %struct.TYPE_16__* %202, %struct.TYPE_16__** %11, align 8
  %203 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %204 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %203, i32 0, i32 5
  store i32* null, i32** %204, align 8
  %205 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %206 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %205, i32 0, i32 4
  %207 = load i8*, i8** %206, align 8
  %208 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %209 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %208, i32 0, i32 4
  store i8* %207, i8** %209, align 8
  %210 = load i32, i32* @UHCI_TD_IOS, align 4
  %211 = call i8* @htole32(i32 %210)
  %212 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %213 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %212, i32 0, i32 3
  store i8* %211, i8** %213, align 8
  %214 = call i8* @htole32(i32 0)
  %215 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %216 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %215, i32 0, i32 2
  store i8* %214, i8** %216, align 8
  %217 = call i8* @htole32(i32 0)
  %218 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %219 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %218, i32 0, i32 1
  store i8* %217, i8** %219, align 8
  br label %220

220:                                              ; preds = %187
  %221 = load i64, i64* %4, align 8
  %222 = add i64 %221, 1
  store i64 %222, i64* %4, align 8
  br label %183

223:                                              ; preds = %183
  %224 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %225 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %224, i32 0, i32 7
  %226 = load %struct.TYPE_16__*, %struct.TYPE_16__** %225, align 8
  store %struct.TYPE_16__* %226, %struct.TYPE_16__** %12, align 8
  %227 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %228 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %227, i32 0, i32 6
  %229 = load %struct.TYPE_16__*, %struct.TYPE_16__** %228, align 8
  store %struct.TYPE_16__* %229, %struct.TYPE_16__** %13, align 8
  %230 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %231 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %232 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %231, i32 0, i32 3
  store %struct.TYPE_16__* %230, %struct.TYPE_16__** %232, align 8
  %233 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %234 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %233, i32 0, i32 4
  %235 = load i8*, i8** %234, align 8
  %236 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %237 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %236, i32 0, i32 2
  store i8* %235, i8** %237, align 8
  %238 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %239 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %238, i32 0, i32 1
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %239, align 8
  %240 = load i32, i32* @UHCI_PTR_T, align 4
  %241 = call i8* @htole32(i32 %240)
  %242 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %243 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %242, i32 0, i32 0
  store i8* %241, i8** %243, align 8
  %244 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %245 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %244, i32 0, i32 6
  %246 = load %struct.TYPE_16__*, %struct.TYPE_16__** %245, align 8
  store %struct.TYPE_16__* %246, %struct.TYPE_16__** %14, align 8
  %247 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %248 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %247, i32 0, i32 5
  %249 = load %struct.TYPE_16__*, %struct.TYPE_16__** %248, align 8
  store %struct.TYPE_16__* %249, %struct.TYPE_16__** %15, align 8
  %250 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %251 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %252 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %251, i32 0, i32 3
  store %struct.TYPE_16__* %250, %struct.TYPE_16__** %252, align 8
  %253 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %254 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %253, i32 0, i32 4
  %255 = load i8*, i8** %254, align 8
  %256 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %257 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %256, i32 0, i32 2
  store i8* %255, i8** %257, align 8
  %258 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %259 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %258, i32 0, i32 1
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %259, align 8
  %260 = load i32, i32* @UHCI_PTR_T, align 4
  %261 = call i8* @htole32(i32 %260)
  %262 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %263 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %262, i32 0, i32 0
  store i8* %261, i8** %263, align 8
  %264 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %265 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %264, i32 0, i32 4
  %266 = load %struct.TYPE_16__*, %struct.TYPE_16__** %265, align 8
  store %struct.TYPE_16__* %266, %struct.TYPE_16__** %16, align 8
  %267 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %268 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %269 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %268, i32 0, i32 3
  store %struct.TYPE_16__* %267, %struct.TYPE_16__** %269, align 8
  %270 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %271 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %270, i32 0, i32 4
  %272 = load i8*, i8** %271, align 8
  %273 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %274 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %273, i32 0, i32 2
  store i8* %272, i8** %274, align 8
  %275 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %276 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %275, i32 0, i32 1
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %276, align 8
  %277 = load i32, i32* @UHCI_PTR_T, align 4
  %278 = call i8* @htole32(i32 %277)
  %279 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %280 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %279, i32 0, i32 0
  store i8* %278, i8** %280, align 8
  %281 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %282 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %281, i32 0, i32 3
  %283 = load %struct.TYPE_14__*, %struct.TYPE_14__** %282, align 8
  store %struct.TYPE_14__* %283, %struct.TYPE_14__** %17, align 8
  %284 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %285 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %284, i32 0, i32 3
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %285, align 8
  %286 = load i32, i32* @UHCI_PTR_T, align 4
  %287 = call i8* @htole32(i32 %286)
  %288 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %289 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %288, i32 0, i32 2
  store i8* %287, i8** %289, align 8
  %290 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %291 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %292 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %291, i32 0, i32 1
  store %struct.TYPE_14__* %290, %struct.TYPE_14__** %292, align 8
  %293 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %294 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %293, i32 0, i32 0
  %295 = load i8*, i8** %294, align 8
  %296 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %297 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %296, i32 0, i32 0
  store i8* %295, i8** %297, align 8
  %298 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %299 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %298, i32 0, i32 5
  store i32* null, i32** %299, align 8
  %300 = load i32, i32* @UHCI_PTR_T, align 4
  %301 = call i8* @htole32(i32 %300)
  %302 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %303 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %302, i32 0, i32 4
  store i8* %301, i8** %303, align 8
  %304 = call i8* @htole32(i32 0)
  %305 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %306 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %305, i32 0, i32 3
  store i8* %304, i8** %306, align 8
  %307 = call i8* @htole32(i32 0)
  %308 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %309 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %308, i32 0, i32 2
  store i8* %307, i8** %309, align 8
  %310 = call i8* @htole32(i32 0)
  %311 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %312 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %311, i32 0, i32 1
  store i8* %310, i8** %312, align 8
  %313 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %314 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %313, i32 0, i32 2
  %315 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %314, i32 0, i32 0
  %316 = call i32 @usbd_get_page(i32* %315, i32 0, %struct.usb_page_search* %18)
  %317 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %18, i32 0, i32 0
  %318 = load i8**, i8*** %317, align 8
  store i8** %318, i8*** %19, align 8
  store i64 0, i64* %4, align 8
  br label %319

319:                                              ; preds = %337, %223
  %320 = load i64, i64* %4, align 8
  %321 = load i64, i64* @UHCI_FRAMELIST_COUNT, align 8
  %322 = icmp ne i64 %320, %321
  br i1 %322, label %323, label %340

323:                                              ; preds = %319
  %324 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %325 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %324, i32 0, i32 1
  %326 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %325, align 8
  %327 = load i64, i64* %4, align 8
  %328 = load i64, i64* @UHCI_VFRAMELIST_COUNT, align 8
  %329 = urem i64 %327, %328
  %330 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %326, i64 %329
  %331 = load %struct.TYPE_14__*, %struct.TYPE_14__** %330, align 8
  %332 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %331, i32 0, i32 0
  %333 = load i8*, i8** %332, align 8
  %334 = load i8**, i8*** %19, align 8
  %335 = load i64, i64* %4, align 8
  %336 = getelementptr inbounds i8*, i8** %334, i64 %335
  store i8* %333, i8** %336, align 8
  br label %337

337:                                              ; preds = %323
  %338 = load i64, i64* %4, align 8
  %339 = add i64 %338, 1
  store i64 %339, i64* %4, align 8
  br label %319

340:                                              ; preds = %319
  %341 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %342 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %341, i32 0, i32 0
  %343 = call i32 @usb_bus_mem_flush_all(%struct.TYPE_17__* %342, i32* @uhci_iterate_hw_softc)
  %344 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %345 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %344, i32 0, i32 0
  %346 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %345, i32 0, i32 0
  store i32* @uhci_bus_methods, i32** %346, align 8
  %347 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %348 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %347, i32 0, i32 0
  %349 = call i32 @USB_BUS_LOCK(%struct.TYPE_17__* %348)
  %350 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %351 = call i32 @uhci_reset(%struct.TYPE_15__* %350)
  %352 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %353 = call i32 @uhci_start(%struct.TYPE_15__* %352)
  %354 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %355 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %354, i32 0, i32 0
  %356 = call i32 @USB_BUS_UNLOCK(%struct.TYPE_17__* %355)
  %357 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %358 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %357, i32 0, i32 0
  %359 = call i32 @uhci_do_poll(%struct.TYPE_17__* %358)
  ret i32 0
}

declare dso_local i32 @DPRINTF(i8*) #1

declare dso_local i32 @usb_callout_init_mtx(i32*, i32*, i32) #1

declare dso_local i8* @uhci_init_qh(i32*) #1

declare dso_local i8* @uhci_init_td(i32*) #1

declare dso_local i8* @htole32(i32) #1

declare dso_local i32 @usbd_get_page(i32*, i32, %struct.usb_page_search*) #1

declare dso_local i32 @usb_bus_mem_flush_all(%struct.TYPE_17__*, i32*) #1

declare dso_local i32 @USB_BUS_LOCK(%struct.TYPE_17__*) #1

declare dso_local i32 @uhci_reset(%struct.TYPE_15__*) #1

declare dso_local i32 @uhci_start(%struct.TYPE_15__*) #1

declare dso_local i32 @USB_BUS_UNLOCK(%struct.TYPE_17__*) #1

declare dso_local i32 @uhci_do_poll(%struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
