; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/netstat/extr_route.c_p_rtentry_sysctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/netstat/extr_route.c_p_rtentry_sysctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8* }
%struct.TYPE_5__ = type { i64 }
%struct.rt_msghdr = type { i32, i64, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i64, i64, i32 }
%struct.sockaddr = type { i32 }

@RTAX_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"destination\00", align 1
@RTAX_DST = common dso_local global i64 0, align 8
@RTAX_NETMASK = common dso_local global i64 0, align 8
@wid_dst = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"gateway\00", align 1
@RTAX_GATEWAY = common dso_local global i64 0, align 8
@RTF_HOST = common dso_local global i32 0, align 4
@wid_gw = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [25 x i8] c"{[:-%d}{:flags/%%s}{]:} \00", align 1
@wid_flags = common dso_local global i32 0, align 4
@Wflag = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [14 x i8] c"{t:use/%*lu} \00", align 1
@wid_pksent = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [14 x i8] c"{t:mtu/%*lu} \00", align 1
@wid_mtu = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [10 x i8] c"{P:/%*s} \00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@ifmap_size = common dso_local global i64 0, align 8
@ifmap = common dso_local global %struct.TYPE_6__* null, align 8
@.str.7 = private unnamed_addr constant [4 x i8] c"---\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"{t:interface-name/%*s}\00", align 1
@wid_if = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [25 x i8] c"{t:interface-name/%*.*s}\00", align 1
@uptime = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@.str.10 = private unnamed_addr constant [20 x i8] c" {:expire-time/%*d}\00", align 1
@wid_expire = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.rt_msghdr*)* @p_rtentry_sysctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @p_rtentry_sysctl(i8* %0, %struct.rt_msghdr* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.rt_msghdr*, align 8
  %5 = alloca %struct.sockaddr*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca [128 x i8], align 16
  %9 = alloca [128 x i8], align 16
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store %struct.rt_msghdr* %1, %struct.rt_msghdr** %4, align 8
  %13 = load i32, i32* @RTAX_MAX, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %6, align 8
  %16 = alloca %struct.sockaddr*, i64 %14, align 16
  store i64 %14, i64* %7, align 8
  %17 = load i8*, i8** %3, align 8
  %18 = call i32 @xo_open_instance(i8* %17)
  %19 = load %struct.rt_msghdr*, %struct.rt_msghdr** %4, align 8
  %20 = getelementptr inbounds %struct.rt_msghdr, %struct.rt_msghdr* %19, i64 1
  %21 = bitcast %struct.rt_msghdr* %20 to %struct.sockaddr*
  store %struct.sockaddr* %21, %struct.sockaddr** %5, align 8
  store i32 0, i32* %10, align 4
  br label %22

22:                                               ; preds = %47, %2
  %23 = load i32, i32* %10, align 4
  %24 = load i32, i32* @RTAX_MAX, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %50

26:                                               ; preds = %22
  %27 = load %struct.rt_msghdr*, %struct.rt_msghdr** %4, align 8
  %28 = getelementptr inbounds %struct.rt_msghdr, %struct.rt_msghdr* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* %10, align 4
  %31 = shl i32 1, %30
  %32 = and i32 %29, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %46

34:                                               ; preds = %26
  %35 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %36 = load i32, i32* %10, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.sockaddr*, %struct.sockaddr** %16, i64 %37
  store %struct.sockaddr* %35, %struct.sockaddr** %38, align 8
  %39 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %40 = bitcast %struct.sockaddr* %39 to i8*
  %41 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %42 = call i32 @SA_SIZE(%struct.sockaddr* %41)
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8, i8* %40, i64 %43
  %45 = bitcast i8* %44 to %struct.sockaddr*
  store %struct.sockaddr* %45, %struct.sockaddr** %5, align 8
  br label %46

46:                                               ; preds = %34, %26
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %10, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %10, align 4
  br label %22

50:                                               ; preds = %22
  %51 = load i64, i64* @RTAX_DST, align 8
  %52 = getelementptr inbounds %struct.sockaddr*, %struct.sockaddr** %16, i64 %51
  %53 = load %struct.sockaddr*, %struct.sockaddr** %52, align 8
  %54 = load i64, i64* @RTAX_NETMASK, align 8
  %55 = getelementptr inbounds %struct.sockaddr*, %struct.sockaddr** %16, i64 %54
  %56 = load %struct.sockaddr*, %struct.sockaddr** %55, align 8
  %57 = load %struct.rt_msghdr*, %struct.rt_msghdr** %4, align 8
  %58 = getelementptr inbounds %struct.rt_msghdr, %struct.rt_msghdr* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 8
  %60 = load i64, i64* @wid_dst, align 8
  %61 = call i32 @p_sockaddr(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), %struct.sockaddr* %53, %struct.sockaddr* %56, i32 %59, i64 %60)
  store i32 %61, i32* %11, align 4
  %62 = load i64, i64* @RTAX_GATEWAY, align 8
  %63 = getelementptr inbounds %struct.sockaddr*, %struct.sockaddr** %16, i64 %62
  %64 = load %struct.sockaddr*, %struct.sockaddr** %63, align 8
  %65 = load i32, i32* @RTF_HOST, align 4
  %66 = load i64, i64* @wid_gw, align 8
  %67 = load i32, i32* %11, align 4
  %68 = sext i32 %67 to i64
  %69 = sub nsw i64 %66, %68
  %70 = call i32 @p_sockaddr(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), %struct.sockaddr* %64, %struct.sockaddr* null, i32 %65, i64 %69)
  store i32 %70, i32* %11, align 4
  %71 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 0
  %72 = load i32, i32* @wid_flags, align 4
  %73 = load i32, i32* %11, align 4
  %74 = sub nsw i32 %72, %73
  %75 = call i32 @snprintf(i8* %71, i32 128, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %74)
  %76 = load %struct.rt_msghdr*, %struct.rt_msghdr** %4, align 8
  %77 = getelementptr inbounds %struct.rt_msghdr, %struct.rt_msghdr* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 8
  %79 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 0
  %80 = call i32 @p_flags(i32 %78, i8* %79)
  %81 = load i64, i64* @Wflag, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %106

