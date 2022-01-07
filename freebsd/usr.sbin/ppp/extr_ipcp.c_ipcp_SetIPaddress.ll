; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_ipcp.c_ipcp_SetIPaddress.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_ipcp.c_ipcp_SetIPaddress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipcp = type { %struct.TYPE_10__, %struct.TYPE_7__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_7__ = type { %struct.bundle* }
%struct.bundle = type { %struct.TYPE_9__, %struct.TYPE_11__, i32 }
%struct.TYPE_9__ = type { i32, i64 }
%struct.TYPE_11__ = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, i64 }
%struct.in_addr = type { i32 }
%struct.ncpaddr = type { i32 }
%struct.ncprange = type { i32 }
%struct.sockaddr_storage = type { i32 }
%struct.sockaddr = type { i32 }

@INADDR_ANY = common dso_local global i32 0, align 4
@IFACE_ADD_FIRST = common dso_local global i32 0, align 4
@IFACE_FORCE_ADD = common dso_local global i32 0, align 4
@IFACE_SYSTEM = common dso_local global i32 0, align 4
@OPT_IFACEALIAS = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@IFACE_CLEAR_ALIASES = common dso_local global i32 0, align 4
@OPT_SROUTES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipcp*, i32, i32)* @ipcp_SetIPaddress to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipcp_SetIPaddress(%struct.ipcp* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.in_addr, align 4
  %6 = alloca %struct.in_addr, align 4
  %7 = alloca %struct.ipcp*, align 8
  %8 = alloca %struct.bundle*, align 8
  %9 = alloca %struct.ncpaddr, align 4
  %10 = alloca %struct.ncpaddr, align 4
  %11 = alloca %struct.ncprange, align 4
  %12 = alloca %struct.in_addr, align 4
  %13 = alloca %struct.sockaddr_storage, align 4
  %14 = alloca %struct.sockaddr_storage, align 4
  %15 = alloca %struct.sockaddr_storage, align 4
  %16 = alloca %struct.sockaddr*, align 8
  %17 = alloca %struct.sockaddr*, align 8
  %18 = alloca %struct.sockaddr*, align 8
  %19 = alloca %struct.in_addr, align 4
  %20 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %5, i32 0, i32 0
  store i32 %1, i32* %20, align 4
  %21 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %6, i32 0, i32 0
  store i32 %2, i32* %21, align 4
  store %struct.ipcp* %0, %struct.ipcp** %7, align 8
  %22 = load %struct.ipcp*, %struct.ipcp** %7, align 8
  %23 = getelementptr inbounds %struct.ipcp, %struct.ipcp* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load %struct.bundle*, %struct.bundle** %24, align 8
  store %struct.bundle* %25, %struct.bundle** %8, align 8
  %26 = bitcast %struct.sockaddr_storage* %13 to %struct.sockaddr*
  store %struct.sockaddr* %26, %struct.sockaddr** %16, align 8
  %27 = bitcast %struct.sockaddr_storage* %14 to %struct.sockaddr*
  store %struct.sockaddr* %27, %struct.sockaddr** %17, align 8
  %28 = bitcast %struct.sockaddr_storage* %15 to %struct.sockaddr*
  store %struct.sockaddr* %28, %struct.sockaddr** %18, align 8
  %29 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %6, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @ncpaddr_setip4(%struct.ncpaddr* %10, i32 %30)
  %32 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %5, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @ncpaddr_setip4(%struct.ncpaddr* %9, i32 %33)
  %35 = call i32 @ncprange_sethost(%struct.ncprange* %11, %struct.ncpaddr* %9)
  %36 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %5, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @addr2mask(i32 %37)
  %39 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %19, i32 0, i32 0
  store i32 %38, i32* %39, align 4
  %40 = bitcast %struct.in_addr* %12 to i8*
  %41 = bitcast %struct.in_addr* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %40, i8* align 4 %41, i64 4, i1 false)
  %42 = load %struct.ipcp*, %struct.ipcp** %7, align 8
  %43 = getelementptr inbounds %struct.ipcp, %struct.ipcp* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @INADDR_ANY, align 4
  %47 = icmp ne i32 %45, %46
  br i1 %47, label %48, label %65

48:                                               ; preds = %3
  %49 = load %struct.ipcp*, %struct.ipcp** %7, align 8
  %50 = getelementptr inbounds %struct.ipcp, %struct.ipcp* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %12, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = and i32 %52, %54
  %56 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %12, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp eq i32 %55, %57
  br i1 %58, label %59, label %65

59:                                               ; preds = %48
  %60 = load %struct.ipcp*, %struct.ipcp** %7, align 8
  %61 = getelementptr inbounds %struct.ipcp, %struct.ipcp* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @ncprange_setip4mask(%struct.ncprange* %11, i32 %63)
  br label %65

