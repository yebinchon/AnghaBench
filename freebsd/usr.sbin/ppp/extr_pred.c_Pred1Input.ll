; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_pred.c_Pred1Input.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_pred.c_Pred1Input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccp = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.mbuf = type { i32, i64 }
%struct.pred1_state = type { i32 }

@MAX_MRU = common dso_local global i64 0, align 8
@MB_CCPIN = common dso_local global i32 0, align 4
@LogCCP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Pred1: Length error (got %d, not %d)\0A\00", align 1
@GOODFCS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"un\00", align 1
@LogDEBUG = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [66 x i8] c"Pred1Input: fcs = 0x%04x (%scompressed), len = 0x%x, olen = 0x%x\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"%s: Bad %scompressed CRC-16\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mbuf* (i8*, %struct.ccp*, i32*, %struct.mbuf*)* @Pred1Input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mbuf* @Pred1Input(i8* %0, %struct.ccp* %1, i32* %2, %struct.mbuf* %3) #0 {
  %5 = alloca %struct.mbuf*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.ccp*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.mbuf*, align 8
  %10 = alloca %struct.pred1_state*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.mbuf*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store %struct.ccp* %1, %struct.ccp** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.mbuf* %3, %struct.mbuf** %9, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = bitcast i8* %20 to %struct.pred1_state*
  store %struct.pred1_state* %21, %struct.pred1_state** %10, align 8
  %22 = load i64, i64* @MAX_MRU, align 8
  %23 = add nsw i64 %22, 2
  %24 = load i32, i32* @MB_CCPIN, align 4
  %25 = call %struct.mbuf* @m_get(i64 %23, i32 %24)
  store %struct.mbuf* %25, %struct.mbuf** %16, align 8
  %26 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %27 = call i32* @MBUF_CTOP(%struct.mbuf* %26)
  store i32* %27, i32** %11, align 8
  %28 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %29 = call i32 @m_length(%struct.mbuf* %28)
  store i32 %29, i32* %14, align 4
  %30 = load %struct.mbuf*, %struct.mbuf** %16, align 8
  %31 = call i32* @MBUF_CTOP(%struct.mbuf* %30)
  store i32* %31, i32** %17, align 8
  store i32* %31, i32** %12, align 8
  %32 = load i32*, i32** %11, align 8
  %33 = load i32, i32* %32, align 4
  %34 = and i32 %33, 127
  %35 = load i32*, i32** %12, align 8
  %36 = getelementptr inbounds i32, i32* %35, i32 1
  store i32* %36, i32** %12, align 8
  store i32 %34, i32* %35, align 4
  %37 = load i32*, i32** %11, align 8
  %38 = getelementptr inbounds i32, i32* %37, i32 1
  store i32* %38, i32** %11, align 8
  %39 = load i32, i32* %37, align 4
  %40 = shl i32 %39, 8
  store i32 %40, i32* %13, align 4
  %41 = load i32*, i32** %11, align 8
  %42 = load i32, i32* %41, align 4
  %43 = load i32*, i32** %12, align 8
  %44 = getelementptr inbounds i32, i32* %43, i32 1
  store i32* %44, i32** %12, align 8
  store i32 %42, i32* %43, align 4
  %45 = load i32*, i32** %11, align 8
  %46 = getelementptr inbounds i32, i32* %45, i32 1
  store i32* %46, i32** %11, align 8
  %47 = load i32, i32* %45, align 4
  %48 = load i32, i32* %13, align 4
  %49 = add nsw i32 %48, %47
  store i32 %49, i32* %13, align 4
  %50 = load i32, i32* %13, align 4
  %51 = and i32 %50, 32767
  %52 = load %struct.ccp*, %struct.ccp** %7, align 8
  %53 = getelementptr inbounds %struct.ccp, %struct.ccp* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = add nsw i32 %54, %51
  store i32 %55, i32* %53, align 8
  %56 = load i32, i32* %13, align 4
  %57 = and i32 %56, 32768
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %98

