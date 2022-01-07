; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/isa/extr_mss.c_mss_doattach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/isa/extr_mss.c_mss_doattach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mss_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@SND_STATUSLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"snd_mss softc\00", align 1
@MSS_DEFAULT_BUFSZ = common dso_local global i32 0, align 4
@DV_F_TRUE_MSS = common dso_local global i32 0, align 4
@mss_doattach.interrupt_bits = internal global [12 x i8] c"\FF\FF\FF\FF\FF(\FF\08\FF\10\18 ", align 1
@mss_doattach.pdma_bits = internal global [4 x i8] c"\01\02\FF\03", align 1
@mss_doattach.valid_rdma = internal global [4 x i8] c"\01\00\FF\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"IRQ Conflict?\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"invalid dual dma config %d:%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"drq/irq conf %x\0A\00", align 1
@MD_YM0020 = common dso_local global i32 0, align 4
@ymmix_mixer_class = common dso_local global i32 0, align 4
@mssmix_mixer_class = common dso_local global i32 0, align 4
@opti931_intr = common dso_local global i32 0, align 4
@mss_intr = common dso_local global i32 0, align 4
@SD_F_SIMPLEX = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR_24BIT = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR = common dso_local global i32 0, align 4
@busdma_lock_mutex = common dso_local global i32 0, align 4
@Giant = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [26 x i8] c"unable to create dma tag\0A\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c":%d\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"at io 0x%jx irq %jd drq %d%s bufsz %u\00", align 1
@PCMDIR_REC = common dso_local global i32 0, align 4
@msschan_class = common dso_local global i32 0, align 4
@PCMDIR_PLAY = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.mss_info*)* @mss_doattach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mss_doattach(i32 %0, %struct.mss_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.mss_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8, align 1
  %13 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.mss_info* %1, %struct.mss_info** %5, align 8
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @device_get_flags(i32 %14)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* @SND_STATUSLEN, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %9, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %10, align 8
  %20 = load i32, i32* @SND_STATUSLEN, align 4
  %21 = zext i32 %20 to i64
  %22 = alloca i8, i64 %21, align 16
  store i64 %21, i64* %11, align 8
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @device_get_nameunit(i32 %23)
  %25 = call i32 @snd_mtxcreate(i32 %24, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %26 = load %struct.mss_info*, %struct.mss_info** %5, align 8
  %27 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %26, i32 0, i32 8
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @MSS_DEFAULT_BUFSZ, align 4
  %30 = call i32 @pcm_getbuffersize(i32 %28, i32 4096, i32 %29, i32 65536)
  %31 = load %struct.mss_info*, %struct.mss_info** %5, align 8
  %32 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  %33 = load %struct.mss_info*, %struct.mss_info** %5, align 8
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @mss_alloc_resources(%struct.mss_info* %33, i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %2
  br label %234

38:                                               ; preds = %2
  %39 = load %struct.mss_info*, %struct.mss_info** %5, align 8
  %40 = load i32, i32* %4, align 4
  %41 = call i32 @mss_init(%struct.mss_info* %39, i32 %40)
  %42 = load %struct.mss_info*, %struct.mss_info** %5, align 8
  %43 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %42, i32 0, i32 7
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @rman_get_start(i32 %44)
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %6, align 4
  %47 = load %struct.mss_info*, %struct.mss_info** %5, align 8
  %48 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %47, i32 0, i32 6
  %49 = load i32, i32* %48, align 4
  %50 = call i64 @rman_get_start(i32 %49)
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %7, align 4
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* @DV_F_TRUE_MSS, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %131

56:                                               ; preds = %38
  %57 = load %struct.mss_info*, %struct.mss_info** %5, align 8
  %58 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %70

61:                                               ; preds = %56
  %62 = load %struct.mss_info*, %struct.mss_info** %5, align 8
  %63 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = call i64 @rman_get_start(i32 %64)
  %66 = getelementptr inbounds [12 x i8], [12 x i8]* @mss_doattach.interrupt_bits, i64 0, i64 %65
  %67 = load i8, i8* %66, align 1
  store i8 %67, i8* %12, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp eq i32 %68, -1
  br i1 %69, label %70, label %71

70:                                               ; preds = %61, %56
  br label %234

71:                                               ; preds = %61
  %72 = load %struct.mss_info*, %struct.mss_info** %5, align 8
  %73 = load i8, i8* %12, align 1
  %74 = sext i8 %73 to i32
  %75 = or i32 %74, 64
  %76 = trunc i32 %75 to i8
  %77 = call i32 @io_wr(%struct.mss_info* %72, i32 0, i8 signext %76)
  %78 = load %struct.mss_info*, %struct.mss_info** %5, align 8
  %79 = call i32 @io_rd(%struct.mss_info* %78, i32 3)
  %80 = and i32 %79, 64
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %71
  %83 = load i32, i32* %4, align 4
  %84 = call i32 @device_printf(i32 %83, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  br label %85

85:                                               ; preds = %82, %71
  %86 = load i32, i32* %6, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds [4 x i8], [4 x i8]* @mss_doattach.pdma_bits, i64 0, i64 %87
  %89 = load i8, i8* %88, align 1
  %90 = sext i8 %89 to i32
  %91 = icmp eq i32 %90, -1
  br i1 %91, label %92, label %93

92:                                               ; preds = %85
  br label %234

93:                                               ; preds = %85
  %94 = load i32, i32* %6, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds [4 x i8], [4 x i8]* @mss_doattach.pdma_bits, i64 0, i64 %95
  %97 = load i8, i8* %96, align 1
  %98 = sext i8 %97 to i32
  %99 = load i8, i8* %12, align 1
  %100 = sext i8 %99 to i32
  %101 = or i32 %100, %98
  %102 = trunc i32 %101 to i8
  store i8 %102, i8* %12, align 1
  %103 = load i32, i32* %6, align 4
  %104 = load i32, i32* %7, align 4
  %105 = icmp ne i32 %103, %104
  br i1 %105, label %106, label %124

106:                                              ; preds = %93
  %107 = load i32, i32* %7, align 4
  %108 = load i32, i32* %6, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds [4 x i8], [4 x i8]* @mss_doattach.valid_rdma, i64 0, i64 %109
  %111 = load i8, i8* %110, align 1
  %112 = sext i8 %111 to i32
  %113 = icmp eq i32 %107, %112
  br i1 %113, label %114, label %119

114:                                              ; preds = %106
  %115 = load i8, i8* %12, align 1
  %116 = sext i8 %115 to i32
  %117 = or i32 %116, 4
  %118 = trunc i32 %117 to i8
  store i8 %118, i8* %12, align 1
  br label %123

119:                                              ; preds = %106
  %120 = load i32, i32* %6, align 4
  %121 = load i32, i32* %7, align 4
  %122 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %120, i32 %121)
  br label %234

123:                                              ; preds = %114
  br label %124

124:                                              ; preds = %123, %93
  %125 = load %struct.mss_info*, %struct.mss_info** %5, align 8
  %126 = load i8, i8* %12, align 1
  %127 = call i32 @io_wr(%struct.mss_info* %125, i32 0, i8 signext %126)
  %128 = load %struct.mss_info*, %struct.mss_info** %5, align 8
  %129 = call i32 @io_rd(%struct.mss_info* %128, i32 0)
  %130 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 %129)
  br label %131

131:                                              ; preds = %124, %38
  %132 = load i32, i32* %4, align 4
  %133 = load %struct.mss_info*, %struct.mss_info** %5, align 8
  %134 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* @MD_YM0020, align 4
  %137 = icmp eq i32 %135, %136
  %138 = zext i1 %137 to i64
  %139 = select i1 %137, i32* @ymmix_mixer_class, i32* @mssmix_mixer_class
  %140 = load %struct.mss_info*, %struct.mss_info** %5, align 8
  %141 = call i32 @mixer_init(i32 %132, i32* %139, %struct.mss_info* %140)
  %142 = load %struct.mss_info*, %struct.mss_info** %5, align 8
  %143 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  switch i32 %144, label %155 [
    i32 128, label %145
  ]

145:                                              ; preds = %131
  %146 = load i32, i32* %4, align 4
  %147 = load %struct.mss_info*, %struct.mss_info** %5, align 8
  %148 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* @opti931_intr, align 4
  %151 = load %struct.mss_info*, %struct.mss_info** %5, align 8
  %152 = load %struct.mss_info*, %struct.mss_info** %5, align 8
  %153 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %152, i32 0, i32 5
  %154 = call i32 @snd_setup_intr(i32 %146, i32 %149, i32 0, i32 %150, %struct.mss_info* %151, i32* %153)
  br label %165

155:                                              ; preds = %131
  %156 = load i32, i32* %4, align 4
  %157 = load %struct.mss_info*, %struct.mss_info** %5, align 8
  %158 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 4
  %160 = load i32, i32* @mss_intr, align 4
  %161 = load %struct.mss_info*, %struct.mss_info** %5, align 8
  %162 = load %struct.mss_info*, %struct.mss_info** %5, align 8
  %163 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %162, i32 0, i32 5
  %164 = call i32 @snd_setup_intr(i32 %156, i32 %159, i32 0, i32 %160, %struct.mss_info* %161, i32* %163)
  br label %165

165:                                              ; preds = %155, %145
  %166 = load i32, i32* %6, align 4
  %167 = load i32, i32* %7, align 4
  %168 = icmp eq i32 %166, %167
  br i1 %168, label %169, label %176

169:                                              ; preds = %165
  %170 = load i32, i32* %4, align 4
  %171 = load i32, i32* %4, align 4
  %172 = call i32 @pcm_getflags(i32 %171)
  %173 = load i32, i32* @SD_F_SIMPLEX, align 4
  %174 = or i32 %172, %173
  %175 = call i32 @pcm_setflags(i32 %170, i32 %174)
  br label %176

176:                                              ; preds = %169, %165
  %177 = load i32, i32* %4, align 4
  %178 = call i32 @bus_get_dma_tag(i32 %177)
  %179 = load i32, i32* @BUS_SPACE_MAXADDR_24BIT, align 4
  %180 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %181 = load %struct.mss_info*, %struct.mss_info** %5, align 8
  %182 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = load i32, i32* @busdma_lock_mutex, align 4
  %185 = load %struct.mss_info*, %struct.mss_info** %5, align 8
  %186 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %185, i32 0, i32 4
  %187 = call i64 @bus_dma_tag_create(i32 %178, i32 2, i32 0, i32 %179, i32 %180, i32* null, i32* null, i32 %183, i32 1, i32 262143, i32 0, i32 %184, i32* @Giant, i32* %186)
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %192

189:                                              ; preds = %176
  %190 = load i32, i32* %4, align 4
  %191 = call i32 @device_printf(i32 %190, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  br label %234

192:                                              ; preds = %176
  %193 = load i32, i32* %6, align 4
  %194 = load i32, i32* %7, align 4
  %195 = icmp ne i32 %193, %194
  br i1 %195, label %196, label %201

196:                                              ; preds = %192
  %197 = load i32, i32* @SND_STATUSLEN, align 4
  %198 = load i32, i32* %7, align 4
  %199 = sext i32 %198 to i64
  %200 = call i32 (i8*, i32, i8*, i64, ...) @snprintf(i8* %22, i32 %197, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i64 %199)
  br label %203

201:                                              ; preds = %192
  %202 = getelementptr inbounds i8, i8* %22, i64 0
  store i8 0, i8* %202, align 16
  br label %203

203:                                              ; preds = %201, %196
  %204 = load i32, i32* @SND_STATUSLEN, align 4
  %205 = load %struct.mss_info*, %struct.mss_info** %5, align 8
  %206 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %205, i32 0, i32 3
  %207 = load i32, i32* %206, align 4
  %208 = call i64 @rman_get_start(i32 %207)
  %209 = load %struct.mss_info*, %struct.mss_info** %5, align 8
  %210 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %209, i32 0, i32 2
  %211 = load i32, i32* %210, align 4
  %212 = call i64 @rman_get_start(i32 %211)
  %213 = load i32, i32* %6, align 4
  %214 = load %struct.mss_info*, %struct.mss_info** %5, align 8
  %215 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %214, i32 0, i32 1
  %216 = load i32, i32* %215, align 4
  %217 = call i32 (i8*, i32, i8*, i64, ...) @snprintf(i8* %19, i32 %204, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0), i64 %208, i64 %212, i32 %213, i8* %22, i32 %216)
  %218 = load i32, i32* %4, align 4
  %219 = load %struct.mss_info*, %struct.mss_info** %5, align 8
  %220 = call i64 @pcm_register(i32 %218, %struct.mss_info* %219, i32 1, i32 1)
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %222, label %223

222:                                              ; preds = %203
  br label %234

223:                                              ; preds = %203
  %224 = load i32, i32* %4, align 4
  %225 = load i32, i32* @PCMDIR_REC, align 4
  %226 = load %struct.mss_info*, %struct.mss_info** %5, align 8
  %227 = call i32 @pcm_addchan(i32 %224, i32 %225, i32* @msschan_class, %struct.mss_info* %226)
  %228 = load i32, i32* %4, align 4
  %229 = load i32, i32* @PCMDIR_PLAY, align 4
  %230 = load %struct.mss_info*, %struct.mss_info** %5, align 8
  %231 = call i32 @pcm_addchan(i32 %228, i32 %229, i32* @msschan_class, %struct.mss_info* %230)
  %232 = load i32, i32* %4, align 4
  %233 = call i32 @pcm_setstatus(i32 %232, i8* %19)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %239

234:                                              ; preds = %222, %189, %119, %92, %70, %37
  %235 = load %struct.mss_info*, %struct.mss_info** %5, align 8
  %236 = load i32, i32* %4, align 4
  %237 = call i32 @mss_release_resources(%struct.mss_info* %235, i32 %236)
  %238 = load i32, i32* @ENXIO, align 4
  store i32 %238, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %239

239:                                              ; preds = %234, %223
  %240 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %240)
  %241 = load i32, i32* %3, align 4
  ret i32 %241
}

