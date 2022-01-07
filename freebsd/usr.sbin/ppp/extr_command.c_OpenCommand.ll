; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_command.c_OpenCommand.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_command.c_OpenCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmdargs = type { i32, i32, %struct.TYPE_14__*, %struct.datalink*, i32* }
%struct.TYPE_14__ = type { %struct.TYPE_23__ }
%struct.TYPE_23__ = type { %struct.TYPE_22__ }
%struct.TYPE_22__ = type { %struct.fsm }
%struct.fsm = type { i64, i64, %struct.TYPE_21__* }
%struct.TYPE_21__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i64 }
%struct.datalink = type { i32*, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.fsm }
%struct.TYPE_13__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { %struct.fsm }

@PHYS_ALL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"lcp\00", align 1
@ST_OPENED = common dso_local global i64 0, align 8
@LogWARN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"open lcp: You must specify a link\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"ccp\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"open: LCP must be open before opening CCP\0A\00", align 1
@ST_STOPPED = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [5 x i8] c"ipcp\00", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"open ipcp: You need not specify a link\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cmdargs*)* @OpenCommand to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @OpenCommand(%struct.cmdargs* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cmdargs*, align 8
  %4 = alloca %struct.datalink*, align 8
  %5 = alloca %struct.fsm*, align 8
  store %struct.cmdargs* %0, %struct.cmdargs** %3, align 8
  %6 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %7 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %10 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = icmp eq i32 %8, %11
  br i1 %12, label %13, label %32

13:                                               ; preds = %1
  %14 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %15 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %14, i32 0, i32 2
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %17 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %18 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %17, i32 0, i32 3
  %19 = load %struct.datalink*, %struct.datalink** %18, align 8
  %20 = icmp ne %struct.datalink* %19, null
  br i1 %20, label %21, label %27

21:                                               ; preds = %13
  %22 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %23 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %22, i32 0, i32 3
  %24 = load %struct.datalink*, %struct.datalink** %23, align 8
  %25 = getelementptr inbounds %struct.datalink, %struct.datalink* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  br label %28

27:                                               ; preds = %13
  br label %28

28:                                               ; preds = %27, %21
  %29 = phi i32* [ %26, %21 ], [ null, %27 ]
  %30 = load i32, i32* @PHYS_ALL, align 4
  %31 = call i32 @bundle_Open(%struct.TYPE_14__* %16, i32* %29, i32 %30, i32 1)
  br label %215

32:                                               ; preds = %1
  %33 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %34 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %37 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %38, 1
  %40 = icmp eq i32 %35, %39
  br i1 %40, label %41, label %213

