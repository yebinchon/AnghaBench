; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netsmb/extr_smb_trantcp.c_nbssn_recv.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netsmb/extr_smb_trantcp.c_nbssn_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nbpcb = type { i64, %struct.socket* }
%struct.socket = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.mbuf = type { %struct.mbuf* }
%struct.thread = type { i32 }
%struct.uio = type { i64, %struct.thread* }
%struct.sockaddr = type { i32 }

@ENOTCONN = common dso_local global i32 0, align 4
@MSG_DONTWAIT = common dso_local global i32 0, align 4
@SS_ISDISCONNECTING = common dso_local global i32 0, align 4
@SS_ISDISCONNECTED = common dso_local global i32 0, align 4
@SBS_CANTRCVMORE = common dso_local global i32 0, align 4
@NBST_CLOSED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"session closed by peer\0A\00", align 1
@ECONNRESET = common dso_local global i32 0, align 4
@NBST_SESSION = common dso_local global i64 0, align 8
@NB_SSN_KEEPALIVE = common dso_local global i64 0, align 8
@MSG_WAITALL = common dso_local global i32 0, align 4
@NB_SORECEIVE_CHUNK = common dso_local global i32 0, align 4
@EWOULDBLOCK = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@ERESTART = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"packet is shorter than expected\0A\00", align 1
@EPIPE = common dso_local global i32 0, align 4
@NB_SSN_MESSAGE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [23 x i8] c"non-session packet %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nbpcb*, %struct.mbuf**, i32*, i64*, %struct.thread*)* @nbssn_recv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nbssn_recv(%struct.nbpcb* %0, %struct.mbuf** %1, i32* %2, i64* %3, %struct.thread* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.nbpcb*, align 8
  %8 = alloca %struct.mbuf**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca %struct.thread*, align 8
  %12 = alloca %struct.socket*, align 8
  %13 = alloca %struct.uio, align 8
  %14 = alloca %struct.mbuf*, align 8
  %15 = alloca %struct.mbuf*, align 8
  %16 = alloca %struct.mbuf*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.nbpcb* %0, %struct.nbpcb** %7, align 8
  store %struct.mbuf** %1, %struct.mbuf*** %8, align 8
  store i32* %2, i32** %9, align 8
  store i64* %3, i64** %10, align 8
  store %struct.thread* %4, %struct.thread** %11, align 8
  %22 = load %struct.nbpcb*, %struct.nbpcb** %7, align 8
  %23 = getelementptr inbounds %struct.nbpcb, %struct.nbpcb* %22, i32 0, i32 1
  %24 = load %struct.socket*, %struct.socket** %23, align 8
  store %struct.socket* %24, %struct.socket** %12, align 8
  %25 = load %struct.socket*, %struct.socket** %12, align 8
  %26 = icmp eq %struct.socket* %25, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %5
  %28 = load i32, i32* @ENOTCONN, align 4
  store i32 %28, i32* %6, align 4
  br label %204

29:                                               ; preds = %5
  %30 = load %struct.mbuf**, %struct.mbuf*** %8, align 8
  %31 = icmp ne %struct.mbuf** %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %29
  %33 = load %struct.mbuf**, %struct.mbuf*** %8, align 8
  store %struct.mbuf* null, %struct.mbuf** %33, align 8
  br label %34

34:                                               ; preds = %32, %29
  store %struct.mbuf* null, %struct.mbuf** %14, align 8
  br label %35

35:                                               ; preds = %177, %81, %34
  store i32 0, i32* %18, align 4
  store i64 0, i64* %17, align 8
  %36 = load %struct.nbpcb*, %struct.nbpcb** %7, align 8
  %37 = load i32, i32* @MSG_DONTWAIT, align 4
  %38 = load %struct.thread*, %struct.thread** %11, align 8
  %39 = call i32 @nbssn_recvhdr(%struct.nbpcb* %36, i32* %18, i64* %17, i32 %37, %struct.thread* %38)
  store i32 %39, i32* %20, align 4
  %40 = load %struct.socket*, %struct.socket** %12, align 8
  %41 = getelementptr inbounds %struct.socket, %struct.socket* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @SS_ISDISCONNECTING, align 4
  %44 = load i32, i32* @SS_ISDISCONNECTED, align 4
  %45 = or i32 %43, %44
  %46 = and i32 %42, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %56, label %48