declare dso_local i32 @device_get_flags(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @snd_mtxcreate(i32, i8*) #1

declare dso_local i32 @device_get_nameunit(i32) #1

declare dso_local i32 @pcm_getbuffersize(i32, i32, i32, i32) #1

declare dso_local i32 @mss_alloc_resources(%struct.mss_info*, i32) #1

declare dso_local i32 @mss_init(%struct.mss_info*, i32) #1

declare dso_local i64 @rman_get_start(i32) #1

declare dso_local i32 @io_wr(%struct.mss_info*, i32, i8 signext) #1

declare dso_local i32 @io_rd(%struct.mss_info*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @printf(i8*, i32, ...) #1

declare dso_local i32 @mixer_init(i32, i32*, %struct.mss_info*) #1

declare dso_local i32 @snd_setup_intr(i32, i32, i32, i32, %struct.mss_info*, i32*) #1

declare dso_local i32 @pcm_setflags(i32, i32) #1

declare dso_local i32 @pcm_getflags(i32) #1

declare dso_local i64 @bus_dma_tag_create(i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @bus_get_dma_tag(i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i64, ...) #1

declare dso_local i64 @pcm_register(i32, %struct.mss_info*, i32, i32) #1

declare dso_local i32 @pcm_addchan(i32, i32, i32*, %struct.mss_info*) #1

declare dso_local i32 @pcm_setstatus(i32, i8*) #1

declare dso_local i32 @mss_release_resources(%struct.mss_info*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
