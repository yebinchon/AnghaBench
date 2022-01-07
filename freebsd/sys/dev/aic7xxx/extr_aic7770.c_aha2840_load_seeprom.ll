; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_aic7770.c_aha2840_load_seeprom.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_aic7770.c_aha2840_load_seeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahc_softc = type { i32, i32, i32, %struct.seeprom_config* }
%struct.seeprom_config = type { i32*, i32, i32, i32 }
%struct.seeprom_descriptor = type { i32, i32, i32, i32, i32, i64, i32, i8*, i8*, i32, %struct.ahc_softc* }

@SEECTL_2840 = common dso_local global i32 0, align 4
@STATUS_2840 = common dso_local global i8* null, align 8
@C46 = common dso_local global i32 0, align 4
@EEPROM_TF = common dso_local global i32 0, align 4
@CS_2840 = common dso_local global i32 0, align 4
@CK_2840 = common dso_local global i32 0, align 4
@DO_2840 = common dso_local global i32 0, align 4
@DI_2840 = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"%s: Reading SEEPROM...\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"checksum error\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"done.\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"%s: No SEEPROM available\0A\00", align 1
@AHC_USEDEFAULTS = common dso_local global i32 0, align 4
@AHC_WIDE = common dso_local global i32 0, align 4
@CFXFER = common dso_local global i32 0, align 4
@CFSYNCH = common dso_local global i32 0, align 4
@SOFS = common dso_local global i32 0, align 4
@CFWIDEB = common dso_local global i32 0, align 4
@WIDEXFER = common dso_local global i32 0, align 4
@CFDISC = common dso_local global i32 0, align 4
@TARG_SCSIRATE = common dso_local global i64 0, align 8
@DISC_DSB = common dso_local global i64 0, align 8
@CFSCSIID = common dso_local global i32 0, align 4
@CFSPARITY = common dso_local global i32 0, align 4
@ENSPCHK = common dso_local global i32 0, align 4
@CFRESETB = common dso_local global i32 0, align 4
@RESET_SCSI = common dso_local global i32 0, align 4
@CF284XEXTEND = common dso_local global i32 0, align 4
@AHC_EXTENDED_TRANS_A = common dso_local global i32 0, align 4
@SCSICONF = common dso_local global i64 0, align 8
@CF284XSTERM = common dso_local global i32 0, align 4
@AHC_TERM_ENB_A = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ahc_softc*)* @aha2840_load_seeprom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aha2840_load_seeprom(%struct.ahc_softc* %0) #0 {
  %2 = alloca %struct.ahc_softc*, align 8
  %3 = alloca %struct.seeprom_descriptor, align 8
  %4 = alloca %struct.seeprom_config*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ahc_softc* %0, %struct.ahc_softc** %2, align 8
  %11 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %12 = getelementptr inbounds %struct.seeprom_descriptor, %struct.seeprom_descriptor* %3, i32 0, i32 10
  store %struct.ahc_softc* %11, %struct.ahc_softc** %12, align 8
  %13 = load i32, i32* @SEECTL_2840, align 4
  %14 = getelementptr inbounds %struct.seeprom_descriptor, %struct.seeprom_descriptor* %3, i32 0, i32 9
  store i32 %13, i32* %14, align 8
  %15 = load i8*, i8** @STATUS_2840, align 8
  %16 = getelementptr inbounds %struct.seeprom_descriptor, %struct.seeprom_descriptor* %3, i32 0, i32 8
  store i8* %15, i8** %16, align 8
  %17 = load i8*, i8** @STATUS_2840, align 8
  %18 = getelementptr inbounds %struct.seeprom_descriptor, %struct.seeprom_descriptor* %3, i32 0, i32 7
  store i8* %17, i8** %18, align 8
  %19 = load i32, i32* @C46, align 4
  %20 = getelementptr inbounds %struct.seeprom_descriptor, %struct.seeprom_descriptor* %3, i32 0, i32 6
  store i32 %19, i32* %20, align 8
  %21 = getelementptr inbounds %struct.seeprom_descriptor, %struct.seeprom_descriptor* %3, i32 0, i32 5
  store i64 0, i64* %21, align 8
  %22 = load i32, i32* @EEPROM_TF, align 4
  %23 = getelementptr inbounds %struct.seeprom_descriptor, %struct.seeprom_descriptor* %3, i32 0, i32 4
  store i32 %22, i32* %23, align 8
  %24 = load i32, i32* @CS_2840, align 4
  %25 = getelementptr inbounds %struct.seeprom_descriptor, %struct.seeprom_descriptor* %3, i32 0, i32 3
  store i32 %24, i32* %25, align 4
  %26 = load i32, i32* @CK_2840, align 4
  %27 = getelementptr inbounds %struct.seeprom_descriptor, %struct.seeprom_descriptor* %3, i32 0, i32 2
  store i32 %26, i32* %27, align 8
  %28 = load i32, i32* @DO_2840, align 4
  %29 = getelementptr inbounds %struct.seeprom_descriptor, %struct.seeprom_descriptor* %3, i32 0, i32 1
  store i32 %28, i32* %29, align 4
  %30 = load i32, i32* @DI_2840, align 4
  %31 = getelementptr inbounds %struct.seeprom_descriptor, %struct.seeprom_descriptor* %3, i32 0, i32 0
  store i32 %30, i32* %31, align 8
  %32 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %33 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %32, i32 0, i32 3
  %34 = load %struct.seeprom_config*, %struct.seeprom_config** %33, align 8
  store %struct.seeprom_config* %34, %struct.seeprom_config** %4, align 8
  %35 = load i64, i64* @bootverbose, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %1
  %38 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %39 = call i8* @ahc_name(%struct.ahc_softc* %38)
  %40 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* %39)
  br label %41

