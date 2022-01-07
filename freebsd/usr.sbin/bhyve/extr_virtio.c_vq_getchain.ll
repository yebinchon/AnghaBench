; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_virtio.c_vq_getchain.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_virtio.c_vq_getchain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vqueue_info = type { i64, i64, %struct.virtio_desc*, %struct.TYPE_5__*, %struct.virtio_softc* }
%struct.virtio_desc = type { i64, i32, i32, i32 }
%struct.TYPE_5__ = type { i64*, i64 }
%struct.virtio_softc = type { %struct.TYPE_6__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i8*, i32 }
%struct.TYPE_4__ = type { %struct.vmctx* }
%struct.vmctx = type { i32 }
%struct.iovec = type { i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"%s: ndesc (%u) out of range, driver confused?\0D\0A\00", align 1
@VQ_MAX_DESCRIPTORS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [57 x i8] c"%s: descriptor index %u out of range, driver confused?\0D\0A\00", align 1
@VRING_DESC_F_INDIRECT = common dso_local global i32 0, align 4
@VIRTIO_RING_F_INDIRECT_DESC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [63 x i8] c"%s: descriptor has forbidden INDIRECT flag, driver confused?\0D\0A\00", align 1
@.str.3 = private unnamed_addr constant [47 x i8] c"%s: invalid indir len 0x%x, driver confused?\0D\0A\00", align 1
@.str.4 = private unnamed_addr constant [53 x i8] c"%s: indirect desc has INDIR flag, driver confused?\0D\0A\00", align 1
@VRING_DESC_F_NEXT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [45 x i8] c"%s: invalid next %u > %u, driver confused?\0D\0A\00", align 1
@.str.6 = private unnamed_addr constant [53 x i8] c"%s: descriptor loop? count > %d - driver confused?\0D\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vq_getchain(%struct.vqueue_info* %0, i64* %1, %struct.iovec* %2, i32 %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.vqueue_info*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca %struct.iovec*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.virtio_desc*, align 8
  %18 = alloca %struct.virtio_desc*, align 8
  %19 = alloca %struct.virtio_desc*, align 8
  %20 = alloca %struct.vmctx*, align 8
  %21 = alloca %struct.virtio_softc*, align 8
  %22 = alloca i8*, align 8
  store %struct.vqueue_info* %0, %struct.vqueue_info** %7, align 8
  store i64* %1, i64** %8, align 8
  store %struct.iovec* %2, %struct.iovec** %9, align 8
  store i32 %3, i32* %10, align 4
  store i64* %4, i64** %11, align 8
  %23 = load %struct.vqueue_info*, %struct.vqueue_info** %7, align 8
  %24 = getelementptr inbounds %struct.vqueue_info, %struct.vqueue_info* %23, i32 0, i32 4
  %25 = load %struct.virtio_softc*, %struct.virtio_softc** %24, align 8
  store %struct.virtio_softc* %25, %struct.virtio_softc** %21, align 8
  %26 = load %struct.virtio_softc*, %struct.virtio_softc** %21, align 8
  %27 = getelementptr inbounds %struct.virtio_softc, %struct.virtio_softc* %26, i32 0, i32 0
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  store i8* %30, i8** %22, align 8
  %31 = load %struct.vqueue_info*, %struct.vqueue_info** %7, align 8
  %32 = getelementptr inbounds %struct.vqueue_info, %struct.vqueue_info* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %15, align 8
  %34 = load %struct.vqueue_info*, %struct.vqueue_info** %7, align 8
  %35 = getelementptr inbounds %struct.vqueue_info, %struct.vqueue_info* %34, i32 0, i32 3
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* %15, align 8
  %40 = sub nsw i64 %38, %39
  store i64 %40, i64* %13, align 8
  %41 = load i64, i64* %13, align 8
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %231

44:                                               ; preds = %5
  %45 = load i64, i64* %13, align 8
  %46 = load %struct.vqueue_info*, %struct.vqueue_info** %7, align 8
  %47 = getelementptr inbounds %struct.vqueue_info, %struct.vqueue_info* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp sgt i64 %45, %48
  br i1 %49, label %50, label %55

50:                                               ; preds = %44
  %51 = load i32, i32* @stderr, align 4
  %52 = load i8*, i8** %22, align 8
  %53 = load i64, i64* %13, align 8
  %54 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %51, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i8* %52, i64 %53)
  store i32 -1, i32* %6, align 4
  br label %231

