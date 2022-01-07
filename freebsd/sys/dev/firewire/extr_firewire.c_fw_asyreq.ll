; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/firewire/extr_firewire.c_fw_asyreq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/firewire/extr_firewire.c_fw_asyreq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.firewire_comm = type { i64, i32, i32, %struct.fw_xferq*, %struct.fw_xferq*, %struct.tcode_info* }
%struct.fw_xferq = type { i64, i64, i32* }
%struct.tcode_info = type { i32, i32 }
%struct.fw_xfer = type { i32, i32, %struct.fw_xferq*, %struct.firewire_comm*, %struct.TYPE_12__, i32, i32* }
%struct.TYPE_12__ = type { i32, %struct.fw_pkt }
%struct.fw_pkt = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"hand == NULL\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"invalid tcode=%x\0A\00", align 1
@FWBUSEXPLORE = common dso_local global i64 0, align 8
@FWTCODE_RREQQ = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@FWXF_BUSY = common dso_local global i32 0, align 4
@FWTI_REQ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"send.pay_len > maxrec\0A\00", align 1
@FWTI_BLOCK_STR = common dso_local global i32 0, align 4
@FWTI_BLOCK_ASY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"len(%d) != send.pay_len(%d) %s(%x)\0A\00", align 1
@tcode_str = common dso_local global i8** null, align 8
@.str.4 = private unnamed_addr constant [22 x i8] c"xferq->start == NULL\0A\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"Discard a packet (queued=%d)\0A\00", align 1
@FWTI_TLABEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fw_asyreq(%struct.firewire_comm* %0, i32 %1, %struct.fw_xfer* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.firewire_comm*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.fw_xfer*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.fw_xferq*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.fw_pkt*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.tcode_info*, align 8
  store %struct.firewire_comm* %0, %struct.firewire_comm** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.fw_xfer* %2, %struct.fw_xfer** %7, align 8
  store i32 0, i32* %8, align 4
  %14 = load %struct.fw_xfer*, %struct.fw_xfer** %7, align 8
  %15 = icmp eq %struct.fw_xfer* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i32, i32* @EINVAL, align 4
  store i32 %17, i32* %4, align 4
  br label %223

18:                                               ; preds = %3
  %19 = load %struct.fw_xfer*, %struct.fw_xfer** %7, align 8
  %20 = getelementptr inbounds %struct.fw_xfer, %struct.fw_xfer* %19, i32 0, i32 6
  %21 = load i32*, i32** %20, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* @EINVAL, align 4
  store i32 %25, i32* %4, align 4
  br label %223

26:                                               ; preds = %18
  %27 = load %struct.fw_xfer*, %struct.fw_xfer** %7, align 8
  %28 = getelementptr inbounds %struct.fw_xfer, %struct.fw_xfer* %27, i32 0, i32 4
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 1
  store %struct.fw_pkt* %29, %struct.fw_pkt** %11, align 8
  %30 = load %struct.fw_pkt*, %struct.fw_pkt** %11, align 8
  %31 = getelementptr inbounds %struct.fw_pkt, %struct.fw_pkt* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 3
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = and i32 %34, 15
  store i32 %35, i32* %12, align 4
  %36 = load %struct.firewire_comm*, %struct.firewire_comm** %5, align 8
  %37 = getelementptr inbounds %struct.firewire_comm, %struct.firewire_comm* %36, i32 0, i32 5
  %38 = load %struct.tcode_info*, %struct.tcode_info** %37, align 8
  %39 = load i32, i32* %12, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.tcode_info, %struct.tcode_info* %38, i64 %40
  store %struct.tcode_info* %41, %struct.tcode_info** %13, align 8
  %42 = load %struct.tcode_info*, %struct.tcode_info** %13, align 8
  %43 = getelementptr inbounds %struct.tcode_info, %struct.tcode_info* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %26
  %47 = load i32, i32* %12, align 4
  %48 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %47)
  %49 = load i32, i32* @EINVAL, align 4
  store i32 %49, i32* %4, align 4
  br label %223

