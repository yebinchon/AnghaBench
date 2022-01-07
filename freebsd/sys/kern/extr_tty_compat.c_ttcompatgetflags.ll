; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_tty_compat.c_ttcompatgetflags.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_tty_compat.c_ttcompatgetflags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@IXOFF = common dso_local global i32 0, align 4
@TANDEM = common dso_local global i32 0, align 4
@ICRNL = common dso_local global i32 0, align 4
@ONLCR = common dso_local global i32 0, align 4
@CRMOD = common dso_local global i32 0, align 4
@CSIZE = common dso_local global i32 0, align 4
@CS8 = common dso_local global i32 0, align 4
@PASS8 = common dso_local global i32 0, align 4
@ISTRIP = common dso_local global i32 0, align 4
@ANYP = common dso_local global i32 0, align 4
@PARENB = common dso_local global i32 0, align 4
@INPCK = common dso_local global i32 0, align 4
@PARODD = common dso_local global i32 0, align 4
@ODDP = common dso_local global i32 0, align 4
@EVENP = common dso_local global i32 0, align 4
@ICANON = common dso_local global i32 0, align 4
@IXON = common dso_local global i32 0, align 4
@IEXTEN = common dso_local global i32 0, align 4
@ISIG = common dso_local global i32 0, align 4
@CBREAK = common dso_local global i32 0, align 4
@RAW = common dso_local global i32 0, align 4
@OPOST = common dso_local global i32 0, align 4
@LITOUT = common dso_local global i32 0, align 4
@MDMBUF = common dso_local global i32 0, align 4
@HUPCL = common dso_local global i32 0, align 4
@NOHANG = common dso_local global i32 0, align 4
@TAB3 = common dso_local global i32 0, align 4
@XTABS = common dso_local global i32 0, align 4
@ECHOE = common dso_local global i32 0, align 4
@CRTERA = common dso_local global i32 0, align 4
@CRTBS = common dso_local global i32 0, align 4
@ECHOKE = common dso_local global i32 0, align 4
@CRTKIL = common dso_local global i32 0, align 4
@ECHOPRT = common dso_local global i32 0, align 4
@PRTERA = common dso_local global i32 0, align 4
@ECHOCTL = common dso_local global i32 0, align 4
@CTLECH = common dso_local global i32 0, align 4
@IXANY = common dso_local global i32 0, align 4
@DECCTQ = common dso_local global i32 0, align 4
@ECHO = common dso_local global i32 0, align 4
@TOSTOP = common dso_local global i32 0, align 4
@FLUSHO = common dso_local global i32 0, align 4
@PENDIN = common dso_local global i32 0, align 4
@NOFLSH = common dso_local global i32 0, align 4
@ttydebug = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [14 x i8] c"getflags: %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty*)* @ttcompatgetflags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ttcompatgetflags(%struct.tty* %0) #0 {
  %2 = alloca %struct.tty*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.tty* %0, %struct.tty** %2, align 8
  %8 = load %struct.tty*, %struct.tty** %2, align 8
  %9 = getelementptr inbounds %struct.tty, %struct.tty* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %3, align 4
  %12 = load %struct.tty*, %struct.tty** %2, align 8
  %13 = getelementptr inbounds %struct.tty, %struct.tty* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %4, align 4
  %16 = load %struct.tty*, %struct.tty** %2, align 8
  %17 = getelementptr inbounds %struct.tty, %struct.tty* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %5, align 4
  %20 = load %struct.tty*, %struct.tty** %2, align 8
  %21 = getelementptr inbounds %struct.tty, %struct.tty* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* @IXOFF, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %1
  %29 = load i32, i32* @TANDEM, align 4
  %30 = load i32, i32* %7, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %7, align 4
  br label %32

32:                                               ; preds = %28, %1
  %33 = load i32, i32* %3, align 4
  %34 = load i32, i32* @ICRNL, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %32
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @ONLCR, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %37, %32
  %43 = load i32, i32* @CRMOD, align 4
  %44 = load i32, i32* %7, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %7, align 4
  br label %46

46:                                               ; preds = %42, %37
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* @CSIZE, align 4
  %49 = and i32 %47, %48
  %50 = load i32, i32* @CS8, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %65

52:                                               ; preds = %46
  %53 = load i32, i32* @PASS8, align 4
  %54 = load i32, i32* %7, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* %3, align 4
  %57 = load i32, i32* @ISTRIP, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %52
  %61 = load i32, i32* @ANYP, align 4
  %62 = load i32, i32* %7, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %7, align 4
  br label %64