55:                                               ; preds = %44
  %56 = load %struct.virtio_softc*, %struct.virtio_softc** %21, align 8
  %57 = getelementptr inbounds %struct.virtio_softc, %struct.virtio_softc* %56, i32 0, i32 1
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load %struct.vmctx*, %struct.vmctx** %59, align 8
  store %struct.vmctx* %60, %struct.vmctx** %20, align 8
  %61 = load %struct.vqueue_info*, %struct.vqueue_info** %7, align 8
  %62 = getelementptr inbounds %struct.vqueue_info, %struct.vqueue_info* %61, i32 0, i32 3
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = load i64*, i64** %64, align 8
  %66 = load i64, i64* %15, align 8
  %67 = load %struct.vqueue_info*, %struct.vqueue_info** %7, align 8
  %68 = getelementptr inbounds %struct.vqueue_info, %struct.vqueue_info* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = sub nsw i64 %69, 1
  %71 = and i64 %66, %70
  %72 = getelementptr inbounds i64, i64* %65, i64 %71
  %73 = load i64, i64* %72, align 8
  store i64 %73, i64* %16, align 8
  %74 = load i64*, i64** %8, align 8
  store i64 %73, i64* %74, align 8
  %75 = load %struct.vqueue_info*, %struct.vqueue_info** %7, align 8
  %76 = getelementptr inbounds %struct.vqueue_info, %struct.vqueue_info* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = add nsw i64 %77, 1
  store i64 %78, i64* %76, align 8
  store i32 0, i32* %12, align 4
  br label %79

79:                                               ; preds = %221, %55
  %80 = load i32, i32* %12, align 4
  %81 = load i32, i32* @VQ_MAX_DESCRIPTORS, align 4
  %82 = icmp slt i32 %80, %81
  br i1 %82, label %83, label %225

83:                                               ; preds = %79
  %84 = load i64, i64* %16, align 8
  %85 = load %struct.vqueue_info*, %struct.vqueue_info** %7, align 8
  %86 = getelementptr inbounds %struct.vqueue_info, %struct.vqueue_info* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = icmp sge i64 %84, %87
  br i1 %88, label %89, label %94

89:                                               ; preds = %83
  %90 = load i32, i32* @stderr, align 4
  %91 = load i8*, i8** %22, align 8
  %92 = load i64, i64* %16, align 8
  %93 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %90, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0), i8* %91, i64 %92)
  store i32 -1, i32* %6, align 4
  br label %231

94:                                               ; preds = %83
  %95 = load %struct.vqueue_info*, %struct.vqueue_info** %7, align 8
  %96 = getelementptr inbounds %struct.vqueue_info, %struct.vqueue_info* %95, i32 0, i32 2
  %97 = load %struct.virtio_desc*, %struct.virtio_desc** %96, align 8
  %98 = load i64, i64* %16, align 8
  %99 = getelementptr inbounds %struct.virtio_desc, %struct.virtio_desc* %97, i64 %98
  store %struct.virtio_desc* %99, %struct.virtio_desc** %17, align 8
  %100 = load %struct.virtio_desc*, %struct.virtio_desc** %17, align 8
  %101 = getelementptr inbounds %struct.virtio_desc, %struct.virtio_desc* %100, i32 0, i32 1
  %102 = load volatile i32, i32* %101, align 8
  %103 = load i32, i32* @VRING_DESC_F_INDIRECT, align 4
  %104 = and i32 %102, %103
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %116

106:                                              ; preds = %94
  %107 = load i32, i32* %12, align 4
  %108 = load %struct.virtio_desc*, %struct.virtio_desc** %17, align 8
  %109 = load %struct.vmctx*, %struct.vmctx** %20, align 8
  %110 = load %struct.iovec*, %struct.iovec** %9, align 8
  %111 = load i32, i32* %10, align 4
  %112 = load i64*, i64** %11, align 8
  %113 = call i32 @_vq_record(i32 %107, %struct.virtio_desc* %108, %struct.vmctx* %109, %struct.iovec* %110, i32 %111, i64* %112)
  %114 = load i32, i32* %12, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %12, align 4
  br label %211

