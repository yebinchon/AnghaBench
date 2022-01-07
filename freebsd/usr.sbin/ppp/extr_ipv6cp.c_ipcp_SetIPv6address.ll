; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_ipv6cp.c_ipcp_SetIPv6address.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_ipv6cp.c_ipcp_SetIPv6address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in6_addr = type { i32* }
%struct.ipv6cp = type { %struct.ncpaddr, %struct.ncpaddr, %struct.TYPE_6__ }
%struct.ncpaddr = type { i32 }
%struct.TYPE_6__ = type { %struct.bundle* }
%struct.bundle = type { %struct.TYPE_8__, %struct.TYPE_9__, i32 }
%struct.TYPE_8__ = type { i32, i64 }
%struct.TYPE_9__ = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, i64 }
%struct.ncprange = type { i32 }
%struct.sockaddr_storage = type { i32 }
%struct.sockaddr = type { i32 }

@IPV6CP_IFIDLEN = common dso_local global i32 0, align 4
@IFACE_ADD_FIRST = common dso_local global i32 0, align 4
@IFACE_FORCE_ADD = common dso_local global i32 0, align 4
@IFACE_SYSTEM = common dso_local global i32 0, align 4
@OPT_IFACEALIAS = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i32 0, align 4
@IFACE_CLEAR_ALIASES = common dso_local global i32 0, align 4
@in6addr_linklocal_mcast = common dso_local global %struct.in6_addr zeroinitializer, align 8
@RTM_ADD = common dso_local global i32 0, align 4
@OPT_SROUTES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipv6cp*, i32*, i32*)* @ipcp_SetIPv6address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipcp_SetIPv6address(%struct.ipv6cp* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ipv6cp*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.bundle*, align 8
  %9 = alloca %struct.in6_addr, align 8
  %10 = alloca %struct.in6_addr, align 8
  %11 = alloca %struct.ncprange, align 4
  %12 = alloca %struct.ncprange, align 4
  %13 = alloca %struct.ncpaddr, align 4
  %14 = alloca %struct.sockaddr_storage, align 4
  %15 = alloca %struct.sockaddr_storage, align 4
  %16 = alloca %struct.sockaddr_storage, align 4
  %17 = alloca %struct.sockaddr*, align 8
  %18 = alloca %struct.sockaddr*, align 8
  %19 = alloca %struct.sockaddr*, align 8
  store %struct.ipv6cp* %0, %struct.ipv6cp** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %20 = load %struct.ipv6cp*, %struct.ipv6cp** %5, align 8
  %21 = getelementptr inbounds %struct.ipv6cp, %struct.ipv6cp* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load %struct.bundle*, %struct.bundle** %22, align 8
  store %struct.bundle* %23, %struct.bundle** %8, align 8
  %24 = bitcast %struct.sockaddr_storage* %14 to %struct.sockaddr*
  store %struct.sockaddr* %24, %struct.sockaddr** %17, align 8
  %25 = bitcast %struct.sockaddr_storage* %15 to %struct.sockaddr*
  store %struct.sockaddr* %25, %struct.sockaddr** %18, align 8
  %26 = bitcast %struct.sockaddr_storage* %16 to %struct.sockaddr*
  store %struct.sockaddr* %26, %struct.sockaddr** %19, align 8
  %27 = call i32 @memset(%struct.in6_addr* %9, i8 signext 0, i32 8)
  %28 = call i32 @memset(%struct.in6_addr* %10, i8 signext 0, i32 8)
  %29 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %9, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  store i32 254, i32* %31, align 4
  %32 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %9, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 1
  store i32 128, i32* %34, align 4
  %35 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %9, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 8
  %38 = load i32*, i32** %6, align 8
  %39 = load i32, i32* @IPV6CP_IFIDLEN, align 4
  %40 = call i32 @memcpy(i32* %37, i32* %38, i32 %39)
  %41 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %10, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 0
  store i32 254, i32* %43, align 4
  %44 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %10, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 1
  store i32 128, i32* %46, align 4
  %47 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %10, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 8
  %50 = load i32*, i32** %7, align 8
  %51 = load i32, i32* @IPV6CP_IFIDLEN, align 4
  %52 = call i32 @memcpy(i32* %49, i32* %50, i32 %51)
  %53 = load %struct.ipv6cp*, %struct.ipv6cp** %5, align 8
  %54 = getelementptr inbounds %struct.ipv6cp, %struct.ipv6cp* %53, i32 0, i32 1
  %55 = call i32 @ncpaddr_setip6(%struct.ncpaddr* %54, %struct.in6_addr* %9)
  %56 = load %struct.ipv6cp*, %struct.ipv6cp** %5, align 8
  %57 = getelementptr inbounds %struct.ipv6cp, %struct.ipv6cp* %56, i32 0, i32 0
  %58 = call i32 @ncpaddr_setip6(%struct.ncpaddr* %57, %struct.in6_addr* %10)
  %59 = load %struct.ipv6cp*, %struct.ipv6cp** %5, align 8
  %60 = getelementptr inbounds %struct.ipv6cp, %struct.ipv6cp* %59, i32 0, i32 1
  %61 = call i32 @ncprange_set(%struct.ncprange* %11, %struct.ncpaddr* %60, i32 64)
  %62 = load %struct.bundle*, %struct.bundle** %8, align 8
  %63 = getelementptr inbounds %struct.bundle, %struct.bundle* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.bundle*, %struct.bundle** %8, align 8
  %66 = getelementptr inbounds %struct.bundle, %struct.bundle* %65, i32 0, i32 1
  %67 = load %struct.ipv6cp*, %struct.ipv6cp** %5, align 8
  %68 = getelementptr inbounds %struct.ipv6cp, %struct.ipv6cp* %67, i32 0, i32 0
  %69 = load i32, i32* @IFACE_ADD_FIRST, align 4
  %70 = load i32, i32* @IFACE_FORCE_ADD, align 4
  %71 = or i32 %69, %70
  %72 = load i32, i32* @IFACE_SYSTEM, align 4
  %73 = or i32 %71, %72
  %74 = call i32 @iface_Add(i32 %64, %struct.TYPE_9__* %66, %struct.ncprange* %11, %struct.ncpaddr* %68, i32 %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %77, label %76

76:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %165

77:                                               ; preds = %3
  %78 = load %struct.bundle*, %struct.bundle** %8, align 8
  %79 = load i32, i32* @OPT_IFACEALIAS, align 4
  %80 = call i64 @Enabled(%struct.bundle* %78, i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %93, label %82

82:                                               ; preds = %77
  %83 = load %struct.bundle*, %struct.bundle** %8, align 8
  %84 = getelementptr inbounds %struct.bundle, %struct.bundle* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.bundle*, %struct.bundle** %8, align 8
  %87 = getelementptr inbounds %struct.bundle, %struct.bundle* %86, i32 0, i32 1
  %88 = load i32, i32* @AF_INET6, align 4
  %89 = load i32, i32* @IFACE_CLEAR_ALIASES, align 4
  %90 = load i32, i32* @IFACE_SYSTEM, align 4
  %91 = or i32 %89, %90
  %92 = call i32 @iface_Clear(i32 %85, %struct.TYPE_9__* %87, i32 %88, i32 %91)
  br label %93

93:                                               ; preds = %82, %77
  %94 = call i32 @ncpaddr_setip6(%struct.ncpaddr* %13, %struct.in6_addr* @in6addr_linklocal_mcast)
  %95 = call i32 @ncprange_set(%struct.ncprange* %12, %struct.ncpaddr* %13, i32 32)
  %96 = load %struct.bundle*, %struct.bundle** %8, align 8
  %97 = load i32, i32* @RTM_ADD, align 4
  %98 = load %struct.ipv6cp*, %struct.ipv6cp** %5, align 8
  %99 = getelementptr inbounds %struct.ipv6cp, %struct.ipv6cp* %98, i32 0, i32 1
  %100 = call i32 @rt_Set(%struct.bundle* %96, i32 %97, %struct.ncprange* %12, %struct.ncpaddr* %99, i32 1, i32 0)
  %101 = load %struct.bundle*, %struct.bundle** %8, align 8
  %102 = getelementptr inbounds %struct.bundle, %struct.bundle* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = icmp sgt i64 %105, 0
  br i1 %106, label %114, label %107

107:                                              ; preds = %93
  %108 = load %struct.bundle*, %struct.bundle** %8, align 8
  %109 = getelementptr inbounds %struct.bundle, %struct.bundle* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = icmp sgt i64 %112, 0
  br i1 %113, label %114, label %131

114:                                              ; preds = %107, %93
  %115 = call i32 @ncprange_getsa(%struct.ncprange* %11, %struct.sockaddr_storage* %15, %struct.sockaddr_storage* %16)
  %116 = load %struct.ipv6cp*, %struct.ipv6cp** %5, align 8
  %117 = getelementptr inbounds %struct.ipv6cp, %struct.ipv6cp* %116, i32 0, i32 0
  %118 = call i64 @ncpaddr_isset(%struct.ncpaddr* %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %114
  %121 = load %struct.ipv6cp*, %struct.ipv6cp** %5, align 8
  %122 = getelementptr inbounds %struct.ipv6cp, %struct.ipv6cp* %121, i32 0, i32 0
  %123 = call i32 @ncpaddr_getsa(%struct.ncpaddr* %122, %struct.sockaddr_storage* %14)
  br label %125

124:                                              ; preds = %114
  store %struct.sockaddr* null, %struct.sockaddr** %17, align 8
  br label %125

125:                                              ; preds = %124, %120
  %126 = load %struct.bundle*, %struct.bundle** %8, align 8
  %127 = load %struct.sockaddr*, %struct.sockaddr** %17, align 8
  %128 = load %struct.sockaddr*, %struct.sockaddr** %18, align 8
  %129 = load %struct.sockaddr*, %struct.sockaddr** %19, align 8
  %130 = call i32 @rt_Update(%struct.bundle* %126, %struct.sockaddr* %127, %struct.sockaddr* %128, %struct.sockaddr* %129, i32* null, i32* null)
  br label %131

131:                                              ; preds = %125, %107
  %132 = load %struct.bundle*, %struct.bundle** %8, align 8
  %133 = load i32, i32* @OPT_SROUTES, align 4
  %134 = call i64 @Enabled(%struct.bundle* %132, i32 %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %147

136:                                              ; preds = %131
  %137 = load %struct.bundle*, %struct.bundle** %8, align 8
  %138 = load %struct.bundle*, %struct.bundle** %8, align 8
  %139 = getelementptr inbounds %struct.bundle, %struct.bundle* %138, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = load %struct.ipv6cp*, %struct.ipv6cp** %5, align 8
  %143 = getelementptr inbounds %struct.ipv6cp, %struct.ipv6cp* %142, i32 0, i32 1
  %144 = load %struct.ipv6cp*, %struct.ipv6cp** %5, align 8
  %145 = getelementptr inbounds %struct.ipv6cp, %struct.ipv6cp* %144, i32 0, i32 0
  %146 = call i32 @route_Change(%struct.bundle* %137, i32 %141, %struct.ncpaddr* %143, %struct.ncpaddr* %145)
  br label %147

147:                                              ; preds = %136, %131
  %148 = load %struct.bundle*, %struct.bundle** %8, align 8
  %149 = getelementptr inbounds %struct.bundle, %struct.bundle* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %149, i32 0, i32 1
  %151 = load i64, i64* %150, align 8
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %164

153:                                              ; preds = %147
  %154 = load %struct.bundle*, %struct.bundle** %8, align 8
  %155 = load %struct.bundle*, %struct.bundle** %8, align 8
  %156 = getelementptr inbounds %struct.bundle, %struct.bundle* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = load %struct.ipv6cp*, %struct.ipv6cp** %5, align 8
  %160 = getelementptr inbounds %struct.ipv6cp, %struct.ipv6cp* %159, i32 0, i32 1
  %161 = load %struct.ipv6cp*, %struct.ipv6cp** %5, align 8
  %162 = getelementptr inbounds %struct.ipv6cp, %struct.ipv6cp* %161, i32 0, i32 0
  %163 = call i32 @route_Change(%struct.bundle* %154, i32 %158, %struct.ncpaddr* %160, %struct.ncpaddr* %162)
  br label %164

164:                                              ; preds = %153, %147
  store i32 1, i32* %4, align 4
  br label %165

165:                                              ; preds = %164, %76
  %166 = load i32, i32* %4, align 4
  ret i32 %166
}

declare dso_local i32 @memset(%struct.in6_addr*, i8 signext, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @ncpaddr_setip6(%struct.ncpaddr*, %struct.in6_addr*) #1

declare dso_local i32 @ncprange_set(%struct.ncprange*, %struct.ncpaddr*, i32) #1

declare dso_local i32 @iface_Add(i32, %struct.TYPE_9__*, %struct.ncprange*, %struct.ncpaddr*, i32) #1

declare dso_local i64 @Enabled(%struct.bundle*, i32) #1

declare dso_local i32 @iface_Clear(i32, %struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @rt_Set(%struct.bundle*, i32, %struct.ncprange*, %struct.ncpaddr*, i32, i32) #1

declare dso_local i32 @ncprange_getsa(%struct.ncprange*, %struct.sockaddr_storage*, %struct.sockaddr_storage*) #1

declare dso_local i64 @ncpaddr_isset(%struct.ncpaddr*) #1

declare dso_local i32 @ncpaddr_getsa(%struct.ncpaddr*, %struct.sockaddr_storage*) #1

declare dso_local i32 @rt_Update(%struct.bundle*, %struct.sockaddr*, %struct.sockaddr*, %struct.sockaddr*, i32*, i32*) #1

declare dso_local i32 @route_Change(%struct.bundle*, i32, %struct.ncpaddr*, %struct.ncpaddr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
