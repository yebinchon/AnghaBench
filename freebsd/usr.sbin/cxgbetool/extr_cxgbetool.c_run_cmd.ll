; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/cxgbetool/extr_cxgbetool.c_run_cmd.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/cxgbetool/extr_cxgbetool.c_run_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"reg32\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"reg64\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"regdump\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"filter\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"context\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"loadfw\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"memdump\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"tcb\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"i2c\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"clearstats\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"tracer\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"modinfo\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"sched-class\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"sched-queue\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"loadcfg\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"loadboot\00", align 1
@.str.17 = private unnamed_addr constant [13 x i8] c"loadboot-cfg\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"dumpstate\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"policy\00", align 1
@.str.20 = private unnamed_addr constant [11 x i8] c"hashfilter\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [21 x i8] c"invalid command \22%s\22\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @run_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @run_cmd(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  store i32 -1, i32* %5, align 4
  %7 = load i8**, i8*** %4, align 8
  %8 = getelementptr inbounds i8*, i8** %7, i64 0
  %9 = load i8*, i8** %8, align 8
  store i8* %9, i8** %6, align 8
  %10 = load i32, i32* %3, align 4
  %11 = add nsw i32 %10, -1
  store i32 %11, i32* %3, align 4
  %12 = load i8**, i8*** %4, align 8
  %13 = getelementptr inbounds i8*, i8** %12, i32 1
  store i8** %13, i8*** %4, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = call i32 @strcmp(i8* %14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = load i8*, i8** %6, align 8
  %19 = call i32 @strcmp(i8* %18, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %17, %2
  %22 = load i32, i32* %3, align 4
  %23 = load i8**, i8*** %4, align 8
  %24 = call i32 @register_io(i32 %22, i8** %23, i32 4)
  store i32 %24, i32* %5, align 4
  br label %200

25:                                               ; preds = %17
  %26 = load i8*, i8** %6, align 8
  %27 = call i32 @strcmp(i8* %26, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %25
  %30 = load i32, i32* %3, align 4
  %31 = load i8**, i8*** %4, align 8
  %32 = call i32 @register_io(i32 %30, i8** %31, i32 8)
  store i32 %32, i32* %5, align 4
  br label %199

33:                                               ; preds = %25
  %34 = load i8*, i8** %6, align 8
  %35 = call i32 @strcmp(i8* %34, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %33
  %38 = load i32, i32* %3, align 4
  %39 = load i8**, i8*** %4, align 8
  %40 = call i32 @dump_regs(i32 %38, i8** %39)
  store i32 %40, i32* %5, align 4
  br label %198

41:                                               ; preds = %33
  %42 = load i8*, i8** %6, align 8
  %43 = call i32 @strcmp(i8* %42, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %41
  %46 = load i32, i32* %3, align 4
  %47 = load i8**, i8*** %4, align 8
  %48 = call i32 @filter_cmd(i32 %46, i8** %47, i32 0)
  store i32 %48, i32* %5, align 4
  br label %197

49:                                               ; preds = %41
  %50 = load i8*, i8** %6, align 8
  %51 = call i32 @strcmp(i8* %50, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %57, label %53

53:                                               ; preds = %49
  %54 = load i32, i32* %3, align 4
  %55 = load i8**, i8*** %4, align 8
  %56 = call i32 @get_sge_context(i32 %54, i8** %55)
  store i32 %56, i32* %5, align 4
  br label %196

57:                                               ; preds = %49
  %58 = load i8*, i8** %6, align 8
  %59 = call i32 @strcmp(i8* %58, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %65, label %61

61:                                               ; preds = %57
  %62 = load i32, i32* %3, align 4
  %63 = load i8**, i8*** %4, align 8
  %64 = call i32 @loadfw(i32 %62, i8** %63)
  store i32 %64, i32* %5, align 4
  br label %195

65:                                               ; preds = %57
  %66 = load i8*, i8** %6, align 8
  %67 = call i32 @strcmp(i8* %66, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %73, label %69

69:                                               ; preds = %65
  %70 = load i32, i32* %3, align 4
  %71 = load i8**, i8*** %4, align 8
  %72 = call i32 @memdump(i32 %70, i8** %71)
  store i32 %72, i32* %5, align 4
  br label %194

73:                                               ; preds = %65
  %74 = load i8*, i8** %6, align 8
  %75 = call i32 @strcmp(i8* %74, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0))
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %81, label %77

77:                                               ; preds = %73
  %78 = load i32, i32* %3, align 4
  %79 = load i8**, i8*** %4, align 8
  %80 = call i32 @read_tcb(i32 %78, i8** %79)
  store i32 %80, i32* %5, align 4
  br label %193

81:                                               ; preds = %73
  %82 = load i8*, i8** %6, align 8
  %83 = call i32 @strcmp(i8* %82, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0))
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %89, label %85

85:                                               ; preds = %81
  %86 = load i32, i32* %3, align 4
  %87 = load i8**, i8*** %4, align 8
  %88 = call i32 @read_i2c(i32 %86, i8** %87)
  store i32 %88, i32* %5, align 4
  br label %192

89:                                               ; preds = %81
  %90 = load i8*, i8** %6, align 8
  %91 = call i32 @strcmp(i8* %90, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0))
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %97, label %93

93:                                               ; preds = %89
  %94 = load i32, i32* %3, align 4
  %95 = load i8**, i8*** %4, align 8
  %96 = call i32 @clearstats(i32 %94, i8** %95)
  store i32 %96, i32* %5, align 4
  br label %191

97:                                               ; preds = %89
  %98 = load i8*, i8** %6, align 8
  %99 = call i32 @strcmp(i8* %98, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0))
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %105, label %101

101:                                              ; preds = %97
  %102 = load i32, i32* %3, align 4
  %103 = load i8**, i8*** %4, align 8
  %104 = call i32 @tracer_cmd(i32 %102, i8** %103)
  store i32 %104, i32* %5, align 4
  br label %190

105:                                              ; preds = %97
  %106 = load i8*, i8** %6, align 8
  %107 = call i32 @strcmp(i8* %106, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0))
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %113, label %109

109:                                              ; preds = %105
  %110 = load i32, i32* %3, align 4
  %111 = load i8**, i8*** %4, align 8
  %112 = call i32 @modinfo(i32 %110, i8** %111)
  store i32 %112, i32* %5, align 4
  br label %189

113:                                              ; preds = %105
  %114 = load i8*, i8** %6, align 8
  %115 = call i32 @strcmp(i8* %114, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i64 0, i64 0))
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %121, label %117

117:                                              ; preds = %113
  %118 = load i32, i32* %3, align 4
  %119 = load i8**, i8*** %4, align 8
  %120 = call i32 @sched_class(i32 %118, i8** %119)
  store i32 %120, i32* %5, align 4
  br label %188

121:                                              ; preds = %113
  %122 = load i8*, i8** %6, align 8
  %123 = call i32 @strcmp(i8* %122, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i64 0, i64 0))
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %129, label %125

125:                                              ; preds = %121
  %126 = load i32, i32* %3, align 4
  %127 = load i8**, i8*** %4, align 8
  %128 = call i32 @sched_queue(i32 %126, i8** %127)
  store i32 %128, i32* %5, align 4
  br label %187

129:                                              ; preds = %121
  %130 = load i8*, i8** %6, align 8
  %131 = call i32 @strcmp(i8* %130, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i64 0, i64 0))
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %137, label %133

133:                                              ; preds = %129
  %134 = load i32, i32* %3, align 4
  %135 = load i8**, i8*** %4, align 8
  %136 = call i32 @loadcfg(i32 %134, i8** %135)
  store i32 %136, i32* %5, align 4
  br label %186

137:                                              ; preds = %129
  %138 = load i8*, i8** %6, align 8
  %139 = call i32 @strcmp(i8* %138, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i64 0, i64 0))
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %145, label %141

