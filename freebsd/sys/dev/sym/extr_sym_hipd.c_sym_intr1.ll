; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sym/extr_sym_hipd.c_sym_intr1.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sym/extr_sym_hipd.c_sym_intr1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32, i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@nc_istat = common dso_local global i32 0, align 4
@INTF = common dso_local global i32 0, align 4
@SIGP = common dso_local global i32 0, align 4
@DEBUG_FLAGS = common dso_local global i32 0, align 4
@DEBUG_TINY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"F \00", align 1
@SIP = common dso_local global i32 0, align 4
@DIP = common dso_local global i32 0, align 4
@nc_sist = common dso_local global i32 0, align 4
@nc_dstat = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"<%d|%x:%x|%x:%x>\00", align 1
@nc_scr0 = common dso_local global i32 0, align 4
@nc_dsp = common dso_local global i32 0, align 4
@nc_dbc = common dso_local global i32 0, align 4
@STO = common dso_local global i32 0, align 4
@GEN = common dso_local global i32 0, align 4
@HTH = common dso_local global i32 0, align 4
@SGE = common dso_local global i32 0, align 4
@UDC = common dso_local global i32 0, align 4
@SBMC = common dso_local global i32 0, align 4
@RST = common dso_local global i32 0, align 4
@MDPE = common dso_local global i32 0, align 4
@BF = common dso_local global i32 0, align 4
@ABRT = common dso_local global i32 0, align 4
@IID = common dso_local global i32 0, align 4
@PAR = common dso_local global i32 0, align 4
@MA = common dso_local global i32 0, align 4
@SIR = common dso_local global i32 0, align 4
@SSI = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"SCSI BUS reset detected.\0A\00", align 1
@nc_ctest3 = common dso_local global i32 0, align 4
@CLF = common dso_local global i32 0, align 4
@nc_stest3 = common dso_local global i32 0, align 4
@TE = common dso_local global i32 0, align 4
@CSF = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [67 x i8] c"%s: unknown interrupt(s) ignored, ISTAT=0x%x DSTAT=0x%x SIST=0x%x\0A\00", align 1
@CABRT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_14__*)* @sym_intr1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sym_intr1(%struct.TYPE_14__* %0) #0 {
  %2 = alloca %struct.TYPE_14__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %2, align 8
  %7 = load i32, i32* @MA_OWNED, align 4
  %8 = call i32 @SYM_LOCK_ASSERT(i32 %7)
  %9 = load i32, i32* @nc_istat, align 4
  %10 = call i32 @INB(i32 %9)
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @INTF, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %38

15:                                               ; preds = %1
  %16 = load i32, i32* @nc_istat, align 4
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @SIGP, align 4
  %19 = and i32 %17, %18
  %20 = load i32, i32* @INTF, align 4
  %21 = or i32 %19, %20
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = or i32 %21, %24
  %26 = call i32 @OUTB(i32 %16, i32 %25)
  %27 = load i32, i32* @nc_istat, align 4
  %28 = call i32 @INB(i32 %27)
  store i32 %28, i32* %3, align 4
  %29 = load i32, i32* @DEBUG_FLAGS, align 4
  %30 = load i32, i32* @DEBUG_TINY, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %15
  %34 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  br label %35

35:                                               ; preds = %33, %15
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %37 = call i32 @sym_wakeup_done(%struct.TYPE_14__* %36)
  br label %38

38:                                               ; preds = %35, %1
  %39 = load i32, i32* %3, align 4
  %40 = load i32, i32* @SIP, align 4
  %41 = load i32, i32* @DIP, align 4
  %42 = or i32 %40, %41
  %43 = and i32 %39, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %38
  br label %272

46:                                               ; preds = %38
  store i32 0, i32* %6, align 4
  store i32 0, i32* %5, align 4
  %47 = load i32, i32* %3, align 4
  store i32 %47, i32* %4, align 4
  br label %48

48:                                               ; preds = %74, %46
  %49 = load i32, i32* %4, align 4
  %50 = load i32, i32* @SIP, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %48
  %54 = load i32, i32* @nc_sist, align 4
  %55 = call i32 @INW(i32 %54)
  %56 = load i32, i32* %6, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %6, align 4
  br label %58

58:                                               ; preds = %53, %48
  %59 = load i32, i32* %4, align 4
  %60 = load i32, i32* @DIP, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %58
  %64 = load i32, i32* @nc_dstat, align 4
  %65 = call i32 @INB(i32 %64)
  %66 = load i32, i32* %5, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %5, align 4
  br label %68

68:                                               ; preds = %63, %58
  %69 = load i32, i32* @nc_istat, align 4
  %70 = call i32 @INB(i32 %69)
  store i32 %70, i32* %4, align 4
  %71 = load i32, i32* %4, align 4
  %72 = load i32, i32* %3, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %3, align 4
  br label %74

