; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet6/extr_nd6_rtr.c_in6_ifadd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet6/extr_nd6_rtr.c_in6_ifadd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in6_ifaddr = type { %struct.TYPE_13__, %struct.TYPE_10__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32* }
%struct.TYPE_10__ = type { i32 }
%struct.nd_prefixctl = type { i32, i32, i32, %struct.TYPE_11__, %struct.ifnet* }
%struct.TYPE_11__ = type { i32 }
%struct.ifnet = type { i32 }
%struct.ifaddr = type { i32 }
%struct.in6_aliasreq = type { %struct.TYPE_15__, i32, %struct.TYPE_14__ }
%struct.TYPE_15__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32* }
%struct.TYPE_14__ = type { i32, i32 }
%struct.in6_addr = type { i32* }

@INET6_ADDRSTRLEN = common dso_local global i32 0, align 4
@LOG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"in6_ifadd: wrong prefixlen for %s (prefix=%d ifid=%d)\0A\00", align 1
@IN6_IFF_AUTOCONF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"in6_ifadd: %s is already configured\0A\00", align 1
@IN6_IFAUPDATE_DADDELAY = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [54 x i8] c"in6_ifadd: failed to make ifaddr %s on %s (errno=%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.in6_ifaddr* (%struct.nd_prefixctl*, i32)* @in6_ifadd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.in6_ifaddr* @in6_ifadd(%struct.nd_prefixctl* %0, i32 %1) #0 {
  %3 = alloca %struct.in6_ifaddr*, align 8
  %4 = alloca %struct.nd_prefixctl*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ifnet*, align 8
  %7 = alloca %struct.ifaddr*, align 8
  %8 = alloca %struct.in6_aliasreq, align 8
  %9 = alloca %struct.in6_ifaddr*, align 8
  %10 = alloca %struct.in6_ifaddr*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.in6_addr, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store %struct.nd_prefixctl* %0, %struct.nd_prefixctl** %4, align 8
  store i32 %1, i32* %5, align 4
  %19 = load %struct.nd_prefixctl*, %struct.nd_prefixctl** %4, align 8
  %20 = getelementptr inbounds %struct.nd_prefixctl, %struct.nd_prefixctl* %19, i32 0, i32 4
  %21 = load %struct.ifnet*, %struct.ifnet** %20, align 8
  store %struct.ifnet* %21, %struct.ifnet** %6, align 8
  %22 = load %struct.nd_prefixctl*, %struct.nd_prefixctl** %4, align 8
  %23 = getelementptr inbounds %struct.nd_prefixctl, %struct.nd_prefixctl* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %14, align 4
  %25 = load i32, i32* @INET6_ADDRSTRLEN, align 4
  %26 = zext i32 %25 to i64
  %27 = call i8* @llvm.stacksave()
  store i8* %27, i8** %16, align 8
  %28 = alloca i8, i64 %26, align 16
  store i64 %26, i64* %17, align 8
  %29 = load i32, i32* %14, align 4
  %30 = call i32 @in6_prefixlen2mask(%struct.in6_addr* %13, i32 %29)
  %31 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %32 = call i64 @in6ifa_ifpforlinklocal(%struct.ifnet* %31, i32 0)
  %33 = inttoptr i64 %32 to %struct.ifaddr*
  store %struct.ifaddr* %33, %struct.ifaddr** %7, align 8
  %34 = load %struct.ifaddr*, %struct.ifaddr** %7, align 8
  %35 = icmp ne %struct.ifaddr* %34, null
  br i1 %35, label %36, label %39

36:                                               ; preds = %2
  %37 = load %struct.ifaddr*, %struct.ifaddr** %7, align 8
  %38 = bitcast %struct.ifaddr* %37 to %struct.in6_ifaddr*
  store %struct.in6_ifaddr* %38, %struct.in6_ifaddr** %10, align 8
  br label %40

39:                                               ; preds = %2
  store %struct.in6_ifaddr* null, %struct.in6_ifaddr** %3, align 8
  store i32 1, i32* %18, align 4
  br label %204

40:                                               ; preds = %36
  %41 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %10, align 8
  %42 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 0
  %44 = call i32 @in6_mask2len(i32* %43, i32* null)
  store i32 %44, i32* %12, align 4
  %45 = load i32, i32* %14, align 4
  %46 = load i32, i32* %12, align 4
  %47 = icmp ne i32 %45, %46
  br i1 %47, label %48, label %58

48:                                               ; preds = %40
  %49 = load %struct.ifaddr*, %struct.ifaddr** %7, align 8
  %50 = call i32 @ifa_free(%struct.ifaddr* %49)
  %51 = load i32, i32* @LOG_INFO, align 4
  %52 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %53 = call i32 @if_name(%struct.ifnet* %52)
  %54 = load i32, i32* %14, align 4
  %55 = load i32, i32* %12, align 4
  %56 = sub nsw i32 128, %55
  %57 = call i32 @nd6log(i32 %56)
  store %struct.in6_ifaddr* null, %struct.in6_ifaddr** %3, align 8
  store i32 1, i32* %18, align 4
  br label %204

