; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlxgbe/extr_ql_ioctl.c_ql_capture_drvr_state.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlxgbe/extr_ql_ioctl.c_ql_capture_drvr_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32, i32, i32, %struct.TYPE_15__, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32* }
%struct.TYPE_15__ = type { %struct.TYPE_12__*, %struct.TYPE_14__*, %struct.TYPE_13__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_18__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32, i32, i64, i32 }

@QLA_VERSION_MAJOR = common dso_local global i64 0, align 8
@QLA_VERSION_MINOR = common dso_local global i32 0, align 4
@QLA_VERSION_BUILD = common dso_local global i32 0, align 4
@ETHER_ADDR_LEN = common dso_local global i32 0, align 4
@NUM_TX_DESCRIPTORS = common dso_local global i32 0, align 4
@NUM_RX_DESCRIPTORS = common dso_local global i32 0, align 4
@NUM_STATUS_DESCRIPTORS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ql_capture_drvr_state(%struct.TYPE_17__* %0) #0 {
  %2 = alloca %struct.TYPE_17__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %2, align 8
  %8 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %9, i32 0, i32 13
  %11 = load i32*, i32** %10, align 8
  store i32* %11, i32** %3, align 8
  %12 = load i32*, i32** %3, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %352

15:                                               ; preds = %1
  %16 = load i32*, i32** %3, align 8
  %17 = bitcast i32* %16 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %17, %struct.TYPE_18__** %5, align 8
  %18 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %18, i32 0, i32 0
  store i32 0, i32* %19, align 8
  %20 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %20, i32 0, i32 27
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %15
  %25 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %25, i32 0, i32 0
  store i32 1, i32* %26, align 8
  br label %352