48:                                               ; preds = %35
  %49 = load %struct.socket*, %struct.socket** %12, align 8
  %50 = getelementptr inbounds %struct.socket, %struct.socket* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @SBS_CANTRCVMORE, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %48, %35
  %57 = load i64, i64* @NBST_CLOSED, align 8
  %58 = load %struct.nbpcb*, %struct.nbpcb** %7, align 8
  %59 = getelementptr inbounds %struct.nbpcb, %struct.nbpcb* %58, i32 0, i32 0
  store i64 %57, i64* %59, align 8
  %60 = call i32 (i8*, ...) @NBDEBUG(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %61 = load i32, i32* @ECONNRESET, align 4
  store i32 %61, i32* %6, align 4
  br label %204

62:                                               ; preds = %48
  %63 = load i32, i32* %20, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %62
  %66 = load i32, i32* %20, align 4
  store i32 %66, i32* %6, align 4
  br label %204

67:                                               ; preds = %62
  %68 = load i32, i32* %18, align 4
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %77

70:                                               ; preds = %67
  %71 = load %struct.nbpcb*, %struct.nbpcb** %7, align 8
  %72 = getelementptr inbounds %struct.nbpcb, %struct.nbpcb* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @NBST_SESSION, align 8
  %75 = icmp ne i64 %73, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %70
  br label %178

77:                                               ; preds = %70, %67
  %78 = load i64, i64* %17, align 8
  %79 = load i64, i64* @NB_SSN_KEEPALIVE, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %77
  br label %35

82:                                               ; preds = %77
  %83 = load i32, i32* %18, align 4
  store i32 %83, i32* %19, align 4
  br label %84

84:                                               ; preds = %157, %82
  %85 = load i32, i32* %19, align 4
  %86 = icmp sgt i32 %85, 0
  br i1 %86, label %87, label %158

87:                                               ; preds = %84
  store %struct.mbuf* null, %struct.mbuf** %15, align 8
  %88 = load i32, i32* @MSG_WAITALL, align 4
  store i32 %88, i32* %21, align 4
  %89 = call i32 @bzero(%struct.uio* %13, i32 16)
  %90 = load i32, i32* %19, align 4
  %91 = load i32, i32* @NB_SORECEIVE_CHUNK, align 4
  %92 = call i64 @min(i32 %90, i32 %91)
  %93 = getelementptr inbounds %struct.uio, %struct.uio* %13, i32 0, i32 0
  store i64 %92, i64* %93, align 8
  %94 = load %struct.thread*, %struct.thread** %11, align 8
  %95 = getelementptr inbounds %struct.uio, %struct.uio* %13, i32 0, i32 1
  store %struct.thread* %94, %struct.thread** %95, align 8
  %96 = getelementptr inbounds %struct.uio, %struct.uio* %13, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i32, i32* %19, align 4
  %99 = sext i32 %98 to i64
  %100 = sub nsw i64 %99, %97
  %101 = trunc i64 %100 to i32
  store i32 %101, i32* %19, align 4
  br label %102

102:                                              ; preds = %123, %87
  %103 = load i32, i32* @MSG_WAITALL, align 4
  store i32 %103, i32* %21, align 4
  %104 = load %struct.socket*, %struct.socket** %12, align 8
  %105 = getelementptr inbounds %struct.socket, %struct.socket* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @CURVNET_SET(i32 %106)
  %108 = load %struct.socket*, %struct.socket** %12, align 8
  %109 = call i32 @soreceive(%struct.socket* %108, %struct.sockaddr** null, %struct.uio* %13, %struct.mbuf** %15, %struct.mbuf** null, i32* %21)
  store i32 %109, i32* %20, align 4
  %110 = call i32 (...) @CURVNET_RESTORE()
  br label %111

111:                                              ; preds = %102
  %112 = load i32, i32* %20, align 4
  %113 = load i32, i32* @EWOULDBLOCK, align 4
  %114 = icmp eq i32 %112, %113
  br i1 %114, label %123, label %115

115:                                              ; preds = %111
  %116 = load i32, i32* %20, align 4
  %117 = load i32, i32* @EINTR, align 4
  %118 = icmp eq i32 %116, %117
  br i1 %118, label %123, label %119

119:                                              ; preds = %115
  %120 = load i32, i32* %20, align 4
  %121 = load i32, i32* @ERESTART, align 4
  %122 = icmp eq i32 %120, %121
  br label %123

123:                                              ; preds = %119, %115, %111
  %124 = phi i1 [ true, %115 ], [ true, %111 ], [ %122, %119 ]
  br i1 %124, label %102, label %125

125:                                              ; preds = %123
  %126 = load i32, i32* %20, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %125
  br label %179

129:                                              ; preds = %125
  %130 = getelementptr inbounds %struct.uio, %struct.uio* %13, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = icmp sgt i64 %131, 0
  br i1 %132, label %133, label %136

133:                                              ; preds = %129
  %134 = call i32 @SMBERROR(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %135 = load i32, i32* @EPIPE, align 4
  store i32 %135, i32* %20, align 4
  br label %179

136:                                              ; preds = %129
  %137 = load %struct.mbuf*, %struct.mbuf** %14, align 8
  %138 = icmp eq %struct.mbuf* %137, null
  br i1 %138, label %139, label %141

139:                                              ; preds = %136
  %140 = load %struct.mbuf*, %struct.mbuf** %15, align 8
  store %struct.mbuf* %140, %struct.mbuf** %14, align 8
  br label %157

141:                                              ; preds = %136
  %142 = load %struct.mbuf*, %struct.mbuf** %14, align 8
  store %struct.mbuf* %142, %struct.mbuf** %16, align 8
  br label %143

143:                                              ; preds = %149, %141
  %144 = load %struct.mbuf*, %struct.mbuf** %16, align 8
  %145 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %144, i32 0, i32 0
  %146 = load %struct.mbuf*, %struct.mbuf** %145, align 8
  %147 = icmp ne %struct.mbuf* %146, null
  br i1 %147, label %148, label %153

148:                                              ; preds = %143
  br label %149

149:                                              ; preds = %148
  %150 = load %struct.mbuf*, %struct.mbuf** %16, align 8
  %151 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %150, i32 0, i32 0
  %152 = load %struct.mbuf*, %struct.mbuf** %151, align 8
  store %struct.mbuf* %152, %struct.mbuf** %16, align 8
  br label %143

153:                                              ; preds = %143
  %154 = load %struct.mbuf*, %struct.mbuf** %15, align 8
  %155 = load %struct.mbuf*, %struct.mbuf** %16, align 8
  %156 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %155, i32 0, i32 0
  store %struct.mbuf* %154, %struct.mbuf** %156, align 8
  br label %157

157:                                              ; preds = %153, %139
  br label %84

158:                                              ; preds = %84
  %159 = load %struct.nbpcb*, %struct.nbpcb** %7, align 8
  %160 = getelementptr inbounds %struct.nbpcb, %struct.nbpcb* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = load i64, i64* @NBST_SESSION, align 8
  %163 = icmp eq i64 %161, %162
  br i1 %163, label %164, label %169

164:                                              ; preds = %158
  %165 = load i64, i64* %17, align 8
  %166 = load i64, i64* @NB_SSN_MESSAGE, align 8
  %167 = icmp eq i64 %165, %166
  br i1 %167, label %168, label %169

168:                                              ; preds = %164
  br label %178

169:                                              ; preds = %164, %158
  %170 = load i64, i64* %17, align 8
  %171 = call i32 (i8*, ...) @NBDEBUG(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i64 %170)
  %172 = load %struct.mbuf*, %struct.mbuf** %14, align 8
  %173 = icmp ne %struct.mbuf* %172, null
  br i1 %173, label %174, label %177

174:                                              ; preds = %169
  %175 = load %struct.mbuf*, %struct.mbuf** %14, align 8
  %176 = call i32 @m_freem(%struct.mbuf* %175)
  store %struct.mbuf* null, %struct.mbuf** %14, align 8
  br label %177

177:                                              ; preds = %174, %169
  br label %35

178:                                              ; preds = %168, %76
  br label %179

179:                                              ; preds = %178, %133, %128
  %180 = load i32, i32* %20, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %190

182:                                              ; preds = %179
  %183 = load %struct.mbuf*, %struct.mbuf** %14, align 8
  %184 = icmp ne %struct.mbuf* %183, null
  br i1 %184, label %185, label %188

185:                                              ; preds = %182
  %186 = load %struct.mbuf*, %struct.mbuf** %14, align 8
  %187 = call i32 @m_freem(%struct.mbuf* %186)
  br label %188

188:                                              ; preds = %185, %182
  %189 = load i32, i32* %20, align 4
  store i32 %189, i32* %6, align 4
  br label %204

190:                                              ; preds = %179
  %191 = load %struct.mbuf**, %struct.mbuf*** %8, align 8
  %192 = icmp ne %struct.mbuf** %191, null
  br i1 %192, label %193, label %196

193:                                              ; preds = %190
  %194 = load %struct.mbuf*, %struct.mbuf** %14, align 8
  %195 = load %struct.mbuf**, %struct.mbuf*** %8, align 8
  store %struct.mbuf* %194, %struct.mbuf** %195, align 8
  br label %199

196:                                              ; preds = %190
  %197 = load %struct.mbuf*, %struct.mbuf** %14, align 8
  %198 = call i32 @m_freem(%struct.mbuf* %197)
  br label %199

199:                                              ; preds = %196, %193
  %200 = load i32, i32* %18, align 4
  %201 = load i32*, i32** %9, align 8
  store i32 %200, i32* %201, align 4
  %202 = load i64, i64* %17, align 8
  %203 = load i64*, i64** %10, align 8
  store i64 %202, i64* %203, align 8
  store i32 0, i32* %6, align 4
  br label %204

204:                                              ; preds = %199, %188, %65, %56, %27
  %205 = load i32, i32* %6, align 4
  ret i32 %205
}

declare dso_local i32 @nbssn_recvhdr(%struct.nbpcb*, i32*, i64*, i32, %struct.thread*) #1

declare dso_local i32 @NBDEBUG(i8*, ...) #1

declare dso_local i32 @bzero(%struct.uio*, i32) #1

declare dso_local i64 @min(i32, i32) #1

declare dso_local i32 @CURVNET_SET(i32) #1

declare dso_local i32 @soreceive(%struct.socket*, %struct.sockaddr**, %struct.uio*, %struct.mbuf**, %struct.mbuf**, i32*) #1

declare dso_local i32 @CURVNET_RESTORE(...) #1

declare dso_local i32 @SMBERROR(i8*) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
