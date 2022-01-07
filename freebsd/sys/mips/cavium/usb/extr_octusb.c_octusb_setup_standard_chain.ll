; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/cavium/usb/extr_octusb.c_octusb_setup_standard_chain.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/cavium/usb/extr_octusb.c_octusb_setup_standard_chain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_xfer = type { i32, i64*, i32, %struct.TYPE_10__*, %struct.octusb_td*, %struct.TYPE_8__, i32*, %struct.TYPE_7__, %struct.octusb_td*, %struct.octusb_td*, %struct.octusb_td**, %struct.TYPE_6__*, i32, i32 }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_8__ = type { i64, i64, i64, i64, i64 }
%struct.TYPE_7__ = type { i64 }
%struct.octusb_td = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i64 }
%struct.TYPE_6__ = type { i32 }
%struct.octusb_std_temp = type { i64, i64, i32, %struct.octusb_td*, i64, i32*, i32*, %struct.octusb_td* }

@.str = private unnamed_addr constant [37 x i8] c"addr=%d endpt=%d sumlen=%d speed=%d\0A\00", align 1
@octusb_host_control_header_tx = common dso_local global i32 0, align 4
@UE_DIR_IN = common dso_local global i32 0, align 4
@octusb_host_control_data_rx = common dso_local global i32 0, align 4
@octusb_non_control_data_rx = common dso_local global i32 0, align 4
@octusb_host_control_data_tx = common dso_local global i32 0, align 4
@octusb_non_control_data_tx = common dso_local global i32 0, align 4
@octusb_host_control_status_tx = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_xfer*)* @octusb_setup_standard_chain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @octusb_setup_standard_chain(%struct.usb_xfer* %0) #0 {
  %2 = alloca %struct.usb_xfer*, align 8
  %3 = alloca %struct.octusb_std_temp, align 8
  %4 = alloca %struct.octusb_td*, align 8
  %5 = alloca i64, align 8
  store %struct.usb_xfer* %0, %struct.usb_xfer** %2, align 8
  %6 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %7 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %6, i32 0, i32 13
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %10 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @UE_GET_ADDR(i32 %11)
  %13 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %14 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %13, i32 0, i32 12
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %17 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %16, i32 0, i32 11
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @usbd_get_speed(i32 %20)
  %22 = call i32 @DPRINTFN(i32 9, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %8, i32 %12, i32 %15, i32 %21)
  %23 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %24 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %23, i32 0, i32 10
  %25 = load %struct.octusb_td**, %struct.octusb_td*** %24, align 8
  %26 = getelementptr inbounds %struct.octusb_td*, %struct.octusb_td** %25, i64 0
  %27 = load %struct.octusb_td*, %struct.octusb_td** %26, align 8
  store %struct.octusb_td* %27, %struct.octusb_td** %4, align 8
  %28 = load %struct.octusb_td*, %struct.octusb_td** %4, align 8
  %29 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %30 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %29, i32 0, i32 9
  store %struct.octusb_td* %28, %struct.octusb_td** %30, align 8
  %31 = load %struct.octusb_td*, %struct.octusb_td** %4, align 8
  %32 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %33 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %32, i32 0, i32 8
  store %struct.octusb_td* %31, %struct.octusb_td** %33, align 8
  %34 = getelementptr inbounds %struct.octusb_std_temp, %struct.octusb_std_temp* %3, i32 0, i32 3
  store %struct.octusb_td* null, %struct.octusb_td** %34, align 8
  %35 = load %struct.octusb_td*, %struct.octusb_td** %4, align 8
  %36 = getelementptr inbounds %struct.octusb_std_temp, %struct.octusb_std_temp* %3, i32 0, i32 7
  store %struct.octusb_td* %35, %struct.octusb_td** %36, align 8
  %37 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %38 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %37, i32 0, i32 5
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 4
  %40 = load i64, i64* %39, align 8
  %41 = getelementptr inbounds %struct.octusb_std_temp, %struct.octusb_std_temp* %3, i32 0, i32 4
  store i64 %40, i64* %41, align 8
  %42 = getelementptr inbounds %struct.octusb_std_temp, %struct.octusb_std_temp* %3, i32 0, i32 0
  store i64 0, i64* %42, align 8
  %43 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %44 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %43, i32 0, i32 5
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %89