116:                                              ; preds = %94
  %117 = load %struct.virtio_softc*, %struct.virtio_softc** %21, align 8
  %118 = getelementptr inbounds %struct.virtio_softc, %struct.virtio_softc* %117, i32 0, i32 0
  %119 = load %struct.TYPE_6__*, %struct.TYPE_6__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* @VIRTIO_RING_F_INDIRECT_DESC, align 4
  %123 = and i32 %121, %122
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %125, label %129

125:                                              ; preds = %116
  %126 = load i32, i32* @stderr, align 4
  %127 = load i8*, i8** %22, align 8
  %128 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %126, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.2, i64 0, i64 0), i8* %127)
  store i32 -1, i32* %6, align 4
  br label %231

129:                                              ; preds = %116
  %130 = load %struct.virtio_desc*, %struct.virtio_desc** %17, align 8
  %131 = getelementptr inbounds %struct.virtio_desc, %struct.virtio_desc* %130, i32 0, i32 2
  %132 = load volatile i32, i32* %131, align 4
  %133 = sdiv i32 %132, 16
  %134 = sext i32 %133 to i64
  store i64 %134, i64* %14, align 8
  %135 = load %struct.virtio_desc*, %struct.virtio_desc** %17, align 8
  %136 = getelementptr inbounds %struct.virtio_desc, %struct.virtio_desc* %135, i32 0, i32 2
  %137 = load volatile i32, i32* %136, align 4
  %138 = and i32 %137, 15
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %143, label %140

140:                                              ; preds = %129
  %141 = load i64, i64* %14, align 8
  %142 = icmp eq i64 %141, 0
  br i1 %142, label %143, label %151

143:                                              ; preds = %140, %129
  %144 = load i32, i32* @stderr, align 4
  %145 = load i8*, i8** %22, align 8
  %146 = load %struct.virtio_desc*, %struct.virtio_desc** %17, align 8
  %147 = getelementptr inbounds %struct.virtio_desc, %struct.virtio_desc* %146, i32 0, i32 2
  %148 = load volatile i32, i32* %147, align 4
  %149 = sext i32 %148 to i64
  %150 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %144, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i8* %145, i64 %149)
  store i32 -1, i32* %6, align 4
  br label %231

151:                                              ; preds = %140
  %152 = load %struct.vmctx*, %struct.vmctx** %20, align 8
  %153 = load %struct.virtio_desc*, %struct.virtio_desc** %17, align 8
  %154 = getelementptr inbounds %struct.virtio_desc, %struct.virtio_desc* %153, i32 0, i32 3
  %155 = load volatile i32, i32* %154, align 8
  %156 = load %struct.virtio_desc*, %struct.virtio_desc** %17, align 8
  %157 = getelementptr inbounds %struct.virtio_desc, %struct.virtio_desc* %156, i32 0, i32 2
  %158 = load volatile i32, i32* %157, align 4
  %159 = call %struct.virtio_desc* @paddr_guest2host(%struct.vmctx* %152, i32 %155, i32 %158)
  store %struct.virtio_desc* %159, %struct.virtio_desc** %18, align 8
  store i64 0, i64* %16, align 8
  br label %160

160:                                              ; preds = %208, %151
  %161 = load %struct.virtio_desc*, %struct.virtio_desc** %18, align 8
  %162 = load i64, i64* %16, align 8
  %163 = getelementptr inbounds %struct.virtio_desc, %struct.virtio_desc* %161, i64 %162
  store %struct.virtio_desc* %163, %struct.virtio_desc** %19, align 8
  %164 = load %struct.virtio_desc*, %struct.virtio_desc** %19, align 8
  %165 = getelementptr inbounds %struct.virtio_desc, %struct.virtio_desc* %164, i32 0, i32 1
  %166 = load volatile i32, i32* %165, align 8
  %167 = load i32, i32* @VRING_DESC_F_INDIRECT, align 4
  %168 = and i32 %166, %167
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %174

170:                                              ; preds = %160
  %171 = load i32, i32* @stderr, align 4
  %172 = load i8*, i8** %22, align 8
  %173 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %171, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.4, i64 0, i64 0), i8* %172)
  store i32 -1, i32* %6, align 4
  br label %231