27:                                               ; preds = %15
  %28 = call i32 (...) @qla_get_usec_timestamp()
  %29 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %29, i32 0, i32 28
  store i32 %28, i32* %30, align 8
  %31 = load i64, i64* @QLA_VERSION_MAJOR, align 8
  %32 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %32, i32 0, i32 27
  store i64 %31, i64* %33, align 8
  %34 = load i32, i32* @QLA_VERSION_MINOR, align 4
  %35 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %35, i32 0, i32 26
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* @QLA_VERSION_BUILD, align 4
  %38 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %38, i32 0, i32 25
  store i32 %37, i32* %39, align 8
  %40 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %41, i32 0, i32 12
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %44, i32 0, i32 24
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %48 = call i32 @bcopy(i32 %43, i32* %46, i32 %47)
  %49 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %50, i32 0, i32 11
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %53, i32 0, i32 23
  store i32 %52, i32* %54, align 4
  %55 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %56, i32 0, i32 10
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %59, i32 0, i32 22
  store i32 %58, i32* %60, align 8
  %61 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %62 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %62, i32 0, i32 9
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %65, i32 0, i32 21
  store i32 %64, i32* %66, align 4
  %67 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %68 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %68, i32 0, i32 8
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %71, i32 0, i32 20
  store i32 %70, i32* %72, align 8
  %73 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %74 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %74, i32 0, i32 7
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %77, i32 0, i32 19
  store i32 %76, i32* %78, align 4
  %79 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %80 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %80, i32 0, i32 6
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %83, i32 0, i32 18
  store i32 %82, i32* %84, align 8
  %85 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %86 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %86, i32 0, i32 5
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %89, i32 0, i32 17
  store i32 %88, i32* %90, align 4
  %91 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %92 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %92, i32 0, i32 4
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %95, i32 0, i32 16
  store i32 %94, i32* %96, align 8
  store i32 128, i32* %6, align 4
  %97 = load i32, i32* %6, align 4
  %98 = call i8* @QL_ALIGN(i32 %97, i32 64)
  %99 = ptrtoint i8* %98 to i32
  %100 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %100, i32 0, i32 1
  store i32 %99, i32* %101, align 4
  %102 = load i32*, i32** %3, align 8
  %103 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %102, i64 %106
  store i32* %107, i32** %4, align 8
  %108 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %109 = load i32*, i32** %4, align 8
  %110 = call i32 @ql_get_tx_state(%struct.TYPE_17__* %108, i32* %109)
  %111 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %112 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = sext i32 %114 to i64
  %116 = mul i64 %115, 4
  %117 = trunc i64 %116 to i32
  store i32 %117, i32* %6, align 4
  %118 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* %6, align 4
  %122 = call i8* @QL_ALIGN(i32 %121, i32 64)
  %123 = sext i32 %120 to i64
  %124 = getelementptr i8, i8* %122, i64 %123
  %125 = ptrtoint i8* %124 to i32
  %126 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %126, i32 0, i32 2
  store i32 %125, i32* %127, align 8
  %128 = load i32*, i32** %3, align 8
  %129 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 8
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %128, i64 %132
  store i32* %133, i32** %4, align 8
  %134 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %135 = load i32*, i32** %4, align 8
  %136 = call i32 @ql_get_rx_state(%struct.TYPE_17__* %134, i32* %135)
  %137 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %138 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = sext i32 %140 to i64
  %142 = mul i64 %141, 4
  %143 = trunc i64 %142 to i32
  store i32 %143, i32* %6, align 4
  %144 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %145 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 8
  %147 = load i32, i32* %6, align 4
  %148 = call i8* @QL_ALIGN(i32 %147, i32 64)
  %149 = sext i32 %146 to i64
  %150 = getelementptr i8, i8* %148, i64 %149
  %151 = ptrtoint i8* %150 to i32
  %152 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %153 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %152, i32 0, i32 3
  store i32 %151, i32* %153, align 4
  %154 = load i32*, i32** %3, align 8
  %155 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %156 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %155, i32 0, i32 3
  %157 = load i32, i32* %156, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i32, i32* %154, i64 %158
  store i32* %159, i32** %4, align 8
  %160 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %161 = load i32*, i32** %4, align 8
  %162 = call i32 @ql_get_sds_state(%struct.TYPE_17__* %160, i32* %161)
  %163 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %164 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %164, i32 0, i32 2
  %166 = load i32, i32* %165, align 8
  %167 = sext i32 %166 to i64
  %168 = mul i64 %167, 4
  %169 = trunc i64 %168 to i32
  store i32 %169, i32* %6, align 4
  %170 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %171 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %170, i32 0, i32 3
  %172 = load i32, i32* %171, align 4
  %173 = load i32, i32* %6, align 4
  %174 = call i8* @QL_ALIGN(i32 %173, i32 64)
  %175 = sext i32 %172 to i64
  %176 = getelementptr i8, i8* %174, i64 %175
  %177 = ptrtoint i8* %176 to i32
  %178 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %179 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %178, i32 0, i32 4
  store i32 %177, i32* %179, align 8
  %180 = load i32*, i32** %3, align 8
  %181 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %182 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %181, i32 0, i32 4
  %183 = load i32, i32* %182, align 8
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i32, i32* %180, i64 %184
  store i32* %185, i32** %4, align 8
  %186 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %187 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %191 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %190, i32 0, i32 5
  store i32 %189, i32* %191, align 4
  %192 = load i32, i32* @NUM_TX_DESCRIPTORS, align 4
  %193 = sext i32 %192 to i64
  %194 = mul i64 4, %193
  %195 = trunc i64 %194 to i32
  %196 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %197 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %196, i32 0, i32 6
  store i32 %195, i32* %197, align 8
  %198 = load i32, i32* @NUM_TX_DESCRIPTORS, align 4
  %199 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %200 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %199, i32 0, i32 7
  store i32 %198, i32* %200, align 4
  %201 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %202 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %201, i32 0, i32 5
  %203 = load i32, i32* %202, align 4
  %204 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %205 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %204, i32 0, i32 6
  %206 = load i32, i32* %205, align 8
  %207 = mul nsw i32 %203, %206
  store i32 %207, i32* %6, align 4
  %208 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %209 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %208, i32 0, i32 0
  %210 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %209, i32 0, i32 3
  %211 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %210, i32 0, i32 2
  %212 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 8
  %214 = load i32*, i32** %4, align 8
  %215 = load i32, i32* %6, align 4
  %216 = call i32 @bcopy(i32 %213, i32* %214, i32 %215)
  %217 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %218 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %217, i32 0, i32 4
  %219 = load i32, i32* %218, align 8
  %220 = load i32, i32* %6, align 4
  %221 = call i8* @QL_ALIGN(i32 %220, i32 64)
  %222 = sext i32 %219 to i64
  %223 = getelementptr i8, i8* %221, i64 %222
  %224 = ptrtoint i8* %223 to i32
  %225 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %226 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %225, i32 0, i32 8
  store i32 %224, i32* %226, align 8
  %227 = load i32*, i32** %3, align 8
  %228 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %229 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %228, i32 0, i32 8
  %230 = load i32, i32* %229, align 8
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds i32, i32* %227, i64 %231
  store i32* %232, i32** %4, align 8
  %233 = load i32, i32* @NUM_RX_DESCRIPTORS, align 4
  %234 = sext i32 %233 to i64
  %235 = mul i64 4, %234
  %236 = trunc i64 %235 to i32
  %237 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %238 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %237, i32 0, i32 9
  store i32 %236, i32* %238, align 4
  %239 = load i32, i32* @NUM_RX_DESCRIPTORS, align 4
  %240 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %241 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %240, i32 0, i32 10
  store i32 %239, i32* %241, align 8
  %242 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %243 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %242, i32 0, i32 0
  %244 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %243, i32 0, i32 1
  %245 = load i32, i32* %244, align 4
  %246 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %247 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %246, i32 0, i32 11
  store i32 %245, i32* %247, align 4
  store i32 0, i32* %7, align 4
  br label %248

248:                                              ; preds = %277, %27
  %249 = load i32, i32* %7, align 4
  %250 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %251 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %250, i32 0, i32 0
  %252 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %251, i32 0, i32 1
  %253 = load i32, i32* %252, align 4
  %254 = icmp slt i32 %249, %253
  br i1 %254, label %255, label %280