50:                                               ; preds = %26
  %51 = load %struct.firewire_comm*, %struct.firewire_comm** %5, align 8
  %52 = getelementptr inbounds %struct.firewire_comm, %struct.firewire_comm* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @FWBUSEXPLORE, align 8
  %55 = icmp slt i64 %53, %54
  br i1 %55, label %56, label %89

56:                                               ; preds = %50
  %57 = load i32, i32* %12, align 4
  %58 = load i32, i32* @FWTCODE_RREQQ, align 4
  %59 = icmp ne i32 %57, %58
  br i1 %59, label %81, label %60

60:                                               ; preds = %56
  %61 = load %struct.fw_pkt*, %struct.fw_pkt** %11, align 8
  %62 = getelementptr inbounds %struct.fw_pkt, %struct.fw_pkt* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = icmp ne i32 %65, 65535
  br i1 %66, label %81, label %67

67:                                               ; preds = %60
  %68 = load %struct.fw_pkt*, %struct.fw_pkt** %11, align 8
  %69 = getelementptr inbounds %struct.fw_pkt, %struct.fw_pkt* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = icmp ult i32 %72, -268435456
  br i1 %73, label %81, label %74

74:                                               ; preds = %67
  %75 = load %struct.fw_pkt*, %struct.fw_pkt** %11, align 8
  %76 = getelementptr inbounds %struct.fw_pkt, %struct.fw_pkt* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = icmp uge i32 %79, -268431360
  br i1 %80, label %81, label %89

81:                                               ; preds = %74, %67, %60, %56
  %82 = load i32, i32* @EAGAIN, align 4
  %83 = load %struct.fw_xfer*, %struct.fw_xfer** %7, align 8
  %84 = getelementptr inbounds %struct.fw_xfer, %struct.fw_xfer* %83, i32 0, i32 0
  store i32 %82, i32* %84, align 8
  %85 = load i32, i32* @FWXF_BUSY, align 4
  %86 = load %struct.fw_xfer*, %struct.fw_xfer** %7, align 8
  %87 = getelementptr inbounds %struct.fw_xfer, %struct.fw_xfer* %86, i32 0, i32 5
  store i32 %85, i32* %87, align 8
  %88 = load i32, i32* @EAGAIN, align 4
  store i32 %88, i32* %4, align 4
  br label %223

89:                                               ; preds = %74, %50
  %90 = load %struct.tcode_info*, %struct.tcode_info** %13, align 8
  %91 = getelementptr inbounds %struct.tcode_info, %struct.tcode_info* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @FWTI_REQ, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %89
  %97 = load %struct.firewire_comm*, %struct.firewire_comm** %5, align 8
  %98 = getelementptr inbounds %struct.firewire_comm, %struct.firewire_comm* %97, i32 0, i32 4
  %99 = load %struct.fw_xferq*, %struct.fw_xferq** %98, align 8
  store %struct.fw_xferq* %99, %struct.fw_xferq** %9, align 8
  br label %104

100:                                              ; preds = %89
  %101 = load %struct.firewire_comm*, %struct.firewire_comm** %5, align 8
  %102 = getelementptr inbounds %struct.firewire_comm, %struct.firewire_comm* %101, i32 0, i32 3
  %103 = load %struct.fw_xferq*, %struct.fw_xferq** %102, align 8
  store %struct.fw_xferq* %103, %struct.fw_xferq** %9, align 8
  br label %104