59:                                               ; preds = %4
  %60 = load %struct.pred1_state*, %struct.pred1_state** %10, align 8
  %61 = load i32*, i32** %11, align 8
  %62 = load i32*, i32** %12, align 8
  %63 = load i32, i32* %14, align 4
  %64 = sub nsw i32 %63, 4
  %65 = call i32 @decompress(%struct.pred1_state* %60, i32* %61, i32* %62, i32 %64)
  store i32 %65, i32* %15, align 4
  %66 = load i32, i32* %14, align 4
  %67 = load %struct.ccp*, %struct.ccp** %7, align 8
  %68 = getelementptr inbounds %struct.ccp, %struct.ccp* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = add nsw i32 %69, %66
  store i32 %70, i32* %68, align 4
  %71 = load i32, i32* %13, align 4
  %72 = and i32 %71, 32767
  store i32 %72, i32* %13, align 4
  %73 = load i32, i32* %13, align 4
  %74 = load i32, i32* %15, align 4
  %75 = icmp ne i32 %73, %74
  br i1 %75, label %76, label %88

76:                                               ; preds = %59
  %77 = load i32, i32* @LogCCP, align 4
  %78 = load i32, i32* %15, align 4
  %79 = load i32, i32* %13, align 4
  %80 = call i32 (i32, i8*, i32, ...) @log_Printf(i32 %77, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %78, i32 %79)
  %81 = load %struct.ccp*, %struct.ccp** %7, align 8
  %82 = getelementptr inbounds %struct.ccp, %struct.ccp* %81, i32 0, i32 2
  %83 = call i32 @fsm_Reopen(%struct.TYPE_4__* %82)
  %84 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %85 = call i32 @m_freem(%struct.mbuf* %84)
  %86 = load %struct.mbuf*, %struct.mbuf** %16, align 8
  %87 = call i32 @m_freem(%struct.mbuf* %86)
  store %struct.mbuf* null, %struct.mbuf** %5, align 8
  br label %241

88:                                               ; preds = %59
  %89 = load i32, i32* %14, align 4
  %90 = sub nsw i32 %89, 4
  %91 = load i32*, i32** %11, align 8
  %92 = sext i32 %90 to i64
  %93 = getelementptr inbounds i32, i32* %91, i64 %92
  store i32* %93, i32** %11, align 8
  %94 = load i32, i32* %15, align 4
  %95 = load i32*, i32** %12, align 8
  %96 = sext i32 %94 to i64
  %97 = getelementptr inbounds i32, i32* %95, i64 %96
  store i32* %97, i32** %12, align 8
  br label %136

98:                                               ; preds = %4
  %99 = load i32, i32* %13, align 4
  %100 = add nsw i32 %99, 4
  %101 = load i32, i32* %14, align 4
  %102 = icmp ne i32 %100, %101
  br i1 %102, label %103, label %116

103:                                              ; preds = %98
  %104 = load i32, i32* @LogCCP, align 4
  %105 = load i32, i32* %13, align 4
  %106 = add nsw i32 %105, 4
  %107 = load i32, i32* %14, align 4
  %108 = call i32 (i32, i8*, i32, ...) @log_Printf(i32 %104, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %106, i32 %107)
  %109 = load %struct.ccp*, %struct.ccp** %7, align 8
  %110 = getelementptr inbounds %struct.ccp, %struct.ccp* %109, i32 0, i32 2
  %111 = call i32 @fsm_Reopen(%struct.TYPE_4__* %110)
  %112 = load %struct.mbuf*, %struct.mbuf** %16, align 8
  %113 = call i32 @m_freem(%struct.mbuf* %112)
  %114 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %115 = call i32 @m_freem(%struct.mbuf* %114)
  store %struct.mbuf* null, %struct.mbuf** %5, align 8
  br label %241