141:                                              ; preds = %137
  %142 = load i32, i32* %3, align 4
  %143 = load i8**, i8*** %4, align 8
  %144 = call i32 @loadboot(i32 %142, i8** %143)
  store i32 %144, i32* %5, align 4
  br label %185

145:                                              ; preds = %137
  %146 = load i8*, i8** %6, align 8
  %147 = call i32 @strcmp(i8* %146, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i64 0, i64 0))
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %153, label %149

149:                                              ; preds = %145
  %150 = load i32, i32* %3, align 4
  %151 = load i8**, i8*** %4, align 8
  %152 = call i32 @loadbootcfg(i32 %150, i8** %151)
  store i32 %152, i32* %5, align 4
  br label %184

153:                                              ; preds = %145
  %154 = load i8*, i8** %6, align 8
  %155 = call i32 @strcmp(i8* %154, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i64 0, i64 0))
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %161, label %157

157:                                              ; preds = %153
  %158 = load i32, i32* %3, align 4
  %159 = load i8**, i8*** %4, align 8
  %160 = call i32 @dumpstate(i32 %158, i8** %159)
  store i32 %160, i32* %5, align 4
  br label %183

161:                                              ; preds = %153
  %162 = load i8*, i8** %6, align 8
  %163 = call i32 @strcmp(i8* %162, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i64 0, i64 0))
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %169, label %165

