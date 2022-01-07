; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_route.c_route_IfDelete.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_route.c_route_IfDelete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bundle = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.rt_msghdr = type { i64, i32, i32 }
%struct.ncprange = type { i32 }
%struct.ncpaddr = type { i32 }
%struct.sockaddr = type { i32 }

@RTAX_MAX = common dso_local global i32 0, align 4
@LogDEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"route_IfDelete (%d)\0A\00", align 1
@CTL_NET = common dso_local global i32 0, align 4
@PF_ROUTE = common dso_local global i32 0, align 4
@NET_RT_DUMP = common dso_local global i32 0, align 4
@LogERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"route_IfDelete: sysctl: estimate: %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"route_IfDelete: sysctl: getroute: %s\0A\00", align 1
@RTAX_DST = common dso_local global i64 0, align 8
@RTAX_GATEWAY = common dso_local global i64 0, align 8
@AF_INET = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i32 0, align 4
@RTF_GATEWAY = common dso_local global i32 0, align 4
@NCP_ASCIIBUFFERSIZE = common dso_local global i32 0, align 4
@RTAX_NETMASK = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"Found %s %s\0A\00", align 1
@AF_LINK = common dso_local global i32 0, align 4
@RTM_DELETE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [35 x i8] c"route_IfDelete: Skip it (pass %d)\0A\00", align 1
@.str.6 = private unnamed_addr constant [51 x i8] c"route_IfDelete: Can't remove routes for family %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @route_IfDelete(%struct.bundle* %0, i32 %1) #0 {
  %3 = alloca %struct.bundle*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rt_msghdr*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.ncprange, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca [6 x i32], align 16
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.ncpaddr, align 4
  store %struct.bundle* %0, %struct.bundle** %3, align 8
  store i32 %1, i32* %4, align 4
  %19 = load i32, i32* @RTAX_MAX, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %6, align 8
  %22 = alloca %struct.sockaddr*, i64 %20, align 16
  store i64 %20, i64* %7, align 8
  %23 = load i32, i32* @LogDEBUG, align 4
  %24 = load %struct.bundle*, %struct.bundle** %3, align 8
  %25 = getelementptr inbounds %struct.bundle, %struct.bundle* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 (i32, i8*, i32, ...) @log_Printf(i32 %23, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load i32, i32* @CTL_NET, align 4
  %31 = getelementptr inbounds [6 x i32], [6 x i32]* %14, i64 0, i64 0
  store i32 %30, i32* %31, align 16
  %32 = load i32, i32* @PF_ROUTE, align 4
  %33 = getelementptr inbounds [6 x i32], [6 x i32]* %14, i64 0, i64 1
  store i32 %32, i32* %33, align 4
  %34 = getelementptr inbounds [6 x i32], [6 x i32]* %14, i64 0, i64 2
  store i32 0, i32* %34, align 8
  %35 = getelementptr inbounds [6 x i32], [6 x i32]* %14, i64 0, i64 3
  store i32 0, i32* %35, align 4
  %36 = load i32, i32* @NET_RT_DUMP, align 4
  %37 = getelementptr inbounds [6 x i32], [6 x i32]* %14, i64 0, i64 4
  store i32 %36, i32* %37, align 16
  %38 = getelementptr inbounds [6 x i32], [6 x i32]* %14, i64 0, i64 5
  store i32 0, i32* %38, align 4
  %39 = getelementptr inbounds [6 x i32], [6 x i32]* %14, i64 0, i64 0
  %40 = call i64 @sysctl(i32* %39, i32 6, i8* null, i64* %10, i32* null, i32 0)
  %41 = icmp slt i64 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %2
  %43 = load i32, i32* @LogERROR, align 4
  %44 = load i32, i32* @errno, align 4
  %45 = call i32 @strerror(i32 %44)
  %46 = call i32 (i32, i8*, i32, ...) @log_Printf(i32 %43, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %45)
  store i32 1, i32* %15, align 4
  br label %227

47:                                               ; preds = %2
  %48 = load i64, i64* %10, align 8
  %49 = call i8* @malloc(i64 %48)
  store i8* %49, i8** %11, align 8
  %50 = load i8*, i8** %11, align 8
  %51 = icmp eq i8* %50, null
  br i1 %51, label %52, label %53

52:                                               ; preds = %47
  store i32 1, i32* %15, align 4
  br label %227

53:                                               ; preds = %47
  %54 = getelementptr inbounds [6 x i32], [6 x i32]* %14, i64 0, i64 0
  %55 = load i8*, i8** %11, align 8
  %56 = call i64 @sysctl(i32* %54, i32 6, i8* %55, i64* %10, i32* null, i32 0)
  %57 = icmp slt i64 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %53
  %59 = load i32, i32* @LogERROR, align 4
  %60 = load i32, i32* @errno, align 4
  %61 = call i32 @strerror(i32 %60)
  %62 = call i32 (i32, i8*, i32, ...) @log_Printf(i32 %59, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %61)
  %63 = load i8*, i8** %11, align 8
  %64 = call i32 @free(i8* %63)
  store i32 1, i32* %15, align 4
  br label %227

65:                                               ; preds = %53
  %66 = load i8*, i8** %11, align 8
  %67 = load i64, i64* %10, align 8
  %68 = getelementptr inbounds i8, i8* %66, i64 %67
  store i8* %68, i8** %13, align 8
  store i32 0, i32* %9, align 4
  br label %69

69:                                               ; preds = %221, %65
  %70 = load i32, i32* %9, align 4
  %71 = icmp slt i32 %70, 2
  br i1 %71, label %72, label %224

72:                                               ; preds = %69
  %73 = load i32, i32* %9, align 4
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %72
  br label %221

76:                                               ; preds = %72
  %77 = load i8*, i8** %11, align 8
  store i8* %77, i8** %12, align 8
  br label %78

78:                                               ; preds = %213, %76
  %79 = load i8*, i8** %12, align 8
  %80 = load i8*, i8** %13, align 8
  %81 = icmp ult i8* %79, %80
  br i1 %81, label %82, label %220

82:                                               ; preds = %78
  %83 = load i8*, i8** %12, align 8
  %84 = bitcast i8* %83 to %struct.rt_msghdr*
  store %struct.rt_msghdr* %84, %struct.rt_msghdr** %5, align 8
  %85 = load %struct.rt_msghdr*, %struct.rt_msghdr** %5, align 8
  %86 = call i32 @route_ParseHdr(%struct.rt_msghdr* %85, %struct.sockaddr** %22)
  %87 = load %struct.rt_msghdr*, %struct.rt_msghdr** %5, align 8
  %88 = getelementptr inbounds %struct.rt_msghdr, %struct.rt_msghdr* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.bundle*, %struct.bundle** %3, align 8
  %91 = getelementptr inbounds %struct.bundle, %struct.bundle* %90, i32 0, i32 0
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = sext i32 %94 to i64
  %96 = icmp eq i64 %89, %95
  br i1 %96, label %97, label %212

97:                                               ; preds = %82
  %98 = load i64, i64* @RTAX_DST, align 8
  %99 = getelementptr inbounds %struct.sockaddr*, %struct.sockaddr** %22, i64 %98
  %100 = load %struct.sockaddr*, %struct.sockaddr** %99, align 8
  %101 = icmp ne %struct.sockaddr* %100, null
  br i1 %101, label %102, label %212

102:                                              ; preds = %97
  %103 = load i64, i64* @RTAX_GATEWAY, align 8
  %104 = getelementptr inbounds %struct.sockaddr*, %struct.sockaddr** %22, i64 %103
  %105 = load %struct.sockaddr*, %struct.sockaddr** %104, align 8
  %106 = icmp ne %struct.sockaddr* %105, null
  br i1 %106, label %107, label %212

107:                                              ; preds = %102
  %108 = load i64, i64* @RTAX_DST, align 8
  %109 = getelementptr inbounds %struct.sockaddr*, %struct.sockaddr** %22, i64 %108
  %110 = load %struct.sockaddr*, %struct.sockaddr** %109, align 8
  %111 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @AF_INET, align 4
  %114 = icmp eq i32 %112, %113
  br i1 %114, label %123, label %115

115:                                              ; preds = %107
  %116 = load i64, i64* @RTAX_DST, align 8
  %117 = getelementptr inbounds %struct.sockaddr*, %struct.sockaddr** %22, i64 %116
  %118 = load %struct.sockaddr*, %struct.sockaddr** %117, align 8
  %119 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* @AF_INET6, align 4
  %122 = icmp eq i32 %120, %121
  br i1 %122, label %123, label %212

123:                                              ; preds = %115, %107
  %124 = load i32, i32* %4, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %133, label %126

126:                                              ; preds = %123
  %127 = load %struct.rt_msghdr*, %struct.rt_msghdr** %5, align 8
  %128 = getelementptr inbounds %struct.rt_msghdr, %struct.rt_msghdr* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 8
  %130 = load i32, i32* @RTF_GATEWAY, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %212

133:                                              ; preds = %126, %123
  %134 = load i32, i32* @LogDEBUG, align 4
  %135 = call i64 @log_IsKept(i32 %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %160

137:                                              ; preds = %133
  %138 = load i32, i32* @NCP_ASCIIBUFFERSIZE, align 4
  %139 = zext i32 %138 to i64
  %140 = call i8* @llvm.stacksave()
  store i8* %140, i8** %16, align 8
  %141 = alloca i8, i64 %139, align 16
  store i64 %139, i64* %17, align 8
  %142 = load i64, i64* @RTAX_DST, align 8
  %143 = getelementptr inbounds %struct.sockaddr*, %struct.sockaddr** %22, i64 %142
  %144 = load %struct.sockaddr*, %struct.sockaddr** %143, align 8
  %145 = load i64, i64* @RTAX_NETMASK, align 8
  %146 = getelementptr inbounds %struct.sockaddr*, %struct.sockaddr** %22, i64 %145
  %147 = load %struct.sockaddr*, %struct.sockaddr** %146, align 8
  %148 = call i32 @ncprange_setsa(%struct.ncprange* %8, %struct.sockaddr* %144, %struct.sockaddr* %147)
  %149 = load i64, i64* @RTAX_GATEWAY, align 8
  %150 = getelementptr inbounds %struct.sockaddr*, %struct.sockaddr** %22, i64 %149
  %151 = load %struct.sockaddr*, %struct.sockaddr** %150, align 8
  %152 = call i32 @ncpaddr_setsa(%struct.ncpaddr* %18, %struct.sockaddr* %151)
  %153 = trunc i64 %139 to i32
  %154 = call i8* @ncpaddr_ntoa(%struct.ncpaddr* %18)
  %155 = call i32 @snprintf(i8* %141, i32 %153, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %154)
  %156 = load i32, i32* @LogDEBUG, align 4
  %157 = call i32 @ncprange_ntoa(%struct.ncprange* %8)
  %158 = call i32 (i32, i8*, i32, ...) @log_Printf(i32 %156, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i32 %157, i8* %141)
  %159 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %159)
  br label %160

160:                                              ; preds = %137, %133
  %161 = load i64, i64* @RTAX_GATEWAY, align 8
  %162 = getelementptr inbounds %struct.sockaddr*, %struct.sockaddr** %22, i64 %161
  %163 = load %struct.sockaddr*, %struct.sockaddr** %162, align 8
  %164 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = load i32, i32* @AF_INET, align 4
  %167 = icmp eq i32 %165, %166
  br i1 %167, label %184, label %168

168:                                              ; preds = %160
  %169 = load i64, i64* @RTAX_GATEWAY, align 8
  %170 = getelementptr inbounds %struct.sockaddr*, %struct.sockaddr** %22, i64 %169
  %171 = load %struct.sockaddr*, %struct.sockaddr** %170, align 8
  %172 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = load i32, i32* @AF_INET6, align 4
  %175 = icmp eq i32 %173, %174
  br i1 %175, label %184, label %176

176:                                              ; preds = %168
  %177 = load i64, i64* @RTAX_GATEWAY, align 8
  %178 = getelementptr inbounds %struct.sockaddr*, %struct.sockaddr** %22, i64 %177
  %179 = load %struct.sockaddr*, %struct.sockaddr** %178, align 8
  %180 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  %182 = load i32, i32* @AF_LINK, align 4
  %183 = icmp eq i32 %181, %182
  br i1 %183, label %184, label %203

184:                                              ; preds = %176, %168, %160
  %185 = load i32, i32* %9, align 4
  %186 = icmp eq i32 %185, 1
  br i1 %186, label %187, label %198

187:                                              ; preds = %184
  %188 = load i64, i64* @RTAX_DST, align 8
  %189 = getelementptr inbounds %struct.sockaddr*, %struct.sockaddr** %22, i64 %188
  %190 = load %struct.sockaddr*, %struct.sockaddr** %189, align 8
  %191 = load i64, i64* @RTAX_NETMASK, align 8
  %192 = getelementptr inbounds %struct.sockaddr*, %struct.sockaddr** %22, i64 %191
  %193 = load %struct.sockaddr*, %struct.sockaddr** %192, align 8
  %194 = call i32 @ncprange_setsa(%struct.ncprange* %8, %struct.sockaddr* %190, %struct.sockaddr* %193)
  %195 = load %struct.bundle*, %struct.bundle** %3, align 8
  %196 = load i32, i32* @RTM_DELETE, align 4
  %197 = call i32 @rt_Set(%struct.bundle* %195, i32 %196, %struct.ncprange* %8, i32* null, i32 0, i32 0)
  br label %202

198:                                              ; preds = %184
  %199 = load i32, i32* @LogDEBUG, align 4
  %200 = load i32, i32* %9, align 4
  %201 = call i32 (i32, i8*, i32, ...) @log_Printf(i32 %199, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0), i32 %200)
  br label %202