116:                                              ; preds = %98
  %117 = load i32, i32* %13, align 4
  %118 = load %struct.ccp*, %struct.ccp** %7, align 8
  %119 = getelementptr inbounds %struct.ccp, %struct.ccp* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = add nsw i32 %120, %117
  store i32 %121, i32* %119, align 4
  %122 = load %struct.pred1_state*, %struct.pred1_state** %10, align 8
  %123 = load i32*, i32** %11, align 8
  %124 = load i32*, i32** %12, align 8
  %125 = load i32, i32* %13, align 4
  %126 = call i32 @SyncTable(%struct.pred1_state* %122, i32* %123, i32* %124, i32 %125)
  %127 = load i32, i32* %13, align 4
  %128 = load i32*, i32** %11, align 8
  %129 = sext i32 %127 to i64
  %130 = getelementptr inbounds i32, i32* %128, i64 %129
  store i32* %130, i32** %11, align 8
  %131 = load i32, i32* %13, align 4
  %132 = load i32*, i32** %12, align 8
  %133 = sext i32 %131 to i64
  %134 = getelementptr inbounds i32, i32* %132, i64 %133
  store i32* %134, i32** %12, align 8
  br label %135

135:                                              ; preds = %116
  br label %136

136:                                              ; preds = %135, %88
  %137 = load i32*, i32** %11, align 8
  %138 = getelementptr inbounds i32, i32* %137, i32 1
  store i32* %138, i32** %11, align 8
  %139 = load i32, i32* %137, align 4
  %140 = load i32*, i32** %12, align 8
  %141 = getelementptr inbounds i32, i32* %140, i32 1
  store i32* %141, i32** %12, align 8
  store i32 %139, i32* %140, align 4
  %142 = load i32*, i32** %11, align 8
  %143 = getelementptr inbounds i32, i32* %142, i32 1
  store i32* %143, i32** %11, align 8
  %144 = load i32, i32* %142, align 4
  %145 = load i32*, i32** %12, align 8
  %146 = getelementptr inbounds i32, i32* %145, i32 1
  store i32* %146, i32** %12, align 8
  store i32 %144, i32* %145, align 4
  %147 = load i32*, i32** %17, align 8
  %148 = load i32*, i32** %12, align 8
  %149 = load i32*, i32** %17, align 8
  %150 = ptrtoint i32* %148 to i64
  %151 = ptrtoint i32* %149 to i64
  %152 = sub i64 %150, %151
  %153 = sdiv exact i64 %152, 4
  %154 = trunc i64 %153 to i32
  %155 = load %struct.mbuf*, %struct.mbuf** %16, align 8
  %156 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %155, i32 0, i32 0
  store i32 %154, i32* %156, align 8
  %157 = call i32 @hdlc_Fcs(i32* %147, i32 %154)
  store i32 %157, i32* %18, align 4
  %158 = load i32, i32* %18, align 4
  %159 = load i32, i32* @GOODFCS, align 4
  %160 = icmp eq i32 %158, %159
  br i1 %160, label %161, label %210

161:                                              ; preds = %136
  %162 = load %struct.mbuf*, %struct.mbuf** %16, align 8
  %163 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %162, i32 0, i32 1
  %164 = load i64, i64* %163, align 8
  %165 = add nsw i64 %164, 2
  store i64 %165, i64* %163, align 8
  %166 = load %struct.mbuf*, %struct.mbuf** %16, align 8
  %167 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = sub nsw i32 %168, 4
  store i32 %169, i32* %167, align 8
  %170 = load %struct.mbuf*, %struct.mbuf** %16, align 8
  %171 = call i32* @MBUF_CTOP(%struct.mbuf* %170)
  store i32* %171, i32** %12, align 8
  %172 = load i32*, i32** %12, align 8
  %173 = getelementptr inbounds i32, i32* %172, i32 1
  store i32* %173, i32** %12, align 8
  %174 = load i32, i32* %172, align 4
  %175 = load i32*, i32** %8, align 8
  store i32 %174, i32* %175, align 4
  %176 = load i32*, i32** %8, align 8
  %177 = load i32, i32* %176, align 4
  %178 = and i32 %177, 1
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %189

180:                                              ; preds = %161
  %181 = load %struct.mbuf*, %struct.mbuf** %16, align 8
  %182 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %181, i32 0, i32 1
  %183 = load i64, i64* %182, align 8
  %184 = add nsw i64 %183, 1
  store i64 %184, i64* %182, align 8
  %185 = load %struct.mbuf*, %struct.mbuf** %16, align 8
  %186 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = add nsw i32 %187, -1
  store i32 %188, i32* %186, align 8
  br label %206