64:                                               ; preds = %60, %52
  br label %97

65:                                               ; preds = %46
  %66 = load i32, i32* %6, align 4
  %67 = load i32, i32* @PARENB, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %96

70:                                               ; preds = %65
  %71 = load i32, i32* %3, align 4
  %72 = load i32, i32* @INPCK, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %89

75:                                               ; preds = %70
  %76 = load i32, i32* %6, align 4
  %77 = load i32, i32* @PARODD, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %75
  %81 = load i32, i32* @ODDP, align 4
  %82 = load i32, i32* %7, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %7, align 4
  br label %88

84:                                               ; preds = %75
  %85 = load i32, i32* @EVENP, align 4
  %86 = load i32, i32* %7, align 4
  %87 = or i32 %86, %85
  store i32 %87, i32* %7, align 4
  br label %88

88:                                               ; preds = %84, %80
  br label %95

89:                                               ; preds = %70
  %90 = load i32, i32* @EVENP, align 4
  %91 = load i32, i32* @ODDP, align 4
  %92 = or i32 %90, %91
  %93 = load i32, i32* %7, align 4
  %94 = or i32 %93, %92
  store i32 %94, i32* %7, align 4
  br label %95

95:                                               ; preds = %89, %88
  br label %96

96:                                               ; preds = %95, %65
  br label %97

97:                                               ; preds = %96, %64
  %98 = load i32, i32* %4, align 4
  %99 = load i32, i32* @ICANON, align 4
  %100 = and i32 %98, %99
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %135

102:                                              ; preds = %97
  %103 = load i32, i32* %3, align 4
  %104 = load i32, i32* @INPCK, align 4
  %105 = load i32, i32* @ISTRIP, align 4
  %106 = or i32 %104, %105
  %107 = load i32, i32* @IXON, align 4
  %108 = or i32 %106, %107
  %109 = and i32 %103, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %126, label %111

111:                                              ; preds = %102
  %112 = load i32, i32* %4, align 4
  %113 = load i32, i32* @IEXTEN, align 4
  %114 = load i32, i32* @ISIG, align 4
  %115 = or i32 %113, %114
  %116 = and i32 %112, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %126, label %118

118:                                              ; preds = %111
  %119 = load i32, i32* %6, align 4
  %120 = load i32, i32* @CSIZE, align 4
  %121 = load i32, i32* @PARENB, align 4
  %122 = or i32 %120, %121
  %123 = and i32 %119, %122
  %124 = load i32, i32* @CS8, align 4
  %125 = icmp ne i32 %123, %124
  br i1 %125, label %126, label %130

126:                                              ; preds = %118, %111, %102
  %127 = load i32, i32* @CBREAK, align 4
  %128 = load i32, i32* %7, align 4
  %129 = or i32 %128, %127
  store i32 %129, i32* %7, align 4
  br label %134

130:                                              ; preds = %118
  %131 = load i32, i32* @RAW, align 4
  %132 = load i32, i32* %7, align 4
  %133 = or i32 %132, %131
  store i32 %133, i32* %7, align 4
  br label %134

134:                                              ; preds = %130, %126
  br label %135

135:                                              ; preds = %134, %97
  %136 = load i32, i32* %7, align 4
  %137 = load i32, i32* @RAW, align 4
  %138 = and i32 %136, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %157, label %140

140:                                              ; preds = %135
  %141 = load i32, i32* %5, align 4
  %142 = load i32, i32* @OPOST, align 4
  %143 = and i32 %141, %142
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %157, label %145

145:                                              ; preds = %140
  %146 = load i32, i32* %6, align 4
  %147 = load i32, i32* @CSIZE, align 4
  %148 = load i32, i32* @PARENB, align 4
  %149 = or i32 %147, %148
  %150 = and i32 %146, %149
  %151 = load i32, i32* @CS8, align 4
  %152 = icmp eq i32 %150, %151
  br i1 %152, label %153, label %157

153:                                              ; preds = %145
  %154 = load i32, i32* @LITOUT, align 4
  %155 = load i32, i32* %7, align 4
  %156 = or i32 %155, %154
  store i32 %156, i32* %7, align 4
  br label %157

157:                                              ; preds = %153, %145, %140, %135
  %158 = load i32, i32* %6, align 4
  %159 = load i32, i32* @MDMBUF, align 4
  %160 = and i32 %158, %159
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %166

162:                                              ; preds = %157
  %163 = load i32, i32* @MDMBUF, align 4
  %164 = load i32, i32* %7, align 4
  %165 = or i32 %164, %163
  store i32 %165, i32* %7, align 4
  br label %166

