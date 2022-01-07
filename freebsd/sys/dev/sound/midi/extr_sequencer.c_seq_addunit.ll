; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/midi/extr_sequencer.c_seq_addunit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/midi/extr_sequencer.c_seq_addunit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_softc = type { i32, %struct.TYPE_4__, %struct.TYPE_4__, %struct.seq_softc*, %struct.seq_softc*, %struct.TYPE_3__*, %struct.TYPE_3__*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.TYPE_4__ = type { %struct.seq_softc* }
%struct.TYPE_3__ = type { %struct.seq_softc* }

@ENOMEM = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"seq_addunit: softc allocation failed.\0A\00", align 1
@sequencer_class = common dso_local global i32 0, align 4
@EV_SZ = common dso_local global i32 0, align 4
@M_TEMP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"seqflq\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"seqstate\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"seqempty\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"seqtimer\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"seqqout\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"seqqin\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"seqstart\00", align 1
@seq_cdevsw = common dso_local global i32 0, align 4
@SND_DEV_SEQ = common dso_local global i32 0, align 4
@UID_ROOT = common dso_local global i32 0, align 4
@GID_WHEEL = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [12 x i8] c"sequencer%d\00", align 1
@SND_DEV_MUSIC = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [8 x i8] c"music%d\00", align 1
@seq_eventthread = common dso_local global i32 0, align 4
@RFHIGHPID = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [15 x i8] c"sequencer %02d\00", align 1
@.str.11 = private unnamed_addr constant [29 x i8] c"sequencer %d created scp %p\0A\00", align 1
@seqinfo_mtx = common dso_local global i32 0, align 4
@seqs = common dso_local global %struct.seq_softc** null, align 8
@nseq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @seq_addunit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @seq_addunit() #0 {
  %1 = alloca %struct.seq_softc*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = load i32, i32* @ENOMEM, align 4
  store i32 %4, i32* %2, align 4
  %5 = load i32, i32* @M_DEVBUF, align 4
  %6 = load i32, i32* @M_NOWAIT, align 4
  %7 = load i32, i32* @M_ZERO, align 4
  %8 = or i32 %6, %7
  %9 = call i8* @malloc(i32 104, i32 %5, i32 %8)
  %10 = bitcast i8* %9 to %struct.seq_softc*
  store %struct.seq_softc* %10, %struct.seq_softc** %1, align 8
  %11 = load %struct.seq_softc*, %struct.seq_softc** %1, align 8
  %12 = icmp eq %struct.seq_softc* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %0
  %14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %15 = call i32 @SEQ_DEBUG(i32 1, i32 %14)
  br label %204

16:                                               ; preds = %0
  %17 = load %struct.seq_softc*, %struct.seq_softc** %1, align 8
  %18 = ptrtoint %struct.seq_softc* %17 to i32
  %19 = call i32 @kobj_init(i32 %18, i32* @sequencer_class)
  %20 = load i32, i32* @EV_SZ, align 4
  %21 = sext i32 %20 to i64
  %22 = mul i64 4, %21
  %23 = mul i64 %22, 1024
  %24 = trunc i64 %23 to i32
  %25 = load i32, i32* @M_TEMP, align 4
  %26 = load i32, i32* @M_NOWAIT, align 4
  %27 = load i32, i32* @M_ZERO, align 4
  %28 = or i32 %26, %27
  %29 = call i8* @malloc(i32 %24, i32 %25, i32 %28)
  %30 = bitcast i8* %29 to i32*
  store i32* %30, i32** %3, align 8
  %31 = load i32*, i32** %3, align 8
  %32 = icmp eq i32* %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %16
  br label %204

34:                                               ; preds = %16
  %35 = load %struct.seq_softc*, %struct.seq_softc** %1, align 8
  %36 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %35, i32 0, i32 1
  %37 = load i32*, i32** %3, align 8
  %38 = load i32, i32* @EV_SZ, align 4
  %39 = mul nsw i32 %38, 1024
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %41 = load %struct.seq_softc*, %struct.seq_softc** %40, align 8
  %42 = call i32 @MIDIQ_INIT(%struct.seq_softc* %41, i32* %37, i32 %39)
  %43 = load i32, i32* @EV_SZ, align 4
  %44 = sext i32 %43 to i64
  %45 = mul i64 4, %44
  %46 = mul i64 %45, 1024
  %47 = trunc i64 %46 to i32
  %48 = load i32, i32* @M_TEMP, align 4
  %49 = load i32, i32* @M_NOWAIT, align 4
  %50 = load i32, i32* @M_ZERO, align 4
  %51 = or i32 %49, %50
  %52 = call i8* @malloc(i32 %47, i32 %48, i32 %51)
  %53 = bitcast i8* %52 to i32*
  store i32* %53, i32** %3, align 8
  %54 = load i32*, i32** %3, align 8
  %55 = icmp eq i32* %54, null
  br i1 %55, label %56, label %57

56:                                               ; preds = %34
  br label %204

57:                                               ; preds = %34
  %58 = load %struct.seq_softc*, %struct.seq_softc** %1, align 8
  %59 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %58, i32 0, i32 2
  %60 = load i32*, i32** %3, align 8
  %61 = load i32, i32* @EV_SZ, align 4
  %62 = mul nsw i32 %61, 1024
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %64 = load %struct.seq_softc*, %struct.seq_softc** %63, align 8
  %65 = call i32 @MIDIQ_INIT(%struct.seq_softc* %64, i32* %60, i32 %62)
  %66 = load i32, i32* @EINVAL, align 4
  store i32 %66, i32* %2, align 4
  %67 = load i32, i32* @M_TEMP, align 4
  %68 = load i32, i32* @M_NOWAIT, align 4
  %69 = load i32, i32* @M_ZERO, align 4
  %70 = or i32 %68, %69
  %71 = call i8* @malloc(i32 128, i32 %67, i32 %70)
  %72 = bitcast i8* %71 to %struct.seq_softc*
  %73 = load %struct.seq_softc*, %struct.seq_softc** %1, align 8
  %74 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %73, i32 0, i32 4
  store %struct.seq_softc* %72, %struct.seq_softc** %74, align 8
  %75 = load i32, i32* @M_TEMP, align 4
  %76 = load i32, i32* @M_NOWAIT, align 4
  %77 = load i32, i32* @M_ZERO, align 4
  %78 = or i32 %76, %77
  %79 = call i8* @malloc(i32 3328, i32 %75, i32 %78)
  %80 = bitcast i8* %79 to %struct.seq_softc*
  %81 = load %struct.seq_softc*, %struct.seq_softc** %1, align 8
  %82 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %81, i32 0, i32 3
  store %struct.seq_softc* %80, %struct.seq_softc** %82, align 8
  %83 = load %struct.seq_softc*, %struct.seq_softc** %1, align 8
  %84 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %83, i32 0, i32 4
  %85 = load %struct.seq_softc*, %struct.seq_softc** %84, align 8
  %86 = icmp eq %struct.seq_softc* %85, null
  br i1 %86, label %92, label %87

87:                                               ; preds = %57
  %88 = load %struct.seq_softc*, %struct.seq_softc** %1, align 8
  %89 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %88, i32 0, i32 3
  %90 = load %struct.seq_softc*, %struct.seq_softc** %89, align 8
  %91 = icmp eq %struct.seq_softc* %90, null
  br i1 %91, label %92, label %93

92:                                               ; preds = %87, %57
  br label %204

93:                                               ; preds = %87
  %94 = load %struct.seq_softc*, %struct.seq_softc** %1, align 8
  %95 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %94, i32 0, i32 16
  store i64 0, i64* %95, align 8
  %96 = load %struct.seq_softc*, %struct.seq_softc** %1, align 8
  %97 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %96, i32 0, i32 15
  %98 = call i32 @mtx_init(i32* %97, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32* null, i32 0)
  %99 = load %struct.seq_softc*, %struct.seq_softc** %1, align 8
  %100 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %99, i32 0, i32 14
  %101 = call i32 @cv_init(i32* %100, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %102 = load %struct.seq_softc*, %struct.seq_softc** %1, align 8
  %103 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %102, i32 0, i32 13
  %104 = call i32 @cv_init(i32* %103, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %105 = load %struct.seq_softc*, %struct.seq_softc** %1, align 8
  %106 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %105, i32 0, i32 12
  %107 = call i32 @cv_init(i32* %106, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %108 = load %struct.seq_softc*, %struct.seq_softc** %1, align 8
  %109 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %108, i32 0, i32 11
  %110 = call i32 @cv_init(i32* %109, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %111 = load %struct.seq_softc*, %struct.seq_softc** %1, align 8
  %112 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %111, i32 0, i32 10
  %113 = call i32 @cv_init(i32* %112, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  %114 = load %struct.seq_softc*, %struct.seq_softc** %1, align 8
  %115 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %114, i32 0, i32 9
  %116 = call i32 @cv_init(i32* %115, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0))
  %117 = load %struct.seq_softc*, %struct.seq_softc** %1, align 8
  %118 = load %struct.seq_softc*, %struct.seq_softc** %1, align 8
  %119 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %118, i32 0, i32 0
  %120 = load %struct.seq_softc*, %struct.seq_softc** %1, align 8
  %121 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %120, i32 0, i32 8
  %122 = call i32* @midimapper_addseq(%struct.seq_softc* %117, i32* %119, i32* %121)
  %123 = load %struct.seq_softc*, %struct.seq_softc** %1, align 8
  %124 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %123, i32 0, i32 7
  store i32* %122, i32** %124, align 8
  %125 = load %struct.seq_softc*, %struct.seq_softc** %1, align 8
  %126 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %125, i32 0, i32 7
  %127 = load i32*, i32** %126, align 8
  %128 = icmp eq i32* %127, null
  br i1 %128, label %129, label %130

129:                                              ; preds = %93
  br label %204

130:                                              ; preds = %93
  %131 = load %struct.seq_softc*, %struct.seq_softc** %1, align 8
  %132 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = load i32, i32* @SND_DEV_SEQ, align 4
  %135 = call i32 @MIDIMKMINOR(i32 %133, i32 %134, i32 0)
  %136 = load i32, i32* @UID_ROOT, align 4
  %137 = load i32, i32* @GID_WHEEL, align 4
  %138 = load %struct.seq_softc*, %struct.seq_softc** %1, align 8
  %139 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = call i8* @make_dev(i32* @seq_cdevsw, i32 %135, i32 %136, i32 %137, i32 438, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i32 %140)
  %142 = bitcast i8* %141 to %struct.TYPE_3__*
  %143 = load %struct.seq_softc*, %struct.seq_softc** %1, align 8
  %144 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %143, i32 0, i32 6
  store %struct.TYPE_3__* %142, %struct.TYPE_3__** %144, align 8
  %145 = load %struct.seq_softc*, %struct.seq_softc** %1, align 8
  %146 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = load i32, i32* @SND_DEV_MUSIC, align 4
  %149 = call i32 @MIDIMKMINOR(i32 %147, i32 %148, i32 0)
  %150 = load i32, i32* @UID_ROOT, align 4
  %151 = load i32, i32* @GID_WHEEL, align 4
  %152 = load %struct.seq_softc*, %struct.seq_softc** %1, align 8
  %153 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = call i8* @make_dev(i32* @seq_cdevsw, i32 %149, i32 %150, i32 %151, i32 438, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i32 %154)
  %156 = bitcast i8* %155 to %struct.TYPE_3__*
  %157 = load %struct.seq_softc*, %struct.seq_softc** %1, align 8
  %158 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %157, i32 0, i32 5
  store %struct.TYPE_3__* %156, %struct.TYPE_3__** %158, align 8
  %159 = load %struct.seq_softc*, %struct.seq_softc** %1, align 8
  %160 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %159, i32 0, i32 6
  %161 = load %struct.TYPE_3__*, %struct.TYPE_3__** %160, align 8
  %162 = icmp eq %struct.TYPE_3__* %161, null
  br i1 %162, label %168, label %163

163:                                              ; preds = %130
  %164 = load %struct.seq_softc*, %struct.seq_softc** %1, align 8
  %165 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %164, i32 0, i32 5
  %166 = load %struct.TYPE_3__*, %struct.TYPE_3__** %165, align 8
  %167 = icmp eq %struct.TYPE_3__* %166, null
  br i1 %167, label %168, label %169

168:                                              ; preds = %163, %130
  br label %204

169:                                              ; preds = %163
  %170 = load i32, i32* @seq_eventthread, align 4
  %171 = load %struct.seq_softc*, %struct.seq_softc** %1, align 8
  %172 = load i32, i32* @RFHIGHPID, align 4
  %173 = load %struct.seq_softc*, %struct.seq_softc** %1, align 8
  %174 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = call i32 @kproc_create(i32 %170, %struct.seq_softc* %171, i32* null, i32 %172, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0), i32 %175)
  store i32 %176, i32* %2, align 4
  %177 = load i32, i32* %2, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %180

179:                                              ; preds = %169
  br label %204

180:                                              ; preds = %169
  %181 = load %struct.seq_softc*, %struct.seq_softc** %1, align 8
  %182 = load %struct.seq_softc*, %struct.seq_softc** %1, align 8
  %183 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %182, i32 0, i32 5
  %184 = load %struct.TYPE_3__*, %struct.TYPE_3__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %184, i32 0, i32 0
  store %struct.seq_softc* %181, %struct.seq_softc** %185, align 8
  %186 = load %struct.seq_softc*, %struct.seq_softc** %1, align 8
  %187 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %186, i32 0, i32 6
  %188 = load %struct.TYPE_3__*, %struct.TYPE_3__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %188, i32 0, i32 0
  store %struct.seq_softc* %181, %struct.seq_softc** %189, align 8
  %190 = load %struct.seq_softc*, %struct.seq_softc** %1, align 8
  %191 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 8
  %193 = load %struct.seq_softc*, %struct.seq_softc** %1, align 8
  %194 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.11, i64 0, i64 0), i32 %192, %struct.seq_softc* %193)
  %195 = call i32 @SEQ_DEBUG(i32 2, i32 %194)
  store i32 0, i32* %2, align 4
  %196 = call i32 @mtx_lock(i32* @seqinfo_mtx)
  %197 = load %struct.seq_softc*, %struct.seq_softc** %1, align 8
  %198 = load %struct.seq_softc**, %struct.seq_softc*** @seqs, align 8
  %199 = load i32, i32* @nseq, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* @nseq, align 4
  %201 = sext i32 %199 to i64
  %202 = getelementptr inbounds %struct.seq_softc*, %struct.seq_softc** %198, i64 %201
  store %struct.seq_softc* %197, %struct.seq_softc** %202, align 8
  %203 = call i32 @mtx_unlock(i32* @seqinfo_mtx)
  br label %280

204:                                              ; preds = %179, %168, %129, %92, %56, %33, %13
  %205 = load %struct.seq_softc*, %struct.seq_softc** %1, align 8
  %206 = icmp ne %struct.seq_softc* %205, null
  br i1 %206, label %207, label %279

207:                                              ; preds = %204
  %208 = load %struct.seq_softc*, %struct.seq_softc** %1, align 8
  %209 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %208, i32 0, i32 6
  %210 = load %struct.TYPE_3__*, %struct.TYPE_3__** %209, align 8
  %211 = icmp ne %struct.TYPE_3__* %210, null
  br i1 %211, label %212, label %217

212:                                              ; preds = %207
  %213 = load %struct.seq_softc*, %struct.seq_softc** %1, align 8
  %214 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %213, i32 0, i32 6
  %215 = load %struct.TYPE_3__*, %struct.TYPE_3__** %214, align 8
  %216 = call i32 @destroy_dev(%struct.TYPE_3__* %215)
  br label %217

217:                                              ; preds = %212, %207
  %218 = load %struct.seq_softc*, %struct.seq_softc** %1, align 8
  %219 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %218, i32 0, i32 5
  %220 = load %struct.TYPE_3__*, %struct.TYPE_3__** %219, align 8
  %221 = icmp ne %struct.TYPE_3__* %220, null
  br i1 %221, label %222, label %227

222:                                              ; preds = %217
  %223 = load %struct.seq_softc*, %struct.seq_softc** %1, align 8
  %224 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %223, i32 0, i32 5
  %225 = load %struct.TYPE_3__*, %struct.TYPE_3__** %224, align 8
  %226 = call i32 @destroy_dev(%struct.TYPE_3__* %225)
  br label %227

227:                                              ; preds = %222, %217
  %228 = load %struct.seq_softc*, %struct.seq_softc** %1, align 8
  %229 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %228, i32 0, i32 4
  %230 = load %struct.seq_softc*, %struct.seq_softc** %229, align 8
  %231 = icmp ne %struct.seq_softc* %230, null
  br i1 %231, label %232, label %238

232:                                              ; preds = %227
  %233 = load %struct.seq_softc*, %struct.seq_softc** %1, align 8
  %234 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %233, i32 0, i32 4
  %235 = load %struct.seq_softc*, %struct.seq_softc** %234, align 8
  %236 = load i32, i32* @M_TEMP, align 4
  %237 = call i32 @free(%struct.seq_softc* %235, i32 %236)
  br label %238

238:                                              ; preds = %232, %227
  %239 = load %struct.seq_softc*, %struct.seq_softc** %1, align 8
  %240 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %239, i32 0, i32 3
  %241 = load %struct.seq_softc*, %struct.seq_softc** %240, align 8
  %242 = icmp ne %struct.seq_softc* %241, null
  br i1 %242, label %243, label %249

243:                                              ; preds = %238
  %244 = load %struct.seq_softc*, %struct.seq_softc** %1, align 8
  %245 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %244, i32 0, i32 3
  %246 = load %struct.seq_softc*, %struct.seq_softc** %245, align 8
  %247 = load i32, i32* @M_TEMP, align 4
  %248 = call i32 @free(%struct.seq_softc* %246, i32 %247)
  br label %249

249:                                              ; preds = %243, %238
  %250 = load %struct.seq_softc*, %struct.seq_softc** %1, align 8
  %251 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %250, i32 0, i32 2
  %252 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %251, i32 0, i32 0
  %253 = load %struct.seq_softc*, %struct.seq_softc** %252, align 8
  %254 = icmp ne %struct.seq_softc* %253, null
  br i1 %254, label %255, label %262

255:                                              ; preds = %249
  %256 = load %struct.seq_softc*, %struct.seq_softc** %1, align 8
  %257 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %256, i32 0, i32 2
  %258 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %257, i32 0, i32 0
  %259 = load %struct.seq_softc*, %struct.seq_softc** %258, align 8
  %260 = load i32, i32* @M_TEMP, align 4
  %261 = call i32 @free(%struct.seq_softc* %259, i32 %260)
  br label %262

262:                                              ; preds = %255, %249
  %263 = load %struct.seq_softc*, %struct.seq_softc** %1, align 8
  %264 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %263, i32 0, i32 1
  %265 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %264, i32 0, i32 0
  %266 = load %struct.seq_softc*, %struct.seq_softc** %265, align 8
  %267 = icmp ne %struct.seq_softc* %266, null
  br i1 %267, label %268, label %275

268:                                              ; preds = %262
  %269 = load %struct.seq_softc*, %struct.seq_softc** %1, align 8
  %270 = getelementptr inbounds %struct.seq_softc, %struct.seq_softc* %269, i32 0, i32 1
  %271 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %270, i32 0, i32 0
  %272 = load %struct.seq_softc*, %struct.seq_softc** %271, align 8
  %273 = load i32, i32* @M_TEMP, align 4
  %274 = call i32 @free(%struct.seq_softc* %272, i32 %273)
  br label %275

275:                                              ; preds = %268, %262
  %276 = load %struct.seq_softc*, %struct.seq_softc** %1, align 8
  %277 = load i32, i32* @M_DEVBUF, align 4
  %278 = call i32 @free(%struct.seq_softc* %276, i32 %277)
  br label %279

279:                                              ; preds = %275, %204
  br label %280

280:                                              ; preds = %279, %180
  %281 = load i32, i32* %2, align 4
  ret i32 %281
}

declare dso_local i8* @malloc(i32, i32, i32) #1

declare dso_local i32 @SEQ_DEBUG(i32, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @kobj_init(i32, i32*) #1

declare dso_local i32 @MIDIQ_INIT(%struct.seq_softc*, i32*, i32) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i32 @cv_init(i32*, i8*) #1

declare dso_local i32* @midimapper_addseq(%struct.seq_softc*, i32*, i32*) #1

declare dso_local i8* @make_dev(i32*, i32, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @MIDIMKMINOR(i32, i32, i32) #1

declare dso_local i32 @kproc_create(i32, %struct.seq_softc*, i32*, i32, i32, i8*, i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @destroy_dev(%struct.TYPE_3__*) #1

declare dso_local i32 @free(%struct.seq_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
