; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/route6d/extr_route6d.c_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/route6d/extr_route6d.c_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.addrinfo = type { i32, i32, i64, i8*, i8*, i8*, i32 }
%struct.TYPE_2__ = type { i32, i8* }

@NI_MAXSERV = common dso_local global i32 0, align 4
@ifc_head = common dso_local global i32 0, align 4
@nindex2ifc = common dso_local global i64 0, align 8
@index2ifc = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@RIP6_PORT = common dso_local global i32 0, align 4
@PF_INET6 = common dso_local global i8* null, align 8
@SOCK_DGRAM = common dso_local global i8* null, align 8
@IPPROTO_UDP = common dso_local global i8* null, align 8
@AI_PASSIVE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c":: resolved to multiple address\00", align 1
@ripsock = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [11 x i8] c"rip socket\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"rip bind\00", align 1
@IPPROTO_IPV6 = common dso_local global i32 0, align 4
@IPV6_MULTICAST_HOPS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [24 x i8] c"rip IPV6_MULTICAST_HOPS\00", align 1
@IPV6_MULTICAST_LOOP = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [24 x i8] c"rip IPV6_MULTICAST_LOOP\00", align 1
@IPV6_PKTINFO = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [17 x i8] c"rip IPV6_PKTINFO\00", align 1
@IPV6_HOPLIMIT = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [18 x i8] c"rip IPV6_HOPLIMIT\00", align 1
@RIP6_DEST = common dso_local global i32* null, align 8
@.str.9 = private unnamed_addr constant [32 x i8] c"%s resolved to multiple address\00", align 1
@ripsin = common dso_local global i32 0, align 4
@maxfd = common dso_local global i64 0, align 8
@nflag = common dso_local global i64 0, align 8
@PF_ROUTE = common dso_local global i8* null, align 8
@SOCK_RAW = common dso_local global i8* null, align 8
@rtsock = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [13 x i8] c"route socket\00", align 1
@NFDBITS = common dso_local global i32 0, align 4
@fdmasks = common dso_local global i32 0, align 4
@sockvecp = common dso_local global %struct.addrinfo* null, align 8
@.str.11 = private unnamed_addr constant [7 x i8] c"malloc\00", align 1
@recvecp = common dso_local global i32* null, align 8
@IPV6_RECVHOPLIMIT = common dso_local global i32 0, align 4
@IPV6_RECVPKTINFO = common dso_local global i32 0, align 4
@IPV6_V6ONLY = common dso_local global i32 0, align 4
@POLLIN = common dso_local global i8* null, align 8
@set = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.addrinfo, align 8
  %6 = alloca %struct.addrinfo*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store i32 0, i32* %2, align 4
  store i32 1, i32* %3, align 4
  store i32 255, i32* %4, align 4
  %9 = load i32, i32* @NI_MAXSERV, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %7, align 8
  %12 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %8, align 8
  %13 = call i32 @TAILQ_INIT(i32* @ifc_head)
  store i64 0, i64* @nindex2ifc, align 8
  store i32* null, i32** @index2ifc, align 8
  %14 = trunc i64 %10 to i32
  %15 = load i32, i32* @RIP6_PORT, align 4
  %16 = call i32 @snprintf(i8* %12, i32 %14, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = call i32 @memset(%struct.addrinfo* %5, i32 0, i32 48)
  %18 = load i8*, i8** @PF_INET6, align 8
  %19 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %5, i32 0, i32 5
  store i8* %18, i8** %19, align 8
  %20 = load i8*, i8** @SOCK_DGRAM, align 8
  %21 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %5, i32 0, i32 4
  store i8* %20, i8** %21, align 8
  %22 = load i8*, i8** @IPPROTO_UDP, align 8
  %23 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %5, i32 0, i32 3
  store i8* %22, i8** %23, align 8
  %24 = load i32, i32* @AI_PASSIVE, align 4
  %25 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %5, i32 0, i32 6
  store i32 %24, i32* %25, align 8
  %26 = call i32 @getaddrinfo(i32* null, i8* %12, %struct.addrinfo* %5, %struct.addrinfo** %6)
  store i32 %26, i32* %1, align 4
  %27 = load i32, i32* %1, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %0
  %30 = load i32, i32* %1, align 4
  %31 = call i32 @gai_strerror(i32 %30)
  %32 = call i32 (i8*, ...) @fatal(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  br label %33

33:                                               ; preds = %29, %0
  %34 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  %35 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = call i32 (i8*, ...) @fatal(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  br label %40

40:                                               ; preds = %38, %33
  %41 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  %42 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %41, i32 0, i32 5
  %43 = load i8*, i8** %42, align 8
  %44 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  %45 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %44, i32 0, i32 4
  %46 = load i8*, i8** %45, align 8
  %47 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  %48 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %47, i32 0, i32 3
  %49 = load i8*, i8** %48, align 8
  %50 = call i64 @socket(i8* %43, i8* %46, i8* %49)
  store i64 %50, i64* @ripsock, align 8
  %51 = load i64, i64* @ripsock, align 8
  %52 = icmp slt i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %40
  %54 = call i32 (i8*, ...) @fatal(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  br label %55

55:                                               ; preds = %53, %40
  %56 = load i64, i64* @ripsock, align 8
  %57 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  %58 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  %61 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i64 @bind(i64 %56, i32 %59, i32 %62)
  %64 = icmp slt i64 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %55
  %66 = call i32 (i8*, ...) @fatal(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  br label %67

67:                                               ; preds = %65, %55
  %68 = load i64, i64* @ripsock, align 8
  %69 = load i32, i32* @IPPROTO_IPV6, align 4
  %70 = load i32, i32* @IPV6_MULTICAST_HOPS, align 4
  %71 = call i64 @setsockopt(i64 %68, i32 %69, i32 %70, i32* %4, i32 4)
  %72 = icmp slt i64 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %67
  %74 = call i32 (i8*, ...) @fatal(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0))
  br label %75

75:                                               ; preds = %73, %67
  %76 = load i64, i64* @ripsock, align 8
  %77 = load i32, i32* @IPPROTO_IPV6, align 4
  %78 = load i32, i32* @IPV6_MULTICAST_LOOP, align 4
  %79 = call i64 @setsockopt(i64 %76, i32 %77, i32 %78, i32* %2, i32 4)
  %80 = icmp slt i64 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %75
  %82 = call i32 (i8*, ...) @fatal(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0))
  br label %83

83:                                               ; preds = %81, %75
  %84 = load i64, i64* @ripsock, align 8
  %85 = load i32, i32* @IPPROTO_IPV6, align 4
  %86 = load i32, i32* @IPV6_PKTINFO, align 4
  %87 = call i64 @setsockopt(i64 %84, i32 %85, i32 %86, i32* %3, i32 4)
  %88 = icmp slt i64 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %83
  %90 = call i32 (i8*, ...) @fatal(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0))
  br label %91

91:                                               ; preds = %89, %83
  %92 = load i64, i64* @ripsock, align 8
  %93 = load i32, i32* @IPPROTO_IPV6, align 4
  %94 = load i32, i32* @IPV6_HOPLIMIT, align 4
  %95 = call i64 @setsockopt(i64 %92, i32 %93, i32 %94, i32* %3, i32 4)
  %96 = icmp slt i64 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %91
  %98 = call i32 (i8*, ...) @fatal(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0))
  br label %99

99:                                               ; preds = %97, %91
  %100 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  %101 = call i32 @freeaddrinfo(%struct.addrinfo* %100)
  %102 = call i32 @memset(%struct.addrinfo* %5, i32 0, i32 48)
  %103 = load i8*, i8** @PF_INET6, align 8
  %104 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %5, i32 0, i32 5
  store i8* %103, i8** %104, align 8
  %105 = load i8*, i8** @SOCK_DGRAM, align 8
  %106 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %5, i32 0, i32 4
  store i8* %105, i8** %106, align 8
  %107 = load i8*, i8** @IPPROTO_UDP, align 8
  %108 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %5, i32 0, i32 3
  store i8* %107, i8** %108, align 8
  %109 = load i32*, i32** @RIP6_DEST, align 8
  %110 = call i32 @getaddrinfo(i32* %109, i8* %12, %struct.addrinfo* %5, %struct.addrinfo** %6)
  store i32 %110, i32* %1, align 4
  %111 = load i32, i32* %1, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %117

113:                                              ; preds = %99
  %114 = load i32, i32* %1, align 4
  %115 = call i32 @gai_strerror(i32 %114)
  %116 = call i32 (i8*, ...) @fatal(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %115)
  br label %117

117:                                              ; preds = %113, %99
  %118 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  %119 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %118, i32 0, i32 2
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %117
  %123 = load i32*, i32** @RIP6_DEST, align 8
  %124 = call i32 (i8*, ...) @fatal(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i64 0, i64 0), i32* %123)
  br label %125