48:                                               ; preds = %1
  %49 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %50 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %49, i32 0, i32 5
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 3
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %88

54:                                               ; preds = %48
  %55 = getelementptr inbounds %struct.octusb_std_temp, %struct.octusb_std_temp* %3, i32 0, i32 6
  store i32* @octusb_host_control_header_tx, i32** %55, align 8
  %56 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %57 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %56, i32 0, i32 1
  %58 = load i64*, i64** %57, align 8
  %59 = getelementptr inbounds i64, i64* %58, i64 0
  %60 = load i64, i64* %59, align 8
  %61 = getelementptr inbounds %struct.octusb_std_temp, %struct.octusb_std_temp* %3, i32 0, i32 1
  store i64 %60, i64* %61, align 8
  %62 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %63 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %62, i32 0, i32 6
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 0
  %66 = getelementptr inbounds %struct.octusb_std_temp, %struct.octusb_std_temp* %3, i32 0, i32 5
  store i32* %65, i32** %66, align 8
  %67 = getelementptr inbounds %struct.octusb_std_temp, %struct.octusb_std_temp* %3, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  %70 = zext i1 %69 to i64
  %71 = select i1 %69, i32 1, i32 0
  %72 = getelementptr inbounds %struct.octusb_std_temp, %struct.octusb_std_temp* %3, i32 0, i32 2
  store i32 %71, i32* %72, align 8
  %73 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %74 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = icmp eq i32 %75, 1
  br i1 %76, label %77, label %86

77:                                               ; preds = %54
  %78 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %79 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %78, i32 0, i32 5
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %77
  %84 = getelementptr inbounds %struct.octusb_std_temp, %struct.octusb_std_temp* %3, i32 0, i32 4
  store i64 0, i64* %84, align 8
  br label %85

85:                                               ; preds = %83, %77
  br label %86

86:                                               ; preds = %85, %54
  %87 = call i32 @octusb_setup_standard_chain_sub(%struct.octusb_std_temp* %3)
  br label %88

88:                                               ; preds = %86, %48
  store i64 1, i64* %5, align 8
  br label %90

89:                                               ; preds = %1
  store i64 0, i64* %5, align 8
  br label %90

90:                                               ; preds = %89, %88
  %91 = load i64, i64* %5, align 8
  %92 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %93 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = sext i32 %94 to i64
  %96 = icmp ne i64 %91, %95
  br i1 %96, label %97, label %133

97:                                               ; preds = %90
  %98 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %99 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* @UE_DIR_IN, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %115

104:                                              ; preds = %97
  %105 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %106 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %105, i32 0, i32 5
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %104
  %111 = getelementptr inbounds %struct.octusb_std_temp, %struct.octusb_std_temp* %3, i32 0, i32 6
  store i32* @octusb_host_control_data_rx, i32** %111, align 8
  br label %114

112:                                              ; preds = %104
  %113 = getelementptr inbounds %struct.octusb_std_temp, %struct.octusb_std_temp* %3, i32 0, i32 6
  store i32* @octusb_non_control_data_rx, i32** %113, align 8
  br label %114

114:                                              ; preds = %112, %110
  br label %126

115:                                              ; preds = %97
  %116 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %117 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %116, i32 0, i32 5
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %115
  %122 = getelementptr inbounds %struct.octusb_std_temp, %struct.octusb_std_temp* %3, i32 0, i32 6
  store i32* @octusb_host_control_data_tx, i32** %122, align 8
  br label %125

123:                                              ; preds = %115
  %124 = getelementptr inbounds %struct.octusb_std_temp, %struct.octusb_std_temp* %3, i32 0, i32 6
  store i32* @octusb_non_control_data_tx, i32** %124, align 8
  br label %125

125:                                              ; preds = %123, %121
  br label %126