41:                                               ; preds = %37, %1
  %42 = load %struct.seeprom_config*, %struct.seeprom_config** %4, align 8
  %43 = bitcast %struct.seeprom_config* %42 to i32*
  %44 = call i32 @ahc_read_seeprom(%struct.seeprom_descriptor* %3, i32* %43, i32 0, i32 12)
  store i32 %44, i32* %5, align 4
  %45 = load i32, i32* %5, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %64

47:                                               ; preds = %41
  %48 = load %struct.seeprom_config*, %struct.seeprom_config** %4, align 8
  %49 = call i64 @ahc_verify_cksum(%struct.seeprom_config* %48)
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %47
  %52 = load i64, i64* @bootverbose, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %51
  %55 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  br label %56

56:                                               ; preds = %54, %51
  store i32 0, i32* %5, align 4
  br label %63

57:                                               ; preds = %47
  %58 = load i64, i64* @bootverbose, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %57
  %61 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  br label %62

62:                                               ; preds = %60, %57
  br label %63

63:                                               ; preds = %62, %56
  br label %64

64:                                               ; preds = %63, %41
  %65 = load i32, i32* %5, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %80, label %67

67:                                               ; preds = %64
  %68 = load i64, i64* @bootverbose, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %67
  %71 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %72 = call i8* @ahc_name(%struct.ahc_softc* %71)
  %73 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i8* %72)
  br label %74

74:                                               ; preds = %70, %67
  %75 = load i32, i32* @AHC_USEDEFAULTS, align 4
  %76 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %77 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = or i32 %78, %75
  store i32 %79, i32* %77, align 8
  br label %238

80:                                               ; preds = %64
  %81 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %82 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @AHC_WIDE, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  %87 = zext i1 %86 to i64
  %88 = select i1 %86, i32 16, i32 8
  store i32 %88, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %7, align 4
  br label %89

89:                                               ; preds = %157, %80
  %90 = load i32, i32* %7, align 4
  %91 = load i32, i32* %8, align 4
  %92 = icmp slt i32 %90, %91
  br i1 %92, label %93, label %160