58:                                               ; preds = %40
  %59 = load %struct.nd_prefixctl*, %struct.nd_prefixctl** %4, align 8
  %60 = getelementptr inbounds %struct.nd_prefixctl, %struct.nd_prefixctl* %59, i32 0, i32 3
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 0
  %62 = call i32 @in6_prepare_ifra(%struct.in6_aliasreq* %8, i32* %61, %struct.in6_addr* %13)
  %63 = getelementptr inbounds %struct.in6_aliasreq, %struct.in6_aliasreq* %8, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %63, i32 0, i32 0
  %65 = call i32 @IN6_MASK_ADDR(%struct.TYPE_16__* %64, %struct.in6_addr* %13)
  %66 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %10, align 8
  %67 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 0
  %72 = load i32, i32* %71, align 4
  %73 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %13, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 0
  %76 = load i32, i32* %75, align 4
  %77 = xor i32 %76, -1
  %78 = and i32 %72, %77
  %79 = getelementptr inbounds %struct.in6_aliasreq, %struct.in6_aliasreq* %8, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 0
  %84 = load i32, i32* %83, align 4
  %85 = or i32 %84, %78
  store i32 %85, i32* %83, align 4
  %86 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %10, align 8
  %87 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 0
  %90 = load i32*, i32** %89, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 1
  %92 = load i32, i32* %91, align 4
  %93 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %13, i32 0, i32 0
  %94 = load i32*, i32** %93, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 1
  %96 = load i32, i32* %95, align 4
  %97 = xor i32 %96, -1
  %98 = and i32 %92, %97
  %99 = getelementptr inbounds %struct.in6_aliasreq, %struct.in6_aliasreq* %8, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %100, i32 0, i32 0
  %102 = load i32*, i32** %101, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 1
  %104 = load i32, i32* %103, align 4
  %105 = or i32 %104, %98
  store i32 %105, i32* %103, align 4
  %106 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %10, align 8
  %107 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %108, i32 0, i32 0
  %110 = load i32*, i32** %109, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 2
  %112 = load i32, i32* %111, align 4
  %113 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %13, i32 0, i32 0
  %114 = load i32*, i32** %113, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 2
  %116 = load i32, i32* %115, align 4
  %117 = xor i32 %116, -1
  %118 = and i32 %112, %117
  %119 = getelementptr inbounds %struct.in6_aliasreq, %struct.in6_aliasreq* %8, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %120, i32 0, i32 0
  %122 = load i32*, i32** %121, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 2
  %124 = load i32, i32* %123, align 4
  %125 = or i32 %124, %118
  store i32 %125, i32* %123, align 4
  %126 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %10, align 8
  %127 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %128, i32 0, i32 0
  %130 = load i32*, i32** %129, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 3
  %132 = load i32, i32* %131, align 4
  %133 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %13, i32 0, i32 0
  %134 = load i32*, i32** %133, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 3
  %136 = load i32, i32* %135, align 4
  %137 = xor i32 %136, -1
  %138 = and i32 %132, %137
  %139 = getelementptr inbounds %struct.in6_aliasreq, %struct.in6_aliasreq* %8, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %140, i32 0, i32 0
  %142 = load i32*, i32** %141, align 8
  %143 = getelementptr inbounds i32, i32* %142, i64 3
  %144 = load i32, i32* %143, align 4
  %145 = or i32 %144, %138
  store i32 %145, i32* %143, align 4
  %146 = load %struct.ifaddr*, %struct.ifaddr** %7, align 8
  %147 = call i32 @ifa_free(%struct.ifaddr* %146)
  %148 = load %struct.nd_prefixctl*, %struct.nd_prefixctl** %4, align 8
  %149 = getelementptr inbounds %struct.nd_prefixctl, %struct.nd_prefixctl* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 8
  %151 = getelementptr inbounds %struct.in6_aliasreq, %struct.in6_aliasreq* %8, i32 0, i32 2
  %152 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %151, i32 0, i32 1
  store i32 %150, i32* %152, align 4
  %153 = load %struct.nd_prefixctl*, %struct.nd_prefixctl** %4, align 8
  %154 = getelementptr inbounds %struct.nd_prefixctl, %struct.nd_prefixctl* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = getelementptr inbounds %struct.in6_aliasreq, %struct.in6_aliasreq* %8, i32 0, i32 2
  %157 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %156, i32 0, i32 0
  store i32 %155, i32* %157, align 4
  %158 = load i32, i32* @IN6_IFF_AUTOCONF, align 4
  %159 = getelementptr inbounds %struct.in6_aliasreq, %struct.in6_aliasreq* %8, i32 0, i32 1
  %160 = load i32, i32* %159, align 8
  %161 = or i32 %160, %158
  store i32 %161, i32* %159, align 8
  %162 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %163 = getelementptr inbounds %struct.in6_aliasreq, %struct.in6_aliasreq* %8, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %163, i32 0, i32 0
  %165 = call %struct.in6_ifaddr* @in6ifa_ifpwithaddr(%struct.ifnet* %162, %struct.TYPE_16__* %164)
  %166 = bitcast %struct.in6_ifaddr* %165 to %struct.ifaddr*
  store %struct.ifaddr* %166, %struct.ifaddr** %7, align 8
  %167 = load %struct.ifaddr*, %struct.ifaddr** %7, align 8
  %168 = icmp ne %struct.ifaddr* %167, null
  br i1 %168, label %169, label %177