165:                                              ; preds = %161
  %166 = load i32, i32* %3, align 4
  %167 = load i8**, i8*** %4, align 8
  %168 = call i32 @load_offload_policy(i32 %166, i8** %167)
  store i32 %168, i32* %5, align 4
  br label %182

169:                                              ; preds = %161
  %170 = load i8*, i8** %6, align 8
  %171 = call i32 @strcmp(i8* %170, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.20, i64 0, i64 0))
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %177, label %173

173:                                              ; preds = %169
  %174 = load i32, i32* %3, align 4
  %175 = load i8**, i8*** %4, align 8
  %176 = call i32 @filter_cmd(i32 %174, i8** %175, i32 1)
  store i32 %176, i32* %5, align 4
  br label %181

177:                                              ; preds = %169
  %178 = load i32, i32* @EINVAL, align 4
  store i32 %178, i32* %5, align 4
  %179 = load i8*, i8** %6, align 8
  %180 = call i32 @warnx(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.21, i64 0, i64 0), i8* %179)
  br label %181

181:                                              ; preds = %177, %173
  br label %182

182:                                              ; preds = %181, %165
  br label %183

183:                                              ; preds = %182, %157
  br label %184

184:                                              ; preds = %183, %149
  br label %185

185:                                              ; preds = %184, %141
  br label %186

186:                                              ; preds = %185, %133
  br label %187

187:                                              ; preds = %186, %125
  br label %188

188:                                              ; preds = %187, %117
  br label %189

189:                                              ; preds = %188, %109
  br label %190

190:                                              ; preds = %189, %101
  br label %191

191:                                              ; preds = %190, %93
  br label %192

192:                                              ; preds = %191, %85
  br label %193

193:                                              ; preds = %192, %77
  br label %194

194:                                              ; preds = %193, %69
  br label %195

195:                                              ; preds = %194, %61
  br label %196

196:                                              ; preds = %195, %53
  br label %197

197:                                              ; preds = %196, %45
  br label %198

198:                                              ; preds = %197, %37
  br label %199

199:                                              ; preds = %198, %29
  br label %200

200:                                              ; preds = %199, %21
  %201 = load i32, i32* %5, align 4
  ret i32 %201
}

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @register_io(i32, i8**, i32) #1

declare dso_local i32 @dump_regs(i32, i8**) #1

declare dso_local i32 @filter_cmd(i32, i8**, i32) #1

declare dso_local i32 @get_sge_context(i32, i8**) #1

declare dso_local i32 @loadfw(i32, i8**) #1

declare dso_local i32 @memdump(i32, i8**) #1

declare dso_local i32 @read_tcb(i32, i8**) #1

declare dso_local i32 @read_i2c(i32, i8**) #1

declare dso_local i32 @clearstats(i32, i8**) #1

declare dso_local i32 @tracer_cmd(i32, i8**) #1

declare dso_local i32 @modinfo(i32, i8**) #1

declare dso_local i32 @sched_class(i32, i8**) #1

declare dso_local i32 @sched_queue(i32, i8**) #1

declare dso_local i32 @loadcfg(i32, i8**) #1

declare dso_local i32 @loadboot(i32, i8**) #1

declare dso_local i32 @loadbootcfg(i32, i8**) #1

declare dso_local i32 @dumpstate(i32, i8**) #1

declare dso_local i32 @load_offload_policy(i32, i8**) #1

declare dso_local i32 @warnx(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