74:                                               ; preds = %68
  %75 = load i32, i32* %4, align 4
  %76 = load i32, i32* @SIP, align 4
  %77 = load i32, i32* @DIP, align 4
  %78 = or i32 %76, %77
  %79 = and i32 %75, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %48, label %81

81:                                               ; preds = %74
  %82 = load i32, i32* @DEBUG_FLAGS, align 4
  %83 = load i32, i32* @DEBUG_TINY, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %98

86:                                               ; preds = %81
  %87 = load i32, i32* @nc_scr0, align 4
  %88 = call i32 @INB(i32 %87)
  %89 = load i32, i32* %5, align 4
  %90 = load i32, i32* %6, align 4
  %91 = load i32, i32* @nc_dsp, align 4
  %92 = call i64 @INL(i32 %91)
  %93 = trunc i64 %92 to i32
  %94 = load i32, i32* @nc_dbc, align 4
  %95 = call i64 @INL(i32 %94)
  %96 = trunc i64 %95 to i32
  %97 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %88, i32 %89, i32 %90, i32 %93, i32 %96)
  br label %98

98:                                               ; preds = %86, %81
  %99 = call i32 (...) @MEMORY_BARRIER()
  %100 = load i32, i32* %6, align 4
  %101 = load i32, i32* @STO, align 4
  %102 = load i32, i32* @GEN, align 4
  %103 = or i32 %101, %102
  %104 = load i32, i32* @HTH, align 4
  %105 = or i32 %103, %104
  %106 = load i32, i32* @SGE, align 4
  %107 = or i32 %105, %106
  %108 = load i32, i32* @UDC, align 4
  %109 = or i32 %107, %108
  %110 = load i32, i32* @SBMC, align 4
  %111 = or i32 %109, %110
  %112 = load i32, i32* @RST, align 4
  %113 = or i32 %111, %112
  %114 = and i32 %100, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %164, label %116

116:                                              ; preds = %98
  %117 = load i32, i32* %5, align 4
  %118 = load i32, i32* @MDPE, align 4
  %119 = load i32, i32* @BF, align 4
  %120 = or i32 %118, %119
  %121 = load i32, i32* @ABRT, align 4
  %122 = or i32 %120, %121
  %123 = load i32, i32* @IID, align 4
  %124 = or i32 %122, %123
  %125 = and i32 %117, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %164, label %127

127:                                              ; preds = %116
  %128 = load i32, i32* %6, align 4
  %129 = load i32, i32* @PAR, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %136

132:                                              ; preds = %127
  %133 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %134 = load i32, i32* %6, align 4
  %135 = call i32 @sym_int_par(%struct.TYPE_14__* %133, i32 %134)
  br label %163

136:                                              ; preds = %127
  %137 = load i32, i32* %6, align 4
  %138 = load i32, i32* @MA, align 4
  %139 = and i32 %137, %138
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %144

141:                                              ; preds = %136
  %142 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %143 = call i32 @sym_int_ma(%struct.TYPE_14__* %142)
  br label %162

144:                                              ; preds = %136
  %145 = load i32, i32* %5, align 4
  %146 = load i32, i32* @SIR, align 4
  %147 = and i32 %145, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %152

149:                                              ; preds = %144
  %150 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %151 = call i32 @sym_int_sir(%struct.TYPE_14__* %150)
  br label %161

152:                                              ; preds = %144
  %153 = load i32, i32* %5, align 4
  %154 = load i32, i32* @SSI, align 4
  %155 = and i32 %153, %154
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %159

157:                                              ; preds = %152
  %158 = call i32 (...) @OUTONB_STD()
  br label %160

159:                                              ; preds = %152
  br label %265

160:                                              ; preds = %157
  br label %161

161:                                              ; preds = %160, %149
  br label %162

162:                                              ; preds = %161, %141
  br label %163

163:                                              ; preds = %162, %132
  br label %272

164:                                              ; preds = %116, %98
  %165 = load i32, i32* %6, align 4
  %166 = load i32, i32* @RST, align 4
  %167 = and i32 %165, %166
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %177

169:                                              ; preds = %164
  %170 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %171 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 4
  %173 = call i32 @xpt_print_path(i32 %172)
  %174 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %175 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %176 = call i32 @sym_init(%struct.TYPE_14__* %175, i32 1)
  br label %272

177:                                              ; preds = %164
  %178 = load i32, i32* @nc_ctest3, align 4
  %179 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %180 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = load i32, i32* @CLF, align 4
  %183 = or i32 %181, %182
  %184 = call i32 @OUTB(i32 %178, i32 %183)
  %185 = load i32, i32* @nc_stest3, align 4
  %186 = load i32, i32* @TE, align 4
  %187 = load i32, i32* @CSF, align 4
  %188 = or i32 %186, %187
  %189 = call i32 @OUTB(i32 %185, i32 %188)
  %190 = load i32, i32* %6, align 4
  %191 = load i32, i32* @GEN, align 4
  %192 = load i32, i32* @HTH, align 4
  %193 = or i32 %191, %192
  %194 = load i32, i32* @SGE, align 4
  %195 = or i32 %193, %194
  %196 = and i32 %190, %195
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %237, label %198