189:                                              ; preds = %161
  %190 = load %struct.mbuf*, %struct.mbuf** %16, align 8
  %191 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %190, i32 0, i32 1
  %192 = load i64, i64* %191, align 8
  %193 = add nsw i64 %192, 2
  store i64 %193, i64* %191, align 8
  %194 = load %struct.mbuf*, %struct.mbuf** %16, align 8
  %195 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = sub nsw i32 %196, 2
  store i32 %197, i32* %195, align 8
  %198 = load i32*, i32** %8, align 8
  %199 = load i32, i32* %198, align 4
  %200 = shl i32 %199, 8
  %201 = load i32*, i32** %12, align 8
  %202 = getelementptr inbounds i32, i32* %201, i32 1
  store i32* %202, i32** %12, align 8
  %203 = load i32, i32* %201, align 4
  %204 = or i32 %200, %203
  %205 = load i32*, i32** %8, align 8
  store i32 %204, i32* %205, align 4
  br label %206

206:                                              ; preds = %189, %180
  %207 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %208 = call i32 @m_freem(%struct.mbuf* %207)
  %209 = load %struct.mbuf*, %struct.mbuf** %16, align 8
  store %struct.mbuf* %209, %struct.mbuf** %5, align 8
  br label %241

210:                                              ; preds = %136
  %211 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %212 = call i32* @MBUF_CTOP(%struct.mbuf* %211)
  %213 = load i32, i32* %212, align 4
  %214 = and i32 %213, 128
  %215 = icmp ne i32 %214, 0
  %216 = zext i1 %215 to i64
  %217 = select i1 %215, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)
  store i8* %217, i8** %19, align 8
  %218 = load i32, i32* @LogDEBUG, align 4
  %219 = load i32, i32* %18, align 4
  %220 = load i8*, i8** %19, align 8
  %221 = load i32, i32* %13, align 4
  %222 = load i32, i32* %14, align 4
  %223 = call i32 (i32, i8*, i32, ...) @log_Printf(i32 %218, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.3, i64 0, i64 0), i32 %219, i8* %220, i32 %221, i32 %222)
  %224 = load i32, i32* @LogCCP, align 4
  %225 = load %struct.ccp*, %struct.ccp** %7, align 8
  %226 = getelementptr inbounds %struct.ccp, %struct.ccp* %225, i32 0, i32 2
  %227 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %226, i32 0, i32 0
  %228 = load %struct.TYPE_3__*, %struct.TYPE_3__** %227, align 8
  %229 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 4
  %231 = load i8*, i8** %19, align 8
  %232 = call i32 (i32, i8*, i32, ...) @log_Printf(i32 %224, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32 %230, i8* %231)
  %233 = load %struct.ccp*, %struct.ccp** %7, align 8
  %234 = getelementptr inbounds %struct.ccp, %struct.ccp* %233, i32 0, i32 2
  %235 = call i32 @fsm_Reopen(%struct.TYPE_4__* %234)
  %236 = load %struct.mbuf*, %struct.mbuf** %16, align 8
  %237 = call i32 @m_freem(%struct.mbuf* %236)
  br label %238

238:                                              ; preds = %210
  %239 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %240 = call i32 @m_freem(%struct.mbuf* %239)
  store %struct.mbuf* null, %struct.mbuf** %5, align 8
  br label %241

241:                                              ; preds = %238, %206, %103, %76
  %242 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  ret %struct.mbuf* %242
}

declare dso_local %struct.mbuf* @m_get(i64, i32) #1

declare dso_local i32* @MBUF_CTOP(%struct.mbuf*) #1

declare dso_local i32 @m_length(%struct.mbuf*) #1

declare dso_local i32 @decompress(%struct.pred1_state*, i32*, i32*, i32) #1

declare dso_local i32 @log_Printf(i32, i8*, i32, ...) #1

declare dso_local i32 @fsm_Reopen(%struct.TYPE_4__*) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

declare dso_local i32 @SyncTable(%struct.pred1_state*, i32*, i32*, i32) #1

declare dso_local i32 @hdlc_Fcs(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