125:                                              ; preds = %122, %117
  %126 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  %127 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  %130 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = call i32 @memcpy(i32* @ripsin, i32 %128, i32 %131)
  %133 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  %134 = call i32 @freeaddrinfo(%struct.addrinfo* %133)
  %135 = load i64, i64* @ripsock, align 8
  store i64 %135, i64* @maxfd, align 8
  %136 = load i64, i64* @nflag, align 8
  %137 = icmp eq i64 %136, 0
  br i1 %137, label %138, label %152

138:                                              ; preds = %125
  %139 = load i8*, i8** @PF_ROUTE, align 8
  %140 = load i8*, i8** @SOCK_RAW, align 8
  %141 = call i64 @socket(i8* %139, i8* %140, i8* null)
  store i64 %141, i64* @rtsock, align 8
  %142 = icmp slt i64 %141, 0
  br i1 %142, label %143, label %145

143:                                              ; preds = %138
  %144 = call i32 (i8*, ...) @fatal(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0))
  br label %145

145:                                              ; preds = %143, %138
  %146 = load i64, i64* @rtsock, align 8
  %147 = load i64, i64* @maxfd, align 8
  %148 = icmp sgt i64 %146, %147
  br i1 %148, label %149, label %151

149:                                              ; preds = %145
  %150 = load i64, i64* @rtsock, align 8
  store i64 %150, i64* @maxfd, align 8
  br label %151

