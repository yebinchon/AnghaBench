; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ancontrol/extr_ancontrol.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ancontrol/extr_ancontrol.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@opterr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"i:\00", align 1
@optarg = common dso_local global i8* null, align 8
@optind = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"an0\00", align 1
@optreset = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [55 x i8] c"ANISCTRht:a:e:o:s:n:v:d:j:b:c:f:r:p:w:m:l:k:K:W:QZM:L:\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"ANCACHE not available\00", align 1
@ACT_SET_PWRSAVE = common dso_local global i32 0, align 4
@ACT_SET_TXPWR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [56 x i8] c"bad modifier %d: there are only 4 access point settings\00", align 1
@ACT_SET_BEACON_PERIOD = common dso_local global i32 0, align 4
@ACT_SET_DIVERSITY_RX = common dso_local global i32 0, align 4
@ACT_SET_DIVERSITY_TX = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [32 x i8] c"must specify RX or TX diversity\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"%s is not numeric\00", align 1
@ACT_SET_NETJOIN = common dso_local global i32 0, align 4
@ACT_SET_MYNAME = common dso_local global i32 0, align 4
@ACT_SET_MAC = common dso_local global i32 0, align 4
@ACT_SET_OPMODE = common dso_local global i32 0, align 4
@ACT_SET_FREQ = common dso_local global i32 0, align 4
@ACT_SET_FRAG_THRESH = common dso_local global i32 0, align 4
@ACT_ENABLE_WEP = common dso_local global i32 0, align 4
@ACT_SET_KEY_TYPE = common dso_local global i32 0, align 4
@ACT_SET_RTS_RETRYLIM = common dso_local global i32 0, align 4
@ACT_SET_RTS_THRESH = common dso_local global i32 0, align 4
@ACT_SET_WAKE_DURATION = common dso_local global i32 0, align 4
@ACT_SET_MONITOR_MODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %7, align 4
  store i8* null, i8** %8, align 8
  store i32 0, i32* %9, align 4
  store i8* null, i8** %10, align 8
  store i8* null, i8** %11, align 8
  %13 = load i8**, i8*** %5, align 8
  %14 = getelementptr inbounds i8*, i8** %13, i64 0
  %15 = load i8*, i8** %14, align 8
  store i8* %15, i8** %12, align 8
  store i32 0, i32* @opterr, align 4
  %16 = load i32, i32* %4, align 4
  %17 = load i8**, i8*** %5, align 8
  %18 = call i32 @getopt(i32 %16, i8** %17, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp eq i32 %19, 105
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = load i8*, i8** @optarg, align 8
  store i8* %22, i8** %8, align 8
  br label %39

23:                                               ; preds = %2
  %24 = load i32, i32* %4, align 4
  %25 = icmp sgt i32 %24, 1
  br i1 %25, label %26, label %37

26:                                               ; preds = %23
  %27 = load i8**, i8*** %5, align 8
  %28 = getelementptr inbounds i8*, i8** %27, i64 1
  %29 = load i8*, i8** %28, align 8
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp ne i32 %31, 45
  br i1 %32, label %33, label %37

33:                                               ; preds = %26
  %34 = load i8**, i8*** %5, align 8
  %35 = getelementptr inbounds i8*, i8** %34, i64 1
  %36 = load i8*, i8** %35, align 8
  store i8* %36, i8** %8, align 8
  store i32 2, i32* @optind, align 4
  br label %38

37:                                               ; preds = %26, %23
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8** %8, align 8
  store i32 1, i32* @optind, align 4
  br label %38

38:                                               ; preds = %37, %33
  store i32 1, i32* @optreset, align 4
  br label %39

39:                                               ; preds = %38, %21
  store i32 1, i32* @opterr, align 4
  br label %40

40:                                               ; preds = %156, %39
  %41 = load i32, i32* %4, align 4
  %42 = load i8**, i8*** %5, align 8
  %43 = call i32 @getopt(i32 %41, i8** %42, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0))
  store i32 %43, i32* %6, align 4
  %44 = icmp ne i32 %43, -1
  br i1 %44, label %45, label %157

