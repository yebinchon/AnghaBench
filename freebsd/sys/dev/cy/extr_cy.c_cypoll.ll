; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cy/extr_cy.c_cypoll.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cy/extr_cy.c_cypoll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.com_s = type { i32, i32, i32, i32, i32, i32, i64, %struct.tty* }
%struct.tty = type { i32 }

@cy_events = common dso_local global i64 0, align 8
@NPORTS = common dso_local global i32 0, align 4
@CS_CHECKMSR = common dso_local global i32 0, align 4
@LOTS_OF_EVENTS = common dso_local global i64 0, align 8
@LOG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"cy%d: %d events for device with no tp\0A\00", align 1
@CD1400_MSVR2_CD = common dso_local global i32 0, align 4
@CSE_ODONE = common dso_local global i32 0, align 4
@CS_BUSY = common dso_local global i32 0, align 4
@TS_BUSY = common dso_local global i32 0, align 4
@ETC_NONE = common dso_local global i64 0, align 8
@ETC_BREAK_ENDED = common dso_local global i64 0, align 8
@CS_ODONE = common dso_local global i32 0, align 4
@cy_timeouts = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @cypoll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cypoll(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.com_s*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.tty*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %8 = load i64, i64* @cy_events, align 8
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %235

11:                                               ; preds = %1
  br label %12

12:                                               ; preds = %234, %11
  store i32 0, i32* %3, align 4
  br label %13

13:                                               ; preds = %227, %12
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @NPORTS, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %230

17:                                               ; preds = %13
  %18 = load i32, i32* %3, align 4
  %19 = call %struct.com_s* @cy_addr(i32 %18)
  store %struct.com_s* %19, %struct.com_s** %4, align 8
  %20 = load %struct.com_s*, %struct.com_s** %4, align 8
  %21 = icmp eq %struct.com_s* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  br label %227

23:                                               ; preds = %17
  %24 = load %struct.com_s*, %struct.com_s** %4, align 8
  %25 = getelementptr inbounds %struct.com_s, %struct.com_s* %24, i32 0, i32 7
  %26 = load %struct.tty*, %struct.tty** %25, align 8
  store %struct.tty* %26, %struct.tty** %6, align 8
  %27 = load %struct.tty*, %struct.tty** %6, align 8
  %28 = icmp eq %struct.tty* %27, null
  br i1 %28, label %29, label %77

29:                                               ; preds = %23
  %30 = call i32 (...) @critical_enter()
  %31 = call i32 (...) @COM_LOCK()
  %32 = load %struct.com_s*, %struct.com_s** %4, align 8
  %33 = getelementptr inbounds %struct.com_s, %struct.com_s* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.com_s*, %struct.com_s** %4, align 8
  %36 = getelementptr inbounds %struct.com_s, %struct.com_s* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = sub nsw i32 %34, %37
  store i32 %38, i32* %5, align 4
  %39 = load %struct.com_s*, %struct.com_s** %4, align 8
  %40 = getelementptr inbounds %struct.com_s, %struct.com_s* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.com_s*, %struct.com_s** %4, align 8
  %43 = getelementptr inbounds %struct.com_s, %struct.com_s* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  %44 = load %struct.com_s*, %struct.com_s** %4, align 8
  %45 = getelementptr inbounds %struct.com_s, %struct.com_s* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @CS_CHECKMSR, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %62

50:                                               ; preds = %29
  %51 = load i64, i64* @LOTS_OF_EVENTS, align 8
  %52 = load i32, i32* %5, align 4
  %53 = sext i32 %52 to i64
  %54 = add nsw i64 %53, %51
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %5, align 4
  %56 = load i32, i32* @CS_CHECKMSR, align 4
  %57 = xor i32 %56, -1
  %58 = load %struct.com_s*, %struct.com_s** %4, align 8
  %59 = getelementptr inbounds %struct.com_s, %struct.com_s* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = and i32 %60, %57
  store i32 %61, i32* %59, align 8
  br label %62

62:                                               ; preds = %50, %29
  %63 = load i32, i32* %5, align 4
  %64 = sext i32 %63 to i64
  %65 = load i64, i64* @cy_events, align 8
  %66 = sub nsw i64 %65, %64
  store i64 %66, i64* @cy_events, align 8
  %67 = call i32 (...) @COM_UNLOCK()
  %68 = call i32 (...) @critical_exit()
  %69 = load i32, i32* %5, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %62
  %72 = load i32, i32* @LOG_DEBUG, align 4
  %73 = load i32, i32* %3, align 4
  %74 = load i32, i32* %5, align 4
  %75 = call i32 @log(i32 %72, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %73, i32 %74)
  br label %76

76:                                               ; preds = %71, %62
  br label %227

77:                                               ; preds = %23
  %78 = load %struct.com_s*, %struct.com_s** %4, align 8
  %79 = getelementptr inbounds %struct.com_s, %struct.com_s* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.com_s*, %struct.com_s** %4, align 8
  %82 = getelementptr inbounds %struct.com_s, %struct.com_s* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = icmp ne i32 %80, %83
  br i1 %84, label %85, label %92

85:                                               ; preds = %77
  %86 = call i32 (...) @critical_enter()
  %87 = call i32 (...) @COM_LOCK()
  %88 = load %struct.com_s*, %struct.com_s** %4, align 8
  %89 = call i32 @cyinput(%struct.com_s* %88)
  %90 = call i32 (...) @COM_UNLOCK()
  %91 = call i32 (...) @critical_exit()
  br label %92

92:                                               ; preds = %85, %77
  %93 = load %struct.com_s*, %struct.com_s** %4, align 8
  %94 = getelementptr inbounds %struct.com_s, %struct.com_s* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @CS_CHECKMSR, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %140

99:                                               ; preds = %92
  %100 = call i32 (...) @critical_enter()
  %101 = call i32 (...) @COM_LOCK()
  %102 = load %struct.com_s*, %struct.com_s** %4, align 8
  %103 = call i32 @cyinput(%struct.com_s* %102)
  %104 = load %struct.com_s*, %struct.com_s** %4, align 8
  %105 = getelementptr inbounds %struct.com_s, %struct.com_s* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.com_s*, %struct.com_s** %4, align 8
  %108 = getelementptr inbounds %struct.com_s, %struct.com_s* %107, i32 0, i32 4
  %109 = load i32, i32* %108, align 8
  %110 = xor i32 %106, %109
  store i32 %110, i32* %7, align 4
  %111 = load %struct.com_s*, %struct.com_s** %4, align 8
  %112 = getelementptr inbounds %struct.com_s, %struct.com_s* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.com_s*, %struct.com_s** %4, align 8
  %115 = getelementptr inbounds %struct.com_s, %struct.com_s* %114, i32 0, i32 4
  store i32 %113, i32* %115, align 8
  %116 = load i64, i64* @LOTS_OF_EVENTS, align 8
  %117 = load i64, i64* @cy_events, align 8
  %118 = sub nsw i64 %117, %116
  store i64 %118, i64* @cy_events, align 8
  %119 = load i32, i32* @CS_CHECKMSR, align 4
  %120 = xor i32 %119, -1
  %121 = load %struct.com_s*, %struct.com_s** %4, align 8
  %122 = getelementptr inbounds %struct.com_s, %struct.com_s* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  %124 = and i32 %123, %120
  store i32 %124, i32* %122, align 8
  %125 = call i32 (...) @COM_UNLOCK()
  %126 = call i32 (...) @critical_exit()
  %127 = load i32, i32* %7, align 4
  %128 = load i32, i32* @CD1400_MSVR2_CD, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %139

131:                                              ; preds = %99
  %132 = load %struct.tty*, %struct.tty** %6, align 8
  %133 = load %struct.com_s*, %struct.com_s** %4, align 8
  %134 = getelementptr inbounds %struct.com_s, %struct.com_s* %133, i32 0, i32 4
  %135 = load i32, i32* %134, align 8
  %136 = load i32, i32* @CD1400_MSVR2_CD, align 4
  %137 = and i32 %135, %136
  %138 = call i32 @ttyld_modem(%struct.tty* %132, i32 %137)
  br label %139

139:                                              ; preds = %131, %99
  br label %140

140:                                              ; preds = %139, %92
  %141 = load %struct.com_s*, %struct.com_s** %4, align 8
  %142 = getelementptr inbounds %struct.com_s, %struct.com_s* %141, i32 0, i32 5
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* @CSE_ODONE, align 4
  %145 = and i32 %143, %144
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %199

147:                                              ; preds = %140
  %148 = call i32 (...) @critical_enter()
  %149 = call i32 (...) @COM_LOCK()
  %150 = load i64, i64* @LOTS_OF_EVENTS, align 8
  %151 = load i64, i64* @cy_events, align 8
  %152 = sub nsw i64 %151, %150
  store i64 %152, i64* @cy_events, align 8
  %153 = load i32, i32* @CSE_ODONE, align 4
  %154 = xor i32 %153, -1
  %155 = load %struct.com_s*, %struct.com_s** %4, align 8
  %156 = getelementptr inbounds %struct.com_s, %struct.com_s* %155, i32 0, i32 5
  %157 = load i32, i32* %156, align 4
  %158 = and i32 %157, %154
  store i32 %158, i32* %156, align 4
  %159 = call i32 (...) @COM_UNLOCK()
  %160 = call i32 (...) @critical_exit()
  %161 = load %struct.com_s*, %struct.com_s** %4, align 8
  %162 = getelementptr inbounds %struct.com_s, %struct.com_s* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 8
  %164 = load i32, i32* @CS_BUSY, align 4
  %165 = and i32 %163, %164
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %178, label %167

167:                                              ; preds = %147
  %168 = load i32, i32* @TS_BUSY, align 4
  %169 = xor i32 %168, -1
  %170 = load %struct.tty*, %struct.tty** %6, align 8
  %171 = getelementptr inbounds %struct.tty, %struct.tty* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = and i32 %172, %169
  store i32 %173, i32* %171, align 4
  %174 = load %struct.com_s*, %struct.com_s** %4, align 8
  %175 = getelementptr inbounds %struct.com_s, %struct.com_s* %174, i32 0, i32 7
  %176 = load %struct.tty*, %struct.tty** %175, align 8
  %177 = call i32 @ttwwakeup(%struct.tty* %176)
  br label %178

178:                                              ; preds = %167, %147
  %179 = load %struct.com_s*, %struct.com_s** %4, align 8
  %180 = getelementptr inbounds %struct.com_s, %struct.com_s* %179, i32 0, i32 6
  %181 = load i64, i64* %180, align 8
  %182 = load i64, i64* @ETC_NONE, align 8
  %183 = icmp ne i64 %181, %182
  br i1 %183, label %184, label %198

184:                                              ; preds = %178
  %185 = load %struct.com_s*, %struct.com_s** %4, align 8
  %186 = getelementptr inbounds %struct.com_s, %struct.com_s* %185, i32 0, i32 6
  %187 = load i64, i64* %186, align 8
  %188 = load i64, i64* @ETC_BREAK_ENDED, align 8
  %189 = icmp eq i64 %187, %188
  br i1 %189, label %190, label %194

190:                                              ; preds = %184
  %191 = load i64, i64* @ETC_NONE, align 8
  %192 = load %struct.com_s*, %struct.com_s** %4, align 8
  %193 = getelementptr inbounds %struct.com_s, %struct.com_s* %192, i32 0, i32 6
  store i64 %191, i64* %193, align 8
  br label %194

194:                                              ; preds = %190, %184
  %195 = load %struct.com_s*, %struct.com_s** %4, align 8
  %196 = getelementptr inbounds %struct.com_s, %struct.com_s* %195, i32 0, i32 6
  %197 = call i32 @wakeup(i64* %196)
  br label %198

198:                                              ; preds = %194, %178
  br label %199

199:                                              ; preds = %198, %140
  %200 = load %struct.com_s*, %struct.com_s** %4, align 8
  %201 = getelementptr inbounds %struct.com_s, %struct.com_s* %200, i32 0, i32 2
  %202 = load i32, i32* %201, align 8
  %203 = load i32, i32* @CS_ODONE, align 4
  %204 = and i32 %202, %203
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %222

206:                                              ; preds = %199
  %207 = call i32 (...) @critical_enter()
  %208 = call i32 (...) @COM_LOCK()
  %209 = load i64, i64* @LOTS_OF_EVENTS, align 8
  %210 = load i64, i64* @cy_events, align 8
  %211 = sub nsw i64 %210, %209
  store i64 %211, i64* @cy_events, align 8
  %212 = load i32, i32* @CS_ODONE, align 4
  %213 = xor i32 %212, -1
  %214 = load %struct.com_s*, %struct.com_s** %4, align 8
  %215 = getelementptr inbounds %struct.com_s, %struct.com_s* %214, i32 0, i32 2
  %216 = load i32, i32* %215, align 8
  %217 = and i32 %216, %213
  store i32 %217, i32* %215, align 8
  %218 = call i32 (...) @COM_UNLOCK()
  %219 = call i32 (...) @critical_exit()
  %220 = load %struct.tty*, %struct.tty** %6, align 8
  %221 = call i32 @ttyld_start(%struct.tty* %220)
  br label %222

222:                                              ; preds = %206, %199
  %223 = load i64, i64* @cy_events, align 8
  %224 = icmp eq i64 %223, 0
  br i1 %224, label %225, label %226

225:                                              ; preds = %222
  br label %230

226:                                              ; preds = %222
  br label %227

227:                                              ; preds = %226, %76, %22
  %228 = load i32, i32* %3, align 4
  %229 = add nsw i32 %228, 1
  store i32 %229, i32* %3, align 4
  br label %13

230:                                              ; preds = %225, %13
  %231 = load i64, i64* @cy_events, align 8
  %232 = load i64, i64* @LOTS_OF_EVENTS, align 8
  %233 = icmp sge i64 %231, %232
  br i1 %233, label %234, label %235

234:                                              ; preds = %230
  br label %12

235:                                              ; preds = %10, %230
  ret void
}

declare dso_local %struct.com_s* @cy_addr(i32) #1

declare dso_local i32 @critical_enter(...) #1

declare dso_local i32 @COM_LOCK(...) #1

declare dso_local i32 @COM_UNLOCK(...) #1

declare dso_local i32 @critical_exit(...) #1

declare dso_local i32 @log(i32, i8*, i32, i32) #1

declare dso_local i32 @cyinput(%struct.com_s*) #1

declare dso_local i32 @ttyld_modem(%struct.tty*, i32) #1

declare dso_local i32 @ttwwakeup(%struct.tty*) #1

declare dso_local i32 @wakeup(i64*) #1

declare dso_local i32 @ttyld_start(%struct.tty*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
