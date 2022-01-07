; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/dconschat/extr_dconschat.c_dconschat_read_dcons.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/dconschat/extr_dconschat.c_dconschat_read_dcons.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dcons_state = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.dcons_ch }
%struct.dcons_ch = type { i32, i32, i32, i64 }

@RETRY = common dso_local global i32 0, align 4
@DCONS_GEN_SHIFT = common dso_local global i32 0, align 4
@DCONS_POS_MASK = common dso_local global i32 0, align 4
@DCONS_GEN_MASK = common dso_local global i32 0, align 4
@verbose = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"[genskip %d]\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"[lost %d]\00", align 1
@MAX_XFER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"[%d]\00", align 1
@stdout = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ETIMEDOUT = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [19 x i8] c"read buffer failed\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"dlen(%d) != rlen(%d)\0A\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"read_dcons: gen=%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dcons_state*, i32, i8*, i32)* @dconschat_read_dcons to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dconschat_read_dcons(%struct.dcons_state* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.dcons_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.dcons_ch*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.dcons_state* %0, %struct.dcons_state** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %19 = load i32, i32* @RETRY, align 4
  store i32 %19, i32* %18, align 4
  %20 = load %struct.dcons_state*, %struct.dcons_state** %6, align 8
  %21 = getelementptr inbounds %struct.dcons_state, %struct.dcons_state* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = load i32, i32* %7, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  store %struct.dcons_ch* %26, %struct.dcons_ch** %10, align 8
  %27 = load %struct.dcons_state*, %struct.dcons_state** %6, align 8
  %28 = getelementptr inbounds %struct.dcons_state, %struct.dcons_state* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = load i32, i32* %7, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* %11, align 4
  %36 = load i32, i32* @DCONS_GEN_SHIFT, align 4
  %37 = ashr i32 %35, %36
  store i32 %37, i32* %13, align 4
  %38 = load i32, i32* %11, align 4
  %39 = load i32, i32* @DCONS_POS_MASK, align 4
  %40 = and i32 %38, %39
  store i32 %40, i32* %12, align 4
  %41 = load i32, i32* %13, align 4
  %42 = load %struct.dcons_ch*, %struct.dcons_ch** %10, align 8
  %43 = getelementptr inbounds %struct.dcons_ch, %struct.dcons_ch* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp eq i32 %41, %44
  br i1 %45, label %46, label %53

46:                                               ; preds = %4
  %47 = load i32, i32* %12, align 4
  %48 = load %struct.dcons_ch*, %struct.dcons_ch** %10, align 8
  %49 = getelementptr inbounds %struct.dcons_ch, %struct.dcons_ch* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = icmp eq i32 %47, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %46
  store i32 -1, i32* %5, align 4
  br label %249

53:                                               ; preds = %46, %4
  %54 = load %struct.dcons_ch*, %struct.dcons_ch** %10, align 8
  %55 = getelementptr inbounds %struct.dcons_ch, %struct.dcons_ch* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @DCONS_NEXT_GEN(i32 %56)
  store i32 %57, i32* %14, align 4
  %58 = load i32, i32* %13, align 4
  %59 = load %struct.dcons_ch*, %struct.dcons_ch** %10, align 8
  %60 = getelementptr inbounds %struct.dcons_ch, %struct.dcons_ch* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp eq i32 %58, %61
  br i1 %62, label %63, label %82

63:                                               ; preds = %53
  %64 = load i32, i32* %12, align 4
  %65 = load %struct.dcons_ch*, %struct.dcons_ch** %10, align 8
  %66 = getelementptr inbounds %struct.dcons_ch, %struct.dcons_ch* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = icmp sgt i32 %64, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %63
  br label %143