83:                                               ; preds = %50
  %84 = load i32, i32* @wid_pksent, align 4
  %85 = load %struct.rt_msghdr*, %struct.rt_msghdr** %4, align 8
  %86 = getelementptr inbounds %struct.rt_msghdr, %struct.rt_msghdr* %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 %84, i32 %88)
  %90 = load %struct.rt_msghdr*, %struct.rt_msghdr** %4, align 8
  %91 = getelementptr inbounds %struct.rt_msghdr, %struct.rt_msghdr* %90, i32 0, i32 2
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %102

95:                                               ; preds = %83
  %96 = load i32, i32* @wid_mtu, align 4
  %97 = load %struct.rt_msghdr*, %struct.rt_msghdr** %4, align 8
  %98 = getelementptr inbounds %struct.rt_msghdr, %struct.rt_msghdr* %97, i32 0, i32 2
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32 %96, i64 %100)
  br label %105

102:                                              ; preds = %83
  %103 = load i32, i32* @wid_mtu, align 4
  %104 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i32 %103, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0))
  br label %105

105:                                              ; preds = %102, %95
  br label %106

106:                                              ; preds = %105, %50
  %107 = getelementptr inbounds [128 x i8], [128 x i8]* %9, i64 0, i64 0
  %108 = call i32 @memset(i8* %107, i32 0, i32 128)
  %109 = load %struct.rt_msghdr*, %struct.rt_msghdr** %4, align 8
  %110 = getelementptr inbounds %struct.rt_msghdr, %struct.rt_msghdr* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @ifmap_size, align 8
  %113 = icmp ult i64 %111, %112
  br i1 %113, label %114, label %132

114:                                              ; preds = %106
  %115 = getelementptr inbounds [128 x i8], [128 x i8]* %9, i64 0, i64 0
  %116 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ifmap, align 8
  %117 = load %struct.rt_msghdr*, %struct.rt_msghdr** %4, align 8
  %118 = getelementptr inbounds %struct.rt_msghdr, %struct.rt_msghdr* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 0
  %122 = load i8*, i8** %121, align 8
  %123 = call i32 @strlcpy(i8* %115, i8* %122, i32 128)
  %124 = getelementptr inbounds [128 x i8], [128 x i8]* %9, i64 0, i64 0
  %125 = load i8, i8* %124, align 16
  %126 = sext i8 %125 to i32
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %128, label %131

128:                                              ; preds = %114
  %129 = getelementptr inbounds [128 x i8], [128 x i8]* %9, i64 0, i64 0
  %130 = call i32 @strlcpy(i8* %129, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i32 128)
  br label %131

131:                                              ; preds = %128, %114
  br label %132

132:                                              ; preds = %131, %106
  %133 = load i64, i64* @Wflag, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %139

135:                                              ; preds = %132
  %136 = load i32, i32* @wid_if, align 4
  %137 = getelementptr inbounds [128 x i8], [128 x i8]* %9, i64 0, i64 0
  %138 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0), i32 %136, i8* %137)
  br label %144

139:                                              ; preds = %132
  %140 = load i32, i32* @wid_if, align 4
  %141 = load i32, i32* @wid_if, align 4
  %142 = getelementptr inbounds [128 x i8], [128 x i8]* %9, i64 0, i64 0
  %143 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0), i32 %140, i32 %141, i8* %142)
  br label %144

144:                                              ; preds = %139, %135
  %145 = load %struct.rt_msghdr*, %struct.rt_msghdr** %4, align 8
  %146 = getelementptr inbounds %struct.rt_msghdr, %struct.rt_msghdr* %145, i32 0, i32 2
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i32 0, i32 1
  %148 = load i64, i64* %147, align 8
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %164

150:                                              ; preds = %144
  %151 = load %struct.rt_msghdr*, %struct.rt_msghdr** %4, align 8
  %152 = getelementptr inbounds %struct.rt_msghdr, %struct.rt_msghdr* %151, i32 0, i32 2
  %153 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %152, i32 0, i32 1
  %154 = load i64, i64* %153, align 8
  %155 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @uptime, i32 0, i32 0), align 8
  %156 = sub nsw i64 %154, %155
  store i64 %156, i64* %12, align 8
  %157 = icmp sgt i64 %156, 0
  br i1 %157, label %158, label %163

158:                                              ; preds = %150
  %159 = load i32, i32* @wid_expire, align 4
  %160 = load i64, i64* %12, align 8
  %161 = trunc i64 %160 to i32
  %162 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i64 0, i64 0), i32 %159, i32 %161)
  br label %163

163:                                              ; preds = %158, %150
  br label %164

164:                                              ; preds = %163, %144
  %165 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0))
  %166 = load i8*, i8** %3, align 8
  %167 = call i32 @xo_close_instance(i8* %166)
  %168 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %168)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @xo_open_instance(i8*) #2

declare dso_local i32 @SA_SIZE(%struct.sockaddr*) #2

declare dso_local i32 @p_sockaddr(i8*, %struct.sockaddr*, %struct.sockaddr*, i32, i64) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #2

declare dso_local i32 @p_flags(i32, i8*) #2

declare dso_local i32 @xo_emit(i8*, ...) #2

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i32 @strlcpy(i8*, i8*, i32) #2

declare dso_local i32 @xo_close_instance(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