45:                                               ; preds = %40
  %46 = load i32, i32* %6, align 4
  switch i32 %46, label %153 [
    i32 90, label %47
    i32 81, label %49
    i32 65, label %51
    i32 78, label %52
    i32 83, label %53
    i32 73, label %54
    i32 84, label %55
    i32 67, label %56
    i32 82, label %57
    i32 116, label %58
    i32 115, label %60
    i32 112, label %63
    i32 118, label %66
    i32 97, label %69
    i32 98, label %82
    i32 100, label %85
    i32 106, label %104
    i32 108, label %107
    i32 109, label %110
    i32 110, label %113
    i32 111, label %119
    i32 99, label %122
    i32 102, label %125
    i32 87, label %128
    i32 75, label %131
    i32 107, label %134
    i32 101, label %136
    i32 113, label %138
    i32 114, label %141
    i32 119, label %144
    i32 77, label %147
    i32 76, label %150
    i32 104, label %152
  ]

47:                                               ; preds = %45
  %48 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  br label %156

49:                                               ; preds = %45
  %50 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  br label %156

51:                                               ; preds = %45
  store i32 145, i32* %7, align 4
  br label %156

52:                                               ; preds = %45
  store i32 140, i32* %7, align 4
  br label %156

53:                                               ; preds = %45
  store i32 138, i32* %7, align 4
  br label %156

54:                                               ; preds = %45
  store i32 143, i32* %7, align 4
  br label %156

55:                                               ; preds = %45
  store i32 139, i32* %7, align 4
  br label %156

56:                                               ; preds = %45
  store i32 142, i32* %7, align 4
  br label %156

57:                                               ; preds = %45
  store i32 141, i32* %7, align 4
  br label %156

58:                                               ; preds = %45
  store i32 129, i32* %7, align 4
  %59 = load i8*, i8** @optarg, align 8
  store i8* %59, i8** %11, align 8
  br label %156

60:                                               ; preds = %45
  %61 = load i32, i32* @ACT_SET_PWRSAVE, align 4
  store i32 %61, i32* %7, align 4
  %62 = load i8*, i8** @optarg, align 8
  store i8* %62, i8** %11, align 8
  br label %156

63:                                               ; preds = %45
  %64 = load i32, i32* @ACT_SET_TXPWR, align 4
  store i32 %64, i32* %7, align 4
  %65 = load i8*, i8** @optarg, align 8
  store i8* %65, i8** %11, align 8
  br label %156

66:                                               ; preds = %45
  %67 = load i8*, i8** @optarg, align 8
  %68 = call i32 @atoi(i8* %67)
  store i32 %68, i32* %9, align 4
  br label %156

69:                                               ; preds = %45
  %70 = load i32, i32* %9, align 4
  switch i32 %70, label %75 [
    i32 0, label %71
    i32 1, label %71
    i32 2, label %72
    i32 3, label %73
    i32 4, label %74
  ]

71:                                               ; preds = %69, %69
  store i32 136, i32* %7, align 4
  br label %80

72:                                               ; preds = %69
  store i32 135, i32* %7, align 4
  br label %80

73:                                               ; preds = %69
  store i32 134, i32* %7, align 4
  br label %80

74:                                               ; preds = %69
  store i32 133, i32* %7, align 4
  br label %80

75:                                               ; preds = %69
  %76 = load i32, i32* %9, align 4
  %77 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.4, i64 0, i64 0), i32 %76)
  %78 = load i8*, i8** %12, align 8
  %79 = call i32 @usage(i8* %78)
  br label %80

80:                                               ; preds = %75, %74, %73, %72, %71
  %81 = load i8*, i8** @optarg, align 8
  store i8* %81, i8** %11, align 8
  br label %156

