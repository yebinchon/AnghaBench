; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netsmb/extr_smb_trantcp.c_nbssn_rq_request.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netsmb/extr_smb_trantcp.c_nbssn_rq_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nbpcb = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.thread = type { i32 }
%struct.mbchain = type { i32 }
%struct.mdchain = type { i32 }
%struct.mbuf = type { i32 }
%struct.timeval = type { i32 }
%struct.sockaddr_in = type { i32, i32 }

@M_NBDATA = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@NB_SSN_REQUEST = common dso_local global i32 0, align 4
@NBST_RQSENT = common dso_local global i32 0, align 4
@POLLIN = common dso_local global i32 0, align 4
@EWOULDBLOCK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"initial request timeout\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"recv() error %d\0A\00", align 1
@NB_SSN_POSRESP = common dso_local global i64 0, align 8
@NBST_SESSION = common dso_local global i32 0, align 4
@NBF_CONNECTED = common dso_local global i32 0, align 4
@NB_SSN_RTGRESP = common dso_local global i64 0, align 8
@ECONNABORTED = common dso_local global i32 0, align 4
@MB_MSYSTEM = common dso_local global i32 0, align 4
@NBST_RETARGET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nbpcb*, %struct.thread*)* @nbssn_rq_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nbssn_rq_request(%struct.nbpcb* %0, %struct.thread* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nbpcb*, align 8
  %5 = alloca %struct.thread*, align 8
  %6 = alloca %struct.mbchain*, align 8
  %7 = alloca %struct.mdchain*, align 8
  %8 = alloca %struct.mbuf*, align 8
  %9 = alloca %struct.timeval, align 4
  %10 = alloca %struct.sockaddr_in, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.nbpcb* %0, %struct.nbpcb** %4, align 8
  store %struct.thread* %1, %struct.thread** %5, align 8
  %15 = load i32, i32* @M_NBDATA, align 4
  %16 = load i32, i32* @M_WAITOK, align 4
  %17 = call %struct.mdchain* @malloc(i32 4, i32 %15, i32 %16)
  %18 = bitcast %struct.mdchain* %17 to %struct.mbchain*
  store %struct.mbchain* %18, %struct.mbchain** %6, align 8
  %19 = load i32, i32* @M_NBDATA, align 4
  %20 = load i32, i32* @M_WAITOK, align 4
  %21 = call %struct.mdchain* @malloc(i32 4, i32 %19, i32 %20)
  store %struct.mdchain* %21, %struct.mdchain** %7, align 8
  %22 = load %struct.mbchain*, %struct.mbchain** %6, align 8
  %23 = bitcast %struct.mbchain* %22 to %struct.mdchain*
  %24 = call i32 @mb_init(%struct.mdchain* %23)
  store i32 %24, i32* %13, align 4
  %25 = load i32, i32* %13, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %2
  %28 = load %struct.mbchain*, %struct.mbchain** %6, align 8
  %29 = bitcast %struct.mbchain* %28 to %struct.mdchain*
  %30 = load i32, i32* @M_NBDATA, align 4
  %31 = call i32 @free(%struct.mdchain* %29, i32 %30)
  %32 = load %struct.mdchain*, %struct.mdchain** %7, align 8
  %33 = load i32, i32* @M_NBDATA, align 4
  %34 = call i32 @free(%struct.mdchain* %32, i32 %33)
  %35 = load i32, i32* %13, align 4
  store i32 %35, i32* %3, align 4
  br label %213

36:                                               ; preds = %2
  %37 = load %struct.mbchain*, %struct.mbchain** %6, align 8
  %38 = bitcast %struct.mbchain* %37 to %struct.mdchain*
  %39 = call i32 @mb_put_uint32le(%struct.mdchain* %38, i32 0)
  %40 = load %struct.mbchain*, %struct.mbchain** %6, align 8
  %41 = bitcast %struct.mbchain* %40 to %struct.mdchain*
  %42 = load %struct.nbpcb*, %struct.nbpcb** %4, align 8
  %43 = getelementptr inbounds %struct.nbpcb, %struct.nbpcb* %42, i32 0, i32 6
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @nb_put_name(%struct.mdchain* %41, i32 %44)
  %46 = load %struct.mbchain*, %struct.mbchain** %6, align 8
  %47 = bitcast %struct.mbchain* %46 to %struct.mdchain*
  %48 = load %struct.nbpcb*, %struct.nbpcb** %4, align 8
  %49 = getelementptr inbounds %struct.nbpcb, %struct.nbpcb* %48, i32 0, i32 5
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @nb_put_name(%struct.mdchain* %47, i32 %50)
  %52 = load %struct.mbchain*, %struct.mbchain** %6, align 8
  %53 = getelementptr inbounds %struct.mbchain, %struct.mbchain* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @NB_SSN_REQUEST, align 4
  %56 = load %struct.mbchain*, %struct.mbchain** %6, align 8
  %57 = bitcast %struct.mbchain* %56 to %struct.mdchain*
  %58 = call i64 @mb_fixhdr(%struct.mdchain* %57)
  %59 = sub nsw i64 %58, 4
  %60 = call i32 @nb_sethdr(i32 %54, i32 %55, i64 %59)
  %61 = load %struct.nbpcb*, %struct.nbpcb** %4, align 8
  %62 = getelementptr inbounds %struct.nbpcb, %struct.nbpcb* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.mbchain*, %struct.mbchain** %6, align 8
  %65 = getelementptr inbounds %struct.mbchain, %struct.mbchain* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.thread*, %struct.thread** %5, align 8
  %68 = call i32 @nb_sosend(i32 %63, i32 %66, i32 0, %struct.thread* %67)
  store i32 %68, i32* %13, align 4
  %69 = load i32, i32* %13, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %75, label %71

71:                                               ; preds = %36
  %72 = load i32, i32* @NBST_RQSENT, align 4
  %73 = load %struct.nbpcb*, %struct.nbpcb** %4, align 8
  %74 = getelementptr inbounds %struct.nbpcb, %struct.nbpcb* %73, i32 0, i32 1
  store i32 %72, i32* %74, align 4
  br label %75

75:                                               ; preds = %71, %36
  %76 = load %struct.mbchain*, %struct.mbchain** %6, align 8
  %77 = bitcast %struct.mbchain* %76 to %struct.mdchain*
  %78 = call i32 @mb_detach(%struct.mdchain* %77)
  %79 = load %struct.mbchain*, %struct.mbchain** %6, align 8
  %80 = bitcast %struct.mbchain* %79 to %struct.mdchain*
  %81 = call i32 @mb_done(%struct.mdchain* %80)
  %82 = load %struct.mbchain*, %struct.mbchain** %6, align 8
  %83 = bitcast %struct.mbchain* %82 to %struct.mdchain*
  %84 = load i32, i32* @M_NBDATA, align 4
  %85 = call i32 @free(%struct.mdchain* %83, i32 %84)
  %86 = load i32, i32* %13, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %75
  %89 = load %struct.mdchain*, %struct.mdchain** %7, align 8
  %90 = load i32, i32* @M_NBDATA, align 4
  %91 = call i32 @free(%struct.mdchain* %89, i32 %90)
  %92 = load i32, i32* %13, align 4
  store i32 %92, i32* %3, align 4
  br label %213

93:                                               ; preds = %75
  %94 = load %struct.nbpcb*, %struct.nbpcb** %4, align 8
  %95 = getelementptr inbounds %struct.nbpcb, %struct.nbpcb* %94, i32 0, i32 4
  %96 = call i32 @TIMESPEC_TO_TIMEVAL(%struct.timeval* %9, i32* %95)
  %97 = load %struct.nbpcb*, %struct.nbpcb** %4, align 8
  %98 = getelementptr inbounds %struct.nbpcb, %struct.nbpcb* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @POLLIN, align 4
  %101 = load %struct.thread*, %struct.thread** %5, align 8
  %102 = call i32 @selsocket(i32 %99, i32 %100, %struct.timeval* %9, %struct.thread* %101)
  store i32 %102, i32* %13, align 4
  %103 = load i32, i32* %13, align 4
  %104 = load i32, i32* @EWOULDBLOCK, align 4
  %105 = icmp eq i32 %103, %104
  br i1 %105, label %106, label %112

106:                                              ; preds = %93
  %107 = call i32 (i8*, ...) @NBDEBUG(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %108 = load %struct.mdchain*, %struct.mdchain** %7, align 8
  %109 = load i32, i32* @M_NBDATA, align 4
  %110 = call i32 @free(%struct.mdchain* %108, i32 %109)
  %111 = load i32, i32* @ETIMEDOUT, align 4
  store i32 %111, i32* %3, align 4
  br label %213

112:                                              ; preds = %93
  %113 = load i32, i32* %13, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %120

115:                                              ; preds = %112
  %116 = load %struct.mdchain*, %struct.mdchain** %7, align 8
  %117 = load i32, i32* @M_NBDATA, align 4
  %118 = call i32 @free(%struct.mdchain* %116, i32 %117)
  %119 = load i32, i32* %13, align 4
  store i32 %119, i32* %3, align 4
  br label %213

120:                                              ; preds = %112
  %121 = load %struct.nbpcb*, %struct.nbpcb** %4, align 8
  %122 = load %struct.thread*, %struct.thread** %5, align 8
  %123 = call i32 @nbssn_recv(%struct.nbpcb* %121, %struct.mbuf** %8, i32* %14, i64* %12, %struct.thread* %122)
  store i32 %123, i32* %13, align 4
  %124 = load i32, i32* %13, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %133

126:                                              ; preds = %120
  %127 = load i32, i32* %13, align 4
  %128 = call i32 (i8*, ...) @NBDEBUG(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %127)
  %129 = load %struct.mdchain*, %struct.mdchain** %7, align 8
  %130 = load i32, i32* @M_NBDATA, align 4
  %131 = call i32 @free(%struct.mdchain* %129, i32 %130)
  %132 = load i32, i32* %13, align 4
  store i32 %132, i32* %3, align 4
  br label %213

133:                                              ; preds = %120
  %134 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %135 = icmp ne %struct.mbuf* %134, null
  br i1 %135, label %136, label %140

136:                                              ; preds = %133
  %137 = load %struct.mdchain*, %struct.mdchain** %7, align 8
  %138 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %139 = call i32 @md_initm(%struct.mdchain* %137, %struct.mbuf* %138)
  br label %140

140:                                              ; preds = %136, %133
  store i32 0, i32* %13, align 4
  br label %141

141:                                              ; preds = %140
  %142 = load i64, i64* %12, align 8
  %143 = load i64, i64* @NB_SSN_POSRESP, align 8
  %144 = icmp eq i64 %142, %143
  br i1 %144, label %145, label %154

145:                                              ; preds = %141
  %146 = load i32, i32* @NBST_SESSION, align 4
  %147 = load %struct.nbpcb*, %struct.nbpcb** %4, align 8
  %148 = getelementptr inbounds %struct.nbpcb, %struct.nbpcb* %147, i32 0, i32 1
  store i32 %146, i32* %148, align 4
  %149 = load i32, i32* @NBF_CONNECTED, align 4
  %150 = load %struct.nbpcb*, %struct.nbpcb** %4, align 8
  %151 = getelementptr inbounds %struct.nbpcb, %struct.nbpcb* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 4
  %153 = or i32 %152, %149
  store i32 %153, i32* %151, align 4
  br label %202

154:                                              ; preds = %141
  %155 = load i64, i64* %12, align 8
  %156 = load i64, i64* @NB_SSN_RTGRESP, align 8
  %157 = icmp ne i64 %155, %156
  br i1 %157, label %158, label %160

158:                                              ; preds = %154
  %159 = load i32, i32* @ECONNABORTED, align 4
  store i32 %159, i32* %13, align 4
  br label %202

160:                                              ; preds = %154
  %161 = load i32, i32* %14, align 4
  %162 = icmp ne i32 %161, 6
  br i1 %162, label %163, label %165

163:                                              ; preds = %160
  %164 = load i32, i32* @ECONNABORTED, align 4
  store i32 %164, i32* %13, align 4
  br label %202

165:                                              ; preds = %160
  %166 = load %struct.mdchain*, %struct.mdchain** %7, align 8
  %167 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %10, i32 0, i32 1
  %168 = ptrtoint i32* %167 to i32
  %169 = load i32, i32* @MB_MSYSTEM, align 4
  %170 = call i32 @md_get_mem(%struct.mdchain* %166, i32 %168, i32 4, i32 %169)
  %171 = load %struct.mdchain*, %struct.mdchain** %7, align 8
  %172 = call i32 @md_get_uint16(%struct.mdchain* %171, i32* %11)
  %173 = load i32, i32* %11, align 4
  %174 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %10, i32 0, i32 0
  store i32 %173, i32* %174, align 4
  %175 = load i32, i32* @NBST_RETARGET, align 4
  %176 = load %struct.nbpcb*, %struct.nbpcb** %4, align 8
  %177 = getelementptr inbounds %struct.nbpcb, %struct.nbpcb* %176, i32 0, i32 1
  store i32 %175, i32* %177, align 4
  %178 = load %struct.nbpcb*, %struct.nbpcb** %4, align 8
  %179 = getelementptr inbounds %struct.nbpcb, %struct.nbpcb* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = load %struct.thread*, %struct.thread** %5, align 8
  %182 = call i32 @smb_nbst_disconnect(i32 %180, %struct.thread* %181)
  %183 = load %struct.nbpcb*, %struct.nbpcb** %4, align 8
  %184 = load %struct.thread*, %struct.thread** %5, align 8
  %185 = call i32 @nb_connect_in(%struct.nbpcb* %183, %struct.sockaddr_in* %10, %struct.thread* %184)
  store i32 %185, i32* %13, align 4
  %186 = load i32, i32* %13, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %192, label %188

188:                                              ; preds = %165
  %189 = load %struct.nbpcb*, %struct.nbpcb** %4, align 8
  %190 = load %struct.thread*, %struct.thread** %5, align 8
  %191 = call i32 @nbssn_rq_request(%struct.nbpcb* %189, %struct.thread* %190)
  store i32 %191, i32* %13, align 4
  br label %192

192:                                              ; preds = %188, %165
  %193 = load i32, i32* %13, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %201

195:                                              ; preds = %192
  %196 = load %struct.nbpcb*, %struct.nbpcb** %4, align 8
  %197 = getelementptr inbounds %struct.nbpcb, %struct.nbpcb* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 4
  %199 = load %struct.thread*, %struct.thread** %5, align 8
  %200 = call i32 @smb_nbst_disconnect(i32 %198, %struct.thread* %199)
  br label %202

201:                                              ; preds = %192
  br label %202

202:                                              ; preds = %201, %195, %163, %158, %145
  %203 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %204 = icmp ne %struct.mbuf* %203, null
  br i1 %204, label %205, label %208

205:                                              ; preds = %202
  %206 = load %struct.mdchain*, %struct.mdchain** %7, align 8
  %207 = call i32 @md_done(%struct.mdchain* %206)
  br label %208

208:                                              ; preds = %205, %202
  %209 = load %struct.mdchain*, %struct.mdchain** %7, align 8
  %210 = load i32, i32* @M_NBDATA, align 4
  %211 = call i32 @free(%struct.mdchain* %209, i32 %210)
  %212 = load i32, i32* %13, align 4
  store i32 %212, i32* %3, align 4
  br label %213

213:                                              ; preds = %208, %126, %115, %106, %88, %27
  %214 = load i32, i32* %3, align 4
  ret i32 %214
}

declare dso_local %struct.mdchain* @malloc(i32, i32, i32) #1

declare dso_local i32 @mb_init(%struct.mdchain*) #1

declare dso_local i32 @free(%struct.mdchain*, i32) #1

declare dso_local i32 @mb_put_uint32le(%struct.mdchain*, i32) #1

declare dso_local i32 @nb_put_name(%struct.mdchain*, i32) #1

declare dso_local i32 @nb_sethdr(i32, i32, i64) #1

declare dso_local i64 @mb_fixhdr(%struct.mdchain*) #1

declare dso_local i32 @nb_sosend(i32, i32, i32, %struct.thread*) #1

declare dso_local i32 @mb_detach(%struct.mdchain*) #1

declare dso_local i32 @mb_done(%struct.mdchain*) #1

declare dso_local i32 @TIMESPEC_TO_TIMEVAL(%struct.timeval*, i32*) #1

declare dso_local i32 @selsocket(i32, i32, %struct.timeval*, %struct.thread*) #1

declare dso_local i32 @NBDEBUG(i8*, ...) #1

declare dso_local i32 @nbssn_recv(%struct.nbpcb*, %struct.mbuf**, i32*, i64*, %struct.thread*) #1

declare dso_local i32 @md_initm(%struct.mdchain*, %struct.mbuf*) #1

declare dso_local i32 @md_get_mem(%struct.mdchain*, i32, i32, i32) #1

declare dso_local i32 @md_get_uint16(%struct.mdchain*, i32*) #1

declare dso_local i32 @smb_nbst_disconnect(i32, %struct.thread*) #1

declare dso_local i32 @nb_connect_in(%struct.nbpcb*, %struct.sockaddr_in*, %struct.thread*) #1

declare dso_local i32 @md_done(%struct.mdchain*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