104:                                              ; preds = %100, %96
  %105 = load %struct.tcode_info*, %struct.tcode_info** %13, align 8
  %106 = getelementptr inbounds %struct.tcode_info, %struct.tcode_info* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  store i32 %107, i32* %10, align 4
  %108 = load %struct.fw_xfer*, %struct.fw_xfer** %7, align 8
  %109 = getelementptr inbounds %struct.fw_xfer, %struct.fw_xfer* %108, i32 0, i32 4
  %110 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.firewire_comm*, %struct.firewire_comm** %5, align 8
  %113 = getelementptr inbounds %struct.firewire_comm, %struct.firewire_comm* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @MAXREC(i32 %114)
  %116 = icmp sgt i32 %111, %115
  br i1 %116, label %117, label %120

117:                                              ; preds = %104
  %118 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %119 = load i32, i32* @EINVAL, align 4
  store i32 %119, i32* %4, align 4
  br label %223

120:                                              ; preds = %104
  %121 = load %struct.tcode_info*, %struct.tcode_info** %13, align 8
  %122 = getelementptr inbounds %struct.tcode_info, %struct.tcode_info* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* @FWTI_BLOCK_STR, align 4
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %133

127:                                              ; preds = %120
  %128 = load %struct.fw_pkt*, %struct.fw_pkt** %11, align 8
  %129 = getelementptr inbounds %struct.fw_pkt, %struct.fw_pkt* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  store i32 %132, i32* %10, align 4
  br label %148

133:                                              ; preds = %120
  %134 = load %struct.tcode_info*, %struct.tcode_info** %13, align 8
  %135 = getelementptr inbounds %struct.tcode_info, %struct.tcode_info* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* @FWTI_BLOCK_ASY, align 4
  %138 = and i32 %136, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %146

140:                                              ; preds = %133
  %141 = load %struct.fw_pkt*, %struct.fw_pkt** %11, align 8
  %142 = getelementptr inbounds %struct.fw_pkt, %struct.fw_pkt* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  store i32 %145, i32* %10, align 4
  br label %147

146:                                              ; preds = %133
  store i32 0, i32* %10, align 4
  br label %147

147:                                              ; preds = %146, %140
  br label %148

148:                                              ; preds = %147, %127
  %149 = load i32, i32* %10, align 4
  %150 = load %struct.fw_xfer*, %struct.fw_xfer** %7, align 8
  %151 = getelementptr inbounds %struct.fw_xfer, %struct.fw_xfer* %150, i32 0, i32 4
  %152 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = icmp ne i32 %149, %153
  br i1 %154, label %155, label %169

155:                                              ; preds = %148
  %156 = load i32, i32* %10, align 4
  %157 = load %struct.fw_xfer*, %struct.fw_xfer** %7, align 8
  %158 = getelementptr inbounds %struct.fw_xfer, %struct.fw_xfer* %157, i32 0, i32 4
  %159 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = load i8**, i8*** @tcode_str, align 8
  %162 = load i32, i32* %12, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i8*, i8** %161, i64 %163
  %165 = load i8*, i8** %164, align 8
  %166 = load i32, i32* %12, align 4
  %167 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %156, i32 %160, i8* %165, i32 %166)
  %168 = load i32, i32* @EINVAL, align 4
  store i32 %168, i32* %4, align 4
  br label %223

169:                                              ; preds = %148
  %170 = load %struct.fw_xferq*, %struct.fw_xferq** %9, align 8
  %171 = getelementptr inbounds %struct.fw_xferq, %struct.fw_xferq* %170, i32 0, i32 2
  %172 = load i32*, i32** %171, align 8
  %173 = icmp eq i32* %172, null
  br i1 %173, label %174, label %177

174:                                              ; preds = %169
  %175 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  %176 = load i32, i32* @EINVAL, align 4
  store i32 %176, i32* %4, align 4
  br label %223

177:                                              ; preds = %169
  %178 = load %struct.fw_xferq*, %struct.fw_xferq** %9, align 8
  %179 = getelementptr inbounds %struct.fw_xferq, %struct.fw_xferq* %178, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  %181 = load %struct.fw_xferq*, %struct.fw_xferq** %9, align 8
  %182 = getelementptr inbounds %struct.fw_xferq, %struct.fw_xferq* %181, i32 0, i32 1
  %183 = load i64, i64* %182, align 8
  %184 = icmp slt i64 %180, %183
  br i1 %184, label %194, label %185