70:                                               ; preds = %63
  %71 = load %struct.dcons_ch*, %struct.dcons_ch** %10, align 8
  %72 = getelementptr inbounds %struct.dcons_ch, %struct.dcons_ch* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @DCONS_GEN_MASK, align 4
  %75 = mul nsw i32 %73, %74
  %76 = load %struct.dcons_ch*, %struct.dcons_ch** %10, align 8
  %77 = getelementptr inbounds %struct.dcons_ch, %struct.dcons_ch* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = sub nsw i32 %75, %78
  store i32 %79, i32* %17, align 4
  %80 = load %struct.dcons_ch*, %struct.dcons_ch** %10, align 8
  %81 = getelementptr inbounds %struct.dcons_ch, %struct.dcons_ch* %80, i32 0, i32 1
  store i32 0, i32* %81, align 4
  br label %136

82:                                               ; preds = %53
  %83 = load i32, i32* %13, align 4
  %84 = load i32, i32* %14, align 4
  %85 = icmp eq i32 %83, %84
  br i1 %85, label %86, label %102

86:                                               ; preds = %82
  %87 = load i32, i32* %12, align 4
  %88 = load %struct.dcons_ch*, %struct.dcons_ch** %10, align 8
  %89 = getelementptr inbounds %struct.dcons_ch, %struct.dcons_ch* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = icmp sle i32 %87, %90
  br i1 %91, label %92, label %93

92:                                               ; preds = %86
  br label %143

93:                                               ; preds = %86
  %94 = load i32, i32* %12, align 4
  %95 = load %struct.dcons_ch*, %struct.dcons_ch** %10, align 8
  %96 = getelementptr inbounds %struct.dcons_ch, %struct.dcons_ch* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = sub nsw i32 %94, %97
  store i32 %98, i32* %17, align 4
  %99 = load i32, i32* %12, align 4
  %100 = load %struct.dcons_ch*, %struct.dcons_ch** %10, align 8
  %101 = getelementptr inbounds %struct.dcons_ch, %struct.dcons_ch* %100, i32 0, i32 1
  store i32 %99, i32* %101, align 4
  br label %135

102:                                              ; preds = %82
  %103 = load i32, i32* %13, align 4
  %104 = load %struct.dcons_ch*, %struct.dcons_ch** %10, align 8
  %105 = getelementptr inbounds %struct.dcons_ch, %struct.dcons_ch* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = sub nsw i32 %103, %106
  store i32 %107, i32* %17, align 4
  %108 = load i32, i32* %17, align 4
  %109 = icmp slt i32 %108, 0
  br i1 %109, label %110, label %114

110:                                              ; preds = %102
  %111 = load i32, i32* @DCONS_GEN_MASK, align 4
  %112 = load i32, i32* %17, align 4
  %113 = add nsw i32 %112, %111
  store i32 %113, i32* %17, align 4
  br label %114

114:                                              ; preds = %110, %102
  %115 = load i32, i32* @verbose, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %114
  %118 = load i32, i32* %17, align 4
  %119 = call i32 @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %118)
  br label %120

120:                                              ; preds = %117, %114
  %121 = load i32, i32* %17, align 4
  %122 = load %struct.dcons_ch*, %struct.dcons_ch** %10, align 8
  %123 = getelementptr inbounds %struct.dcons_ch, %struct.dcons_ch* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 8
  %125 = mul nsw i32 %121, %124
  %126 = load %struct.dcons_ch*, %struct.dcons_ch** %10, align 8
  %127 = getelementptr inbounds %struct.dcons_ch, %struct.dcons_ch* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = sub nsw i32 %125, %128
  store i32 %129, i32* %17, align 4
  %130 = load %struct.dcons_ch*, %struct.dcons_ch** %10, align 8
  %131 = getelementptr inbounds %struct.dcons_ch, %struct.dcons_ch* %130, i32 0, i32 1
  store i32 0, i32* %131, align 4
  %132 = load i32, i32* %13, align 4
  %133 = load %struct.dcons_ch*, %struct.dcons_ch** %10, align 8
  %134 = getelementptr inbounds %struct.dcons_ch, %struct.dcons_ch* %133, i32 0, i32 0
  store i32 %132, i32* %134, align 8
  br label %135

