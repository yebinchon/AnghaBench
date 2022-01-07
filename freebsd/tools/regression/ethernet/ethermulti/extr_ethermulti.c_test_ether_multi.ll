; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/ethernet/ethermulti/extr_ethermulti.c_test_ether_multi.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/ethernet/ethermulti/extr_ethermulti.c_test_ether_multi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifreq = type { i32, i32, i64, i32, i32* }
%struct.sockaddr_dl = type { i32, i32, i64, i32, i32* }
%struct.ether_addr = type { i32* }
%struct.ifmaddrs = type { i32*, i64, %struct.ifmaddrs* }
%struct.TYPE_4__ = type { %struct.sockaddr_dl, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@dorandom = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [18 x i8] c"01:80:DE:FA:CA:7E\00", align 1
@ifname = common dso_local global i32 0, align 4
@IFNAMSIZ = common dso_local global i32 0, align 4
@AF_LINK = common dso_local global i64 0, align 8
@SIOCADDMULTI = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"can't add ethernet multicast membership\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"getifmaddrs()\00", align 1
@ETHER_ADDR_LEN = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [54 x i8] c"group membership for %s not returned by getifmaddrs()\00", align 1
@SIOCDELMULTI = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [43 x i8] c"can't delete ethernet multicast membership\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @test_ether_multi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_ether_multi(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ifreq, align 8
  %4 = alloca %struct.sockaddr_dl*, align 8
  %5 = alloca %struct.ether_addr, align 8
  %6 = alloca %struct.ifmaddrs*, align 8
  %7 = alloca %struct.ifmaddrs*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ether_addr*, align 8
  %11 = alloca %struct.TYPE_4__*, align 8
  store i32 %0, i32* %2, align 4
  %12 = load i64, i64* @dorandom, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %46

14:                                               ; preds = %1
  %15 = call i32 (...) @srandomdev()
  %16 = call i32 (...) @random()
  store i32 %16, i32* %9, align 4
  %17 = getelementptr inbounds %struct.ether_addr, %struct.ether_addr* %5, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  store i32 1, i32* %19, align 4
  %20 = getelementptr inbounds %struct.ether_addr, %struct.ether_addr* %5, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 1
  store i32 128, i32* %22, align 4
  %23 = load i32, i32* %9, align 4
  %24 = ashr i32 %23, 24
  %25 = and i32 %24, 255
  %26 = getelementptr inbounds %struct.ether_addr, %struct.ether_addr* %5, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 2
  store i32 %25, i32* %28, align 4
  %29 = load i32, i32* %9, align 4
  %30 = ashr i32 %29, 16
  %31 = and i32 %30, 255
  %32 = getelementptr inbounds %struct.ether_addr, %struct.ether_addr* %5, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 3
  store i32 %31, i32* %34, align 4
  %35 = load i32, i32* %9, align 4
  %36 = ashr i32 %35, 8
  %37 = and i32 %36, 255
  %38 = getelementptr inbounds %struct.ether_addr, %struct.ether_addr* %5, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 4
  store i32 %37, i32* %40, align 4
  %41 = load i32, i32* %9, align 4
  %42 = and i32 %41, 255
  %43 = getelementptr inbounds %struct.ether_addr, %struct.ether_addr* %5, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 5
  store i32 %42, i32* %45, align 4
  br label %51

46:                                               ; preds = %1
  %47 = call %struct.ether_addr* @ether_aton(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  store %struct.ether_addr* %47, %struct.ether_addr** %10, align 8
  %48 = load %struct.ether_addr*, %struct.ether_addr** %10, align 8
  %49 = bitcast %struct.ether_addr* %5 to i8*
  %50 = bitcast %struct.ether_addr* %48 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %49, i8* align 8 %50, i64 8, i1 false)
  br label %51

51:                                               ; preds = %46, %14
  %52 = bitcast %struct.ifreq* %3 to %struct.sockaddr_dl*
  %53 = call i32 @memset(%struct.sockaddr_dl* %52, i32 0, i32 32)
  %54 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %3, i32 0, i32 4
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 0
  %57 = load i32, i32* @ifname, align 4
  %58 = load i32, i32* @IFNAMSIZ, align 4
  %59 = call i32 @strlcpy(i32* %56, i32 %57, i32 %58)
  %60 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %3, i32 0, i32 3
  %61 = bitcast i32* %60 to %struct.sockaddr_dl*
  store %struct.sockaddr_dl* %61, %struct.sockaddr_dl** %4, align 8
  %62 = load %struct.sockaddr_dl*, %struct.sockaddr_dl** %4, align 8
  %63 = call i32 @memset(%struct.sockaddr_dl* %62, i32 0, i32 32)
  %64 = load %struct.sockaddr_dl*, %struct.sockaddr_dl** %4, align 8
  %65 = getelementptr inbounds %struct.sockaddr_dl, %struct.sockaddr_dl* %64, i32 0, i32 0
  store i32 32, i32* %65, align 8
  %66 = load i64, i64* @AF_LINK, align 8
  %67 = load %struct.sockaddr_dl*, %struct.sockaddr_dl** %4, align 8
  %68 = getelementptr inbounds %struct.sockaddr_dl, %struct.sockaddr_dl* %67, i32 0, i32 2
  store i64 %66, i64* %68, align 8
  %69 = load %struct.sockaddr_dl*, %struct.sockaddr_dl** %4, align 8
  %70 = getelementptr inbounds %struct.sockaddr_dl, %struct.sockaddr_dl* %69, i32 0, i32 1
  store i32 8, i32* %70, align 4
  %71 = load %struct.sockaddr_dl*, %struct.sockaddr_dl** %4, align 8
  %72 = call i32 @LLADDR(%struct.sockaddr_dl* %71)
  %73 = call i32 @memcpy(i32 %72, %struct.ether_addr* %5, i32 8)
  %74 = load i32, i32* %2, align 4
  %75 = load i32, i32* @SIOCADDMULTI, align 4
  %76 = bitcast %struct.ifreq* %3 to %struct.sockaddr_dl*
  %77 = call i64 @ioctl(i32 %74, i32 %75, %struct.sockaddr_dl* %76)
  %78 = icmp slt i64 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %51
  %80 = call i32 @warn(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  br label %174

81:                                               ; preds = %51
  store i32 0, i32* %8, align 4
  %82 = call i64 @getifmaddrs(%struct.ifmaddrs** %7)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %81
  %85 = call i32 @warn(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  br label %138

86:                                               ; preds = %81
  %87 = load %struct.ifmaddrs*, %struct.ifmaddrs** %7, align 8
  store %struct.ifmaddrs* %87, %struct.ifmaddrs** %6, align 8
  br label %88

88:                                               ; preds = %131, %86
  %89 = load %struct.ifmaddrs*, %struct.ifmaddrs** %6, align 8
  %90 = icmp ne %struct.ifmaddrs* %89, null
  br i1 %90, label %91, label %135

91:                                               ; preds = %88
  %92 = load %struct.ifmaddrs*, %struct.ifmaddrs** %6, align 8
  %93 = getelementptr inbounds %struct.ifmaddrs, %struct.ifmaddrs* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = inttoptr i64 %94 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %95, %struct.TYPE_4__** %11, align 8
  %96 = load %struct.ifmaddrs*, %struct.ifmaddrs** %6, align 8
  %97 = getelementptr inbounds %struct.ifmaddrs, %struct.ifmaddrs* %96, i32 0, i32 0
  %98 = load i32*, i32** %97, align 8
  %99 = icmp eq i32* %98, null
  br i1 %99, label %103, label %100

100:                                              ; preds = %91
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %102 = icmp eq %struct.TYPE_4__* %101, null
  br i1 %102, label %103, label %104

103:                                              ; preds = %100, %91
  br label %131

104:                                              ; preds = %100
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @AF_LINK, align 8
  %110 = icmp ne i64 %108, %109
  br i1 %110, label %119, label %111

111:                                              ; preds = %104
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.sockaddr_dl, %struct.sockaddr_dl* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = sext i32 %115 to i64
  %117 = load i64, i64* @ETHER_ADDR_LEN, align 8
  %118 = icmp ne i64 %116, %117
  br i1 %118, label %119, label %120

119:                                              ; preds = %111, %104
  br label %131

120:                                              ; preds = %111
  %121 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 0
  %123 = call i32 @LLADDR(%struct.sockaddr_dl* %122)
  %124 = load %struct.sockaddr_dl*, %struct.sockaddr_dl** %4, align 8
  %125 = call i32 @LLADDR(%struct.sockaddr_dl* %124)
  %126 = load i64, i64* @ETHER_ADDR_LEN, align 8
  %127 = call i64 @bcmp(i32 %123, i32 %125, i64 %126)
  %128 = icmp eq i64 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %120
  store i32 1, i32* %8, align 4
  br label %135

130:                                              ; preds = %120
  br label %131

131:                                              ; preds = %130, %119, %103
  %132 = load %struct.ifmaddrs*, %struct.ifmaddrs** %6, align 8
  %133 = getelementptr inbounds %struct.ifmaddrs, %struct.ifmaddrs* %132, i32 0, i32 2
  %134 = load %struct.ifmaddrs*, %struct.ifmaddrs** %133, align 8
  store %struct.ifmaddrs* %134, %struct.ifmaddrs** %6, align 8
  br label %88

135:                                              ; preds = %129, %88
  %136 = load %struct.ifmaddrs*, %struct.ifmaddrs** %7, align 8
  %137 = call i32 @freeifmaddrs(%struct.ifmaddrs* %136)
  br label %138

138:                                              ; preds = %135, %84
  %139 = load i32, i32* %8, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %144, label %141

141:                                              ; preds = %138
  %142 = call i32 @ether_ntoa(%struct.ether_addr* %5)
  %143 = call i32 @warnx(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0), i32 %142)
  br label %144

144:                                              ; preds = %141, %138
  %145 = bitcast %struct.ifreq* %3 to %struct.sockaddr_dl*
  %146 = call i32 @memset(%struct.sockaddr_dl* %145, i32 0, i32 32)
  %147 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %3, i32 0, i32 4
  %148 = load i32*, i32** %147, align 8
  %149 = getelementptr inbounds i32, i32* %148, i64 0
  %150 = load i32, i32* @ifname, align 4
  %151 = load i32, i32* @IFNAMSIZ, align 4
  %152 = call i32 @strlcpy(i32* %149, i32 %150, i32 %151)
  %153 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %3, i32 0, i32 3
  %154 = bitcast i32* %153 to %struct.sockaddr_dl*
  store %struct.sockaddr_dl* %154, %struct.sockaddr_dl** %4, align 8
  %155 = load %struct.sockaddr_dl*, %struct.sockaddr_dl** %4, align 8
  %156 = call i32 @memset(%struct.sockaddr_dl* %155, i32 0, i32 32)
  %157 = load %struct.sockaddr_dl*, %struct.sockaddr_dl** %4, align 8
  %158 = getelementptr inbounds %struct.sockaddr_dl, %struct.sockaddr_dl* %157, i32 0, i32 0
  store i32 32, i32* %158, align 8
  %159 = load i64, i64* @AF_LINK, align 8
  %160 = load %struct.sockaddr_dl*, %struct.sockaddr_dl** %4, align 8
  %161 = getelementptr inbounds %struct.sockaddr_dl, %struct.sockaddr_dl* %160, i32 0, i32 2
  store i64 %159, i64* %161, align 8
  %162 = load %struct.sockaddr_dl*, %struct.sockaddr_dl** %4, align 8
  %163 = getelementptr inbounds %struct.sockaddr_dl, %struct.sockaddr_dl* %162, i32 0, i32 1
  store i32 8, i32* %163, align 4
  %164 = load %struct.sockaddr_dl*, %struct.sockaddr_dl** %4, align 8
  %165 = call i32 @LLADDR(%struct.sockaddr_dl* %164)
  %166 = call i32 @memcpy(i32 %165, %struct.ether_addr* %5, i32 8)
  %167 = load i32, i32* %2, align 4
  %168 = load i32, i32* @SIOCDELMULTI, align 4
  %169 = bitcast %struct.ifreq* %3 to %struct.sockaddr_dl*
  %170 = call i64 @ioctl(i32 %167, i32 %168, %struct.sockaddr_dl* %169)
  %171 = icmp slt i64 %170, 0
  br i1 %171, label %172, label %174

172:                                              ; preds = %144
  %173 = call i32 @warn(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0))
  br label %174

174:                                              ; preds = %79, %172, %144
  ret void
}

declare dso_local i32 @srandomdev(...) #1

declare dso_local i32 @random(...) #1

declare dso_local %struct.ether_addr* @ether_aton(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @memset(%struct.sockaddr_dl*, i32, i32) #1

declare dso_local i32 @strlcpy(i32*, i32, i32) #1

declare dso_local i32 @memcpy(i32, %struct.ether_addr*, i32) #1

declare dso_local i32 @LLADDR(%struct.sockaddr_dl*) #1

declare dso_local i64 @ioctl(i32, i32, %struct.sockaddr_dl*) #1

declare dso_local i32 @warn(i8*) #1

declare dso_local i64 @getifmaddrs(%struct.ifmaddrs**) #1

declare dso_local i64 @bcmp(i32, i32, i64) #1

declare dso_local i32 @freeifmaddrs(%struct.ifmaddrs*) #1

declare dso_local i32 @warnx(i8*, i32) #1

declare dso_local i32 @ether_ntoa(%struct.ether_addr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