202:                                              ; preds = %198, %187
  br label %211

203:                                              ; preds = %176
  %204 = load i32, i32* @LogDEBUG, align 4
  %205 = load i64, i64* @RTAX_GATEWAY, align 8
  %206 = getelementptr inbounds %struct.sockaddr*, %struct.sockaddr** %22, i64 %205
  %207 = load %struct.sockaddr*, %struct.sockaddr** %206, align 8
  %208 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 4
  %210 = call i32 (i32, i8*, i32, ...) @log_Printf(i32 %204, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.6, i64 0, i64 0), i32 %209)
  br label %211

211:                                              ; preds = %203, %202
  br label %212

212:                                              ; preds = %211, %126, %115, %102, %97, %82
  br label %213

213:                                              ; preds = %212
  %214 = load %struct.rt_msghdr*, %struct.rt_msghdr** %5, align 8
  %215 = getelementptr inbounds %struct.rt_msghdr, %struct.rt_msghdr* %214, i32 0, i32 2
  %216 = load i32, i32* %215, align 4
  %217 = load i8*, i8** %12, align 8
  %218 = sext i32 %216 to i64
  %219 = getelementptr inbounds i8, i8* %217, i64 %218
  store i8* %219, i8** %12, align 8
  br label %78

220:                                              ; preds = %78
  br label %221