174:                                              ; preds = %160
  %175 = load i32, i32* %12, align 4
  %176 = load %struct.virtio_desc*, %struct.virtio_desc** %19, align 8
  %177 = load %struct.vmctx*, %struct.vmctx** %20, align 8
  %178 = load %struct.iovec*, %struct.iovec** %9, align 8
  %179 = load i32, i32* %10, align 4
  %180 = load i64*, i64** %11, align 8
  %181 = call i32 @_vq_record(i32 %175, %struct.virtio_desc* %176, %struct.vmctx* %177, %struct.iovec* %178, i32 %179, i64* %180)
  %182 = load i32, i32* %12, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %12, align 4
  %184 = load i32, i32* @VQ_MAX_DESCRIPTORS, align 4
  %185 = icmp sgt i32 %183, %184
  br i1 %185, label %186, label %187

186:                                              ; preds = %174
  br label %226

187:                                              ; preds = %174
  %188 = load %struct.virtio_desc*, %struct.virtio_desc** %19, align 8
  %189 = getelementptr inbounds %struct.virtio_desc, %struct.virtio_desc* %188, i32 0, i32 1
  %190 = load volatile i32, i32* %189, align 8
  %191 = load i32, i32* @VRING_DESC_F_NEXT, align 4
  %192 = and i32 %190, %191
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %194, label %195

194:                                              ; preds = %187
  br label %209

195:                                              ; preds = %187
  %196 = load %struct.virtio_desc*, %struct.virtio_desc** %19, align 8
  %197 = getelementptr inbounds %struct.virtio_desc, %struct.virtio_desc* %196, i32 0, i32 0
  %198 = load volatile i64, i64* %197, align 8
  store i64 %198, i64* %16, align 8
  %199 = load i64, i64* %16, align 8
  %200 = load i64, i64* %14, align 8
  %201 = icmp sge i64 %199, %200
  br i1 %201, label %202, label %208

202:                                              ; preds = %195
  %203 = load i32, i32* @stderr, align 4
  %204 = load i8*, i8** %22, align 8
  %205 = load i64, i64* %16, align 8
  %206 = load i64, i64* %14, align 8
  %207 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %203, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0), i8* %204, i64 %205, i64 %206)
  store i32 -1, i32* %6, align 4
  br label %231

208:                                              ; preds = %195
  br label %160

209:                                              ; preds = %194
  br label %210

210:                                              ; preds = %209
  br label %211

211:                                              ; preds = %210, %106
  %212 = load %struct.virtio_desc*, %struct.virtio_desc** %17, align 8
  %213 = getelementptr inbounds %struct.virtio_desc, %struct.virtio_desc* %212, i32 0, i32 1
  %214 = load volatile i32, i32* %213, align 8
  %215 = load i32, i32* @VRING_DESC_F_NEXT, align 4
  %216 = and i32 %214, %215
  %217 = icmp eq i32 %216, 0
  br i1 %217, label %218, label %220

218:                                              ; preds = %211
  %219 = load i32, i32* %12, align 4
  store i32 %219, i32* %6, align 4
  br label %231

220:                                              ; preds = %211
  br label %221

221:                                              ; preds = %220
  %222 = load %struct.virtio_desc*, %struct.virtio_desc** %17, align 8
  %223 = getelementptr inbounds %struct.virtio_desc, %struct.virtio_desc* %222, i32 0, i32 0
  %224 = load volatile i64, i64* %223, align 8
  store i64 %224, i64* %16, align 8
  br label %79

225:                                              ; preds = %79
  br label %226

226:                                              ; preds = %225, %186
  %227 = load i32, i32* @stderr, align 4
  %228 = load i8*, i8** %22, align 8
  %229 = load i32, i32* %12, align 4
  %230 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %227, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.6, i64 0, i64 0), i8* %228, i32 %229)
  store i32 -1, i32* %6, align 4
  br label %231

231:                                              ; preds = %226, %218, %202, %170, %143, %125, %89, %50, %43
  %232 = load i32, i32* %6, align 4
  ret i32 %232
}

declare dso_local i32 @fprintf(i32, i8*, i8*, ...) #1

declare dso_local i32 @_vq_record(i32, %struct.virtio_desc*, %struct.vmctx*, %struct.iovec*, i32, i64*) #1

declare dso_local %struct.virtio_desc* @paddr_guest2host(%struct.vmctx*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