166:                                              ; preds = %162, %157
  %167 = load i32, i32* %6, align 4
  %168 = load i32, i32* @HUPCL, align 4
  %169 = and i32 %167, %168
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %171, label %175

171:                                              ; preds = %166
  %172 = load i32, i32* @NOHANG, align 4
  %173 = load i32, i32* %7, align 4
  %174 = or i32 %173, %172
  store i32 %174, i32* %7, align 4
  br label %175

175:                                              ; preds = %171, %166
  %176 = load i32, i32* %5, align 4
  %177 = load i32, i32* @TAB3, align 4
  %178 = and i32 %176, %177
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %184

180:                                              ; preds = %175
  %181 = load i32, i32* @XTABS, align 4
  %182 = load i32, i32* %7, align 4
  %183 = or i32 %182, %181
  store i32 %183, i32* %7, align 4
  br label %184

184:                                              ; preds = %180, %175
  %185 = load i32, i32* %4, align 4
  %186 = load i32, i32* @ECHOE, align 4
  %187 = and i32 %185, %186
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %195

189:                                              ; preds = %184
  %190 = load i32, i32* @CRTERA, align 4
  %191 = load i32, i32* @CRTBS, align 4
  %192 = or i32 %190, %191
  %193 = load i32, i32* %7, align 4
  %194 = or i32 %193, %192
  store i32 %194, i32* %7, align 4
  br label %195

195:                                              ; preds = %189, %184
  %196 = load i32, i32* %4, align 4
  %197 = load i32, i32* @ECHOKE, align 4
  %198 = and i32 %196, %197
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %206

200:                                              ; preds = %195
  %201 = load i32, i32* @CRTKIL, align 4
  %202 = load i32, i32* @CRTBS, align 4
  %203 = or i32 %201, %202
  %204 = load i32, i32* %7, align 4
  %205 = or i32 %204, %203
  store i32 %205, i32* %7, align 4
  br label %206

206:                                              ; preds = %200, %195
  %207 = load i32, i32* %4, align 4
  %208 = load i32, i32* @ECHOPRT, align 4
  %209 = and i32 %207, %208
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %215

211:                                              ; preds = %206
  %212 = load i32, i32* @PRTERA, align 4
  %213 = load i32, i32* %7, align 4
  %214 = or i32 %213, %212
  store i32 %214, i32* %7, align 4
  br label %215

215:                                              ; preds = %211, %206
  %216 = load i32, i32* %4, align 4
  %217 = load i32, i32* @ECHOCTL, align 4
  %218 = and i32 %216, %217
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %224

220:                                              ; preds = %215
  %221 = load i32, i32* @CTLECH, align 4
  %222 = load i32, i32* %7, align 4
  %223 = or i32 %222, %221
  store i32 %223, i32* %7, align 4
  br label %224

224:                                              ; preds = %220, %215
  %225 = load i32, i32* %3, align 4
  %226 = load i32, i32* @IXANY, align 4
  %227 = and i32 %225, %226
  %228 = icmp eq i32 %227, 0
  br i1 %228, label %229, label %233

229:                                              ; preds = %224
  %230 = load i32, i32* @DECCTQ, align 4
  %231 = load i32, i32* %7, align 4
  %232 = or i32 %231, %230
  store i32 %232, i32* %7, align 4
  br label %233

233:                                              ; preds = %229, %224
  %234 = load i32, i32* %4, align 4
  %235 = load i32, i32* @ECHO, align 4
  %236 = load i32, i32* @TOSTOP, align 4
  %237 = or i32 %235, %236
  %238 = load i32, i32* @FLUSHO, align 4
  %239 = or i32 %237, %238
  %240 = load i32, i32* @PENDIN, align 4
  %241 = or i32 %239, %240
  %242 = load i32, i32* @NOFLSH, align 4
  %243 = or i32 %241, %242
  %244 = and i32 %234, %243
  %245 = load i32, i32* %7, align 4
  %246 = or i32 %245, %244
  store i32 %246, i32* %7, align 4
  %247 = load i64, i64* @ttydebug, align 8
  %248 = icmp ne i64 %247, 0
  br i1 %248, label %249, label %252

249:                                              ; preds = %233
  %250 = load i32, i32* %7, align 4
  %251 = call i32 @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %250)
  br label %252

252:                                              ; preds = %249, %233
  %253 = load i32, i32* %7, align 4
  ret i32 %253
}

declare dso_local i32 @printf(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