221:                                              ; preds = %220, %75
  %222 = load i32, i32* %9, align 4
  %223 = add nsw i32 %222, 1
  store i32 %223, i32* %9, align 4
  br label %69

224:                                              ; preds = %69
  %225 = load i8*, i8** %11, align 8
  %226 = call i32 @free(i8* %225)
  store i32 0, i32* %15, align 4
  br label %227

227:                                              ; preds = %224, %58, %52, %42
  %228 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %228)
  %229 = load i32, i32* %15, align 4
  switch i32 %229, label %231 [
    i32 0, label %230
    i32 1, label %230
  ]

230:                                              ; preds = %227, %227
  ret void

231:                                              ; preds = %227
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @log_Printf(i32, i8*, i32, ...) #2

declare dso_local i64 @sysctl(i32*, i32, i8*, i64*, i32*, i32) #2

declare dso_local i32 @strerror(i32) #2

declare dso_local i8* @malloc(i64) #2

declare dso_local i32 @free(i8*) #2

declare dso_local i32 @route_ParseHdr(%struct.rt_msghdr*, %struct.sockaddr**) #2

declare dso_local i64 @log_IsKept(i32) #2

declare dso_local i32 @ncprange_setsa(%struct.ncprange*, %struct.sockaddr*, %struct.sockaddr*) #2

declare dso_local i32 @ncpaddr_setsa(%struct.ncpaddr*, %struct.sockaddr*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #2

declare dso_local i8* @ncpaddr_ntoa(%struct.ncpaddr*) #2

declare dso_local i32 @ncprange_ntoa(%struct.ncprange*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

declare dso_local i32 @rt_Set(%struct.bundle*, i32, %struct.ncprange*, i32*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
