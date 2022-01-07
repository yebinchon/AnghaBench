; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_atiixp.c_atiixp_chip_post_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_atiixp.c_atiixp_chip_post_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atiixp_info = type { i32, i32, i32, i32, i32, i32*, i32, i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@SND_STATUSLEN = common dso_local global i32 0, align 4
@PWAIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"ixpslp\00", align 1
@hz = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [90 x i8] c"WARNING: timeout during codec detection; codecs might be present but haven't interrupted\0A\00", align 1
@ATI_REG_ISR_CODEC0_NOT_READY = common dso_local global i32 0, align 4
@ATI_REG_ISR_CODEC1_NOT_READY = common dso_local global i32 0, align 4
@ATI_REG_ISR_CODEC2_NOT_READY = common dso_local global i32 0, align 4
@atiixp_ac97 = common dso_local global i32 0, align 4
@AC97_F_EAPD_INV = common dso_local global i32 0, align 4
@ATI_IXP_NPCHAN = common dso_local global i32 0, align 4
@ATI_IXP_NRCHAN = common dso_local global i32 0, align 4
@PCMDIR_PLAY = common dso_local global i32 0, align 4
@atiixp_chan_class = common dso_local global i32 0, align 4
@PCMDIR_REC = common dso_local global i32 0, align 4
@OID_AUTO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"polling\00", align 1
@CTLTYPE_INT = common dso_local global i32 0, align 4
@CTLFLAG_RW = common dso_local global i32 0, align 4
@sysctl_atiixp_polling = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [2 x i8] c"I\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"Enable polling mode\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"at memory 0x%jx irq %jd %s\00", align 1
@snd_atiixp = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @atiixp_chip_post_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atiixp_chip_post_init(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.atiixp_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %12 = load i8*, i8** %2, align 8
  %13 = bitcast i8* %12 to %struct.atiixp_info*
  store %struct.atiixp_info* %13, %struct.atiixp_info** %3, align 8
  %14 = load i32, i32* @SND_STATUSLEN, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %9, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %10, align 8
  %18 = load %struct.atiixp_info*, %struct.atiixp_info** %3, align 8
  %19 = call i32 @atiixp_lock(%struct.atiixp_info* %18)
  %20 = load %struct.atiixp_info*, %struct.atiixp_info** %3, align 8
  %21 = getelementptr inbounds %struct.atiixp_info, %struct.atiixp_info* %20, i32 0, i32 9
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %32

25:                                               ; preds = %1
  %26 = load %struct.atiixp_info*, %struct.atiixp_info** %3, align 8
  %27 = getelementptr inbounds %struct.atiixp_info, %struct.atiixp_info* %26, i32 0, i32 9
  %28 = call i32 @config_intrhook_disestablish(%struct.TYPE_2__* %27)
  %29 = load %struct.atiixp_info*, %struct.atiixp_info** %3, align 8
  %30 = getelementptr inbounds %struct.atiixp_info, %struct.atiixp_info* %29, i32 0, i32 9
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  store i32* null, i32** %31, align 8
  br label %32

32:                                               ; preds = %25, %1
  %33 = load %struct.atiixp_info*, %struct.atiixp_info** %3, align 8
  %34 = getelementptr inbounds %struct.atiixp_info, %struct.atiixp_info* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  store i32 %35, i32* %8, align 4
  %36 = load %struct.atiixp_info*, %struct.atiixp_info** %3, align 8
  %37 = getelementptr inbounds %struct.atiixp_info, %struct.atiixp_info* %36, i32 0, i32 0
  store i32 0, i32* %37, align 8
  store i32 10, i32* %6, align 4
  %38 = load %struct.atiixp_info*, %struct.atiixp_info** %3, align 8
  %39 = getelementptr inbounds %struct.atiixp_info, %struct.atiixp_info* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %64

42:                                               ; preds = %32
  br label %43

43:                                               ; preds = %59, %42
  %44 = load %struct.atiixp_info*, %struct.atiixp_info** %3, align 8
  %45 = load %struct.atiixp_info*, %struct.atiixp_info** %3, align 8
  %46 = getelementptr inbounds %struct.atiixp_info, %struct.atiixp_info* %45, i32 0, i32 8
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @PWAIT, align 4
  %49 = load i32, i32* @hz, align 4
  %50 = sdiv i32 %49, 10
  %51 = call i32 @max(i32 %50, i32 1)
  %52 = call i32 @msleep(%struct.atiixp_info* %44, i32 %47, i32 %48, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %51)
  %53 = load %struct.atiixp_info*, %struct.atiixp_info** %3, align 8
  %54 = getelementptr inbounds %struct.atiixp_info, %struct.atiixp_info* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %43
  br label %63

58:                                               ; preds = %43
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %6, align 4
  %61 = add nsw i32 %60, -1
  store i32 %61, i32* %6, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %43, label %63

63:                                               ; preds = %59, %57
  br label %64

64:                                               ; preds = %63, %32
  %65 = load i32, i32* %8, align 4
  %66 = load %struct.atiixp_info*, %struct.atiixp_info** %3, align 8
  %67 = getelementptr inbounds %struct.atiixp_info, %struct.atiixp_info* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 8
  %68 = load %struct.atiixp_info*, %struct.atiixp_info** %3, align 8
  %69 = call i32 @atiixp_disable_interrupts(%struct.atiixp_info* %68)
  %70 = load %struct.atiixp_info*, %struct.atiixp_info** %3, align 8
  %71 = getelementptr inbounds %struct.atiixp_info, %struct.atiixp_info* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %84

74:                                               ; preds = %64
  %75 = load i32, i32* %6, align 4
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %84

77:                                               ; preds = %74
  %78 = load %struct.atiixp_info*, %struct.atiixp_info** %3, align 8
  %79 = getelementptr inbounds %struct.atiixp_info, %struct.atiixp_info* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @device_printf(i32 %80, i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.1, i64 0, i64 0))
  %82 = load %struct.atiixp_info*, %struct.atiixp_info** %3, align 8
  %83 = call i32 @atiixp_unlock(%struct.atiixp_info* %82)
  br label %263

84:                                               ; preds = %74, %64
  store i32 0, i32* %7, align 4
  %85 = load %struct.atiixp_info*, %struct.atiixp_info** %3, align 8
  %86 = getelementptr inbounds %struct.atiixp_info, %struct.atiixp_info* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @ATI_REG_ISR_CODEC0_NOT_READY, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %100, label %91

91:                                               ; preds = %84
  %92 = load %struct.atiixp_info*, %struct.atiixp_info** %3, align 8
  %93 = getelementptr inbounds %struct.atiixp_info, %struct.atiixp_info* %92, i32 0, i32 6
  %94 = load i32, i32* %93, align 8
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %93, align 8
  %96 = load %struct.atiixp_info*, %struct.atiixp_info** %3, align 8
  %97 = getelementptr inbounds %struct.atiixp_info, %struct.atiixp_info* %96, i32 0, i32 7
  store i64 0, i64* %97, align 8
  %98 = load i32, i32* %7, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %7, align 4
  br label %100

100:                                              ; preds = %91, %84
  %101 = load %struct.atiixp_info*, %struct.atiixp_info** %3, align 8
  %102 = getelementptr inbounds %struct.atiixp_info, %struct.atiixp_info* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @ATI_REG_ISR_CODEC1_NOT_READY, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %112, label %107

107:                                              ; preds = %100
  %108 = load %struct.atiixp_info*, %struct.atiixp_info** %3, align 8
  %109 = getelementptr inbounds %struct.atiixp_info, %struct.atiixp_info* %108, i32 0, i32 6
  %110 = load i32, i32* %109, align 8
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %109, align 8
  br label %112

112:                                              ; preds = %107, %100
  %113 = load %struct.atiixp_info*, %struct.atiixp_info** %3, align 8
  %114 = getelementptr inbounds %struct.atiixp_info, %struct.atiixp_info* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* @ATI_REG_ISR_CODEC2_NOT_READY, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %124, label %119

119:                                              ; preds = %112
  %120 = load %struct.atiixp_info*, %struct.atiixp_info** %3, align 8
  %121 = getelementptr inbounds %struct.atiixp_info, %struct.atiixp_info* %120, i32 0, i32 6
  %122 = load i32, i32* %121, align 8
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %121, align 8
  br label %124

124:                                              ; preds = %119, %112
  %125 = load %struct.atiixp_info*, %struct.atiixp_info** %3, align 8
  %126 = call i32 @atiixp_unlock(%struct.atiixp_info* %125)
  %127 = load i32, i32* %7, align 4
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %124
  br label %263

130:                                              ; preds = %124
  %131 = load %struct.atiixp_info*, %struct.atiixp_info** %3, align 8
  %132 = getelementptr inbounds %struct.atiixp_info, %struct.atiixp_info* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 8
  %134 = load %struct.atiixp_info*, %struct.atiixp_info** %3, align 8
  %135 = load i32, i32* @atiixp_ac97, align 4
  %136 = call i32* @AC97_CREATE(i32 %133, %struct.atiixp_info* %134, i32 %135)
  %137 = load %struct.atiixp_info*, %struct.atiixp_info** %3, align 8
  %138 = getelementptr inbounds %struct.atiixp_info, %struct.atiixp_info* %137, i32 0, i32 5
  store i32* %136, i32** %138, align 8
  %139 = load %struct.atiixp_info*, %struct.atiixp_info** %3, align 8
  %140 = getelementptr inbounds %struct.atiixp_info, %struct.atiixp_info* %139, i32 0, i32 5
  %141 = load i32*, i32** %140, align 8
  %142 = icmp eq i32* %141, null
  br i1 %142, label %143, label %144

143:                                              ; preds = %130
  br label %263

144:                                              ; preds = %130
  %145 = load %struct.atiixp_info*, %struct.atiixp_info** %3, align 8
  %146 = getelementptr inbounds %struct.atiixp_info, %struct.atiixp_info* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 8
  %148 = call i32 @pci_get_subdevice(i32 %147)
  %149 = shl i32 %148, 16
  %150 = load %struct.atiixp_info*, %struct.atiixp_info** %3, align 8
  %151 = getelementptr inbounds %struct.atiixp_info, %struct.atiixp_info* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 8
  %153 = call i32 @pci_get_subvendor(i32 %152)
  %154 = or i32 %149, %153
  store i32 %154, i32* %4, align 4
  %155 = load i32, i32* %4, align 4
  switch i32 %155, label %167 [
    i32 293802051, label %156
    i32 541267487, label %156
  ]

156:                                              ; preds = %144, %144
  %157 = load %struct.atiixp_info*, %struct.atiixp_info** %3, align 8
  %158 = getelementptr inbounds %struct.atiixp_info, %struct.atiixp_info* %157, i32 0, i32 5
  %159 = load i32*, i32** %158, align 8
  %160 = load %struct.atiixp_info*, %struct.atiixp_info** %3, align 8
  %161 = getelementptr inbounds %struct.atiixp_info, %struct.atiixp_info* %160, i32 0, i32 5
  %162 = load i32*, i32** %161, align 8
  %163 = call i32 @ac97_getflags(i32* %162)
  %164 = load i32, i32* @AC97_F_EAPD_INV, align 4
  %165 = or i32 %163, %164
  %166 = call i32 @ac97_setflags(i32* %159, i32 %165)
  br label %168

167:                                              ; preds = %144
  br label %168

168:                                              ; preds = %167, %156
  %169 = load %struct.atiixp_info*, %struct.atiixp_info** %3, align 8
  %170 = getelementptr inbounds %struct.atiixp_info, %struct.atiixp_info* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 8
  %172 = call i32 (...) @ac97_getmixerclass()
  %173 = load %struct.atiixp_info*, %struct.atiixp_info** %3, align 8
  %174 = getelementptr inbounds %struct.atiixp_info, %struct.atiixp_info* %173, i32 0, i32 5
  %175 = load i32*, i32** %174, align 8
  %176 = call i32 @mixer_init(i32 %171, i32 %172, i32* %175)
  %177 = load %struct.atiixp_info*, %struct.atiixp_info** %3, align 8
  %178 = getelementptr inbounds %struct.atiixp_info, %struct.atiixp_info* %177, i32 0, i32 2
  %179 = load i32, i32* %178, align 8
  %180 = load %struct.atiixp_info*, %struct.atiixp_info** %3, align 8
  %181 = load i32, i32* @ATI_IXP_NPCHAN, align 4
  %182 = load i32, i32* @ATI_IXP_NRCHAN, align 4
  %183 = call i64 @pcm_register(i32 %179, %struct.atiixp_info* %180, i32 %181, i32 %182)
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %186

185:                                              ; preds = %168
  br label %263

186:                                              ; preds = %168
  store i32 0, i32* %5, align 4
  br label %187

187:                                              ; preds = %198, %186
  %188 = load i32, i32* %5, align 4
  %189 = load i32, i32* @ATI_IXP_NPCHAN, align 4
  %190 = icmp slt i32 %188, %189
  br i1 %190, label %191, label %201

191:                                              ; preds = %187
  %192 = load %struct.atiixp_info*, %struct.atiixp_info** %3, align 8
  %193 = getelementptr inbounds %struct.atiixp_info, %struct.atiixp_info* %192, i32 0, i32 2
  %194 = load i32, i32* %193, align 8
  %195 = load i32, i32* @PCMDIR_PLAY, align 4
  %196 = load %struct.atiixp_info*, %struct.atiixp_info** %3, align 8
  %197 = call i32 @pcm_addchan(i32 %194, i32 %195, i32* @atiixp_chan_class, %struct.atiixp_info* %196)
  br label %198

198:                                              ; preds = %191
  %199 = load i32, i32* %5, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %5, align 4
  br label %187

201:                                              ; preds = %187
  store i32 0, i32* %5, align 4
  br label %202

202:                                              ; preds = %213, %201
  %203 = load i32, i32* %5, align 4
  %204 = load i32, i32* @ATI_IXP_NRCHAN, align 4
  %205 = icmp slt i32 %203, %204
  br i1 %205, label %206, label %216

206:                                              ; preds = %202
  %207 = load %struct.atiixp_info*, %struct.atiixp_info** %3, align 8
  %208 = getelementptr inbounds %struct.atiixp_info, %struct.atiixp_info* %207, i32 0, i32 2
  %209 = load i32, i32* %208, align 8
  %210 = load i32, i32* @PCMDIR_REC, align 4
  %211 = load %struct.atiixp_info*, %struct.atiixp_info** %3, align 8
  %212 = call i32 @pcm_addchan(i32 %209, i32 %210, i32* @atiixp_chan_class, %struct.atiixp_info* %211)
  br label %213

213:                                              ; preds = %206
  %214 = load i32, i32* %5, align 4
  %215 = add nsw i32 %214, 1
  store i32 %215, i32* %5, align 4
  br label %202

216:                                              ; preds = %202
  %217 = load %struct.atiixp_info*, %struct.atiixp_info** %3, align 8
  %218 = getelementptr inbounds %struct.atiixp_info, %struct.atiixp_info* %217, i32 0, i32 2
  %219 = load i32, i32* %218, align 8
  %220 = call i32 @device_get_sysctl_ctx(i32 %219)
  %221 = load %struct.atiixp_info*, %struct.atiixp_info** %3, align 8
  %222 = getelementptr inbounds %struct.atiixp_info, %struct.atiixp_info* %221, i32 0, i32 2
  %223 = load i32, i32* %222, align 8
  %224 = call i32 @device_get_sysctl_tree(i32 %223)
  %225 = call i32 @SYSCTL_CHILDREN(i32 %224)
  %226 = load i32, i32* @OID_AUTO, align 4
  %227 = load i32, i32* @CTLTYPE_INT, align 4
  %228 = load i32, i32* @CTLFLAG_RW, align 4
  %229 = or i32 %227, %228
  %230 = load %struct.atiixp_info*, %struct.atiixp_info** %3, align 8
  %231 = getelementptr inbounds %struct.atiixp_info, %struct.atiixp_info* %230, i32 0, i32 2
  %232 = load i32, i32* %231, align 8
  %233 = load i32, i32* @sysctl_atiixp_polling, align 4
  %234 = call i32 @SYSCTL_ADD_PROC(i32 %220, i32 %225, i32 %226, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %229, i32 %232, i32 4, i32 %233, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  %235 = load i32, i32* @SND_STATUSLEN, align 4
  %236 = load %struct.atiixp_info*, %struct.atiixp_info** %3, align 8
  %237 = getelementptr inbounds %struct.atiixp_info, %struct.atiixp_info* %236, i32 0, i32 4
  %238 = load i32, i32* %237, align 8
  %239 = call i32 @rman_get_start(i32 %238)
  %240 = load %struct.atiixp_info*, %struct.atiixp_info** %3, align 8
  %241 = getelementptr inbounds %struct.atiixp_info, %struct.atiixp_info* %240, i32 0, i32 3
  %242 = load i32, i32* %241, align 4
  %243 = call i32 @rman_get_start(i32 %242)
  %244 = load i32, i32* @snd_atiixp, align 4
  %245 = call i32 @PCM_KLDSTRING(i32 %244)
  %246 = call i32 @snprintf(i8* %17, i32 %235, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i32 %239, i32 %243, i32 %245)
  %247 = load %struct.atiixp_info*, %struct.atiixp_info** %3, align 8
  %248 = getelementptr inbounds %struct.atiixp_info, %struct.atiixp_info* %247, i32 0, i32 2
  %249 = load i32, i32* %248, align 8
  %250 = call i32 @pcm_setstatus(i32 %249, i8* %17)
  %251 = load %struct.atiixp_info*, %struct.atiixp_info** %3, align 8
  %252 = call i32 @atiixp_lock(%struct.atiixp_info* %251)
  %253 = load %struct.atiixp_info*, %struct.atiixp_info** %3, align 8
  %254 = getelementptr inbounds %struct.atiixp_info, %struct.atiixp_info* %253, i32 0, i32 0
  %255 = load i32, i32* %254, align 8
  %256 = icmp eq i32 %255, 0
  br i1 %256, label %257, label %260

257:                                              ; preds = %216
  %258 = load %struct.atiixp_info*, %struct.atiixp_info** %3, align 8
  %259 = call i32 @atiixp_enable_interrupts(%struct.atiixp_info* %258)
  br label %260

260:                                              ; preds = %257, %216
  %261 = load %struct.atiixp_info*, %struct.atiixp_info** %3, align 8
  %262 = call i32 @atiixp_unlock(%struct.atiixp_info* %261)
  store i32 1, i32* %11, align 4
  br label %266

263:                                              ; preds = %185, %143, %129, %77
  %264 = load %struct.atiixp_info*, %struct.atiixp_info** %3, align 8
  %265 = call i32 @atiixp_release_resource(%struct.atiixp_info* %264)
  store i32 0, i32* %11, align 4
  br label %266

266:                                              ; preds = %263, %260
  %267 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %267)
  %268 = load i32, i32* %11, align 4
  switch i32 %268, label %270 [
    i32 0, label %269
    i32 1, label %269
  ]

269:                                              ; preds = %266, %266
  ret void

270:                                              ; preds = %266
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @atiixp_lock(%struct.atiixp_info*) #2

declare dso_local i32 @config_intrhook_disestablish(%struct.TYPE_2__*) #2

declare dso_local i32 @msleep(%struct.atiixp_info*, i32, i32, i8*, i32) #2

declare dso_local i32 @max(i32, i32) #2

declare dso_local i32 @atiixp_disable_interrupts(%struct.atiixp_info*) #2

declare dso_local i32 @device_printf(i32, i8*) #2

declare dso_local i32 @atiixp_unlock(%struct.atiixp_info*) #2

declare dso_local i32* @AC97_CREATE(i32, %struct.atiixp_info*, i32) #2

declare dso_local i32 @pci_get_subdevice(i32) #2

declare dso_local i32 @pci_get_subvendor(i32) #2

declare dso_local i32 @ac97_setflags(i32*, i32) #2

declare dso_local i32 @ac97_getflags(i32*) #2

declare dso_local i32 @mixer_init(i32, i32, i32*) #2

declare dso_local i32 @ac97_getmixerclass(...) #2

declare dso_local i64 @pcm_register(i32, %struct.atiixp_info*, i32, i32) #2

declare dso_local i32 @pcm_addchan(i32, i32, i32*, %struct.atiixp_info*) #2

declare dso_local i32 @SYSCTL_ADD_PROC(i32, i32, i32, i8*, i32, i32, i32, i32, i8*, i8*) #2

declare dso_local i32 @device_get_sysctl_ctx(i32) #2

declare dso_local i32 @SYSCTL_CHILDREN(i32) #2

declare dso_local i32 @device_get_sysctl_tree(i32) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i32, i32) #2

declare dso_local i32 @rman_get_start(i32) #2

declare dso_local i32 @PCM_KLDSTRING(i32) #2

declare dso_local i32 @pcm_setstatus(i32, i8*) #2

declare dso_local i32 @atiixp_enable_interrupts(%struct.atiixp_info*) #2

declare dso_local i32 @atiixp_release_resource(%struct.atiixp_info*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