82:                                               ; preds = %45
  %83 = load i32, i32* @ACT_SET_BEACON_PERIOD, align 4
  store i32 %83, i32* %7, align 4
  %84 = load i8*, i8** @optarg, align 8
  store i8* %84, i8** %11, align 8
  br label %156

85:                                               ; preds = %45
  %86 = load i32, i32* %9, align 4
  switch i32 %86, label %91 [
    i32 0, label %87
    i32 1, label %89
  ]

87:                                               ; preds = %85
  %88 = load i32, i32* @ACT_SET_DIVERSITY_RX, align 4
  store i32 %88, i32* %7, align 4
  br label %93

89:                                               ; preds = %85
  %90 = load i32, i32* @ACT_SET_DIVERSITY_TX, align 4
  store i32 %90, i32* %7, align 4
  br label %93

91:                                               ; preds = %85
  %92 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0))
  br label %93

93:                                               ; preds = %91, %89, %87
  %94 = load i8*, i8** @optarg, align 8
  %95 = load i8, i8* %94, align 1
  %96 = call i32 @isdigit(i8 signext %95)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %102, label %98

98:                                               ; preds = %93
  %99 = load i8*, i8** @optarg, align 8
  %100 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i8* %99)
  %101 = call i32 @exit(i32 1) #3
  unreachable

102:                                              ; preds = %93
  %103 = load i8*, i8** @optarg, align 8
  store i8* %103, i8** %11, align 8
  br label %156

104:                                              ; preds = %45
  %105 = load i32, i32* @ACT_SET_NETJOIN, align 4
  store i32 %105, i32* %7, align 4
  %106 = load i8*, i8** @optarg, align 8
  store i8* %106, i8** %11, align 8
  br label %156

107:                                              ; preds = %45
  %108 = load i32, i32* @ACT_SET_MYNAME, align 4
  store i32 %108, i32* %7, align 4
  %109 = load i8*, i8** @optarg, align 8
  store i8* %109, i8** %11, align 8
  br label %156

110:                                              ; preds = %45
  %111 = load i32, i32* @ACT_SET_MAC, align 4
  store i32 %111, i32* %7, align 4
  %112 = load i8*, i8** @optarg, align 8
  store i8* %112, i8** %11, align 8
  br label %156

113:                                              ; preds = %45
  %114 = load i32, i32* %9, align 4
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %113
  store i32 1, i32* %9, align 4
  br label %117

117:                                              ; preds = %116, %113
  store i32 130, i32* %7, align 4
  %118 = load i8*, i8** @optarg, align 8
  store i8* %118, i8** %11, align 8
  br label %156

119:                                              ; preds = %45
  %120 = load i32, i32* @ACT_SET_OPMODE, align 4
  store i32 %120, i32* %7, align 4
  %121 = load i8*, i8** @optarg, align 8
  store i8* %121, i8** %11, align 8
  br label %156

122:                                              ; preds = %45
  %123 = load i32, i32* @ACT_SET_FREQ, align 4
  store i32 %123, i32* %7, align 4
  %124 = load i8*, i8** @optarg, align 8
  store i8* %124, i8** %11, align 8
  br label %156

125:                                              ; preds = %45
  %126 = load i32, i32* @ACT_SET_FRAG_THRESH, align 4
  store i32 %126, i32* %7, align 4
  %127 = load i8*, i8** @optarg, align 8
  store i8* %127, i8** %11, align 8
  br label %156

128:                                              ; preds = %45
  %129 = load i32, i32* @ACT_ENABLE_WEP, align 4
  store i32 %129, i32* %7, align 4
  %130 = load i8*, i8** @optarg, align 8
  store i8* %130, i8** %11, align 8
  br label %156

131:                                              ; preds = %45
  %132 = load i32, i32* @ACT_SET_KEY_TYPE, align 4
  store i32 %132, i32* %7, align 4
  %133 = load i8*, i8** @optarg, align 8
  store i8* %133, i8** %11, align 8
  br label %156