93:                                               ; preds = %89
  %94 = load %struct.seeprom_config*, %struct.seeprom_config** %4, align 8
  %95 = getelementptr inbounds %struct.seeprom_config, %struct.seeprom_config* %94, i32 0, i32 0
  %96 = load i32*, i32** %95, align 8
  %97 = load i32, i32* %7, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %96, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @CFXFER, align 4
  %102 = and i32 %100, %101
  %103 = shl i32 %102, 4
  store i32 %103, i32* %10, align 4
  %104 = load %struct.seeprom_config*, %struct.seeprom_config** %4, align 8
  %105 = getelementptr inbounds %struct.seeprom_config, %struct.seeprom_config* %104, i32 0, i32 0
  %106 = load i32*, i32** %105, align 8
  %107 = load i32, i32* %7, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %106, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @CFSYNCH, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %93
  %115 = load i32, i32* @SOFS, align 4
  %116 = load i32, i32* %10, align 4
  %117 = or i32 %116, %115
  store i32 %117, i32* %10, align 4
  br label %118

118:                                              ; preds = %114, %93
  %119 = load %struct.seeprom_config*, %struct.seeprom_config** %4, align 8
  %120 = getelementptr inbounds %struct.seeprom_config, %struct.seeprom_config* %119, i32 0, i32 0
  %121 = load i32*, i32** %120, align 8
  %122 = load i32, i32* %7, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %121, i64 %123
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* @CFWIDEB, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %133

129:                                              ; preds = %118
  %130 = load i32, i32* @WIDEXFER, align 4
  %131 = load i32, i32* %10, align 4
  %132 = or i32 %131, %130
  store i32 %132, i32* %10, align 4
  br label %133

133:                                              ; preds = %129, %118
  %134 = load %struct.seeprom_config*, %struct.seeprom_config** %4, align 8
  %135 = getelementptr inbounds %struct.seeprom_config, %struct.seeprom_config* %134, i32 0, i32 0
  %136 = load i32*, i32** %135, align 8
  %137 = load i32, i32* %7, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i32, i32* %136, i64 %138
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* @CFDISC, align 4
  %142 = and i32 %140, %141
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %149

144:                                              ; preds = %133
  %145 = load i32, i32* %7, align 4
  %146 = shl i32 1, %145
  %147 = load i32, i32* %9, align 4
  %148 = or i32 %147, %146
  store i32 %148, i32* %9, align 4
  br label %149

149:                                              ; preds = %144, %133
  %150 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %151 = load i64, i64* @TARG_SCSIRATE, align 8
  %152 = load i32, i32* %7, align 4
  %153 = sext i32 %152 to i64
  %154 = add nsw i64 %151, %153
  %155 = load i32, i32* %10, align 4
  %156 = call i32 @ahc_outb(%struct.ahc_softc* %150, i64 %154, i32 %155)
  br label %157

157:                                              ; preds = %149
  %158 = load i32, i32* %7, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %7, align 4
  br label %89

160:                                              ; preds = %89
  %161 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %162 = load i64, i64* @DISC_DSB, align 8
  %163 = load i32, i32* %9, align 4
  %164 = and i32 %163, 255
  %165 = xor i32 %164, -1
  %166 = call i32 @ahc_outb(%struct.ahc_softc* %161, i64 %162, i32 %165)
  %167 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %168 = load i64, i64* @DISC_DSB, align 8
  %169 = add nsw i64 %168, 1
  %170 = load i32, i32* %9, align 4
  %171 = ashr i32 %170, 8
  %172 = and i32 %171, 255
  %173 = xor i32 %172, -1
  %174 = call i32 @ahc_outb(%struct.ahc_softc* %167, i64 %169, i32 %173)
  %175 = load %struct.seeprom_config*, %struct.seeprom_config** %4, align 8
  %176 = getelementptr inbounds %struct.seeprom_config, %struct.seeprom_config* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 8
  %178 = load i32, i32* @CFSCSIID, align 4
  %179 = and i32 %177, %178
  %180 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %181 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %180, i32 0, i32 1
  store i32 %179, i32* %181, align 4
  %182 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %183 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = and i32 %184, 7
  store i32 %185, i32* %6, align 4
  %186 = load %struct.seeprom_config*, %struct.seeprom_config** %4, align 8
  %187 = getelementptr inbounds %struct.seeprom_config, %struct.seeprom_config* %186, i32 0, i32 2
  %188 = load i32, i32* %187, align 4
  %189 = load i32, i32* @CFSPARITY, align 4
  %190 = and i32 %188, %189
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %196

