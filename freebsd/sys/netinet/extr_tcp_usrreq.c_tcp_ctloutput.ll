; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_tcp_usrreq.c_tcp_ctloutput.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_tcp_usrreq.c_tcp_ctloutput.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32 }
%struct.sockopt = type { i64, i32, i32 }
%struct.inpcb = type { i32, i32, %struct.ip6_pktopts*, %struct.TYPE_2__ }
%struct.ip6_pktopts = type { i64 }
%struct.TYPE_2__ = type { i32 }
%struct.tcpcb = type { i64, i64, i32, %struct.tcp_function_block*, i32 }
%struct.tcp_function_block = type { i32 (%struct.tcpcb*)*, i32, i32 (%struct.tcpcb*)*, i32 (%struct.socket.0*, %struct.sockopt.1*, %struct.inpcb.2*, %struct.tcpcb*)*, i32, i32, i32 (%struct.tcpcb*, i32)* }
%struct.socket.0 = type opaque
%struct.sockopt.1 = type opaque
%struct.inpcb.2 = type opaque
%struct.tcp_function_set = type { i8*, i32 }

@.str = private unnamed_addr constant [27 x i8] c"tcp_ctloutput: inp == NULL\00", align 1
@IPPROTO_TCP = common dso_local global i64 0, align 8
@INP_TIMEWAIT = common dso_local global i32 0, align 4
@INP_DROPPED = common dso_local global i32 0, align 4
@ECONNRESET = common dso_local global i32 0, align 4
@SOPT_SET = common dso_local global i32 0, align 4
@TCP_FUNCTION_BLK = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@TCPS_CLOSED = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@TCP_FUNC_BEING_REMOVED = common dso_local global i32 0, align 4
@SOPT_GET = common dso_local global i32 0, align 4
@TCP_FUNCTION_NAME_LEN_MAX = common dso_local global i32 0, align 4
@HPTS_REMOVE_ALL = common dso_local global i32 0, align 4
@INC_IPV6MINMTU = common dso_local global i32 0, align 4
@INC_ISIPV6 = common dso_local global i32 0, align 4
@INP_IPV6PROTO = common dso_local global i32 0, align 4
@IP6PO_MINMTU_ALL = common dso_local global i64 0, align 8
@IPPROTO_IPV6 = common dso_local global i64 0, align 8
@IPV6_USE_MIN_MTU = common dso_local global i32 0, align 4
@TCP6_MSS = common dso_local global i64 0, align 8
@TCPS_SYN_SENT = common dso_local global i64 0, align 8
@TF_TOE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tcp_ctloutput(%struct.socket* %0, %struct.sockopt* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.socket*, align 8
  %5 = alloca %struct.sockopt*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.inpcb*, align 8
  %8 = alloca %struct.tcpcb*, align 8
  %9 = alloca %struct.tcp_function_block*, align 8
  %10 = alloca %struct.tcp_function_set, align 8
  store %struct.socket* %0, %struct.socket** %4, align 8
  store %struct.sockopt* %1, %struct.sockopt** %5, align 8
  store i32 0, i32* %6, align 4
  %11 = load %struct.socket*, %struct.socket** %4, align 8
  %12 = call %struct.inpcb* @sotoinpcb(%struct.socket* %11)
  store %struct.inpcb* %12, %struct.inpcb** %7, align 8
  %13 = load %struct.inpcb*, %struct.inpcb** %7, align 8
  %14 = icmp ne %struct.inpcb* %13, null
  %15 = zext i1 %14 to i32
  %16 = call i32 @KASSERT(i32 %15, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.sockopt*, %struct.sockopt** %5, align 8
  %18 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @IPPROTO_TCP, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = load i32, i32* %6, align 4
  store i32 %23, i32* %3, align 4
  br label %251

24:                                               ; preds = %2
  %25 = load %struct.inpcb*, %struct.inpcb** %7, align 8
  %26 = call i32 @INP_WLOCK(%struct.inpcb* %25)
  %27 = load %struct.inpcb*, %struct.inpcb** %7, align 8
  %28 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @INP_TIMEWAIT, align 4
  %31 = load i32, i32* @INP_DROPPED, align 4
  %32 = or i32 %30, %31
  %33 = and i32 %29, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %24
  %36 = load %struct.inpcb*, %struct.inpcb** %7, align 8
  %37 = call i32 @INP_WUNLOCK(%struct.inpcb* %36)
  %38 = load i32, i32* @ECONNRESET, align 4
  store i32 %38, i32* %3, align 4
  br label %251

39:                                               ; preds = %24
  %40 = load %struct.inpcb*, %struct.inpcb** %7, align 8
  %41 = call %struct.tcpcb* @intotcpcb(%struct.inpcb* %40)
  store %struct.tcpcb* %41, %struct.tcpcb** %8, align 8
  %42 = load %struct.sockopt*, %struct.sockopt** %5, align 8
  %43 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @SOPT_SET, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %197

47:                                               ; preds = %39
  %48 = load %struct.sockopt*, %struct.sockopt** %5, align 8
  %49 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @TCP_FUNCTION_BLK, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %197

53:                                               ; preds = %47
  %54 = load %struct.inpcb*, %struct.inpcb** %7, align 8
  %55 = call i32 @INP_WUNLOCK(%struct.inpcb* %54)
  %56 = load %struct.sockopt*, %struct.sockopt** %5, align 8
  %57 = call i32 @sooptcopyin(%struct.sockopt* %56, %struct.tcp_function_set* %10, i32 16, i32 16)
  store i32 %57, i32* %6, align 4
  %58 = load i32, i32* %6, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %53
  %61 = load i32, i32* %6, align 4
  store i32 %61, i32* %3, align 4
  br label %251

62:                                               ; preds = %53
  %63 = load %struct.inpcb*, %struct.inpcb** %7, align 8
  %64 = call i32 @INP_WLOCK_RECHECK(%struct.inpcb* %63)
  %65 = call %struct.tcp_function_block* @find_and_ref_tcp_functions(%struct.tcp_function_set* %10)
  store %struct.tcp_function_block* %65, %struct.tcp_function_block** %9, align 8
  %66 = load %struct.tcp_function_block*, %struct.tcp_function_block** %9, align 8
  %67 = icmp eq %struct.tcp_function_block* %66, null
  br i1 %67, label %68, label %72

68:                                               ; preds = %62
  %69 = load %struct.inpcb*, %struct.inpcb** %7, align 8
  %70 = call i32 @INP_WUNLOCK(%struct.inpcb* %69)
  %71 = load i32, i32* @ENOENT, align 4
  store i32 %71, i32* %3, align 4
  br label %251

72:                                               ; preds = %62
  %73 = load %struct.tcpcb*, %struct.tcpcb** %8, align 8
  %74 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %73, i32 0, i32 3
  %75 = load %struct.tcp_function_block*, %struct.tcp_function_block** %74, align 8
  %76 = load %struct.tcp_function_block*, %struct.tcp_function_block** %9, align 8
  %77 = icmp eq %struct.tcp_function_block* %75, %76
  br i1 %77, label %78, label %84

78:                                               ; preds = %72
  %79 = load %struct.tcp_function_block*, %struct.tcp_function_block** %9, align 8
  %80 = getelementptr inbounds %struct.tcp_function_block, %struct.tcp_function_block* %79, i32 0, i32 4
  %81 = call i32 @refcount_release(i32* %80)
  %82 = load %struct.inpcb*, %struct.inpcb** %7, align 8
  %83 = call i32 @INP_WUNLOCK(%struct.inpcb* %82)
  store i32 0, i32* %3, align 4
  br label %251

84:                                               ; preds = %72
  %85 = load %struct.tcpcb*, %struct.tcpcb** %8, align 8
  %86 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @TCPS_CLOSED, align 8
  %89 = icmp ne i64 %87, %88
  br i1 %89, label %90, label %114

90:                                               ; preds = %84
  %91 = load %struct.tcp_function_block*, %struct.tcp_function_block** %9, align 8
  %92 = getelementptr inbounds %struct.tcp_function_block, %struct.tcp_function_block* %91, i32 0, i32 0
  %93 = load i32 (%struct.tcpcb*)*, i32 (%struct.tcpcb*)** %92, align 8
  %94 = icmp ne i32 (%struct.tcpcb*)* %93, null
  br i1 %94, label %95, label %101

95:                                               ; preds = %90
  %96 = load %struct.tcp_function_block*, %struct.tcp_function_block** %9, align 8
  %97 = getelementptr inbounds %struct.tcp_function_block, %struct.tcp_function_block* %96, i32 0, i32 0
  %98 = load i32 (%struct.tcpcb*)*, i32 (%struct.tcpcb*)** %97, align 8
  %99 = load %struct.tcpcb*, %struct.tcpcb** %8, align 8
  %100 = call i32 %98(%struct.tcpcb* %99)
  store i32 %100, i32* %6, align 4
  br label %103

101:                                              ; preds = %90
  %102 = load i32, i32* @EINVAL, align 4
  store i32 %102, i32* %6, align 4
  br label %103

103:                                              ; preds = %101, %95
  %104 = load i32, i32* %6, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %113

106:                                              ; preds = %103
  %107 = load %struct.tcp_function_block*, %struct.tcp_function_block** %9, align 8
  %108 = getelementptr inbounds %struct.tcp_function_block, %struct.tcp_function_block* %107, i32 0, i32 4
  %109 = call i32 @refcount_release(i32* %108)
  %110 = load %struct.inpcb*, %struct.inpcb** %7, align 8
  %111 = call i32 @INP_WUNLOCK(%struct.inpcb* %110)
  %112 = load i32, i32* %6, align 4
  store i32 %112, i32* %3, align 4
  br label %251

113:                                              ; preds = %103
  br label %114

114:                                              ; preds = %113, %84
  %115 = load %struct.tcp_function_block*, %struct.tcp_function_block** %9, align 8
  %116 = getelementptr inbounds %struct.tcp_function_block, %struct.tcp_function_block* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* @TCP_FUNC_BEING_REMOVED, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %128

121:                                              ; preds = %114
  %122 = load %struct.tcp_function_block*, %struct.tcp_function_block** %9, align 8
  %123 = getelementptr inbounds %struct.tcp_function_block, %struct.tcp_function_block* %122, i32 0, i32 4
  %124 = call i32 @refcount_release(i32* %123)
  %125 = load %struct.inpcb*, %struct.inpcb** %7, align 8
  %126 = call i32 @INP_WUNLOCK(%struct.inpcb* %125)
  %127 = load i32, i32* @ENOENT, align 4
  store i32 %127, i32* %3, align 4
  br label %251

128:                                              ; preds = %114
  %129 = load %struct.tcpcb*, %struct.tcpcb** %8, align 8
  %130 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %129, i32 0, i32 3
  %131 = load %struct.tcp_function_block*, %struct.tcp_function_block** %130, align 8
  %132 = getelementptr inbounds %struct.tcp_function_block, %struct.tcp_function_block* %131, i32 0, i32 6
  %133 = load i32 (%struct.tcpcb*, i32)*, i32 (%struct.tcpcb*, i32)** %132, align 8
  %134 = icmp ne i32 (%struct.tcpcb*, i32)* %133, null
  br i1 %134, label %135, label %143

135:                                              ; preds = %128
  %136 = load %struct.tcpcb*, %struct.tcpcb** %8, align 8
  %137 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %136, i32 0, i32 3
  %138 = load %struct.tcp_function_block*, %struct.tcp_function_block** %137, align 8
  %139 = getelementptr inbounds %struct.tcp_function_block, %struct.tcp_function_block* %138, i32 0, i32 6
  %140 = load i32 (%struct.tcpcb*, i32)*, i32 (%struct.tcpcb*, i32)** %139, align 8
  %141 = load %struct.tcpcb*, %struct.tcpcb** %8, align 8
  %142 = call i32 %140(%struct.tcpcb* %141, i32 0)
  br label %143

143:                                              ; preds = %135, %128
  %144 = load %struct.tcp_function_block*, %struct.tcp_function_block** %9, align 8
  %145 = getelementptr inbounds %struct.tcp_function_block, %struct.tcp_function_block* %144, i32 0, i32 2
  %146 = load i32 (%struct.tcpcb*)*, i32 (%struct.tcpcb*)** %145, align 8
  %147 = icmp ne i32 (%struct.tcpcb*)* %146, null
  br i1 %147, label %148, label %184

148:                                              ; preds = %143
  %149 = load %struct.tcp_function_block*, %struct.tcp_function_block** %9, align 8
  %150 = getelementptr inbounds %struct.tcp_function_block, %struct.tcp_function_block* %149, i32 0, i32 2
  %151 = load i32 (%struct.tcpcb*)*, i32 (%struct.tcpcb*)** %150, align 8
  %152 = load %struct.tcpcb*, %struct.tcpcb** %8, align 8
  %153 = call i32 %151(%struct.tcpcb* %152)
  store i32 %153, i32* %6, align 4
  %154 = load i32, i32* %6, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %183

156:                                              ; preds = %148
  %157 = load %struct.tcp_function_block*, %struct.tcp_function_block** %9, align 8
  %158 = getelementptr inbounds %struct.tcp_function_block, %struct.tcp_function_block* %157, i32 0, i32 4
  %159 = call i32 @refcount_release(i32* %158)
  %160 = load %struct.tcpcb*, %struct.tcpcb** %8, align 8
  %161 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %160, i32 0, i32 3
  %162 = load %struct.tcp_function_block*, %struct.tcp_function_block** %161, align 8
  %163 = getelementptr inbounds %struct.tcp_function_block, %struct.tcp_function_block* %162, i32 0, i32 2
  %164 = load i32 (%struct.tcpcb*)*, i32 (%struct.tcpcb*)** %163, align 8
  %165 = icmp ne i32 (%struct.tcpcb*)* %164, null
  br i1 %165, label %166, label %182

166:                                              ; preds = %156
  %167 = load %struct.tcpcb*, %struct.tcpcb** %8, align 8
  %168 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %167, i32 0, i32 3
  %169 = load %struct.tcp_function_block*, %struct.tcp_function_block** %168, align 8
  %170 = getelementptr inbounds %struct.tcp_function_block, %struct.tcp_function_block* %169, i32 0, i32 2
  %171 = load i32 (%struct.tcpcb*)*, i32 (%struct.tcpcb*)** %170, align 8
  %172 = load %struct.tcpcb*, %struct.tcpcb** %8, align 8
  %173 = call i32 %171(%struct.tcpcb* %172)
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %181

175:                                              ; preds = %166
  %176 = load %struct.inpcb*, %struct.inpcb** %7, align 8
  %177 = call i32 @INP_WUNLOCK(%struct.inpcb* %176)
  %178 = load %struct.socket*, %struct.socket** %4, align 8
  %179 = call i32 @soabort(%struct.socket* %178)
  %180 = load i32, i32* %6, align 4
  store i32 %180, i32* %3, align 4
  br label %251

181:                                              ; preds = %166
  br label %182

182:                                              ; preds = %181, %156
  br label %193

183:                                              ; preds = %148
  br label %184

184:                                              ; preds = %183, %143
  %185 = load %struct.tcpcb*, %struct.tcpcb** %8, align 8
  %186 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %185, i32 0, i32 3
  %187 = load %struct.tcp_function_block*, %struct.tcp_function_block** %186, align 8
  %188 = getelementptr inbounds %struct.tcp_function_block, %struct.tcp_function_block* %187, i32 0, i32 4
  %189 = call i32 @refcount_release(i32* %188)
  %190 = load %struct.tcp_function_block*, %struct.tcp_function_block** %9, align 8
  %191 = load %struct.tcpcb*, %struct.tcpcb** %8, align 8
  %192 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %191, i32 0, i32 3
  store %struct.tcp_function_block* %190, %struct.tcp_function_block** %192, align 8
  br label %193

193:                                              ; preds = %184, %182
  %194 = load %struct.inpcb*, %struct.inpcb** %7, align 8
  %195 = call i32 @INP_WUNLOCK(%struct.inpcb* %194)
  %196 = load i32, i32* %6, align 4
  store i32 %196, i32* %3, align 4
  br label %251

197:                                              ; preds = %47, %39
  %198 = load %struct.sockopt*, %struct.sockopt** %5, align 8
  %199 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %198, i32 0, i32 2
  %200 = load i32, i32* %199, align 4
  %201 = load i32, i32* @SOPT_GET, align 4
  %202 = icmp eq i32 %200, %201
  br i1 %202, label %203, label %236

203:                                              ; preds = %197
  %204 = load %struct.sockopt*, %struct.sockopt** %5, align 8
  %205 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %204, i32 0, i32 1
  %206 = load i32, i32* %205, align 8
  %207 = load i32, i32* @TCP_FUNCTION_BLK, align 4
  %208 = icmp eq i32 %206, %207
  br i1 %208, label %209, label %236

209:                                              ; preds = %203
  %210 = getelementptr inbounds %struct.tcp_function_set, %struct.tcp_function_set* %10, i32 0, i32 0
  %211 = load i8*, i8** %210, align 8
  %212 = load %struct.tcpcb*, %struct.tcpcb** %8, align 8
  %213 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %212, i32 0, i32 3
  %214 = load %struct.tcp_function_block*, %struct.tcp_function_block** %213, align 8
  %215 = getelementptr inbounds %struct.tcp_function_block, %struct.tcp_function_block* %214, i32 0, i32 5
  %216 = load i32, i32* %215, align 4
  %217 = load i32, i32* @TCP_FUNCTION_NAME_LEN_MAX, align 4
  %218 = call i32 @strncpy(i8* %211, i32 %216, i32 %217)
  %219 = getelementptr inbounds %struct.tcp_function_set, %struct.tcp_function_set* %10, i32 0, i32 0
  %220 = load i8*, i8** %219, align 8
  %221 = load i32, i32* @TCP_FUNCTION_NAME_LEN_MAX, align 4
  %222 = sub nsw i32 %221, 1
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds i8, i8* %220, i64 %223
  store i8 0, i8* %224, align 1
  %225 = load %struct.tcpcb*, %struct.tcpcb** %8, align 8
  %226 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %225, i32 0, i32 3
  %227 = load %struct.tcp_function_block*, %struct.tcp_function_block** %226, align 8
  %228 = getelementptr inbounds %struct.tcp_function_block, %struct.tcp_function_block* %227, i32 0, i32 4
  %229 = load i32, i32* %228, align 8
  %230 = getelementptr inbounds %struct.tcp_function_set, %struct.tcp_function_set* %10, i32 0, i32 1
  store i32 %229, i32* %230, align 8
  %231 = load %struct.inpcb*, %struct.inpcb** %7, align 8
  %232 = call i32 @INP_WUNLOCK(%struct.inpcb* %231)
  %233 = load %struct.sockopt*, %struct.sockopt** %5, align 8
  %234 = call i32 @sooptcopyout(%struct.sockopt* %233, %struct.tcp_function_set* %10, i32 16)
  store i32 %234, i32* %6, align 4
  %235 = load i32, i32* %6, align 4
  store i32 %235, i32* %3, align 4
  br label %251

236:                                              ; preds = %203, %197
  br label %237

237:                                              ; preds = %236
  %238 = load %struct.tcpcb*, %struct.tcpcb** %8, align 8
  %239 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %238, i32 0, i32 3
  %240 = load %struct.tcp_function_block*, %struct.tcp_function_block** %239, align 8
  %241 = getelementptr inbounds %struct.tcp_function_block, %struct.tcp_function_block* %240, i32 0, i32 3
  %242 = load i32 (%struct.socket.0*, %struct.sockopt.1*, %struct.inpcb.2*, %struct.tcpcb*)*, i32 (%struct.socket.0*, %struct.sockopt.1*, %struct.inpcb.2*, %struct.tcpcb*)** %241, align 8
  %243 = load %struct.socket*, %struct.socket** %4, align 8
  %244 = bitcast %struct.socket* %243 to %struct.socket.0*
  %245 = load %struct.sockopt*, %struct.sockopt** %5, align 8
  %246 = bitcast %struct.sockopt* %245 to %struct.sockopt.1*
  %247 = load %struct.inpcb*, %struct.inpcb** %7, align 8
  %248 = bitcast %struct.inpcb* %247 to %struct.inpcb.2*
  %249 = load %struct.tcpcb*, %struct.tcpcb** %8, align 8
  %250 = call i32 %242(%struct.socket.0* %244, %struct.sockopt.1* %246, %struct.inpcb.2* %248, %struct.tcpcb* %249)
  store i32 %250, i32* %3, align 4
  br label %251

251:                                              ; preds = %237, %209, %193, %175, %121, %106, %78, %68, %60, %35, %22
  %252 = load i32, i32* %3, align 4
  ret i32 %252
}

declare dso_local %struct.inpcb* @sotoinpcb(%struct.socket*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @INP_WLOCK(%struct.inpcb*) #1

declare dso_local i32 @INP_WUNLOCK(%struct.inpcb*) #1

declare dso_local %struct.tcpcb* @intotcpcb(%struct.inpcb*) #1

declare dso_local i32 @sooptcopyin(%struct.sockopt*, %struct.tcp_function_set*, i32, i32) #1

declare dso_local i32 @INP_WLOCK_RECHECK(%struct.inpcb*) #1

declare dso_local %struct.tcp_function_block* @find_and_ref_tcp_functions(%struct.tcp_function_set*) #1

declare dso_local i32 @refcount_release(i32*) #1

declare dso_local i32 @soabort(%struct.socket*) #1

declare dso_local i32 @strncpy(i8*, i32, i32) #1

declare dso_local i32 @sooptcopyout(%struct.sockopt*, %struct.tcp_function_set*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