134:                                              ; preds = %45
  store i32 132, i32* %7, align 4
  %135 = load i8*, i8** @optarg, align 8
  store i8* %135, i8** %10, align 8
  br label %156

136:                                              ; preds = %45
  store i32 137, i32* %7, align 4
  %137 = load i8*, i8** @optarg, align 8
  store i8* %137, i8** %11, align 8
  br label %156

138:                                              ; preds = %45
  %139 = load i32, i32* @ACT_SET_RTS_RETRYLIM, align 4
  store i32 %139, i32* %7, align 4
  %140 = load i8*, i8** @optarg, align 8
  store i8* %140, i8** %11, align 8
  br label %156

141:                                              ; preds = %45
  %142 = load i32, i32* @ACT_SET_RTS_THRESH, align 4
  store i32 %142, i32* %7, align 4
  %143 = load i8*, i8** @optarg, align 8
  store i8* %143, i8** %11, align 8
  br label %156

144:                                              ; preds = %45
  %145 = load i32, i32* @ACT_SET_WAKE_DURATION, align 4
  store i32 %145, i32* %7, align 4
  %146 = load i8*, i8** @optarg, align 8
  store i8* %146, i8** %11, align 8
  br label %156

147:                                              ; preds = %45
  %148 = load i32, i32* @ACT_SET_MONITOR_MODE, align 4
  store i32 %148, i32* %7, align 4
  %149 = load i8*, i8** @optarg, align 8
  store i8* %149, i8** %11, align 8
  br label %156

150:                                              ; preds = %45
  store i32 131, i32* %7, align 4
  %151 = load i8*, i8** @optarg, align 8
  store i8* %151, i8** %11, align 8
  br label %156

152:                                              ; preds = %45
  br label %153

153:                                              ; preds = %45, %152
  %154 = load i8*, i8** %12, align 8
  %155 = call i32 @usage(i8* %154)
  br label %156

156:                                              ; preds = %153, %150, %147, %144, %141, %138, %136, %134, %131, %128, %125, %122, %119, %117, %110, %107, %104, %102, %82, %80, %66, %63, %60, %58, %57, %56, %55, %54, %53, %52, %51, %49, %47
  br label %40

157:                                              ; preds = %40
  %158 = load i8*, i8** %8, align 8
  %159 = icmp eq i8* %158, null
  br i1 %159, label %166, label %160

160:                                              ; preds = %157
  %161 = load i32, i32* %7, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %169, label %163

163:                                              ; preds = %160
  %164 = load i8*, i8** %10, align 8
  %165 = icmp ne i8* %164, null
  br i1 %165, label %169, label %166

166:                                              ; preds = %163, %157
  %167 = load i8*, i8** %12, align 8
  %168 = call i32 @usage(i8* %167)
  br label %169

169:                                              ; preds = %166, %163, %160
  %170 = load i32, i32* %7, align 4
  switch i32 %170, label %220 [
    i32 138, label %171
    i32 143, label %174
    i32 139, label %177
    i32 142, label %180
    i32 140, label %183
    i32 145, label %186
    i32 141, label %189
    i32 130, label %192
    i32 136, label %197
    i32 135, label %197
    i32 134, label %197
    i32 133, label %197
    i32 129, label %202
    i32 132, label %207
    i32 137, label %212
    i32 131, label %216
  ]

171:                                              ; preds = %169
  %172 = load i8*, i8** %8, align 8
  %173 = call i32 @an_dumpstatus(i8* %172)
  br label %225

174:                                              ; preds = %169
  %175 = load i8*, i8** %8, align 8
  %176 = call i32 @an_dumpcaps(i8* %175)
  br label %225

177:                                              ; preds = %169
  %178 = load i8*, i8** %8, align 8
  %179 = call i32 @an_dumpstats(i8* %178)
  br label %225