135:                                              ; preds = %120, %93
  br label %136

136:                                              ; preds = %135, %70
  %137 = load i32, i32* @verbose, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %142

139:                                              ; preds = %136
  %140 = load i32, i32* %17, align 4
  %141 = call i32 @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %140)
  br label %142

142:                                              ; preds = %139, %136
  br label %143

143:                                              ; preds = %142, %92, %69
  %144 = load i32, i32* %13, align 4
  %145 = load %struct.dcons_ch*, %struct.dcons_ch** %10, align 8
  %146 = getelementptr inbounds %struct.dcons_ch, %struct.dcons_ch* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = icmp eq i32 %144, %147
  br i1 %148, label %149, label %155

149:                                              ; preds = %143
  %150 = load i32, i32* %12, align 4
  %151 = load %struct.dcons_ch*, %struct.dcons_ch** %10, align 8
  %152 = getelementptr inbounds %struct.dcons_ch, %struct.dcons_ch* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = sub nsw i32 %150, %153
  store i32 %154, i32* %15, align 4
  br label %163

155:                                              ; preds = %143
  %156 = load %struct.dcons_ch*, %struct.dcons_ch** %10, align 8
  %157 = getelementptr inbounds %struct.dcons_ch, %struct.dcons_ch* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 8
  %159 = load %struct.dcons_ch*, %struct.dcons_ch** %10, align 8
  %160 = getelementptr inbounds %struct.dcons_ch, %struct.dcons_ch* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = sub nsw i32 %158, %161
  store i32 %162, i32* %15, align 4
  br label %163

163:                                              ; preds = %155, %149
  %164 = load i32, i32* %15, align 4
  %165 = load i32, i32* @MAX_XFER, align 4
  %166 = icmp sgt i32 %164, %165
  br i1 %166, label %167, label %169

167:                                              ; preds = %163
  %168 = load i32, i32* @MAX_XFER, align 4
  store i32 %168, i32* %15, align 4
  br label %169

169:                                              ; preds = %167, %163
  %170 = load i32, i32* %15, align 4
  %171 = load i32, i32* %9, align 4
  %172 = icmp sgt i32 %170, %171
  br i1 %172, label %173, label %175

173:                                              ; preds = %169
  %174 = load i32, i32* %9, align 4
  store i32 %174, i32* %15, align 4
  br label %175

175:                                              ; preds = %173, %169
  %176 = load i32, i32* @verbose, align 4
  %177 = icmp eq i32 %176, 1
  br i1 %177, label %178, label %181

178:                                              ; preds = %175
  %179 = load i32, i32* %15, align 4
  %180 = call i32 @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %179)
  br label %181

181:                                              ; preds = %178, %175
  %182 = load i32, i32* @stdout, align 4
  %183 = call i32 @fflush(i32 %182)
  br label %184

184:                                              ; preds = %207, %181
  %185 = load %struct.dcons_state*, %struct.dcons_state** %6, align 8
  %186 = load i8*, i8** %8, align 8
  %187 = load i32, i32* %15, align 4
  %188 = load %struct.dcons_ch*, %struct.dcons_ch** %10, align 8
  %189 = getelementptr inbounds %struct.dcons_ch, %struct.dcons_ch* %188, i32 0, i32 3
  %190 = load i64, i64* %189, align 8
  %191 = load %struct.dcons_ch*, %struct.dcons_ch** %10, align 8
  %192 = getelementptr inbounds %struct.dcons_ch, %struct.dcons_ch* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 4
  %194 = sext i32 %193 to i64
  %195 = add nsw i64 %190, %194
  %196 = call i32 @dread(%struct.dcons_state* %185, i8* %186, i32 %187, i64 %195)
  store i32 %196, i32* %16, align 4
  %197 = load i32, i32* %16, align 4
  %198 = icmp slt i32 %197, 0
  br i1 %198, label %199, label %212

