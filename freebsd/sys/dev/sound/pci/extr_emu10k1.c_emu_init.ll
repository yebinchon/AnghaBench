; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_emu10k1.c_emu_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_emu10k1.c_emu_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sc_info = type { i32, i32, i64, i64, %struct.TYPE_4__, i64, i64, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64*, i64, i64, i32*, i32, i32, i32 }
%struct.TYPE_3__ = type { i64, i32*, i64, i64, i64, i64, i64, i64, i64, i64, i32* }

@EMU_AC97SLOT = common dso_local global i32 0, align 4
@EMU_AC97SLOT_CENTER = common dso_local global i64 0, align 8
@EMU_AC97SLOT_LFE = common dso_local global i64 0, align 8
@EMU_HCFG = common dso_local global i32 0, align 4
@EMU_HCFG_LOCKSOUNDCACHE = common dso_local global i64 0, align 8
@EMU_HCFG_LOCKTANKCACHE_MASK = common dso_local global i64 0, align 8
@EMU_HCFG_MUTEBUTTONENABLE = common dso_local global i64 0, align 8
@EMU_MICBS = common dso_local global i32 0, align 4
@EMU_RECBS_BUFSIZE_NONE = common dso_local global i64 0, align 8
@EMU_MICBA = common dso_local global i32 0, align 4
@EMU_FXBS = common dso_local global i32 0, align 4
@EMU_FXBA = common dso_local global i32 0, align 4
@EMU_ADCBS = common dso_local global i32 0, align 4
@EMU_ADCBA = common dso_local global i32 0, align 4
@EMU_INTE = common dso_local global i32 0, align 4
@EMU_INTE_INTERTIMERENB = common dso_local global i64 0, align 8
@EMU_INTE_SAMPLERATER = common dso_local global i64 0, align 8
@EMU_INTE_PCIERRENABLE = common dso_local global i64 0, align 8
@EMU_CLIEL = common dso_local global i32 0, align 4
@EMU_CLIEH = common dso_local global i32 0, align 4
@EMU_SOLEL = common dso_local global i32 0, align 4
@EMU_SOLEH = common dso_local global i32 0, align 4
@EMU_SPBYPASS = common dso_local global i32 0, align 4
@NUM_G = common dso_local global i64 0, align 8
@EMU_CHAN_DCYSUSV = common dso_local global i32 0, align 4
@ENV_OFF = common dso_local global i64 0, align 8
@EMU_CHAN_IP = common dso_local global i32 0, align 4
@EMU_CHAN_VTFT = common dso_local global i32 0, align 4
@EMU_CHAN_CVCF = common dso_local global i32 0, align 4
@EMU_CHAN_PTRX = common dso_local global i32 0, align 4
@EMU_CHAN_CPF = common dso_local global i32 0, align 4
@EMU_CHAN_CCR = common dso_local global i32 0, align 4
@EMU_CHAN_PSST = common dso_local global i32 0, align 4
@EMU_CHAN_DSL = common dso_local global i32 0, align 4
@EMU_CHAN_CCCA = common dso_local global i32 0, align 4
@EMU_CHAN_Z1 = common dso_local global i32 0, align 4
@EMU_CHAN_Z2 = common dso_local global i32 0, align 4
@EMU_CHAN_FXRT = common dso_local global i32 0, align 4
@EMU_CHAN_ATKHLDM = common dso_local global i32 0, align 4
@EMU_CHAN_DCYSUSM = common dso_local global i32 0, align 4
@EMU_CHAN_IFATN = common dso_local global i32 0, align 4
@EMU_CHAN_PEFE = common dso_local global i32 0, align 4
@EMU_CHAN_FMMOD = common dso_local global i32 0, align 4
@EMU_CHAN_TREMFRQ = common dso_local global i32 0, align 4
@EMU_CHAN_FM2FRQ2 = common dso_local global i32 0, align 4
@EMU_CHAN_TEMPENV = common dso_local global i32 0, align 4
@EMU_CHAN_LFOVAL2 = common dso_local global i32 0, align 4
@EMU_CHAN_LFOVAL1 = common dso_local global i32 0, align 4
@EMU_CHAN_ATKHLDV = common dso_local global i32 0, align 4
@EMU_CHAN_ENVVOL = common dso_local global i32 0, align 4
@EMU_CHAN_ENVVAL = common dso_local global i32 0, align 4
@EMU_A_CHAN_FXRT1 = common dso_local global i32 0, align 4
@EMU_A_CHAN_FXRT2 = common dso_local global i32 0, align 4
@EMU_A_CHAN_SENDAMOUNTS = common dso_local global i32 0, align 4
@EMU_SPCS_CLKACCY_1000PPM = common dso_local global i32 0, align 4
@EMU_SPCS_SAMPLERATE_48 = common dso_local global i32 0, align 4
@EMU_SPCS_CHANNELNUM_LEFT = common dso_local global i32 0, align 4
@EMU_SPCS_SOURCENUM_UNSPEC = common dso_local global i32 0, align 4
@EMU_SPCS_GENERATIONSTATUS = common dso_local global i32 0, align 4
@EMU_SPCS_EMPHASIS_NONE = common dso_local global i32 0, align 4
@EMU_SPCS_COPYRIGHT = common dso_local global i32 0, align 4
@EMU_SPCS0 = common dso_local global i32 0, align 4
@EMU_SPCS1 = common dso_local global i32 0, align 4
@EMU_SPCS2 = common dso_local global i32 0, align 4
@EMU_A_SPDIF_SAMPLERATE = common dso_local global i32 0, align 4
@EMUMAXPAGES = common dso_local global i32 0, align 4
@EMUPAGESIZE = common dso_local global i32 0, align 4
@EMU_PTB = common dso_local global i32 0, align 4
@EMU_TCB = common dso_local global i32 0, align 4
@EMU_TCBS = common dso_local global i32 0, align 4
@EMU_CHAN_MAPA = common dso_local global i32 0, align 4
@EMU_CHAN_MAP_PTI_MASK = common dso_local global i64 0, align 8
@EMU_CHAN_MAPB = common dso_local global i32 0, align 4
@EMU_HCFG_AUTOMUTE = common dso_local global i64 0, align 8
@EMU_HCFG_JOYENABLE = common dso_local global i64 0, align 8
@EMU_HCFG_AUDIOENABLE = common dso_local global i64 0, align 8
@EMU_HCFG_AC3ENABLE_CDSPDIF = common dso_local global i64 0, align 8
@EMU_HCFG_AC3ENABLE_GPSPDIF = common dso_local global i64 0, align 8
@EMU_A_IOCFG = common dso_local global i32 0, align 4
@EMU_A_IOCFG_GPOUT_AD = common dso_local global i64 0, align 8
@EMU_A_IOCFG_GPOUT_A = common dso_local global i64 0, align 8
@EMU_HCFG_GPINPUT0 = common dso_local global i64 0, align 8
@EMU_HCFG_GPINPUT1 = common dso_local global i64 0, align 8
@EMU_HCFG_GPOUT1 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sc_info*)* @emu_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @emu_init(%struct.sc_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sc_info*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.sc_info* %0, %struct.sc_info** %3, align 8
  %9 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %10 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %9, i32 0, i32 3
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %1
  %14 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %15 = load i32, i32* @EMU_AC97SLOT, align 4
  %16 = load i64, i64* @EMU_AC97SLOT_CENTER, align 8
  %17 = load i64, i64* @EMU_AC97SLOT_LFE, align 8
  %18 = or i64 %16, %17
  %19 = call i32 @emu_wrptr(%struct.sc_info* %14, i64 0, i32 %15, i64 %18)
  br label %20

20:                                               ; preds = %13, %1
  %21 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %22 = load i32, i32* @EMU_HCFG, align 4
  %23 = load i64, i64* @EMU_HCFG_LOCKSOUNDCACHE, align 8
  %24 = load i64, i64* @EMU_HCFG_LOCKTANKCACHE_MASK, align 8
  %25 = or i64 %23, %24
  %26 = load i64, i64* @EMU_HCFG_MUTEBUTTONENABLE, align 8
  %27 = or i64 %25, %26
  %28 = call i32 @emu_wr(%struct.sc_info* %21, i32 %22, i64 %27, i32 4)
  %29 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %30 = load i32, i32* @EMU_MICBS, align 4
  %31 = load i64, i64* @EMU_RECBS_BUFSIZE_NONE, align 8
  %32 = call i32 @emu_wrptr(%struct.sc_info* %29, i64 0, i32 %30, i64 %31)
  %33 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %34 = load i32, i32* @EMU_MICBA, align 4
  %35 = call i32 @emu_wrptr(%struct.sc_info* %33, i64 0, i32 %34, i64 0)
  %36 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %37 = load i32, i32* @EMU_FXBS, align 4
  %38 = load i64, i64* @EMU_RECBS_BUFSIZE_NONE, align 8
  %39 = call i32 @emu_wrptr(%struct.sc_info* %36, i64 0, i32 %37, i64 %38)
  %40 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %41 = load i32, i32* @EMU_FXBA, align 4
  %42 = call i32 @emu_wrptr(%struct.sc_info* %40, i64 0, i32 %41, i64 0)
  %43 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %44 = load i32, i32* @EMU_ADCBS, align 4
  %45 = load i64, i64* @EMU_RECBS_BUFSIZE_NONE, align 8
  %46 = call i32 @emu_wrptr(%struct.sc_info* %43, i64 0, i32 %44, i64 %45)
  %47 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %48 = load i32, i32* @EMU_ADCBA, align 4
  %49 = call i32 @emu_wrptr(%struct.sc_info* %47, i64 0, i32 %48, i64 0)
  %50 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %51 = load i32, i32* @EMU_INTE, align 4
  %52 = load i64, i64* @EMU_INTE_INTERTIMERENB, align 8
  %53 = load i64, i64* @EMU_INTE_SAMPLERATER, align 8
  %54 = or i64 %52, %53
  %55 = load i64, i64* @EMU_INTE_PCIERRENABLE, align 8
  %56 = or i64 %54, %55
  %57 = call i32 @emu_wr(%struct.sc_info* %50, i32 %51, i64 %56, i32 4)
  %58 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %59 = load i32, i32* @EMU_CLIEL, align 4
  %60 = call i32 @emu_wrptr(%struct.sc_info* %58, i64 0, i32 %59, i64 0)
  %61 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %62 = load i32, i32* @EMU_CLIEH, align 4
  %63 = call i32 @emu_wrptr(%struct.sc_info* %61, i64 0, i32 %62, i64 0)
  %64 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %65 = load i32, i32* @EMU_SOLEL, align 4
  %66 = call i32 @emu_wrptr(%struct.sc_info* %64, i64 0, i32 %65, i64 0)
  %67 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %68 = load i32, i32* @EMU_SOLEH, align 4
  %69 = call i32 @emu_wrptr(%struct.sc_info* %67, i64 0, i32 %68, i64 0)
  %70 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %71 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %70, i32 0, i32 3
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %81

74:                                               ; preds = %20
  %75 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %76 = load i32, i32* @EMU_SPBYPASS, align 4
  %77 = call i32 @emu_wrptr(%struct.sc_info* %75, i64 0, i32 %76, i64 3840)
  %78 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %79 = load i32, i32* @EMU_AC97SLOT, align 4
  %80 = call i32 @emu_wrptr(%struct.sc_info* %78, i64 0, i32 %79, i64 3)
  br label %81

81:                                               ; preds = %74, %20
  store i64 0, i64* %5, align 8
  br label %82

82:                                               ; preds = %289, %81
  %83 = load i64, i64* %5, align 8
  %84 = load i64, i64* @NUM_G, align 8
  %85 = icmp ult i64 %83, %84
  br i1 %85, label %86, label %292

86:                                               ; preds = %82
  %87 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %88 = load i64, i64* %5, align 8
  %89 = load i32, i32* @EMU_CHAN_DCYSUSV, align 4
  %90 = load i64, i64* @ENV_OFF, align 8
  %91 = call i32 @emu_wrptr(%struct.sc_info* %87, i64 %88, i32 %89, i64 %90)
  %92 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %93 = load i64, i64* %5, align 8
  %94 = load i32, i32* @EMU_CHAN_IP, align 4
  %95 = call i32 @emu_wrptr(%struct.sc_info* %92, i64 %93, i32 %94, i64 0)
  %96 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %97 = load i64, i64* %5, align 8
  %98 = load i32, i32* @EMU_CHAN_VTFT, align 4
  %99 = call i32 @emu_wrptr(%struct.sc_info* %96, i64 %97, i32 %98, i64 65535)
  %100 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %101 = load i64, i64* %5, align 8
  %102 = load i32, i32* @EMU_CHAN_CVCF, align 4
  %103 = call i32 @emu_wrptr(%struct.sc_info* %100, i64 %101, i32 %102, i64 65535)
  %104 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %105 = load i64, i64* %5, align 8
  %106 = load i32, i32* @EMU_CHAN_PTRX, align 4
  %107 = call i32 @emu_wrptr(%struct.sc_info* %104, i64 %105, i32 %106, i64 0)
  %108 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %109 = load i64, i64* %5, align 8
  %110 = load i32, i32* @EMU_CHAN_CPF, align 4
  %111 = call i32 @emu_wrptr(%struct.sc_info* %108, i64 %109, i32 %110, i64 0)
  %112 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %113 = load i64, i64* %5, align 8
  %114 = load i32, i32* @EMU_CHAN_CCR, align 4
  %115 = call i32 @emu_wrptr(%struct.sc_info* %112, i64 %113, i32 %114, i64 0)
  %116 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %117 = load i64, i64* %5, align 8
  %118 = load i32, i32* @EMU_CHAN_PSST, align 4
  %119 = call i32 @emu_wrptr(%struct.sc_info* %116, i64 %117, i32 %118, i64 0)
  %120 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %121 = load i64, i64* %5, align 8
  %122 = load i32, i32* @EMU_CHAN_DSL, align 4
  %123 = call i32 @emu_wrptr(%struct.sc_info* %120, i64 %121, i32 %122, i64 16)
  %124 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %125 = load i64, i64* %5, align 8
  %126 = load i32, i32* @EMU_CHAN_CCCA, align 4
  %127 = call i32 @emu_wrptr(%struct.sc_info* %124, i64 %125, i32 %126, i64 0)
  %128 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %129 = load i64, i64* %5, align 8
  %130 = load i32, i32* @EMU_CHAN_Z1, align 4
  %131 = call i32 @emu_wrptr(%struct.sc_info* %128, i64 %129, i32 %130, i64 0)
  %132 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %133 = load i64, i64* %5, align 8
  %134 = load i32, i32* @EMU_CHAN_Z2, align 4
  %135 = call i32 @emu_wrptr(%struct.sc_info* %132, i64 %133, i32 %134, i64 0)
  %136 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %137 = load i64, i64* %5, align 8
  %138 = load i32, i32* @EMU_CHAN_FXRT, align 4
  %139 = call i32 @emu_wrptr(%struct.sc_info* %136, i64 %137, i32 %138, i64 3491495936)
  %140 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %141 = load i64, i64* %5, align 8
  %142 = load i32, i32* @EMU_CHAN_ATKHLDM, align 4
  %143 = call i32 @emu_wrptr(%struct.sc_info* %140, i64 %141, i32 %142, i64 0)
  %144 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %145 = load i64, i64* %5, align 8
  %146 = load i32, i32* @EMU_CHAN_DCYSUSM, align 4
  %147 = call i32 @emu_wrptr(%struct.sc_info* %144, i64 %145, i32 %146, i64 0)
  %148 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %149 = load i64, i64* %5, align 8
  %150 = load i32, i32* @EMU_CHAN_IFATN, align 4
  %151 = call i32 @emu_wrptr(%struct.sc_info* %148, i64 %149, i32 %150, i64 65535)
  %152 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %153 = load i64, i64* %5, align 8
  %154 = load i32, i32* @EMU_CHAN_PEFE, align 4
  %155 = call i32 @emu_wrptr(%struct.sc_info* %152, i64 %153, i32 %154, i64 0)
  %156 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %157 = load i64, i64* %5, align 8
  %158 = load i32, i32* @EMU_CHAN_FMMOD, align 4
  %159 = call i32 @emu_wrptr(%struct.sc_info* %156, i64 %157, i32 %158, i64 0)
  %160 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %161 = load i64, i64* %5, align 8
  %162 = load i32, i32* @EMU_CHAN_TREMFRQ, align 4
  %163 = call i32 @emu_wrptr(%struct.sc_info* %160, i64 %161, i32 %162, i64 24)
  %164 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %165 = load i64, i64* %5, align 8
  %166 = load i32, i32* @EMU_CHAN_FM2FRQ2, align 4
  %167 = call i32 @emu_wrptr(%struct.sc_info* %164, i64 %165, i32 %166, i64 24)
  %168 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %169 = load i64, i64* %5, align 8
  %170 = load i32, i32* @EMU_CHAN_TEMPENV, align 4
  %171 = call i32 @emu_wrptr(%struct.sc_info* %168, i64 %169, i32 %170, i64 0)
  %172 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %173 = load i64, i64* %5, align 8
  %174 = load i32, i32* @EMU_CHAN_LFOVAL2, align 4
  %175 = call i32 @emu_wrptr(%struct.sc_info* %172, i64 %173, i32 %174, i64 0)
  %176 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %177 = load i64, i64* %5, align 8
  %178 = load i32, i32* @EMU_CHAN_LFOVAL1, align 4
  %179 = call i32 @emu_wrptr(%struct.sc_info* %176, i64 %177, i32 %178, i64 0)
  %180 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %181 = load i64, i64* %5, align 8
  %182 = load i32, i32* @EMU_CHAN_ATKHLDV, align 4
  %183 = call i32 @emu_wrptr(%struct.sc_info* %180, i64 %181, i32 %182, i64 0)
  %184 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %185 = load i64, i64* %5, align 8
  %186 = load i32, i32* @EMU_CHAN_ENVVOL, align 4
  %187 = call i32 @emu_wrptr(%struct.sc_info* %184, i64 %185, i32 %186, i64 0)
  %188 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %189 = load i64, i64* %5, align 8
  %190 = load i32, i32* @EMU_CHAN_ENVVAL, align 4
  %191 = call i32 @emu_wrptr(%struct.sc_info* %188, i64 %189, i32 %190, i64 0)
  %192 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %193 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %192, i32 0, i32 3
  %194 = load i64, i64* %193, align 8
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %221

196:                                              ; preds = %86
  %197 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %198 = load i64, i64* %5, align 8
  %199 = call i32 @emu_wrptr(%struct.sc_info* %197, i64 %198, i32 76, i64 0)
  %200 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %201 = load i64, i64* %5, align 8
  %202 = call i32 @emu_wrptr(%struct.sc_info* %200, i64 %201, i32 77, i64 0)
  %203 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %204 = load i64, i64* %5, align 8
  %205 = call i32 @emu_wrptr(%struct.sc_info* %203, i64 %204, i32 78, i64 0)
  %206 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %207 = load i64, i64* %5, align 8
  %208 = call i32 @emu_wrptr(%struct.sc_info* %206, i64 %207, i32 79, i64 0)
  %209 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %210 = load i64, i64* %5, align 8
  %211 = load i32, i32* @EMU_A_CHAN_FXRT1, align 4
  %212 = call i32 @emu_wrptr(%struct.sc_info* %209, i64 %210, i32 %211, i64 50462976)
  %213 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %214 = load i64, i64* %5, align 8
  %215 = load i32, i32* @EMU_A_CHAN_FXRT2, align 4
  %216 = call i32 @emu_wrptr(%struct.sc_info* %213, i64 %214, i32 %215, i64 1061109567)
  %217 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %218 = load i64, i64* %5, align 8
  %219 = load i32, i32* @EMU_A_CHAN_SENDAMOUNTS, align 4
  %220 = call i32 @emu_wrptr(%struct.sc_info* %217, i64 %218, i32 %219, i64 0)
  br label %221

221:                                              ; preds = %196, %86
  %222 = load i64, i64* %5, align 8
  %223 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %224 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %223, i32 0, i32 7
  %225 = load %struct.TYPE_3__*, %struct.TYPE_3__** %224, align 8
  %226 = load i64, i64* %5, align 8
  %227 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %225, i64 %226
  %228 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %227, i32 0, i32 0
  store i64 %222, i64* %228, align 8
  %229 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %230 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %229, i32 0, i32 7
  %231 = load %struct.TYPE_3__*, %struct.TYPE_3__** %230, align 8
  %232 = load i64, i64* %5, align 8
  %233 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %231, i64 %232
  %234 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %233, i32 0, i32 10
  store i32* null, i32** %234, align 8
  %235 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %236 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %235, i32 0, i32 7
  %237 = load %struct.TYPE_3__*, %struct.TYPE_3__** %236, align 8
  %238 = load i64, i64* %5, align 8
  %239 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %237, i64 %238
  %240 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %239, i32 0, i32 9
  store i64 0, i64* %240, align 8
  %241 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %242 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %241, i32 0, i32 7
  %243 = load %struct.TYPE_3__*, %struct.TYPE_3__** %242, align 8
  %244 = load i64, i64* %5, align 8
  %245 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %243, i64 %244
  %246 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %245, i32 0, i32 8
  store i64 0, i64* %246, align 8
  %247 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %248 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %247, i32 0, i32 7
  %249 = load %struct.TYPE_3__*, %struct.TYPE_3__** %248, align 8
  %250 = load i64, i64* %5, align 8
  %251 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %249, i64 %250
  %252 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %251, i32 0, i32 7
  store i64 0, i64* %252, align 8
  %253 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %254 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %253, i32 0, i32 7
  %255 = load %struct.TYPE_3__*, %struct.TYPE_3__** %254, align 8
  %256 = load i64, i64* %5, align 8
  %257 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %255, i64 %256
  %258 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %257, i32 0, i32 6
  store i64 0, i64* %258, align 8
  %259 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %260 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %259, i32 0, i32 7
  %261 = load %struct.TYPE_3__*, %struct.TYPE_3__** %260, align 8
  %262 = load i64, i64* %5, align 8
  %263 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %261, i64 %262
  %264 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %263, i32 0, i32 5
  store i64 0, i64* %264, align 8
  %265 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %266 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %265, i32 0, i32 7
  %267 = load %struct.TYPE_3__*, %struct.TYPE_3__** %266, align 8
  %268 = load i64, i64* %5, align 8
  %269 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %267, i64 %268
  %270 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %269, i32 0, i32 4
  store i64 0, i64* %270, align 8
  %271 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %272 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %271, i32 0, i32 7
  %273 = load %struct.TYPE_3__*, %struct.TYPE_3__** %272, align 8
  %274 = load i64, i64* %5, align 8
  %275 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %273, i64 %274
  %276 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %275, i32 0, i32 3
  store i64 0, i64* %276, align 8
  %277 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %278 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %277, i32 0, i32 7
  %279 = load %struct.TYPE_3__*, %struct.TYPE_3__** %278, align 8
  %280 = load i64, i64* %5, align 8
  %281 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %279, i64 %280
  %282 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %281, i32 0, i32 2
  store i64 0, i64* %282, align 8
  %283 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %284 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %283, i32 0, i32 7
  %285 = load %struct.TYPE_3__*, %struct.TYPE_3__** %284, align 8
  %286 = load i64, i64* %5, align 8
  %287 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %285, i64 %286
  %288 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %287, i32 0, i32 1
  store i32* null, i32** %288, align 8
  br label %289

289:                                              ; preds = %221
  %290 = load i64, i64* %5, align 8
  %291 = add i64 %290, 1
  store i64 %291, i64* %5, align 8
  br label %82

292:                                              ; preds = %82
  %293 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %294 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %293, i32 0, i32 5
  store i64 0, i64* %294, align 8
  %295 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %296 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %295, i32 0, i32 6
  store i64 0, i64* %296, align 8
  %297 = load i32, i32* @EMU_SPCS_CLKACCY_1000PPM, align 4
  %298 = load i32, i32* @EMU_SPCS_SAMPLERATE_48, align 4
  %299 = or i32 %297, %298
  %300 = load i32, i32* @EMU_SPCS_CHANNELNUM_LEFT, align 4
  %301 = or i32 %299, %300
  %302 = load i32, i32* @EMU_SPCS_SOURCENUM_UNSPEC, align 4
  %303 = or i32 %301, %302
  %304 = load i32, i32* @EMU_SPCS_GENERATIONSTATUS, align 4
  %305 = or i32 %303, %304
  %306 = or i32 %305, 4608
  %307 = load i32, i32* @EMU_SPCS_EMPHASIS_NONE, align 4
  %308 = or i32 %306, %307
  %309 = load i32, i32* @EMU_SPCS_COPYRIGHT, align 4
  %310 = or i32 %308, %309
  %311 = sext i32 %310 to i64
  store i64 %311, i64* %4, align 8
  %312 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %313 = load i32, i32* @EMU_SPCS0, align 4
  %314 = load i64, i64* %4, align 8
  %315 = call i32 @emu_wrptr(%struct.sc_info* %312, i64 0, i32 %313, i64 %314)
  %316 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %317 = load i32, i32* @EMU_SPCS1, align 4
  %318 = load i64, i64* %4, align 8
  %319 = call i32 @emu_wrptr(%struct.sc_info* %316, i64 0, i32 %317, i64 %318)
  %320 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %321 = load i32, i32* @EMU_SPCS2, align 4
  %322 = load i64, i64* %4, align 8
  %323 = call i32 @emu_wrptr(%struct.sc_info* %320, i64 0, i32 %321, i64 %322)
  %324 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %325 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %324, i32 0, i32 3
  %326 = load i64, i64* %325, align 8
  %327 = icmp ne i64 %326, 0
  br i1 %327, label %331, label %328

328:                                              ; preds = %292
  %329 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %330 = call i32 @emu_initefx(%struct.sc_info* %329)
  br label %356

331:                                              ; preds = %292
  %332 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %333 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %332, i32 0, i32 2
  %334 = load i64, i64* %333, align 8
  %335 = icmp ne i64 %334, 0
  br i1 %335, label %336, label %355

336:                                              ; preds = %331
  %337 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %338 = load i32, i32* @EMU_A_SPDIF_SAMPLERATE, align 4
  %339 = call i32 @emu_rdptr(%struct.sc_info* %337, i32 0, i32 %338)
  %340 = and i32 %339, -3585
  %341 = zext i32 %340 to i64
  store i64 %341, i64* %8, align 8
  %342 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %343 = load i32, i32* @EMU_A_SPDIF_SAMPLERATE, align 4
  %344 = load i64, i64* %8, align 8
  %345 = or i64 %344, 1024
  %346 = call i32 @emu_wrptr(%struct.sc_info* %342, i64 0, i32 %343, i64 %345)
  %347 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %348 = call i32 @emu_wr(%struct.sc_info* %347, i32 32, i64 6291456, i32 4)
  %349 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %350 = call i32 @emu_wr(%struct.sc_info* %349, i32 36, i64 20, i32 4)
  %351 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %352 = call i32 @emu_wr(%struct.sc_info* %351, i32 32, i64 7208960, i32 4)
  %353 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %354 = call i32 @emu_wr(%struct.sc_info* %353, i32 36, i64 4278255360, i32 4)
  br label %355

355:                                              ; preds = %336, %331
  br label %356

356:                                              ; preds = %355, %328
  %357 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %358 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %357, i32 0, i32 4
  %359 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %358, i32 0, i32 6
  %360 = call i32 @SLIST_INIT(i32* %359)
  %361 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %362 = load i32, i32* @EMUMAXPAGES, align 4
  %363 = sext i32 %362 to i64
  %364 = mul i64 %363, 8
  %365 = trunc i64 %364 to i32
  %366 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %367 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %366, i32 0, i32 4
  %368 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %367, i32 0, i32 1
  %369 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %370 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %369, i32 0, i32 4
  %371 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %370, i32 0, i32 4
  %372 = call i8* @emu_malloc(%struct.sc_info* %361, i32 %365, i64* %368, i32* %371)
  %373 = bitcast i8* %372 to i64*
  %374 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %375 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %374, i32 0, i32 4
  %376 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %375, i32 0, i32 0
  store i64* %373, i64** %376, align 8
  %377 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %378 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %377, i32 0, i32 4
  %379 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %378, i32 0, i32 0
  %380 = load i64*, i64** %379, align 8
  %381 = icmp eq i64* %380, null
  br i1 %381, label %382, label %383

382:                                              ; preds = %356
  store i32 -1, i32* %2, align 4
  br label %592

383:                                              ; preds = %356
  %384 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %385 = load i32, i32* @EMUPAGESIZE, align 4
  %386 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %387 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %386, i32 0, i32 4
  %388 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %387, i32 0, i32 2
  %389 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %390 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %389, i32 0, i32 4
  %391 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %390, i32 0, i32 5
  %392 = call i8* @emu_malloc(%struct.sc_info* %384, i32 %385, i64* %388, i32* %391)
  %393 = bitcast i8* %392 to i32*
  %394 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %395 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %394, i32 0, i32 4
  %396 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %395, i32 0, i32 3
  store i32* %393, i32** %396, align 8
  %397 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %398 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %397, i32 0, i32 4
  %399 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %398, i32 0, i32 3
  %400 = load i32*, i32** %399, align 8
  %401 = icmp eq i32* %400, null
  br i1 %401, label %402, label %413

402:                                              ; preds = %383
  %403 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %404 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %405 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %404, i32 0, i32 4
  %406 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %405, i32 0, i32 0
  %407 = load i64*, i64** %406, align 8
  %408 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %409 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %408, i32 0, i32 4
  %410 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %409, i32 0, i32 4
  %411 = load i32, i32* %410, align 8
  %412 = call i32 @emu_free(%struct.sc_info* %403, i64* %407, i32 %411)
  store i32 -1, i32* %2, align 4
  br label %592

413:                                              ; preds = %383
  %414 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %415 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %414, i32 0, i32 4
  %416 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %415, i32 0, i32 3
  %417 = load i32*, i32** %416, align 8
  %418 = load i32, i32* @EMUPAGESIZE, align 4
  %419 = call i32 @bzero(i32* %417, i32 %418)
  %420 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %421 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %420, i32 0, i32 4
  %422 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %421, i32 0, i32 2
  %423 = load i64, i64* %422, align 8
  %424 = shl i64 %423, 1
  store i64 %424, i64* %6, align 8
  store i64 0, i64* %7, align 8
  br label %425

425:                                              ; preds = %440, %413
  %426 = load i64, i64* %7, align 8
  %427 = load i32, i32* @EMUMAXPAGES, align 4
  %428 = sext i32 %427 to i64
  %429 = icmp ult i64 %426, %428
  br i1 %429, label %430, label %443

430:                                              ; preds = %425
  %431 = load i64, i64* %6, align 8
  %432 = load i64, i64* %7, align 8
  %433 = or i64 %431, %432
  %434 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %435 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %434, i32 0, i32 4
  %436 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %435, i32 0, i32 0
  %437 = load i64*, i64** %436, align 8
  %438 = load i64, i64* %7, align 8
  %439 = getelementptr inbounds i64, i64* %437, i64 %438
  store i64 %433, i64* %439, align 8
  br label %440

440:                                              ; preds = %430
  %441 = load i64, i64* %7, align 8
  %442 = add i64 %441, 1
  store i64 %442, i64* %7, align 8
  br label %425

443:                                              ; preds = %425
  %444 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %445 = load i32, i32* @EMU_PTB, align 4
  %446 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %447 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %446, i32 0, i32 4
  %448 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %447, i32 0, i32 1
  %449 = load i64, i64* %448, align 8
  %450 = call i32 @emu_wrptr(%struct.sc_info* %444, i64 0, i32 %445, i64 %449)
  %451 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %452 = load i32, i32* @EMU_TCB, align 4
  %453 = call i32 @emu_wrptr(%struct.sc_info* %451, i64 0, i32 %452, i64 0)
  %454 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %455 = load i32, i32* @EMU_TCBS, align 4
  %456 = call i32 @emu_wrptr(%struct.sc_info* %454, i64 0, i32 %455, i64 0)
  store i64 0, i64* %5, align 8
  br label %457

457:                                              ; preds = %476, %443
  %458 = load i64, i64* %5, align 8
  %459 = load i64, i64* @NUM_G, align 8
  %460 = icmp ult i64 %458, %459
  br i1 %460, label %461, label %479

461:                                              ; preds = %457
  %462 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %463 = load i64, i64* %5, align 8
  %464 = load i32, i32* @EMU_CHAN_MAPA, align 4
  %465 = load i64, i64* %6, align 8
  %466 = load i64, i64* @EMU_CHAN_MAP_PTI_MASK, align 8
  %467 = or i64 %465, %466
  %468 = call i32 @emu_wrptr(%struct.sc_info* %462, i64 %463, i32 %464, i64 %467)
  %469 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %470 = load i64, i64* %5, align 8
  %471 = load i32, i32* @EMU_CHAN_MAPB, align 4
  %472 = load i64, i64* %6, align 8
  %473 = load i64, i64* @EMU_CHAN_MAP_PTI_MASK, align 8
  %474 = or i64 %472, %473
  %475 = call i32 @emu_wrptr(%struct.sc_info* %469, i64 %470, i32 %471, i64 %474)
  br label %476

476:                                              ; preds = %461
  %477 = load i64, i64* %5, align 8
  %478 = add i64 %477, 1
  store i64 %478, i64* %5, align 8
  br label %457

479:                                              ; preds = %457
  %480 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %481 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %480, i32 0, i32 3
  %482 = load i64, i64* %481, align 8
  %483 = icmp ne i64 %482, 0
  br i1 %483, label %484, label %536

484:                                              ; preds = %479
  %485 = load i64, i64* @EMU_HCFG_AUTOMUTE, align 8
  %486 = load i64, i64* @EMU_HCFG_JOYENABLE, align 8
  %487 = or i64 %485, %486
  store i64 %487, i64* %6, align 8
  %488 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %489 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %488, i32 0, i32 2
  %490 = load i64, i64* %489, align 8
  %491 = icmp ne i64 %490, 0
  br i1 %491, label %492, label %498

492:                                              ; preds = %484
  %493 = load i64, i64* @EMU_HCFG_AUDIOENABLE, align 8
  %494 = load i64, i64* @EMU_HCFG_AC3ENABLE_CDSPDIF, align 8
  %495 = or i64 %493, %494
  %496 = load i64, i64* @EMU_HCFG_AC3ENABLE_GPSPDIF, align 8
  %497 = or i64 %495, %496
  store i64 %497, i64* %6, align 8
  br label %498

498:                                              ; preds = %492, %484
  %499 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %500 = load i32, i32* @EMU_HCFG, align 4
  %501 = load i64, i64* %6, align 8
  %502 = call i32 @emu_wr(%struct.sc_info* %499, i32 %500, i64 %501, i32 4)
  %503 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %504 = call i32 @audigy_initefx(%struct.sc_info* %503)
  %505 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %506 = load i32, i32* @EMU_HCFG, align 4
  %507 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %508 = load i32, i32* @EMU_HCFG, align 4
  %509 = call i64 @emu_rd(%struct.sc_info* %507, i32 %508, i32 4)
  %510 = load i64, i64* @EMU_HCFG_AUDIOENABLE, align 8
  %511 = or i64 %509, %510
  %512 = call i32 @emu_wr(%struct.sc_info* %505, i32 %506, i64 %511, i32 4)
  %513 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %514 = load i32, i32* @EMU_A_IOCFG, align 4
  %515 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %516 = load i32, i32* @EMU_A_IOCFG, align 4
  %517 = call i64 @emu_rd(%struct.sc_info* %515, i32 %516, i32 4)
  %518 = load i64, i64* @EMU_A_IOCFG_GPOUT_AD, align 8
  %519 = xor i64 %518, -1
  %520 = and i64 %517, %519
  %521 = call i32 @emu_wr(%struct.sc_info* %513, i32 %514, i64 %520, i32 4)
  %522 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %523 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %522, i32 0, i32 2
  %524 = load i64, i64* %523, align 8
  %525 = icmp ne i64 %524, 0
  br i1 %525, label %526, label %535

526:                                              ; preds = %498
  %527 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %528 = load i32, i32* @EMU_A_IOCFG, align 4
  %529 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %530 = load i32, i32* @EMU_A_IOCFG, align 4
  %531 = call i64 @emu_rd(%struct.sc_info* %529, i32 %530, i32 4)
  %532 = load i64, i64* @EMU_A_IOCFG_GPOUT_A, align 8
  %533 = or i64 %531, %532
  %534 = call i32 @emu_wr(%struct.sc_info* %527, i32 %528, i64 %533, i32 4)
  br label %535

535:                                              ; preds = %526, %498
  br label %591

536:                                              ; preds = %479
  %537 = load i64, i64* @EMU_HCFG_AUDIOENABLE, align 8
  %538 = load i64, i64* @EMU_HCFG_LOCKTANKCACHE_MASK, align 8
  %539 = or i64 %537, %538
  %540 = load i64, i64* @EMU_HCFG_AUTOMUTE, align 8
  %541 = or i64 %539, %540
  store i64 %541, i64* %6, align 8
  %542 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %543 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %542, i32 0, i32 0
  %544 = load i32, i32* %543, align 8
  %545 = icmp sge i32 %544, 6
  br i1 %545, label %546, label %550

546:                                              ; preds = %536
  %547 = load i64, i64* @EMU_HCFG_JOYENABLE, align 8
  %548 = load i64, i64* %6, align 8
  %549 = or i64 %548, %547
  store i64 %549, i64* %6, align 8
  br label %550

550:                                              ; preds = %546, %536
  %551 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %552 = load i32, i32* @EMU_HCFG, align 4
  %553 = load i64, i64* %6, align 8
  %554 = call i32 @emu_wr(%struct.sc_info* %551, i32 %552, i64 %553, i32 4)
  %555 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %556 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %555, i32 0, i32 1
  store i32 0, i32* %556, align 4
  %557 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %558 = load i32, i32* @EMU_HCFG, align 4
  %559 = call i64 @emu_rd(%struct.sc_info* %557, i32 %558, i32 4)
  store i64 %559, i64* %6, align 8
  %560 = load i64, i64* %6, align 8
  %561 = load i64, i64* @EMU_HCFG_GPINPUT0, align 8
  %562 = load i64, i64* @EMU_HCFG_GPINPUT1, align 8
  %563 = or i64 %561, %562
  %564 = and i64 %560, %563
  %565 = icmp ne i64 %564, 0
  br i1 %565, label %566, label %590

566:                                              ; preds = %550
  %567 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %568 = load i32, i32* @EMU_HCFG, align 4
  %569 = load i64, i64* %6, align 8
  %570 = load i64, i64* @EMU_HCFG_GPOUT1, align 8
  %571 = or i64 %569, %570
  %572 = call i32 @emu_wr(%struct.sc_info* %567, i32 %568, i64 %571, i32 4)
  %573 = call i32 @DELAY(i32 50)
  %574 = load i64, i64* %6, align 8
  %575 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %576 = load i32, i32* @EMU_HCFG, align 4
  %577 = call i64 @emu_rd(%struct.sc_info* %575, i32 %576, i32 4)
  %578 = load i64, i64* @EMU_HCFG_GPOUT1, align 8
  %579 = xor i64 %578, -1
  %580 = and i64 %577, %579
  %581 = icmp ne i64 %574, %580
  br i1 %581, label %582, label %589

582:                                              ; preds = %566
  %583 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %584 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %583, i32 0, i32 1
  store i32 1, i32* %584, align 4
  %585 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %586 = load i32, i32* @EMU_HCFG, align 4
  %587 = load i64, i64* %6, align 8
  %588 = call i32 @emu_wr(%struct.sc_info* %585, i32 %586, i64 %587, i32 4)
  br label %589

589:                                              ; preds = %582, %566
  br label %590

590:                                              ; preds = %589, %550
  br label %591

591:                                              ; preds = %590, %535
  store i32 0, i32* %2, align 4
  br label %592

592:                                              ; preds = %591, %402, %382
  %593 = load i32, i32* %2, align 4
  ret i32 %593
}

declare dso_local i32 @emu_wrptr(%struct.sc_info*, i64, i32, i64) #1

declare dso_local i32 @emu_wr(%struct.sc_info*, i32, i64, i32) #1

declare dso_local i32 @emu_initefx(%struct.sc_info*) #1

declare dso_local i32 @emu_rdptr(%struct.sc_info*, i32, i32) #1

declare dso_local i32 @SLIST_INIT(i32*) #1

declare dso_local i8* @emu_malloc(%struct.sc_info*, i32, i64*, i32*) #1

declare dso_local i32 @emu_free(%struct.sc_info*, i64*, i32) #1

declare dso_local i32 @bzero(i32*, i32) #1

declare dso_local i32 @audigy_initefx(%struct.sc_info*) #1

declare dso_local i64 @emu_rd(%struct.sc_info*, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