255:                                              ; preds = %248
  %256 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %257 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %256, i32 0, i32 0
  %258 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %257, i32 0, i32 3
  %259 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %258, i32 0, i32 1
  %260 = load %struct.TYPE_14__*, %struct.TYPE_14__** %259, align 8
  %261 = load i32, i32* %7, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %260, i64 %262
  %264 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %263, i32 0, i32 0
  %265 = load i32, i32* %264, align 4
  %266 = load i32*, i32** %4, align 8
  %267 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %268 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %267, i32 0, i32 9
  %269 = load i32, i32* %268, align 4
  %270 = call i32 @bcopy(i32 %265, i32* %266, i32 %269)
  %271 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %272 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %271, i32 0, i32 9
  %273 = load i32, i32* %272, align 4
  %274 = load i32*, i32** %4, align 8
  %275 = sext i32 %273 to i64
  %276 = getelementptr inbounds i32, i32* %274, i64 %275
  store i32* %276, i32** %4, align 8
  br label %277

277:                                              ; preds = %255
  %278 = load i32, i32* %7, align 4
  %279 = add nsw i32 %278, 1
  store i32 %279, i32* %7, align 4
  br label %248

280:                                              ; preds = %248
  %281 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %282 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %281, i32 0, i32 9
  %283 = load i32, i32* %282, align 4
  %284 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %285 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %284, i32 0, i32 11
  %286 = load i32, i32* %285, align 4
  %287 = mul nsw i32 %283, %286
  store i32 %287, i32* %6, align 4
  %288 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %289 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %288, i32 0, i32 8
  %290 = load i32, i32* %289, align 8
  %291 = load i32, i32* %6, align 4
  %292 = call i8* @QL_ALIGN(i32 %291, i32 64)
  %293 = sext i32 %290 to i64
  %294 = getelementptr i8, i8* %292, i64 %293
  %295 = ptrtoint i8* %294 to i32
  %296 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %297 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %296, i32 0, i32 12
  store i32 %295, i32* %297, align 8
  %298 = load i32, i32* @NUM_STATUS_DESCRIPTORS, align 4
  %299 = sext i32 %298 to i64
  %300 = mul i64 4, %299
  %301 = trunc i64 %300 to i32
  %302 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %303 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %302, i32 0, i32 13
  store i32 %301, i32* %303, align 4
  %304 = load i32, i32* @NUM_STATUS_DESCRIPTORS, align 4
  %305 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %306 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %305, i32 0, i32 14
  store i32 %304, i32* %306, align 8
  %307 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %308 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %307, i32 0, i32 0
  %309 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %308, i32 0, i32 2
  %310 = load i32, i32* %309, align 8
  %311 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %312 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %311, i32 0, i32 15
  store i32 %310, i32* %312, align 4
  %313 = load i32*, i32** %3, align 8
  %314 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %315 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %314, i32 0, i32 12
  %316 = load i32, i32* %315, align 8
  %317 = sext i32 %316 to i64
  %318 = getelementptr inbounds i32, i32* %313, i64 %317
  store i32* %318, i32** %4, align 8
  store i32 0, i32* %7, align 4
  br label %319

319:                                              ; preds = %348, %280
  %320 = load i32, i32* %7, align 4
  %321 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %322 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %321, i32 0, i32 0
  %323 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %322, i32 0, i32 2
  %324 = load i32, i32* %323, align 8
  %325 = icmp slt i32 %320, %324
  br i1 %325, label %326, label %351

326:                                              ; preds = %319
  %327 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %328 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %327, i32 0, i32 0
  %329 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %328, i32 0, i32 3
  %330 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %329, i32 0, i32 0
  %331 = load %struct.TYPE_12__*, %struct.TYPE_12__** %330, align 8
  %332 = load i32, i32* %7, align 4
  %333 = sext i32 %332 to i64
  %334 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %331, i64 %333
  %335 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %334, i32 0, i32 0
  %336 = load i32, i32* %335, align 4
  %337 = load i32*, i32** %4, align 8
  %338 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %339 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %338, i32 0, i32 13
  %340 = load i32, i32* %339, align 4
  %341 = call i32 @bcopy(i32 %336, i32* %337, i32 %340)
  %342 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %343 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %342, i32 0, i32 13
  %344 = load i32, i32* %343, align 4
  %345 = load i32*, i32** %4, align 8
  %346 = sext i32 %344 to i64
  %347 = getelementptr inbounds i32, i32* %345, i64 %346
  store i32* %347, i32** %4, align 8
  br label %348

348:                                              ; preds = %326
  %349 = load i32, i32* %7, align 4
  %350 = add nsw i32 %349, 1
  store i32 %350, i32* %7, align 4
  br label %319

351:                                              ; preds = %319
  br label %352

352:                                              ; preds = %351, %24, %14
  ret void
}

declare dso_local i32 @qla_get_usec_timestamp(...) #1

declare dso_local i32 @bcopy(i32, i32*, i32) #1

declare dso_local i8* @QL_ALIGN(i32, i32) #1

declare dso_local i32 @ql_get_tx_state(%struct.TYPE_17__*, i32*) #1

declare dso_local i32 @ql_get_rx_state(%struct.TYPE_17__*, i32*) #1

declare dso_local i32 @ql_get_sds_state(%struct.TYPE_17__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