199:                                              ; preds = %184
  %200 = load i64, i64* @errno, align 8
  %201 = load i64, i64* @ETIMEDOUT, align 8
  %202 = icmp eq i64 %200, %201
  br i1 %202, label %203, label %209

203:                                              ; preds = %199
  %204 = load i32, i32* %18, align 4
  %205 = add nsw i32 %204, -1
  store i32 %205, i32* %18, align 4
  %206 = icmp sgt i32 %204, 0
  br i1 %206, label %207, label %208

207:                                              ; preds = %203
  br label %184

208:                                              ; preds = %203
  br label %209

209:                                              ; preds = %208, %199
  %210 = load %struct.dcons_state*, %struct.dcons_state** %6, align 8
  %211 = call i32 @dconschat_ready(%struct.dcons_state* %210, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %249

212:                                              ; preds = %184
  %213 = load i32, i32* %16, align 4
  %214 = load i32, i32* %15, align 4
  %215 = icmp ne i32 %213, %214
  br i1 %215, label %216, label %220

216:                                              ; preds = %212
  %217 = load i32, i32* %16, align 4
  %218 = load i32, i32* %15, align 4
  %219 = call i32 @warnx(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i32 %217, i32 %218)
  br label %220

220:                                              ; preds = %216, %212
  %221 = load i32, i32* %16, align 4
  %222 = load %struct.dcons_ch*, %struct.dcons_ch** %10, align 8
  %223 = getelementptr inbounds %struct.dcons_ch, %struct.dcons_ch* %222, i32 0, i32 1
  %224 = load i32, i32* %223, align 4
  %225 = add nsw i32 %224, %221
  store i32 %225, i32* %223, align 4
  %226 = load %struct.dcons_ch*, %struct.dcons_ch** %10, align 8
  %227 = getelementptr inbounds %struct.dcons_ch, %struct.dcons_ch* %226, i32 0, i32 1
  %228 = load i32, i32* %227, align 4
  %229 = load %struct.dcons_ch*, %struct.dcons_ch** %10, align 8
  %230 = getelementptr inbounds %struct.dcons_ch, %struct.dcons_ch* %229, i32 0, i32 2
  %231 = load i32, i32* %230, align 8
  %232 = icmp sge i32 %228, %231
  br i1 %232, label %233, label %247

233:                                              ; preds = %220
  %234 = load i32, i32* %14, align 4
  %235 = load %struct.dcons_ch*, %struct.dcons_ch** %10, align 8
  %236 = getelementptr inbounds %struct.dcons_ch, %struct.dcons_ch* %235, i32 0, i32 0
  store i32 %234, i32* %236, align 8
  %237 = load %struct.dcons_ch*, %struct.dcons_ch** %10, align 8
  %238 = getelementptr inbounds %struct.dcons_ch, %struct.dcons_ch* %237, i32 0, i32 1
  store i32 0, i32* %238, align 4
  %239 = load i32, i32* @verbose, align 4
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %246

241:                                              ; preds = %233
  %242 = load %struct.dcons_ch*, %struct.dcons_ch** %10, align 8
  %243 = getelementptr inbounds %struct.dcons_ch, %struct.dcons_ch* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 8
  %245 = call i32 @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i32 %244)
  br label %246

246:                                              ; preds = %241, %233
  br label %247

247:                                              ; preds = %246, %220
  %248 = load i32, i32* %16, align 4
  store i32 %248, i32* %5, align 4
  br label %249

249:                                              ; preds = %247, %209, %52
  %250 = load i32, i32* %5, align 4
  ret i32 %250
}

declare dso_local i32 @DCONS_NEXT_GEN(i32) #1

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i32 @dread(%struct.dcons_state*, i8*, i32, i64) #1

declare dso_local i32 @dconschat_ready(%struct.dcons_state*, i32, i8*) #1

declare dso_local i32 @warnx(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