192:                                              ; preds = %160
  %193 = load i32, i32* @ENSPCHK, align 4
  %194 = load i32, i32* %6, align 4
  %195 = or i32 %194, %193
  store i32 %195, i32* %6, align 4
  br label %196

196:                                              ; preds = %192, %160
  %197 = load %struct.seeprom_config*, %struct.seeprom_config** %4, align 8
  %198 = getelementptr inbounds %struct.seeprom_config, %struct.seeprom_config* %197, i32 0, i32 2
  %199 = load i32, i32* %198, align 4
  %200 = load i32, i32* @CFRESETB, align 4
  %201 = and i32 %199, %200
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %207

203:                                              ; preds = %196
  %204 = load i32, i32* @RESET_SCSI, align 4
  %205 = load i32, i32* %6, align 4
  %206 = or i32 %205, %204
  store i32 %206, i32* %6, align 4
  br label %207

207:                                              ; preds = %203, %196
  %208 = load %struct.seeprom_config*, %struct.seeprom_config** %4, align 8
  %209 = getelementptr inbounds %struct.seeprom_config, %struct.seeprom_config* %208, i32 0, i32 3
  %210 = load i32, i32* %209, align 8
  %211 = load i32, i32* @CF284XEXTEND, align 4
  %212 = and i32 %210, %211
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %220

214:                                              ; preds = %207
  %215 = load i32, i32* @AHC_EXTENDED_TRANS_A, align 4
  %216 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %217 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %216, i32 0, i32 2
  %218 = load i32, i32* %217, align 8
  %219 = or i32 %218, %215
  store i32 %219, i32* %217, align 8
  br label %220

220:                                              ; preds = %214, %207
  %221 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %222 = load i64, i64* @SCSICONF, align 8
  %223 = load i32, i32* %6, align 4
  %224 = call i32 @ahc_outb(%struct.ahc_softc* %221, i64 %222, i32 %223)
  %225 = load %struct.seeprom_config*, %struct.seeprom_config** %4, align 8
  %226 = getelementptr inbounds %struct.seeprom_config, %struct.seeprom_config* %225, i32 0, i32 2
  %227 = load i32, i32* %226, align 4
  %228 = load i32, i32* @CF284XSTERM, align 4
  %229 = and i32 %227, %228
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %237

231:                                              ; preds = %220
  %232 = load i32, i32* @AHC_TERM_ENB_A, align 4
  %233 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %234 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %233, i32 0, i32 2
  %235 = load i32, i32* %234, align 8
  %236 = or i32 %235, %232
  store i32 %236, i32* %234, align 8
  br label %237

237:                                              ; preds = %231, %220
  br label %238

238:                                              ; preds = %237, %74
  %239 = load i32, i32* %5, align 4
  ret i32 %239
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i8* @ahc_name(%struct.ahc_softc*) #1

declare dso_local i32 @ahc_read_seeprom(%struct.seeprom_descriptor*, i32*, i32, i32) #1

declare dso_local i64 @ahc_verify_cksum(%struct.seeprom_config*) #1

declare dso_local i32 @ahc_outb(%struct.ahc_softc*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