198:                                              ; preds = %177
  %199 = load i32, i32* %5, align 4
  %200 = load i32, i32* @MDPE, align 4
  %201 = load i32, i32* @BF, align 4
  %202 = or i32 %200, %201
  %203 = load i32, i32* @ABRT, align 4
  %204 = or i32 %202, %203
  %205 = load i32, i32* @IID, align 4
  %206 = or i32 %204, %205
  %207 = and i32 %199, %206
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %237, label %209

209:                                              ; preds = %198
  %210 = load i32, i32* %6, align 4
  %211 = load i32, i32* @SBMC, align 4
  %212 = and i32 %210, %211
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %217

214:                                              ; preds = %209
  %215 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %216 = call i32 @sym_int_sbmc(%struct.TYPE_14__* %215)
  br label %236

217:                                              ; preds = %209
  %218 = load i32, i32* %6, align 4
  %219 = load i32, i32* @STO, align 4
  %220 = and i32 %218, %219
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %225

222:                                              ; preds = %217
  %223 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %224 = call i32 @sym_int_sto(%struct.TYPE_14__* %223)
  br label %235

225:                                              ; preds = %217
  %226 = load i32, i32* %6, align 4
  %227 = load i32, i32* @UDC, align 4
  %228 = and i32 %226, %227
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %233

230:                                              ; preds = %225
  %231 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %232 = call i32 @sym_int_udc(%struct.TYPE_14__* %231)
  br label %234

233:                                              ; preds = %225
  br label %265

234:                                              ; preds = %230
  br label %235

235:                                              ; preds = %234, %222
  br label %236

236:                                              ; preds = %235, %214
  br label %272

237:                                              ; preds = %198, %177
  %238 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %239 = load i32, i32* %6, align 4
  %240 = load i32, i32* %5, align 4
  %241 = call i32 @sym_log_hard_error(%struct.TYPE_14__* %238, i32 %239, i32 %240)
  %242 = load i32, i32* %6, align 4
  %243 = load i32, i32* @GEN, align 4
  %244 = load i32, i32* @HTH, align 4
  %245 = or i32 %243, %244
  %246 = load i32, i32* @SGE, align 4
  %247 = or i32 %245, %246
  %248 = and i32 %242, %247
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %261, label %250

250:                                              ; preds = %237
  %251 = load i32, i32* %5, align 4
  %252 = load i32, i32* @MDPE, align 4
  %253 = load i32, i32* @BF, align 4
  %254 = or i32 %252, %253
  %255 = load i32, i32* @ABRT, align 4
  %256 = or i32 %254, %255
  %257 = load i32, i32* @IID, align 4
  %258 = or i32 %256, %257
  %259 = and i32 %251, %258
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %261, label %264

261:                                              ; preds = %250, %237
  %262 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %263 = call i32 @sym_start_reset(%struct.TYPE_14__* %262)
  br label %272

264:                                              ; preds = %250
  br label %265

265:                                              ; preds = %264, %233, %159
  %266 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %267 = call i8* @sym_name(%struct.TYPE_14__* %266)
  %268 = load i32, i32* %3, align 4
  %269 = load i32, i32* %5, align 4
  %270 = load i32, i32* %6, align 4
  %271 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.3, i64 0, i64 0), i8* %267, i32 %268, i32 %269, i32 %270)
  br label %272

272:                                              ; preds = %265, %261, %236, %169, %163, %45
  ret void
}

declare dso_local i32 @SYM_LOCK_ASSERT(i32) #1

declare dso_local i32 @INB(i32) #1

declare dso_local i32 @OUTB(i32, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @sym_wakeup_done(%struct.TYPE_14__*) #1

declare dso_local i32 @INW(i32) #1

declare dso_local i64 @INL(i32) #1

declare dso_local i32 @MEMORY_BARRIER(...) #1

declare dso_local i32 @sym_int_par(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @sym_int_ma(%struct.TYPE_14__*) #1

declare dso_local i32 @sym_int_sir(%struct.TYPE_14__*) #1

declare dso_local i32 @OUTONB_STD(...) #1

declare dso_local i32 @xpt_print_path(i32) #1

declare dso_local i32 @sym_init(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @sym_int_sbmc(%struct.TYPE_14__*) #1

declare dso_local i32 @sym_int_sto(%struct.TYPE_14__*) #1

declare dso_local i32 @sym_int_udc(%struct.TYPE_14__*) #1

declare dso_local i32 @sym_log_hard_error(%struct.TYPE_14__*, i32, i32) #1

declare dso_local i32 @sym_start_reset(%struct.TYPE_14__*) #1

declare dso_local i8* @sym_name(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