126:                                              ; preds = %125, %114
  %127 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %128 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %127, i32 0, i32 6
  %129 = load i32*, i32** %128, align 8
  %130 = load i64, i64* %5, align 8
  %131 = getelementptr inbounds i32, i32* %129, i64 %130
  %132 = getelementptr inbounds %struct.octusb_std_temp, %struct.octusb_std_temp* %3, i32 0, i32 5
  store i32* %131, i32** %132, align 8
  br label %133

133:                                              ; preds = %126, %90
  br label %134

134:                                              ; preds = %210, %133
  %135 = load i64, i64* %5, align 8
  %136 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %137 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 8
  %139 = sext i32 %138 to i64
  %140 = icmp ne i64 %135, %139
  br i1 %140, label %141, label %211

141:                                              ; preds = %134
  %142 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %143 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %142, i32 0, i32 1
  %144 = load i64*, i64** %143, align 8
  %145 = load i64, i64* %5, align 8
  %146 = getelementptr inbounds i64, i64* %144, i64 %145
  %147 = load i64, i64* %146, align 8
  %148 = getelementptr inbounds %struct.octusb_std_temp, %struct.octusb_std_temp* %3, i32 0, i32 1
  store i64 %147, i64* %148, align 8
  %149 = load i64, i64* %5, align 8
  %150 = add i64 %149, 1
  store i64 %150, i64* %5, align 8
  %151 = load i64, i64* %5, align 8
  %152 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %153 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 8
  %155 = sext i32 %154 to i64
  %156 = icmp eq i64 %151, %155
  br i1 %156, label %157, label %175

157:                                              ; preds = %141
  %158 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %159 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %158, i32 0, i32 5
  %160 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %159, i32 0, i32 1
  %161 = load i64, i64* %160, align 8
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %172

163:                                              ; preds = %157
  %164 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %165 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %164, i32 0, i32 5
  %166 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %171

169:                                              ; preds = %163
  %170 = getelementptr inbounds %struct.octusb_std_temp, %struct.octusb_std_temp* %3, i32 0, i32 4
  store i64 0, i64* %170, align 8
  br label %171

171:                                              ; preds = %169, %163
  br label %174

172:                                              ; preds = %157
  %173 = getelementptr inbounds %struct.octusb_std_temp, %struct.octusb_std_temp* %3, i32 0, i32 4
  store i64 0, i64* %173, align 8
  br label %174

174:                                              ; preds = %172, %171
  br label %175

175:                                              ; preds = %174, %141
  %176 = getelementptr inbounds %struct.octusb_std_temp, %struct.octusb_std_temp* %3, i32 0, i32 1
  %177 = load i64, i64* %176, align 8
  %178 = icmp eq i64 %177, 0
  br i1 %178, label %179, label %181

179:                                              ; preds = %175
  %180 = getelementptr inbounds %struct.octusb_std_temp, %struct.octusb_std_temp* %3, i32 0, i32 2
  store i32 0, i32* %180, align 8
  br label %190

181:                                              ; preds = %175
  %182 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %183 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %182, i32 0, i32 7
  %184 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %183, i32 0, i32 0
  %185 = load i64, i64* %184, align 8
  %186 = icmp ne i64 %185, 0
  %187 = zext i1 %186 to i64
  %188 = select i1 %186, i32 0, i32 1
  %189 = getelementptr inbounds %struct.octusb_std_temp, %struct.octusb_std_temp* %3, i32 0, i32 2
  store i32 %188, i32* %189, align 8
  br label %190

190:                                              ; preds = %181, %179
  %191 = call i32 @octusb_setup_standard_chain_sub(%struct.octusb_std_temp* %3)
  %192 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %193 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %192, i32 0, i32 5
  %194 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %193, i32 0, i32 2
  %195 = load i64, i64* %194, align 8
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %203

197:                                              ; preds = %190
  %198 = getelementptr inbounds %struct.octusb_std_temp, %struct.octusb_std_temp* %3, i32 0, i32 1
  %199 = load i64, i64* %198, align 8
  %200 = getelementptr inbounds %struct.octusb_std_temp, %struct.octusb_std_temp* %3, i32 0, i32 0
  %201 = load i64, i64* %200, align 8
  %202 = add nsw i64 %201, %199
  store i64 %202, i64* %200, align 8
  br label %210