151:                                              ; preds = %149, %145
  br label %153

152:                                              ; preds = %125
  store i64 -1, i64* @rtsock, align 8
  br label %153

153:                                              ; preds = %152, %151
  %154 = load i64, i64* @maxfd, align 8
  %155 = add nsw i64 %154, 1
  %156 = load i32, i32* @NFDBITS, align 4
  %157 = call i32 @howmany(i64 %155, i32 %156)
  %158 = sext i32 %157 to i64
  %159 = mul i64 %158, 4
  %160 = trunc i64 %159 to i32
  store i32 %160, i32* @fdmasks, align 4
  %161 = load i32, i32* @fdmasks, align 4
  %162 = call i8* @malloc(i32 %161)
  %163 = bitcast i8* %162 to %struct.addrinfo*
  store %struct.addrinfo* %163, %struct.addrinfo** @sockvecp, align 8
  %164 = icmp eq %struct.addrinfo* %163, null
  br i1 %164, label %165, label %167

165:                                              ; preds = %153
  %166 = call i32 (i8*, ...) @fatal(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0))
  br label %167

167:                                              ; preds = %165, %153
  %168 = load i32, i32* @fdmasks, align 4
  %169 = call i8* @malloc(i32 %168)
  %170 = bitcast i8* %169 to i32*
  store i32* %170, i32** @recvecp, align 8
  %171 = icmp eq i32* %170, null
  br i1 %171, label %172, label %174

172:                                              ; preds = %167
  %173 = call i32 (i8*, ...) @fatal(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0))
  br label %174

174:                                              ; preds = %172, %167
  %175 = load %struct.addrinfo*, %struct.addrinfo** @sockvecp, align 8
  %176 = load i32, i32* @fdmasks, align 4
  %177 = call i32 @memset(%struct.addrinfo* %175, i32 0, i32 %176)
  %178 = load i64, i64* @ripsock, align 8
  %179 = load %struct.addrinfo*, %struct.addrinfo** @sockvecp, align 8
  %180 = call i32 @FD_SET(i64 %178, %struct.addrinfo* %179)
  %181 = load i64, i64* @rtsock, align 8
  %182 = icmp sge i64 %181, 0
  br i1 %182, label %183, label %187

183:                                              ; preds = %174
  %184 = load i64, i64* @rtsock, align 8
  %185 = load %struct.addrinfo*, %struct.addrinfo** @sockvecp, align 8
  %186 = call i32 @FD_SET(i64 %184, %struct.addrinfo* %185)
  br label %187

187:                                              ; preds = %183, %174
  %188 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %188)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @TAILQ_INIT(i32*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #2

declare dso_local i32 @memset(%struct.addrinfo*, i32, i32) #2

declare dso_local i32 @getaddrinfo(i32*, i8*, %struct.addrinfo*, %struct.addrinfo**) #2

declare dso_local i32 @fatal(i8*, ...) #2

declare dso_local i32 @gai_strerror(i32) #2

declare dso_local i64 @socket(i8*, i8*, i8*) #2

declare dso_local i64 @bind(i64, i32, i32) #2

declare dso_local i64 @setsockopt(i64, i32, i32, i32*, i32) #2

declare dso_local i32 @freeaddrinfo(%struct.addrinfo*) #2

declare dso_local i32 @memcpy(i32*, i32, i32) #2

declare dso_local i32 @howmany(i64, i32) #2

declare dso_local i8* @malloc(i32) #2

declare dso_local i32 @FD_SET(i64, %struct.addrinfo*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