41:                                               ; preds = %32
  %42 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %43 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %42, i32 0, i32 4
  %44 = load i32*, i32** %43, align 8
  %45 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %46 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %44, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @strcasecmp(i32 %50, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %104, label %53

53:                                               ; preds = %41
  %54 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %55 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %54, i32 0, i32 3
  %56 = load %struct.datalink*, %struct.datalink** %55, align 8
  %57 = icmp ne %struct.datalink* %56, null
  br i1 %57, label %58, label %62

58:                                               ; preds = %53
  %59 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %60 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %59, i32 0, i32 3
  %61 = load %struct.datalink*, %struct.datalink** %60, align 8
  br label %67

62:                                               ; preds = %53
  %63 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %64 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %63, i32 0, i32 2
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %64, align 8
  %66 = call %struct.datalink* @bundle2datalink(%struct.TYPE_14__* %65, i32* null)
  br label %67

67:                                               ; preds = %62, %58
  %68 = phi %struct.datalink* [ %61, %58 ], [ %66, %62 ]
  store %struct.datalink* %68, %struct.datalink** %4, align 8
  %69 = load %struct.datalink*, %struct.datalink** %4, align 8
  %70 = icmp ne %struct.datalink* %69, null
  br i1 %70, label %71, label %100

71:                                               ; preds = %67
  %72 = load %struct.datalink*, %struct.datalink** %4, align 8
  %73 = getelementptr inbounds %struct.datalink, %struct.datalink* %72, i32 0, i32 1
  %74 = load %struct.TYPE_17__*, %struct.TYPE_17__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.fsm, %struct.fsm* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @ST_OPENED, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %90

82:                                               ; preds = %71
  %83 = load %struct.datalink*, %struct.datalink** %4, align 8
  %84 = getelementptr inbounds %struct.datalink, %struct.datalink* %83, i32 0, i32 1
  %85 = load %struct.TYPE_17__*, %struct.TYPE_17__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %87, i32 0, i32 0
  %89 = call i32 @fsm_Reopen(%struct.fsm* %88)
  br label %99

90:                                               ; preds = %71
  %91 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %92 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %91, i32 0, i32 2
  %93 = load %struct.TYPE_14__*, %struct.TYPE_14__** %92, align 8
  %94 = load %struct.datalink*, %struct.datalink** %4, align 8
  %95 = getelementptr inbounds %struct.datalink, %struct.datalink* %94, i32 0, i32 0
  %96 = load i32*, i32** %95, align 8
  %97 = load i32, i32* @PHYS_ALL, align 4
  %98 = call i32 @bundle_Open(%struct.TYPE_14__* %93, i32* %96, i32 %97, i32 1)
  br label %99

99:                                               ; preds = %90, %82
  br label %103

100:                                              ; preds = %67
  %101 = load i32, i32* @LogWARN, align 4
  %102 = call i32 @log_Printf(i32 %101, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %103

103:                                              ; preds = %100, %99
  br label %212

104:                                              ; preds = %41
  %105 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %106 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %105, i32 0, i32 4
  %107 = load i32*, i32** %106, align 8
  %108 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %109 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %107, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @strcasecmp(i32 %113, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %163, label %116

116:                                              ; preds = %104
  %117 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %118 = call %struct.TYPE_13__* @command_ChooseLink(%struct.cmdargs* %117)
  %119 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %119, i32 0, i32 0
  store %struct.fsm* %120, %struct.fsm** %5, align 8
  %121 = load %struct.fsm*, %struct.fsm** %5, align 8
  %122 = getelementptr inbounds %struct.fsm, %struct.fsm* %121, i32 0, i32 2
  %123 = load %struct.TYPE_21__*, %struct.TYPE_21__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* @ST_OPENED, align 8
  %129 = icmp ne i64 %127, %128
  br i1 %129, label %130, label %133

130:                                              ; preds = %116
  %131 = load i32, i32* @LogWARN, align 4
  %132 = call i32 @log_Printf(i32 %131, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0))
  br label %162

133:                                              ; preds = %116
  %134 = load %struct.fsm*, %struct.fsm** %5, align 8
  %135 = getelementptr inbounds %struct.fsm, %struct.fsm* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = load i64, i64* @ST_OPENED, align 8
  %138 = icmp eq i64 %136, %137
  br i1 %138, label %139, label %142

139:                                              ; preds = %133
  %140 = load %struct.fsm*, %struct.fsm** %5, align 8
  %141 = call i32 @fsm_Reopen(%struct.fsm* %140)
  br label %161

142:                                              ; preds = %133
  %143 = load %struct.fsm*, %struct.fsm** %5, align 8
  %144 = getelementptr inbounds %struct.fsm, %struct.fsm* %143, i32 0, i32 1
  store i64 0, i64* %144, align 8
  %145 = load %struct.fsm*, %struct.fsm** %5, align 8
  %146 = getelementptr inbounds %struct.fsm, %struct.fsm* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = load i64, i64* @ST_STOPPED, align 8
  %149 = icmp eq i64 %147, %148
  br i1 %149, label %150, label %155

150:                                              ; preds = %142
  %151 = load %struct.fsm*, %struct.fsm** %5, align 8
  %152 = call i32 @fsm_Down(%struct.fsm* %151)
  %153 = load %struct.fsm*, %struct.fsm** %5, align 8
  %154 = call i32 @fsm_Up(%struct.fsm* %153)
  br label %160

155:                                              ; preds = %142
  %156 = load %struct.fsm*, %struct.fsm** %5, align 8
  %157 = call i32 @fsm_Up(%struct.fsm* %156)
  %158 = load %struct.fsm*, %struct.fsm** %5, align 8
  %159 = call i32 @fsm_Open(%struct.fsm* %158)
  br label %160

160:                                              ; preds = %155, %150
  br label %161

161:                                              ; preds = %160, %139
  br label %162

162:                                              ; preds = %161, %130
  br label %211

163:                                              ; preds = %104
  %164 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %165 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %164, i32 0, i32 4
  %166 = load i32*, i32** %165, align 8
  %167 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %168 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i32, i32* %166, i64 %170
  %172 = load i32, i32* %171, align 4
  %173 = call i32 @strcasecmp(i32 %172, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %209, label %175

175:                                              ; preds = %163
  %176 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %177 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %176, i32 0, i32 3
  %178 = load %struct.datalink*, %struct.datalink** %177, align 8
  %179 = icmp ne %struct.datalink* %178, null
  br i1 %179, label %180, label %183

180:                                              ; preds = %175
  %181 = load i32, i32* @LogWARN, align 4
  %182 = call i32 @log_Printf(i32 %181, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0))
  br label %183

183:                                              ; preds = %180, %175
  %184 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %185 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %184, i32 0, i32 2
  %186 = load %struct.TYPE_14__*, %struct.TYPE_14__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.fsm, %struct.fsm* %189, i32 0, i32 0
  %191 = load i64, i64* %190, align 8
  %192 = load i64, i64* @ST_OPENED, align 8
  %193 = icmp eq i64 %191, %192
  br i1 %193, label %194, label %202

194:                                              ; preds = %183
  %195 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %196 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %195, i32 0, i32 2
  %197 = load %struct.TYPE_14__*, %struct.TYPE_14__** %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %197, i32 0, i32 0
  %199 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %198, i32 0, i32 0
  %200 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %199, i32 0, i32 0
  %201 = call i32 @fsm_Reopen(%struct.fsm* %200)
  br label %208

202:                                              ; preds = %183
  %203 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %204 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %203, i32 0, i32 2
  %205 = load %struct.TYPE_14__*, %struct.TYPE_14__** %204, align 8
  %206 = load i32, i32* @PHYS_ALL, align 4
  %207 = call i32 @bundle_Open(%struct.TYPE_14__* %205, i32* null, i32 %206, i32 1)
  br label %208

208:                                              ; preds = %202, %194
  br label %210

209:                                              ; preds = %163
  store i32 -1, i32* %2, align 4
  br label %216

210:                                              ; preds = %208
  br label %211

211:                                              ; preds = %210, %162
  br label %212

212:                                              ; preds = %211, %103
  br label %214

213:                                              ; preds = %32
  store i32 -1, i32* %2, align 4
  br label %216

214:                                              ; preds = %212
  br label %215

215:                                              ; preds = %214, %28
  store i32 0, i32* %2, align 4
  br label %216

216:                                              ; preds = %215, %213, %209
  %217 = load i32, i32* %2, align 4
  ret i32 %217
}

declare dso_local i32 @bundle_Open(%struct.TYPE_14__*, i32*, i32, i32) #1

declare dso_local i32 @strcasecmp(i32, i8*) #1

declare dso_local %struct.datalink* @bundle2datalink(%struct.TYPE_14__*, i32*) #1

declare dso_local i32 @fsm_Reopen(%struct.fsm*) #1

declare dso_local i32 @log_Printf(i32, i8*) #1

declare dso_local %struct.TYPE_13__* @command_ChooseLink(%struct.cmdargs*) #1

declare dso_local i32 @fsm_Down(%struct.fsm*) #1

declare dso_local i32 @fsm_Up(%struct.fsm*) #1

declare dso_local i32 @fsm_Open(%struct.fsm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
