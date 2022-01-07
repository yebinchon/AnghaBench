; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/mfiutil/extr_mfi_volume.c_process_cache_command.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/mfiutil/extr_mfi_volume.c_process_cache_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mfi_ld_props = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"all\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@MR_LD_CACHE_ALLOW_READ_CACHE = common dso_local global i32 0, align 4
@MR_LD_CACHE_ALLOW_WRITE_CACHE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"disable\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"reads\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"writes\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"write-back\00", align 1
@MR_LD_CACHE_WRITE_BACK = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [14 x i8] c"write-through\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"bad-bbu-write-cache\00", align 1
@.str.9 = private unnamed_addr constant [32 x i8] c"cache: bad BBU setting required\00", align 1
@MR_LD_CACHE_WRITE_CACHE_BAD_BBU = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [31 x i8] c"cache: invalid bad BBU setting\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"read-ahead\00", align 1
@.str.12 = private unnamed_addr constant [35 x i8] c"cache: read-ahead setting required\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"always\00", align 1
@MR_LD_CACHE_READ_AHEAD = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [9 x i8] c"adaptive\00", align 1
@MR_LD_CACHE_READ_ADAPTIVE = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [34 x i8] c"cache: invalid read-ahead setting\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"write-cache\00", align 1
@.str.17 = private unnamed_addr constant [36 x i8] c"cache: write-cache setting required\00", align 1
@MR_PD_CACHE_ENABLE = common dso_local global i32 0, align 4
@MR_PD_CACHE_DISABLE = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@MR_PD_CACHE_UNCHANGED = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [35 x i8] c"cache: invalid write-cache setting\00", align 1
@.str.20 = private unnamed_addr constant [23 x i8] c"cache: Invalid command\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**, %struct.mfi_ld_props*)* @process_cache_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_cache_command(i32 %0, i8** %1, %struct.mfi_ld_props* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca %struct.mfi_ld_props*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8** %1, i8*** %6, align 8
  store %struct.mfi_ld_props* %2, %struct.mfi_ld_props** %7, align 8
  %9 = load i8**, i8*** %6, align 8
  %10 = getelementptr inbounds i8*, i8** %9, i64 0
  %11 = load i8*, i8** %10, align 8
  %12 = call i64 @strcmp(i8* %11, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %20, label %14

14:                                               ; preds = %3
  %15 = load i8**, i8*** %6, align 8
  %16 = getelementptr inbounds i8*, i8** %15, i64 0
  %17 = load i8*, i8** %16, align 8
  %18 = call i64 @strcmp(i8* %17, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %14, %3
  %21 = load %struct.mfi_ld_props*, %struct.mfi_ld_props** %7, align 8
  %22 = load i32, i32* @MR_LD_CACHE_ALLOW_READ_CACHE, align 4
  %23 = load i32, i32* @MR_LD_CACHE_ALLOW_WRITE_CACHE, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @MR_LD_CACHE_ALLOW_READ_CACHE, align 4
  %26 = load i32, i32* @MR_LD_CACHE_ALLOW_WRITE_CACHE, align 4
  %27 = or i32 %25, %26
  %28 = call i32 @stage_cache_setting(%struct.mfi_ld_props* %21, i32 %24, i32 %27)
  store i32 1, i32* %4, align 4
  br label %223

29:                                               ; preds = %14
  %30 = load i8**, i8*** %6, align 8
  %31 = getelementptr inbounds i8*, i8** %30, i64 0
  %32 = load i8*, i8** %31, align 8
  %33 = call i64 @strcmp(i8* %32, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %41, label %35

35:                                               ; preds = %29
  %36 = load i8**, i8*** %6, align 8
  %37 = getelementptr inbounds i8*, i8** %36, i64 0
  %38 = load i8*, i8** %37, align 8
  %39 = call i64 @strcmp(i8* %38, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %35, %29
  %42 = load %struct.mfi_ld_props*, %struct.mfi_ld_props** %7, align 8
  %43 = load i32, i32* @MR_LD_CACHE_ALLOW_READ_CACHE, align 4
  %44 = load i32, i32* @MR_LD_CACHE_ALLOW_WRITE_CACHE, align 4
  %45 = or i32 %43, %44
  %46 = call i32 @stage_cache_setting(%struct.mfi_ld_props* %42, i32 0, i32 %45)
  store i32 1, i32* %4, align 4
  br label %223

47:                                               ; preds = %35
  %48 = load i8**, i8*** %6, align 8
  %49 = getelementptr inbounds i8*, i8** %48, i64 0
  %50 = load i8*, i8** %49, align 8
  %51 = call i64 @strcmp(i8* %50, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %47
  %54 = load %struct.mfi_ld_props*, %struct.mfi_ld_props** %7, align 8
  %55 = load i32, i32* @MR_LD_CACHE_ALLOW_READ_CACHE, align 4
  %56 = load i32, i32* @MR_LD_CACHE_ALLOW_READ_CACHE, align 4
  %57 = load i32, i32* @MR_LD_CACHE_ALLOW_WRITE_CACHE, align 4
  %58 = or i32 %56, %57
  %59 = call i32 @stage_cache_setting(%struct.mfi_ld_props* %54, i32 %55, i32 %58)
  store i32 1, i32* %4, align 4
  br label %223

60:                                               ; preds = %47
  %61 = load i8**, i8*** %6, align 8
  %62 = getelementptr inbounds i8*, i8** %61, i64 0
  %63 = load i8*, i8** %62, align 8
  %64 = call i64 @strcmp(i8* %63, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %66, label %73

66:                                               ; preds = %60
  %67 = load %struct.mfi_ld_props*, %struct.mfi_ld_props** %7, align 8
  %68 = load i32, i32* @MR_LD_CACHE_ALLOW_WRITE_CACHE, align 4
  %69 = load i32, i32* @MR_LD_CACHE_ALLOW_READ_CACHE, align 4
  %70 = load i32, i32* @MR_LD_CACHE_ALLOW_WRITE_CACHE, align 4
  %71 = or i32 %69, %70
  %72 = call i32 @stage_cache_setting(%struct.mfi_ld_props* %67, i32 %68, i32 %71)
  store i32 1, i32* %4, align 4
  br label %223

73:                                               ; preds = %60
  %74 = load i8**, i8*** %6, align 8
  %75 = getelementptr inbounds i8*, i8** %74, i64 0
  %76 = load i8*, i8** %75, align 8
  %77 = call i64 @strcmp(i8* %76, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0))
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %73
  %80 = load %struct.mfi_ld_props*, %struct.mfi_ld_props** %7, align 8
  %81 = load i32, i32* @MR_LD_CACHE_WRITE_BACK, align 4
  %82 = load i32, i32* @MR_LD_CACHE_WRITE_BACK, align 4
  %83 = call i32 @stage_cache_setting(%struct.mfi_ld_props* %80, i32 %81, i32 %82)
  store i32 1, i32* %4, align 4
  br label %223

84:                                               ; preds = %73
  %85 = load i8**, i8*** %6, align 8
  %86 = getelementptr inbounds i8*, i8** %85, i64 0
  %87 = load i8*, i8** %86, align 8
  %88 = call i64 @strcmp(i8* %87, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0))
  %89 = icmp eq i64 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %84
  %91 = load %struct.mfi_ld_props*, %struct.mfi_ld_props** %7, align 8
  %92 = load i32, i32* @MR_LD_CACHE_WRITE_BACK, align 4
  %93 = call i32 @stage_cache_setting(%struct.mfi_ld_props* %91, i32 0, i32 %92)
  store i32 1, i32* %4, align 4
  br label %223

94:                                               ; preds = %84
  %95 = load i8**, i8*** %6, align 8
  %96 = getelementptr inbounds i8*, i8** %95, i64 0
  %97 = load i8*, i8** %96, align 8
  %98 = call i64 @strcmp(i8* %97, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0))
  %99 = icmp eq i64 %98, 0
  br i1 %99, label %100, label %128

100:                                              ; preds = %94
  %101 = load i32, i32* %5, align 4
  %102 = icmp slt i32 %101, 2
  br i1 %102, label %103, label %105

103:                                              ; preds = %100
  %104 = call i32 @warnx(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %223

105:                                              ; preds = %100
  %106 = load i8**, i8*** %6, align 8
  %107 = getelementptr inbounds i8*, i8** %106, i64 1
  %108 = load i8*, i8** %107, align 8
  %109 = call i64 @strcmp(i8* %108, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %110 = icmp eq i64 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %105
  %112 = load i32, i32* @MR_LD_CACHE_WRITE_CACHE_BAD_BBU, align 4
  store i32 %112, i32* %8, align 4
  br label %123

113:                                              ; preds = %105
  %114 = load i8**, i8*** %6, align 8
  %115 = getelementptr inbounds i8*, i8** %114, i64 1
  %116 = load i8*, i8** %115, align 8
  %117 = call i64 @strcmp(i8* %116, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %118 = icmp eq i64 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %113
  store i32 0, i32* %8, align 4
  br label %122

120:                                              ; preds = %113
  %121 = call i32 @warnx(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.10, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %223

122:                                              ; preds = %119
  br label %123

123:                                              ; preds = %122, %111
  %124 = load %struct.mfi_ld_props*, %struct.mfi_ld_props** %7, align 8
  %125 = load i32, i32* %8, align 4
  %126 = load i32, i32* @MR_LD_CACHE_WRITE_CACHE_BAD_BBU, align 4
  %127 = call i32 @stage_cache_setting(%struct.mfi_ld_props* %124, i32 %125, i32 %126)
  store i32 2, i32* %4, align 4
  br label %223

128:                                              ; preds = %94
  %129 = load i8**, i8*** %6, align 8
  %130 = getelementptr inbounds i8*, i8** %129, i64 0
  %131 = load i8*, i8** %130, align 8
  %132 = call i64 @strcmp(i8* %131, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0))
  %133 = icmp eq i64 %132, 0
  br i1 %133, label %134, label %175

134:                                              ; preds = %128
  %135 = load i32, i32* %5, align 4
  %136 = icmp slt i32 %135, 2
  br i1 %136, label %137, label %139

137:                                              ; preds = %134
  %138 = call i32 @warnx(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.12, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %223

139:                                              ; preds = %134
  %140 = load i8**, i8*** %6, align 8
  %141 = getelementptr inbounds i8*, i8** %140, i64 1
  %142 = load i8*, i8** %141, align 8
  %143 = call i64 @strcmp(i8* %142, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %144 = icmp eq i64 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %139
  store i32 0, i32* %8, align 4
  br label %168

146:                                              ; preds = %139
  %147 = load i8**, i8*** %6, align 8
  %148 = getelementptr inbounds i8*, i8** %147, i64 1
  %149 = load i8*, i8** %148, align 8
  %150 = call i64 @strcmp(i8* %149, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0))
  %151 = icmp eq i64 %150, 0
  br i1 %151, label %152, label %154

152:                                              ; preds = %146
  %153 = load i32, i32* @MR_LD_CACHE_READ_AHEAD, align 4
  store i32 %153, i32* %8, align 4
  br label %167

154:                                              ; preds = %146
  %155 = load i8**, i8*** %6, align 8
  %156 = getelementptr inbounds i8*, i8** %155, i64 1
  %157 = load i8*, i8** %156, align 8
  %158 = call i64 @strcmp(i8* %157, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i64 0, i64 0))
  %159 = icmp eq i64 %158, 0
  br i1 %159, label %160, label %164

160:                                              ; preds = %154
  %161 = load i32, i32* @MR_LD_CACHE_READ_AHEAD, align 4
  %162 = load i32, i32* @MR_LD_CACHE_READ_ADAPTIVE, align 4
  %163 = or i32 %161, %162
  store i32 %163, i32* %8, align 4
  br label %166

164:                                              ; preds = %154
  %165 = call i32 @warnx(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.15, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %223

166:                                              ; preds = %160
  br label %167

167:                                              ; preds = %166, %152
  br label %168

168:                                              ; preds = %167, %145
  %169 = load %struct.mfi_ld_props*, %struct.mfi_ld_props** %7, align 8
  %170 = load i32, i32* %8, align 4
  %171 = load i32, i32* @MR_LD_CACHE_READ_AHEAD, align 4
  %172 = load i32, i32* @MR_LD_CACHE_READ_ADAPTIVE, align 4
  %173 = or i32 %171, %172
  %174 = call i32 @stage_cache_setting(%struct.mfi_ld_props* %169, i32 %170, i32 %173)
  store i32 2, i32* %4, align 4
  br label %223

175:                                              ; preds = %128
  %176 = load i8**, i8*** %6, align 8
  %177 = getelementptr inbounds i8*, i8** %176, i64 0
  %178 = load i8*, i8** %177, align 8
  %179 = call i64 @strcmp(i8* %178, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i64 0, i64 0))
  %180 = icmp eq i64 %179, 0
  br i1 %180, label %181, label %221

181:                                              ; preds = %175
  %182 = load i32, i32* %5, align 4
  %183 = icmp slt i32 %182, 2
  br i1 %183, label %184, label %186

184:                                              ; preds = %181
  %185 = call i32 @warnx(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.17, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %223

186:                                              ; preds = %181
  %187 = load i8**, i8*** %6, align 8
  %188 = getelementptr inbounds i8*, i8** %187, i64 1
  %189 = load i8*, i8** %188, align 8
  %190 = call i64 @strcmp(i8* %189, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %191 = icmp eq i64 %190, 0
  br i1 %191, label %192, label %196

192:                                              ; preds = %186
  %193 = load i32, i32* @MR_PD_CACHE_ENABLE, align 4
  %194 = load %struct.mfi_ld_props*, %struct.mfi_ld_props** %7, align 8
  %195 = getelementptr inbounds %struct.mfi_ld_props, %struct.mfi_ld_props* %194, i32 0, i32 0
  store i32 %193, i32* %195, align 4
  br label %220

196:                                              ; preds = %186
  %197 = load i8**, i8*** %6, align 8
  %198 = getelementptr inbounds i8*, i8** %197, i64 1
  %199 = load i8*, i8** %198, align 8
  %200 = call i64 @strcmp(i8* %199, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %201 = icmp eq i64 %200, 0
  br i1 %201, label %202, label %206

202:                                              ; preds = %196
  %203 = load i32, i32* @MR_PD_CACHE_DISABLE, align 4
  %204 = load %struct.mfi_ld_props*, %struct.mfi_ld_props** %7, align 8
  %205 = getelementptr inbounds %struct.mfi_ld_props, %struct.mfi_ld_props* %204, i32 0, i32 0
  store i32 %203, i32* %205, align 4
  br label %219

206:                                              ; preds = %196
  %207 = load i8**, i8*** %6, align 8
  %208 = getelementptr inbounds i8*, i8** %207, i64 1
  %209 = load i8*, i8** %208, align 8
  %210 = call i64 @strcmp(i8* %209, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i64 0, i64 0))
  %211 = icmp eq i64 %210, 0
  br i1 %211, label %212, label %216

212:                                              ; preds = %206
  %213 = load i32, i32* @MR_PD_CACHE_UNCHANGED, align 4
  %214 = load %struct.mfi_ld_props*, %struct.mfi_ld_props** %7, align 8
  %215 = getelementptr inbounds %struct.mfi_ld_props, %struct.mfi_ld_props* %214, i32 0, i32 0
  store i32 %213, i32* %215, align 4
  br label %218

216:                                              ; preds = %206
  %217 = call i32 @warnx(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.19, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %223

218:                                              ; preds = %212
  br label %219

219:                                              ; preds = %218, %202
  br label %220

220:                                              ; preds = %219, %192
  store i32 2, i32* %4, align 4
  br label %223

221:                                              ; preds = %175
  %222 = call i32 @warnx(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.20, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %223

223:                                              ; preds = %221, %220, %216, %184, %168, %164, %137, %123, %120, %103, %90, %79, %66, %53, %41, %20
  %224 = load i32, i32* %4, align 4
  ret i32 %224
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @stage_cache_setting(%struct.mfi_ld_props*, i32, i32) #1

declare dso_local i32 @warnx(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