185:                                              ; preds = %177
  %186 = load %struct.firewire_comm*, %struct.firewire_comm** %5, align 8
  %187 = getelementptr inbounds %struct.firewire_comm, %struct.firewire_comm* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 8
  %189 = load %struct.fw_xferq*, %struct.fw_xferq** %9, align 8
  %190 = getelementptr inbounds %struct.fw_xferq, %struct.fw_xferq* %189, i32 0, i32 0
  %191 = load i64, i64* %190, align 8
  %192 = call i32 @device_printf(i32 %188, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i64 %191)
  %193 = load i32, i32* @EAGAIN, align 4
  store i32 %193, i32* %4, align 4
  br label %223

194:                                              ; preds = %177
  %195 = load %struct.fw_xfer*, %struct.fw_xfer** %7, align 8
  %196 = getelementptr inbounds %struct.fw_xfer, %struct.fw_xfer* %195, i32 0, i32 1
  store i32 -1, i32* %196, align 4
  %197 = load %struct.tcode_info*, %struct.tcode_info** %13, align 8
  %198 = getelementptr inbounds %struct.tcode_info, %struct.tcode_info* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 4
  %200 = load i32, i32* @FWTI_TLABEL, align 4
  %201 = and i32 %199, %200
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %211

203:                                              ; preds = %194
  %204 = load %struct.firewire_comm*, %struct.firewire_comm** %5, align 8
  %205 = load %struct.fw_xfer*, %struct.fw_xfer** %7, align 8
  %206 = call i64 @fw_get_tlabel(%struct.firewire_comm* %204, %struct.fw_xfer* %205)
  %207 = icmp slt i64 %206, 0
  br i1 %207, label %208, label %210

208:                                              ; preds = %203
  %209 = load i32, i32* @EAGAIN, align 4
  store i32 %209, i32* %4, align 4
  br label %223

210:                                              ; preds = %203
  br label %211

211:                                              ; preds = %210, %194
  %212 = load %struct.fw_xfer*, %struct.fw_xfer** %7, align 8
  %213 = getelementptr inbounds %struct.fw_xfer, %struct.fw_xfer* %212, i32 0, i32 0
  store i32 0, i32* %213, align 8
  %214 = load %struct.firewire_comm*, %struct.firewire_comm** %5, align 8
  %215 = load %struct.fw_xfer*, %struct.fw_xfer** %7, align 8
  %216 = getelementptr inbounds %struct.fw_xfer, %struct.fw_xfer* %215, i32 0, i32 3
  store %struct.firewire_comm* %214, %struct.firewire_comm** %216, align 8
  %217 = load %struct.fw_xferq*, %struct.fw_xferq** %9, align 8
  %218 = load %struct.fw_xfer*, %struct.fw_xfer** %7, align 8
  %219 = getelementptr inbounds %struct.fw_xfer, %struct.fw_xfer* %218, i32 0, i32 2
  store %struct.fw_xferq* %217, %struct.fw_xferq** %219, align 8
  %220 = load %struct.fw_xfer*, %struct.fw_xfer** %7, align 8
  %221 = call i32 @fw_asystart(%struct.fw_xfer* %220)
  %222 = load i32, i32* %8, align 4
  store i32 %222, i32* %4, align 4
  br label %223

223:                                              ; preds = %211, %208, %185, %174, %155, %117, %81, %46, %23, %16
  %224 = load i32, i32* %4, align 4
  ret i32 %224
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @MAXREC(i32) #1

declare dso_local i32 @device_printf(i32, i8*, i64) #1

declare dso_local i64 @fw_get_tlabel(%struct.firewire_comm*, %struct.fw_xfer*) #1

declare dso_local i32 @fw_asystart(%struct.fw_xfer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