180:                                              ; preds = %169
  %181 = load i8*, i8** %8, align 8
  %182 = call i32 @an_dumpconfig(i8* %181)
  br label %225

183:                                              ; preds = %169
  %184 = load i8*, i8** %8, align 8
  %185 = call i32 @an_dumpssid(i8* %184)
  br label %225

186:                                              ; preds = %169
  %187 = load i8*, i8** %8, align 8
  %188 = call i32 @an_dumpap(i8* %187)
  br label %225

189:                                              ; preds = %169
  %190 = load i8*, i8** %8, align 8
  %191 = call i32 @an_dumprssimap(i8* %190)
  br label %225

192:                                              ; preds = %169
  %193 = load i8*, i8** %8, align 8
  %194 = load i32, i32* %9, align 4
  %195 = load i8*, i8** %11, align 8
  %196 = call i32 @an_setssid(i8* %193, i32 %194, i8* %195)
  br label %225

197:                                              ; preds = %169, %169, %169, %169
  %198 = load i8*, i8** %8, align 8
  %199 = load i32, i32* %7, align 4
  %200 = load i8*, i8** %11, align 8
  %201 = call i32 @an_setap(i8* %198, i32 %199, i8* %200)
  br label %225

202:                                              ; preds = %169
  %203 = load i8*, i8** %8, align 8
  %204 = load i32, i32* %7, align 4
  %205 = load i8*, i8** %11, align 8
  %206 = call i32 @an_setspeed(i8* %203, i32 %204, i8* %205)
  br label %225

207:                                              ; preds = %169
  %208 = load i8*, i8** %8, align 8
  %209 = load i8*, i8** %10, align 8
  %210 = load i32, i32* %9, align 4
  %211 = call i32 @an_setkeys(i8* %208, i8* %209, i32 %210)
  br label %225

212:                                              ; preds = %169
  %213 = load i8*, i8** %8, align 8
  %214 = load i8*, i8** %11, align 8
  %215 = call i32 @an_enable_tx_key(i8* %213, i8* %214)
  br label %225

216:                                              ; preds = %169
  %217 = load i8*, i8** %8, align 8
  %218 = load i8*, i8** %11, align 8
  %219 = call i32 @an_enable_leap_mode(i8* %217, i8* %218)
  br label %225

220:                                              ; preds = %169
  %221 = load i8*, i8** %8, align 8
  %222 = load i32, i32* %7, align 4
  %223 = load i8*, i8** %11, align 8
  %224 = call i32 @an_setconfig(i8* %221, i32 %222, i8* %223)
  br label %225

225:                                              ; preds = %220, %216, %212, %207, %202, %197, %192, %189, %186, %183, %180, %177, %174, %171
  %226 = call i32 @exit(i32 0) #3
  unreachable
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @errx(i32, i8*, ...) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @usage(i8*) #1

declare dso_local i32 @isdigit(i8 signext) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @an_dumpstatus(i8*) #1

declare dso_local i32 @an_dumpcaps(i8*) #1

declare dso_local i32 @an_dumpstats(i8*) #1

declare dso_local i32 @an_dumpconfig(i8*) #1

declare dso_local i32 @an_dumpssid(i8*) #1

declare dso_local i32 @an_dumpap(i8*) #1

declare dso_local i32 @an_dumprssimap(i8*) #1

declare dso_local i32 @an_setssid(i8*, i32, i8*) #1

declare dso_local i32 @an_setap(i8*, i32, i8*) #1

declare dso_local i32 @an_setspeed(i8*, i32, i8*) #1

declare dso_local i32 @an_setkeys(i8*, i8*, i32) #1

declare dso_local i32 @an_enable_tx_key(i8*, i8*) #1

declare dso_local i32 @an_enable_leap_mode(i8*, i8*) #1

declare dso_local i32 @an_setconfig(i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