169:                                              ; preds = %58
  %170 = load %struct.ifaddr*, %struct.ifaddr** %7, align 8
  %171 = call i32 @ifa_free(%struct.ifaddr* %170)
  %172 = load i32, i32* @LOG_INFO, align 4
  %173 = getelementptr inbounds %struct.in6_aliasreq, %struct.in6_aliasreq* %8, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %173, i32 0, i32 0
  %175 = call i32 @ip6_sprintf(i8* %28, %struct.TYPE_16__* %174)
  %176 = call i32 @log(i32 %172, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %175)
  store %struct.in6_ifaddr* null, %struct.in6_ifaddr** %3, align 8
  store i32 1, i32* %18, align 4
  br label %204

177:                                              ; preds = %58
  store i32 0, i32* %15, align 4
  %178 = load i32, i32* %5, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %184

180:                                              ; preds = %177
  %181 = load i32, i32* @IN6_IFAUPDATE_DADDELAY, align 4
  %182 = load i32, i32* %15, align 4
  %183 = or i32 %182, %181
  store i32 %183, i32* %15, align 4
  br label %184

184:                                              ; preds = %180, %177
  %185 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %186 = load i32, i32* %15, align 4
  %187 = call i32 @in6_update_ifa(%struct.ifnet* %185, %struct.in6_aliasreq* %8, i32* null, i32 %186)
  store i32 %187, i32* %11, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %198

189:                                              ; preds = %184
  %190 = load i32, i32* @LOG_ERR, align 4
  %191 = getelementptr inbounds %struct.in6_aliasreq, %struct.in6_aliasreq* %8, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %191, i32 0, i32 0
  %193 = call i32 @ip6_sprintf(i8* %28, %struct.TYPE_16__* %192)
  %194 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %195 = call i32 @if_name(%struct.ifnet* %194)
  %196 = load i32, i32* %11, align 4
  %197 = call i32 @nd6log(i32 %196)
  store %struct.in6_ifaddr* null, %struct.in6_ifaddr** %3, align 8
  store i32 1, i32* %18, align 4
  br label %204

198:                                              ; preds = %184
  %199 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %200 = getelementptr inbounds %struct.in6_aliasreq, %struct.in6_aliasreq* %8, i32 0, i32 0
  %201 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %200, i32 0, i32 0
  %202 = call %struct.in6_ifaddr* @in6ifa_ifpwithaddr(%struct.ifnet* %199, %struct.TYPE_16__* %201)
  store %struct.in6_ifaddr* %202, %struct.in6_ifaddr** %9, align 8
  %203 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %9, align 8
  store %struct.in6_ifaddr* %203, %struct.in6_ifaddr** %3, align 8
  store i32 1, i32* %18, align 4
  br label %204

204:                                              ; preds = %198, %189, %169, %48, %39
  %205 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %205)
  %206 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %3, align 8
  ret %struct.in6_ifaddr* %206
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @in6_prefixlen2mask(%struct.in6_addr*, i32) #2

declare dso_local i64 @in6ifa_ifpforlinklocal(%struct.ifnet*, i32) #2

declare dso_local i32 @in6_mask2len(i32*, i32*) #2

declare dso_local i32 @ifa_free(%struct.ifaddr*) #2

declare dso_local i32 @nd6log(i32) #2

declare dso_local i32 @if_name(%struct.ifnet*) #2

declare dso_local i32 @in6_prepare_ifra(%struct.in6_aliasreq*, i32*, %struct.in6_addr*) #2

declare dso_local i32 @IN6_MASK_ADDR(%struct.TYPE_16__*, %struct.in6_addr*) #2

declare dso_local %struct.in6_ifaddr* @in6ifa_ifpwithaddr(%struct.ifnet*, %struct.TYPE_16__*) #2

declare dso_local i32 @log(i32, i8*, i32) #2

declare dso_local i32 @ip6_sprintf(i8*, %struct.TYPE_16__*) #2

declare dso_local i32 @in6_update_ifa(%struct.ifnet*, %struct.in6_aliasreq*, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