203:                                              ; preds = %190
  %204 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %205 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %204, i32 0, i32 6
  %206 = load i32*, i32** %205, align 8
  %207 = load i64, i64* %5, align 8
  %208 = getelementptr inbounds i32, i32* %206, i64 %207
  %209 = getelementptr inbounds %struct.octusb_std_temp, %struct.octusb_std_temp* %3, i32 0, i32 5
  store i32* %208, i32** %209, align 8
  br label %210

210:                                              ; preds = %203, %197
  br label %134

211:                                              ; preds = %134
  %212 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %213 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %212, i32 0, i32 5
  %214 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %213, i32 0, i32 1
  %215 = load i64, i64* %214, align 8
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %217, label %230

217:                                              ; preds = %211
  %218 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %219 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %218, i32 0, i32 5
  %220 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %219, i32 0, i32 0
  %221 = load i64, i64* %220, align 8
  %222 = icmp ne i64 %221, 0
  br i1 %222, label %230, label %223

223:                                              ; preds = %217
  %224 = getelementptr inbounds %struct.octusb_std_temp, %struct.octusb_std_temp* %3, i32 0, i32 6
  store i32* @octusb_host_control_status_tx, i32** %224, align 8
  %225 = getelementptr inbounds %struct.octusb_std_temp, %struct.octusb_std_temp* %3, i32 0, i32 1
  store i64 0, i64* %225, align 8
  %226 = getelementptr inbounds %struct.octusb_std_temp, %struct.octusb_std_temp* %3, i32 0, i32 5
  store i32* null, i32** %226, align 8
  %227 = getelementptr inbounds %struct.octusb_std_temp, %struct.octusb_std_temp* %3, i32 0, i32 2
  store i32 0, i32* %227, align 8
  %228 = getelementptr inbounds %struct.octusb_std_temp, %struct.octusb_std_temp* %3, i32 0, i32 4
  store i64 0, i64* %228, align 8
  %229 = call i32 @octusb_setup_standard_chain_sub(%struct.octusb_std_temp* %3)
  br label %230

230:                                              ; preds = %223, %217, %211
  %231 = getelementptr inbounds %struct.octusb_std_temp, %struct.octusb_std_temp* %3, i32 0, i32 3
  %232 = load %struct.octusb_td*, %struct.octusb_td** %231, align 8
  store %struct.octusb_td* %232, %struct.octusb_td** %4, align 8
  %233 = load %struct.octusb_td*, %struct.octusb_td** %4, align 8
  %234 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %235 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %234, i32 0, i32 4
  store %struct.octusb_td* %233, %struct.octusb_td** %235, align 8
  %236 = load %struct.octusb_td*, %struct.octusb_td** %4, align 8
  %237 = getelementptr inbounds %struct.octusb_td, %struct.octusb_td* %236, i32 0, i32 0
  %238 = load %struct.TYPE_9__*, %struct.TYPE_9__** %237, align 8
  %239 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %238, i32 0, i32 1
  store i64 0, i64* %239, align 8
  %240 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %241 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %240, i32 0, i32 3
  %242 = load %struct.TYPE_10__*, %struct.TYPE_10__** %241, align 8
  %243 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %242, i32 0, i32 0
  %244 = load i64, i64* %243, align 8
  %245 = icmp ne i64 %244, 0
  %246 = zext i1 %245 to i64
  %247 = select i1 %245, i32 1, i32 0
  %248 = load %struct.octusb_td*, %struct.octusb_td** %4, align 8
  %249 = getelementptr inbounds %struct.octusb_td, %struct.octusb_td* %248, i32 0, i32 0
  %250 = load %struct.TYPE_9__*, %struct.TYPE_9__** %249, align 8
  %251 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %250, i32 0, i32 0
  store i32 %247, i32* %251, align 8
  ret void
}

declare dso_local i32 @DPRINTFN(i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @UE_GET_ADDR(i32) #1

declare dso_local i32 @usbd_get_speed(i32) #1

declare dso_local i32 @octusb_setup_standard_chain_sub(%struct.octusb_std_temp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