65:                                               ; preds = %59, %48, %3
  %66 = load %struct.bundle*, %struct.bundle** %8, align 8
  %67 = getelementptr inbounds %struct.bundle, %struct.bundle* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.bundle*, %struct.bundle** %8, align 8
  %70 = getelementptr inbounds %struct.bundle, %struct.bundle* %69, i32 0, i32 1
  %71 = load i32, i32* @IFACE_ADD_FIRST, align 4
  %72 = load i32, i32* @IFACE_FORCE_ADD, align 4
  %73 = or i32 %71, %72
  %74 = load i32, i32* @IFACE_SYSTEM, align 4
  %75 = or i32 %73, %74
  %76 = call i32 @iface_Add(i32 %68, %struct.TYPE_11__* %70, %struct.ncprange* %11, %struct.ncpaddr* %10, i32 %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %65
  store i32 0, i32* %4, align 4
  br label %143

79:                                               ; preds = %65
  %80 = load %struct.bundle*, %struct.bundle** %8, align 8
  %81 = load i32, i32* @OPT_IFACEALIAS, align 4
  %82 = call i64 @Enabled(%struct.bundle* %80, i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %95, label %84

84:                                               ; preds = %79
  %85 = load %struct.bundle*, %struct.bundle** %8, align 8
  %86 = getelementptr inbounds %struct.bundle, %struct.bundle* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.bundle*, %struct.bundle** %8, align 8
  %89 = getelementptr inbounds %struct.bundle, %struct.bundle* %88, i32 0, i32 1
  %90 = load i32, i32* @AF_INET, align 4
  %91 = load i32, i32* @IFACE_CLEAR_ALIASES, align 4
  %92 = load i32, i32* @IFACE_SYSTEM, align 4
  %93 = or i32 %91, %92
  %94 = call i32 @iface_Clear(i32 %87, %struct.TYPE_11__* %89, i32 %90, i32 %93)
  br label %95

95:                                               ; preds = %84, %79
  %96 = load %struct.bundle*, %struct.bundle** %8, align 8
  %97 = getelementptr inbounds %struct.bundle, %struct.bundle* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = icmp sgt i64 %100, 0
  br i1 %101, label %109, label %102

102:                                              ; preds = %95
  %103 = load %struct.bundle*, %struct.bundle** %8, align 8
  %104 = getelementptr inbounds %struct.bundle, %struct.bundle* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = icmp sgt i64 %107, 0
  br i1 %108, label %109, label %117

109:                                              ; preds = %102, %95
  %110 = call i32 @ncprange_getsa(%struct.ncprange* %11, %struct.sockaddr_storage* %14, %struct.sockaddr_storage* %15)
  %111 = call i32 @ncpaddr_getsa(%struct.ncpaddr* %10, %struct.sockaddr_storage* %13)
  %112 = load %struct.bundle*, %struct.bundle** %8, align 8
  %113 = load %struct.sockaddr*, %struct.sockaddr** %16, align 8
  %114 = load %struct.sockaddr*, %struct.sockaddr** %17, align 8
  %115 = load %struct.sockaddr*, %struct.sockaddr** %18, align 8
  %116 = call i32 @rt_Update(%struct.bundle* %112, %struct.sockaddr* %113, %struct.sockaddr* %114, %struct.sockaddr* %115, i32* null, i32* null)
  br label %117

117:                                              ; preds = %109, %102
  %118 = load %struct.bundle*, %struct.bundle** %8, align 8
  %119 = load i32, i32* @OPT_SROUTES, align 4
  %120 = call i64 @Enabled(%struct.bundle* %118, i32 %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %129

122:                                              ; preds = %117
  %123 = load %struct.bundle*, %struct.bundle** %8, align 8
  %124 = load %struct.bundle*, %struct.bundle** %8, align 8
  %125 = getelementptr inbounds %struct.bundle, %struct.bundle* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = call i32 @route_Change(%struct.bundle* %123, i32 %127, %struct.ncpaddr* %9, %struct.ncpaddr* %10)
  br label %129

129:                                              ; preds = %122, %117
  %130 = load %struct.bundle*, %struct.bundle** %8, align 8
  %131 = getelementptr inbounds %struct.bundle, %struct.bundle* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %142

135:                                              ; preds = %129
  %136 = load %struct.bundle*, %struct.bundle** %8, align 8
  %137 = load %struct.bundle*, %struct.bundle** %8, align 8
  %138 = getelementptr inbounds %struct.bundle, %struct.bundle* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = call i32 @route_Change(%struct.bundle* %136, i32 %140, %struct.ncpaddr* %9, %struct.ncpaddr* %10)
  br label %142

142:                                              ; preds = %135, %129
  store i32 1, i32* %4, align 4
  br label %143

143:                                              ; preds = %142, %78
  %144 = load i32, i32* %4, align 4
  ret i32 %144
}

declare dso_local i32 @ncpaddr_setip4(%struct.ncpaddr*, i32) #1

declare dso_local i32 @ncprange_sethost(%struct.ncprange*, %struct.ncpaddr*) #1

declare dso_local i32 @addr2mask(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ncprange_setip4mask(%struct.ncprange*, i32) #1

declare dso_local i32 @iface_Add(i32, %struct.TYPE_11__*, %struct.ncprange*, %struct.ncpaddr*, i32) #1

declare dso_local i64 @Enabled(%struct.bundle*, i32) #1

declare dso_local i32 @iface_Clear(i32, %struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @ncprange_getsa(%struct.ncprange*, %struct.sockaddr_storage*, %struct.sockaddr_storage*) #1

declare dso_local i32 @ncpaddr_getsa(%struct.ncpaddr*, %struct.sockaddr_storage*) #1

declare dso_local i32 @rt_Update(%struct.bundle*, %struct.sockaddr*, %struct.sockaddr*, %struct.sockaddr*, i32*, i32*) #1

declare dso_local i32 @route_Change(%struct.bundle*, i32, %struct.ncpaddr*, %struct.ncpaddr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
