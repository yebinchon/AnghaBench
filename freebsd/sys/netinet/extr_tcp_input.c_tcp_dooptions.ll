; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_tcp_input.c_tcp_dooptions.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_tcp_input.c_tcp_dooptions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcpopt = type { i32*, i32, i32*, i32, i32*, i64, i8*, i8*, i32, i32 }

@TCPOPT_EOL = common dso_local global i32 0, align 4
@TCPOPT_NOP = common dso_local global i32 0, align 4
@TCPOLEN_MAXSEG = common dso_local global i32 0, align 4
@TO_SYN = common dso_local global i32 0, align 4
@TOF_MSS = common dso_local global i64 0, align 8
@TCPOLEN_WINDOW = common dso_local global i32 0, align 4
@TOF_SCALE = common dso_local global i64 0, align 8
@TCP_MAX_WINSHIFT = common dso_local global i32 0, align 4
@TCPOLEN_TIMESTAMP = common dso_local global i32 0, align 4
@TOF_TS = common dso_local global i64 0, align 8
@TCPOLEN_SIGNATURE = common dso_local global i32 0, align 4
@TOF_SIGNATURE = common dso_local global i64 0, align 8
@TCPOLEN_SACK_PERMITTED = common dso_local global i32 0, align 4
@V_tcp_do_sack = common dso_local global i32 0, align 4
@TOF_SACKPERM = common dso_local global i64 0, align 8
@TCPOLEN_SACK = common dso_local global i32 0, align 4
@TOF_SACK = common dso_local global i64 0, align 8
@tcps_sack_rcv_blocks = common dso_local global i32 0, align 4
@V_tcp_fastopen_client_enable = common dso_local global i32 0, align 4
@V_tcp_fastopen_server_enable = common dso_local global i32 0, align 4
@TOF_FASTOPEN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tcp_dooptions(%struct.tcpopt* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.tcpopt*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.tcpopt* %0, %struct.tcpopt** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.tcpopt*, %struct.tcpopt** %5, align 8
  %12 = getelementptr inbounds %struct.tcpopt, %struct.tcpopt* %11, i32 0, i32 5
  store i64 0, i64* %12, align 8
  br label %13

13:                                               ; preds = %245, %4
  %14 = load i32, i32* %7, align 4
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %253

16:                                               ; preds = %13
  %17 = load i32*, i32** %6, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* @TCPOPT_EOL, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %16
  br label %253

24:                                               ; preds = %16
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* @TCPOPT_NOP, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  store i32 1, i32* %10, align 4
  br label %45

29:                                               ; preds = %24
  %30 = load i32, i32* %7, align 4
  %31 = icmp slt i32 %30, 2
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  br label %253

33:                                               ; preds = %29
  %34 = load i32*, i32** %6, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 1
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %10, align 4
  %38 = icmp slt i32 %37, 2
  br i1 %38, label %43, label %39

39:                                               ; preds = %33
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* %7, align 4
  %42 = icmp sgt i32 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %39, %33
  br label %253

44:                                               ; preds = %39
  br label %45

45:                                               ; preds = %44, %28
  %46 = load i32, i32* %9, align 4
  switch i32 %46, label %243 [
    i32 133, label %47
    i32 128, label %77
    i32 129, label %101
    i32 130, label %138
    i32 131, label %153
    i32 132, label %174
    i32 134, label %208
  ]

47:                                               ; preds = %45
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* @TCPOLEN_MAXSEG, align 4
  %50 = icmp ne i32 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %47
  br label %245

52:                                               ; preds = %47
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* @TO_SYN, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %52
  br label %245

58:                                               ; preds = %52
  %59 = load i64, i64* @TOF_MSS, align 8
  %60 = load %struct.tcpopt*, %struct.tcpopt** %5, align 8
  %61 = getelementptr inbounds %struct.tcpopt, %struct.tcpopt* %60, i32 0, i32 5
  %62 = load i64, i64* %61, align 8
  %63 = or i64 %62, %59
  store i64 %63, i64* %61, align 8
  %64 = load i32*, i32** %6, align 8
  %65 = bitcast i32* %64 to i8*
  %66 = getelementptr inbounds i8, i8* %65, i64 2
  %67 = load %struct.tcpopt*, %struct.tcpopt** %5, align 8
  %68 = getelementptr inbounds %struct.tcpopt, %struct.tcpopt* %67, i32 0, i32 9
  %69 = bitcast i32* %68 to i8*
  %70 = call i32 @bcopy(i8* %66, i8* %69, i32 4)
  %71 = load %struct.tcpopt*, %struct.tcpopt** %5, align 8
  %72 = getelementptr inbounds %struct.tcpopt, %struct.tcpopt* %71, i32 0, i32 9
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @ntohs(i32 %73)
  %75 = load %struct.tcpopt*, %struct.tcpopt** %5, align 8
  %76 = getelementptr inbounds %struct.tcpopt, %struct.tcpopt* %75, i32 0, i32 9
  store i32 %74, i32* %76, align 4
  br label %244

77:                                               ; preds = %45
  %78 = load i32, i32* %10, align 4
  %79 = load i32, i32* @TCPOLEN_WINDOW, align 4
  %80 = icmp ne i32 %78, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %77
  br label %245

82:                                               ; preds = %77
  %83 = load i32, i32* %8, align 4
  %84 = load i32, i32* @TO_SYN, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %88, label %87

87:                                               ; preds = %82
  br label %245

88:                                               ; preds = %82
  %89 = load i64, i64* @TOF_SCALE, align 8
  %90 = load %struct.tcpopt*, %struct.tcpopt** %5, align 8
  %91 = getelementptr inbounds %struct.tcpopt, %struct.tcpopt* %90, i32 0, i32 5
  %92 = load i64, i64* %91, align 8
  %93 = or i64 %92, %89
  store i64 %93, i64* %91, align 8
  %94 = load i32*, i32** %6, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 2
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @TCP_MAX_WINSHIFT, align 4
  %98 = call i32 @min(i32 %96, i32 %97)
  %99 = load %struct.tcpopt*, %struct.tcpopt** %5, align 8
  %100 = getelementptr inbounds %struct.tcpopt, %struct.tcpopt* %99, i32 0, i32 8
  store i32 %98, i32* %100, align 8
  br label %244

101:                                              ; preds = %45
  %102 = load i32, i32* %10, align 4
  %103 = load i32, i32* @TCPOLEN_TIMESTAMP, align 4
  %104 = icmp ne i32 %102, %103
  br i1 %104, label %105, label %106

105:                                              ; preds = %101
  br label %245

106:                                              ; preds = %101
  %107 = load i64, i64* @TOF_TS, align 8
  %108 = load %struct.tcpopt*, %struct.tcpopt** %5, align 8
  %109 = getelementptr inbounds %struct.tcpopt, %struct.tcpopt* %108, i32 0, i32 5
  %110 = load i64, i64* %109, align 8
  %111 = or i64 %110, %107
  store i64 %111, i64* %109, align 8
  %112 = load i32*, i32** %6, align 8
  %113 = bitcast i32* %112 to i8*
  %114 = getelementptr inbounds i8, i8* %113, i64 2
  %115 = load %struct.tcpopt*, %struct.tcpopt** %5, align 8
  %116 = getelementptr inbounds %struct.tcpopt, %struct.tcpopt* %115, i32 0, i32 7
  %117 = bitcast i8** %116 to i8*
  %118 = call i32 @bcopy(i8* %114, i8* %117, i32 8)
  %119 = load %struct.tcpopt*, %struct.tcpopt** %5, align 8
  %120 = getelementptr inbounds %struct.tcpopt, %struct.tcpopt* %119, i32 0, i32 7
  %121 = load i8*, i8** %120, align 8
  %122 = call i8* @ntohl(i8* %121)
  %123 = load %struct.tcpopt*, %struct.tcpopt** %5, align 8
  %124 = getelementptr inbounds %struct.tcpopt, %struct.tcpopt* %123, i32 0, i32 7
  store i8* %122, i8** %124, align 8
  %125 = load i32*, i32** %6, align 8
  %126 = bitcast i32* %125 to i8*
  %127 = getelementptr inbounds i8, i8* %126, i64 6
  %128 = load %struct.tcpopt*, %struct.tcpopt** %5, align 8
  %129 = getelementptr inbounds %struct.tcpopt, %struct.tcpopt* %128, i32 0, i32 6
  %130 = bitcast i8** %129 to i8*
  %131 = call i32 @bcopy(i8* %127, i8* %130, i32 8)
  %132 = load %struct.tcpopt*, %struct.tcpopt** %5, align 8
  %133 = getelementptr inbounds %struct.tcpopt, %struct.tcpopt* %132, i32 0, i32 6
  %134 = load i8*, i8** %133, align 8
  %135 = call i8* @ntohl(i8* %134)
  %136 = load %struct.tcpopt*, %struct.tcpopt** %5, align 8
  %137 = getelementptr inbounds %struct.tcpopt, %struct.tcpopt* %136, i32 0, i32 6
  store i8* %135, i8** %137, align 8
  br label %244

138:                                              ; preds = %45
  %139 = load i32, i32* %10, align 4
  %140 = load i32, i32* @TCPOLEN_SIGNATURE, align 4
  %141 = icmp ne i32 %139, %140
  br i1 %141, label %142, label %143

142:                                              ; preds = %138
  br label %245

143:                                              ; preds = %138
  %144 = load i64, i64* @TOF_SIGNATURE, align 8
  %145 = load %struct.tcpopt*, %struct.tcpopt** %5, align 8
  %146 = getelementptr inbounds %struct.tcpopt, %struct.tcpopt* %145, i32 0, i32 5
  %147 = load i64, i64* %146, align 8
  %148 = or i64 %147, %144
  store i64 %148, i64* %146, align 8
  %149 = load i32*, i32** %6, align 8
  %150 = getelementptr inbounds i32, i32* %149, i64 2
  %151 = load %struct.tcpopt*, %struct.tcpopt** %5, align 8
  %152 = getelementptr inbounds %struct.tcpopt, %struct.tcpopt* %151, i32 0, i32 0
  store i32* %150, i32** %152, align 8
  br label %244

153:                                              ; preds = %45
  %154 = load i32, i32* %10, align 4
  %155 = load i32, i32* @TCPOLEN_SACK_PERMITTED, align 4
  %156 = icmp ne i32 %154, %155
  br i1 %156, label %157, label %158

157:                                              ; preds = %153
  br label %245

158:                                              ; preds = %153
  %159 = load i32, i32* %8, align 4
  %160 = load i32, i32* @TO_SYN, align 4
  %161 = and i32 %159, %160
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %164, label %163

163:                                              ; preds = %158
  br label %245

164:                                              ; preds = %158
  %165 = load i32, i32* @V_tcp_do_sack, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %168, label %167

167:                                              ; preds = %164
  br label %245

168:                                              ; preds = %164
  %169 = load i64, i64* @TOF_SACKPERM, align 8
  %170 = load %struct.tcpopt*, %struct.tcpopt** %5, align 8
  %171 = getelementptr inbounds %struct.tcpopt, %struct.tcpopt* %170, i32 0, i32 5
  %172 = load i64, i64* %171, align 8
  %173 = or i64 %172, %169
  store i64 %173, i64* %171, align 8
  br label %244

174:                                              ; preds = %45
  %175 = load i32, i32* %10, align 4
  %176 = icmp sle i32 %175, 2
  br i1 %176, label %183, label %177

177:                                              ; preds = %174
  %178 = load i32, i32* %10, align 4
  %179 = sub nsw i32 %178, 2
  %180 = load i32, i32* @TCPOLEN_SACK, align 4
  %181 = srem i32 %179, %180
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %184

183:                                              ; preds = %177, %174
  br label %245

184:                                              ; preds = %177
  %185 = load i32, i32* %8, align 4
  %186 = load i32, i32* @TO_SYN, align 4
  %187 = and i32 %185, %186
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %190

189:                                              ; preds = %184
  br label %245

190:                                              ; preds = %184
  %191 = load i64, i64* @TOF_SACK, align 8
  %192 = load %struct.tcpopt*, %struct.tcpopt** %5, align 8
  %193 = getelementptr inbounds %struct.tcpopt, %struct.tcpopt* %192, i32 0, i32 5
  %194 = load i64, i64* %193, align 8
  %195 = or i64 %194, %191
  store i64 %195, i64* %193, align 8
  %196 = load i32, i32* %10, align 4
  %197 = sub nsw i32 %196, 2
  %198 = load i32, i32* @TCPOLEN_SACK, align 4
  %199 = sdiv i32 %197, %198
  %200 = load %struct.tcpopt*, %struct.tcpopt** %5, align 8
  %201 = getelementptr inbounds %struct.tcpopt, %struct.tcpopt* %200, i32 0, i32 1
  store i32 %199, i32* %201, align 8
  %202 = load i32*, i32** %6, align 8
  %203 = getelementptr inbounds i32, i32* %202, i64 2
  %204 = load %struct.tcpopt*, %struct.tcpopt** %5, align 8
  %205 = getelementptr inbounds %struct.tcpopt, %struct.tcpopt* %204, i32 0, i32 2
  store i32* %203, i32** %205, align 8
  %206 = load i32, i32* @tcps_sack_rcv_blocks, align 4
  %207 = call i32 @TCPSTAT_INC(i32 %206)
  br label %244

208:                                              ; preds = %45
  %209 = load i32, i32* %8, align 4
  %210 = load i32, i32* @TO_SYN, align 4
  %211 = and i32 %209, %210
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %214, label %213

213:                                              ; preds = %208
  br label %245

214:                                              ; preds = %208
  %215 = load i32, i32* @V_tcp_fastopen_client_enable, align 4
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %221, label %217

217:                                              ; preds = %214
  %218 = load i32, i32* @V_tcp_fastopen_server_enable, align 4
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %221, label %220

220:                                              ; preds = %217
  br label %245

221:                                              ; preds = %217, %214
  %222 = load i64, i64* @TOF_FASTOPEN, align 8
  %223 = load %struct.tcpopt*, %struct.tcpopt** %5, align 8
  %224 = getelementptr inbounds %struct.tcpopt, %struct.tcpopt* %223, i32 0, i32 5
  %225 = load i64, i64* %224, align 8
  %226 = or i64 %225, %222
  store i64 %226, i64* %224, align 8
  %227 = load i32, i32* %10, align 4
  %228 = sub nsw i32 %227, 2
  %229 = load %struct.tcpopt*, %struct.tcpopt** %5, align 8
  %230 = getelementptr inbounds %struct.tcpopt, %struct.tcpopt* %229, i32 0, i32 3
  store i32 %228, i32* %230, align 8
  %231 = load %struct.tcpopt*, %struct.tcpopt** %5, align 8
  %232 = getelementptr inbounds %struct.tcpopt, %struct.tcpopt* %231, i32 0, i32 3
  %233 = load i32, i32* %232, align 8
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %238

235:                                              ; preds = %221
  %236 = load i32*, i32** %6, align 8
  %237 = getelementptr inbounds i32, i32* %236, i64 2
  br label %239

238:                                              ; preds = %221
  br label %239

239:                                              ; preds = %238, %235
  %240 = phi i32* [ %237, %235 ], [ null, %238 ]
  %241 = load %struct.tcpopt*, %struct.tcpopt** %5, align 8
  %242 = getelementptr inbounds %struct.tcpopt, %struct.tcpopt* %241, i32 0, i32 4
  store i32* %240, i32** %242, align 8
  br label %244

243:                                              ; preds = %45
  br label %245

244:                                              ; preds = %239, %190, %168, %143, %106, %88, %58
  br label %245

245:                                              ; preds = %244, %243, %220, %213, %189, %183, %167, %163, %157, %142, %105, %87, %81, %57, %51
  %246 = load i32, i32* %10, align 4
  %247 = load i32, i32* %7, align 4
  %248 = sub nsw i32 %247, %246
  store i32 %248, i32* %7, align 4
  %249 = load i32, i32* %10, align 4
  %250 = load i32*, i32** %6, align 8
  %251 = sext i32 %249 to i64
  %252 = getelementptr inbounds i32, i32* %250, i64 %251
  store i32* %252, i32** %6, align 8
  br label %13

253:                                              ; preds = %43, %32, %23, %13
  ret void
}

declare dso_local i32 @bcopy(i8*, i8*, i32) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i8* @ntohl(i8*) #1

declare dso_local i32 @TCPSTAT_INC(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
