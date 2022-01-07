; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/jail/extr_command.c_next_command.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/jail/extr_command.c_next_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64 }
%struct.cfjail = type { i32, i32*, %struct.TYPE_9__*, %struct.TYPE_10__** }
%struct.TYPE_10__ = type { i32, i32 }

@paralimit = common dso_local global i64 0, align 8
@JF_FROM_RUNQ = common dso_local global i32 0, align 4
@runnable = common dso_local global i32 0, align 4
@JF_STOP = common dso_local global i32 0, align 4
@JF_FAILED = common dso_local global i32 0, align 4
@dummystring = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@PF_REV = common dso_local global i32 0, align 4
@cfstrings = common dso_local global i32 0, align 4
@tq = common dso_local global i32 0, align 4
@IP_EXEC_PRESTART = common dso_local global i32 0, align 4
@IP_EXEC_CREATED = common dso_local global i32 0, align 4
@IP_EXEC_START = common dso_local global i32 0, align 4
@IP_COMMAND = common dso_local global i32 0, align 4
@IP_EXEC_POSTSTART = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @next_command(%struct.cfjail* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cfjail*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.cfjail* %0, %struct.cfjail** %3, align 8
  %7 = load i64, i64* @paralimit, align 8
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %23

9:                                                ; preds = %1
  %10 = load %struct.cfjail*, %struct.cfjail** %3, align 8
  %11 = getelementptr inbounds %struct.cfjail, %struct.cfjail* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @JF_FROM_RUNQ, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %9
  %17 = load %struct.cfjail*, %struct.cfjail** %3, align 8
  %18 = call i32 @requeue_head(%struct.cfjail* %17, i32* @runnable)
  br label %22

19:                                               ; preds = %9
  %20 = load %struct.cfjail*, %struct.cfjail** %3, align 8
  %21 = call i32 @requeue(%struct.cfjail* %20, i32* @runnable)
  br label %22

22:                                               ; preds = %19, %16
  store i32 1, i32* %2, align 4
  br label %253

23:                                               ; preds = %1
  %24 = load i32, i32* @JF_FROM_RUNQ, align 4
  %25 = xor i32 %24, -1
  %26 = load %struct.cfjail*, %struct.cfjail** %3, align 8
  %27 = getelementptr inbounds %struct.cfjail, %struct.cfjail* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = and i32 %28, %25
  store i32 %29, i32* %27, align 8
  %30 = load %struct.cfjail*, %struct.cfjail** %3, align 8
  %31 = getelementptr inbounds %struct.cfjail, %struct.cfjail* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @JF_STOP, align 4
  %34 = load i32, i32* @JF_FAILED, align 4
  %35 = or i32 %33, %34
  %36 = and i32 %32, %35
  %37 = load i32, i32* @JF_FAILED, align 4
  %38 = icmp eq i32 %36, %37
  %39 = zext i1 %38 to i32
  store i32 %39, i32* %5, align 4
  %40 = load %struct.cfjail*, %struct.cfjail** %3, align 8
  %41 = getelementptr inbounds %struct.cfjail, %struct.cfjail* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @JF_STOP, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  %46 = zext i1 %45 to i32
  store i32 %46, i32* %6, align 4
  %47 = load %struct.cfjail*, %struct.cfjail** %3, align 8
  %48 = getelementptr inbounds %struct.cfjail, %struct.cfjail* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %4, align 4
  br label %51

51:                                               ; preds = %252, %244, %119, %103, %91, %79, %23
  %52 = load %struct.cfjail*, %struct.cfjail** %3, align 8
  %53 = getelementptr inbounds %struct.cfjail, %struct.cfjail* %52, i32 0, i32 2
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %53, align 8
  %55 = icmp eq %struct.TYPE_9__* %54, null
  br i1 %55, label %56, label %165

56:                                               ; preds = %51
  %57 = load i32, i32* %5, align 4
  %58 = icmp ne i32 %57, 0
  %59 = zext i1 %58 to i64
  %60 = select i1 %58, i32 -1, i32 1
  %61 = load %struct.cfjail*, %struct.cfjail** %3, align 8
  %62 = getelementptr inbounds %struct.cfjail, %struct.cfjail* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = sext i32 %60 to i64
  %65 = getelementptr inbounds i32, i32* %63, i64 %64
  store i32* %65, i32** %62, align 8
  %66 = load %struct.cfjail*, %struct.cfjail** %3, align 8
  %67 = getelementptr inbounds %struct.cfjail, %struct.cfjail* %66, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = load i32, i32* %68, align 4
  store i32 %69, i32* %4, align 4
  switch i32 %69, label %110 [
    i32 129, label %70
    i32 133, label %71
    i32 132, label %83
    i32 131, label %95
    i32 128, label %107
    i32 130, label %107
  ]

70:                                               ; preds = %56
  store i32 0, i32* %2, align 4
  br label %253

71:                                               ; preds = %56
  %72 = load %struct.cfjail*, %struct.cfjail** %3, align 8
  %73 = getelementptr inbounds %struct.cfjail, %struct.cfjail* %72, i32 0, i32 3
  %74 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %74, i64 133
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %75, align 8
  %77 = call i32 @bool_param(%struct.TYPE_10__* %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %80, label %79

79:                                               ; preds = %71
  br label %51

80:                                               ; preds = %71
  %81 = load %struct.cfjail*, %struct.cfjail** %3, align 8
  %82 = getelementptr inbounds %struct.cfjail, %struct.cfjail* %81, i32 0, i32 2
  store %struct.TYPE_9__* @dummystring, %struct.TYPE_9__** %82, align 8
  br label %164

83:                                               ; preds = %56
  %84 = load %struct.cfjail*, %struct.cfjail** %3, align 8
  %85 = getelementptr inbounds %struct.cfjail, %struct.cfjail* %84, i32 0, i32 3
  %86 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %86, i64 132
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %87, align 8
  %89 = call i32 @bool_param(%struct.TYPE_10__* %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %92, label %91

91:                                               ; preds = %83
  br label %51

92:                                               ; preds = %83
  %93 = load %struct.cfjail*, %struct.cfjail** %3, align 8
  %94 = getelementptr inbounds %struct.cfjail, %struct.cfjail* %93, i32 0, i32 2
  store %struct.TYPE_9__* @dummystring, %struct.TYPE_9__** %94, align 8
  br label %164

95:                                               ; preds = %56
  %96 = load %struct.cfjail*, %struct.cfjail** %3, align 8
  %97 = getelementptr inbounds %struct.cfjail, %struct.cfjail* %96, i32 0, i32 3
  %98 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %98, i64 131
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %99, align 8
  %101 = call i32 @bool_param(%struct.TYPE_10__* %100)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %104, label %103

103:                                              ; preds = %95
  br label %51

104:                                              ; preds = %95
  %105 = load %struct.cfjail*, %struct.cfjail** %3, align 8
  %106 = getelementptr inbounds %struct.cfjail, %struct.cfjail* %105, i32 0, i32 2
  store %struct.TYPE_9__* @dummystring, %struct.TYPE_9__** %106, align 8
  br label %164

107:                                              ; preds = %56, %56
  %108 = load %struct.cfjail*, %struct.cfjail** %3, align 8
  %109 = getelementptr inbounds %struct.cfjail, %struct.cfjail* %108, i32 0, i32 2
  store %struct.TYPE_9__* @dummystring, %struct.TYPE_9__** %109, align 8
  br label %164

110:                                              ; preds = %56
  %111 = load %struct.cfjail*, %struct.cfjail** %3, align 8
  %112 = getelementptr inbounds %struct.cfjail, %struct.cfjail* %111, i32 0, i32 3
  %113 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %112, align 8
  %114 = load i32, i32* %4, align 4
  %115 = zext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %113, i64 %115
  %117 = load %struct.TYPE_10__*, %struct.TYPE_10__** %116, align 8
  %118 = icmp eq %struct.TYPE_10__* %117, null
  br i1 %118, label %119, label %120

119:                                              ; preds = %110
  br label %51

120:                                              ; preds = %110
  %121 = load i32, i32* %5, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %139, label %123

123:                                              ; preds = %120
  %124 = load i32, i32* %6, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %150

126:                                              ; preds = %123
  %127 = load %struct.cfjail*, %struct.cfjail** %3, align 8
  %128 = getelementptr inbounds %struct.cfjail, %struct.cfjail* %127, i32 0, i32 3
  %129 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %128, align 8
  %130 = load i32, i32* %4, align 4
  %131 = zext i32 %130 to i64
  %132 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %129, i64 %131
  %133 = load %struct.TYPE_10__*, %struct.TYPE_10__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* @PF_REV, align 4
  %137 = and i32 %135, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %150

139:                                              ; preds = %126, %120
  %140 = load %struct.cfjail*, %struct.cfjail** %3, align 8
  %141 = getelementptr inbounds %struct.cfjail, %struct.cfjail* %140, i32 0, i32 3
  %142 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %141, align 8
  %143 = load i32, i32* %4, align 4
  %144 = zext i32 %143 to i64
  %145 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %142, i64 %144
  %146 = load %struct.TYPE_10__*, %struct.TYPE_10__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %146, i32 0, i32 1
  %148 = load i32, i32* @cfstrings, align 4
  %149 = call %struct.TYPE_9__* @TAILQ_LAST(i32* %147, i32 %148)
  br label %160

150:                                              ; preds = %126, %123
  %151 = load %struct.cfjail*, %struct.cfjail** %3, align 8
  %152 = getelementptr inbounds %struct.cfjail, %struct.cfjail* %151, i32 0, i32 3
  %153 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %152, align 8
  %154 = load i32, i32* %4, align 4
  %155 = zext i32 %154 to i64
  %156 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %153, i64 %155
  %157 = load %struct.TYPE_10__*, %struct.TYPE_10__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %157, i32 0, i32 1
  %159 = call %struct.TYPE_9__* @TAILQ_FIRST(i32* %158)
  br label %160

160:                                              ; preds = %150, %139
  %161 = phi %struct.TYPE_9__* [ %149, %139 ], [ %159, %150 ]
  %162 = load %struct.cfjail*, %struct.cfjail** %3, align 8
  %163 = getelementptr inbounds %struct.cfjail, %struct.cfjail* %162, i32 0, i32 2
  store %struct.TYPE_9__* %161, %struct.TYPE_9__** %163, align 8
  br label %164

164:                                              ; preds = %160, %107, %104, %92, %80
  br label %209

165:                                              ; preds = %51
  %166 = load %struct.cfjail*, %struct.cfjail** %3, align 8
  %167 = getelementptr inbounds %struct.cfjail, %struct.cfjail* %166, i32 0, i32 2
  %168 = load %struct.TYPE_9__*, %struct.TYPE_9__** %167, align 8
  %169 = icmp eq %struct.TYPE_9__* %168, @dummystring
  br i1 %169, label %170, label %171

170:                                              ; preds = %165
  br label %205

171:                                              ; preds = %165
  %172 = load i32, i32* %5, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %190, label %174

174:                                              ; preds = %171
  %175 = load i32, i32* %6, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %197

177:                                              ; preds = %174
  %178 = load %struct.cfjail*, %struct.cfjail** %3, align 8
  %179 = getelementptr inbounds %struct.cfjail, %struct.cfjail* %178, i32 0, i32 3
  %180 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %179, align 8
  %181 = load i32, i32* %4, align 4
  %182 = zext i32 %181 to i64
  %183 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %180, i64 %182
  %184 = load %struct.TYPE_10__*, %struct.TYPE_10__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = load i32, i32* @PF_REV, align 4
  %188 = and i32 %186, %187
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %197

190:                                              ; preds = %177, %171
  %191 = load %struct.cfjail*, %struct.cfjail** %3, align 8
  %192 = getelementptr inbounds %struct.cfjail, %struct.cfjail* %191, i32 0, i32 2
  %193 = load %struct.TYPE_9__*, %struct.TYPE_9__** %192, align 8
  %194 = load i32, i32* @cfstrings, align 4
  %195 = load i32, i32* @tq, align 4
  %196 = call %struct.TYPE_9__* @TAILQ_PREV(%struct.TYPE_9__* %193, i32 %194, i32 %195)
  br label %203

197:                                              ; preds = %177, %174
  %198 = load %struct.cfjail*, %struct.cfjail** %3, align 8
  %199 = getelementptr inbounds %struct.cfjail, %struct.cfjail* %198, i32 0, i32 2
  %200 = load %struct.TYPE_9__*, %struct.TYPE_9__** %199, align 8
  %201 = load i32, i32* @tq, align 4
  %202 = call %struct.TYPE_9__* @TAILQ_NEXT(%struct.TYPE_9__* %200, i32 %201)
  br label %203

203:                                              ; preds = %197, %190
  %204 = phi %struct.TYPE_9__* [ %196, %190 ], [ %202, %197 ]
  br label %205

205:                                              ; preds = %203, %170
  %206 = phi %struct.TYPE_9__* [ null, %170 ], [ %204, %203 ]
  %207 = load %struct.cfjail*, %struct.cfjail** %3, align 8
  %208 = getelementptr inbounds %struct.cfjail, %struct.cfjail* %207, i32 0, i32 2
  store %struct.TYPE_9__* %206, %struct.TYPE_9__** %208, align 8
  br label %209

209:                                              ; preds = %205, %164
  %210 = load %struct.cfjail*, %struct.cfjail** %3, align 8
  %211 = getelementptr inbounds %struct.cfjail, %struct.cfjail* %210, i32 0, i32 2
  %212 = load %struct.TYPE_9__*, %struct.TYPE_9__** %211, align 8
  %213 = icmp eq %struct.TYPE_9__* %212, null
  br i1 %213, label %244, label %214

214:                                              ; preds = %209
  %215 = load %struct.cfjail*, %struct.cfjail** %3, align 8
  %216 = getelementptr inbounds %struct.cfjail, %struct.cfjail* %215, i32 0, i32 2
  %217 = load %struct.TYPE_9__*, %struct.TYPE_9__** %216, align 8
  %218 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %217, i32 0, i32 0
  %219 = load i64, i64* %218, align 8
  %220 = icmp eq i64 %219, 0
  br i1 %220, label %244, label %221

221:                                              ; preds = %214
  %222 = load i32, i32* %5, align 4
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %245

224:                                              ; preds = %221
  %225 = load i32, i32* %4, align 4
  %226 = load i32, i32* @IP_EXEC_PRESTART, align 4
  %227 = icmp eq i32 %225, %226
  br i1 %227, label %244, label %228

228:                                              ; preds = %224
  %229 = load i32, i32* %4, align 4
  %230 = load i32, i32* @IP_EXEC_CREATED, align 4
  %231 = icmp eq i32 %229, %230
  br i1 %231, label %244, label %232

232:                                              ; preds = %228
  %233 = load i32, i32* %4, align 4
  %234 = load i32, i32* @IP_EXEC_START, align 4
  %235 = icmp eq i32 %233, %234
  br i1 %235, label %244, label %236

236:                                              ; preds = %232
  %237 = load i32, i32* %4, align 4
  %238 = load i32, i32* @IP_COMMAND, align 4
  %239 = icmp eq i32 %237, %238
  br i1 %239, label %244, label %240

240:                                              ; preds = %236
  %241 = load i32, i32* %4, align 4
  %242 = load i32, i32* @IP_EXEC_POSTSTART, align 4
  %243 = icmp eq i32 %241, %242
  br i1 %243, label %244, label %245

244:                                              ; preds = %240, %236, %232, %228, %224, %214, %209
  br label %51

245:                                              ; preds = %240, %221
  %246 = load %struct.cfjail*, %struct.cfjail** %3, align 8
  %247 = call i32 @run_command(%struct.cfjail* %246)
  switch i32 %247, label %252 [
    i32 -1, label %248
    i32 1, label %251
  ]

248:                                              ; preds = %245
  %249 = load %struct.cfjail*, %struct.cfjail** %3, align 8
  %250 = call i32 @failed(%struct.cfjail* %249)
  br label %251

251:                                              ; preds = %245, %248
  store i32 1, i32* %2, align 4
  br label %253

252:                                              ; preds = %245
  br label %51

253:                                              ; preds = %251, %70, %22
  %254 = load i32, i32* %2, align 4
  ret i32 %254
}

declare dso_local i32 @requeue_head(%struct.cfjail*, i32*) #1

declare dso_local i32 @requeue(%struct.cfjail*, i32*) #1

declare dso_local i32 @bool_param(%struct.TYPE_10__*) #1

declare dso_local %struct.TYPE_9__* @TAILQ_LAST(i32*, i32) #1

declare dso_local %struct.TYPE_9__* @TAILQ_FIRST(i32*) #1

declare dso_local %struct.TYPE_9__* @TAILQ_PREV(%struct.TYPE_9__*, i32, i32) #1

declare dso_local %struct.TYPE_9__* @TAILQ_NEXT(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @run_command(%struct.cfjail*) #1

declare dso_local i32 @failed(%struct.cfjail*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
