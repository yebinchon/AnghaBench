; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_if_me.c_me_ioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_if_me.c_me_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.ifnet = type { i32, %struct.me_softc*, i32 }
%struct.me_softc = type { i32, %struct.TYPE_4__, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.ifreq = type { i32, i32, i32 }
%struct.sockaddr_in = type { i32, %struct.TYPE_4__, i32 }
%struct.in_aliasreq = type { %struct.sockaddr_in, %struct.sockaddr_in }

@EINVAL = common dso_local global i32 0, align 4
@IFF_UP = common dso_local global i32 0, align 4
@me_ioctl_sx = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@INADDR_ANY = common dso_local global i32 0, align 4
@EADDRNOTAVAIL = common dso_local global i32 0, align 4
@curthread = common dso_local global %struct.TYPE_5__* null, align 8
@PRIV_NET_GRE = common dso_local global i32 0, align 4
@rt_numfibs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifnet*, i32, i64)* @me_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @me_ioctl(%struct.ifnet* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ifnet*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.ifreq*, align 8
  %9 = alloca %struct.sockaddr_in*, align 8
  %10 = alloca %struct.sockaddr_in*, align 8
  %11 = alloca %struct.me_softc*, align 8
  %12 = alloca i32, align 4
  store %struct.ifnet* %0, %struct.ifnet** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %13 = load i64, i64* %7, align 8
  %14 = inttoptr i64 %13 to %struct.ifreq*
  store %struct.ifreq* %14, %struct.ifreq** %8, align 8
  %15 = load i32, i32* %6, align 4
  switch i32 %15, label %36 [
    i32 130, label %16
    i32 132, label %29
    i32 131, label %35
    i32 138, label %35
    i32 137, label %35
  ]

16:                                               ; preds = %3
  %17 = load %struct.ifreq*, %struct.ifreq** %8, align 8
  %18 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp slt i32 %19, 576
  br i1 %20, label %21, label %23

21:                                               ; preds = %16
  %22 = load i32, i32* @EINVAL, align 4
  store i32 %22, i32* %4, align 4
  br label %191

23:                                               ; preds = %16
  %24 = load %struct.ifreq*, %struct.ifreq** %8, align 8
  %25 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %28 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  store i32 0, i32* %4, align 4
  br label %191

29:                                               ; preds = %3
  %30 = load i32, i32* @IFF_UP, align 4
  %31 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %32 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = or i32 %33, %30
  store i32 %34, i32* %32, align 8
  br label %35

35:                                               ; preds = %3, %3, %3, %29
  store i32 0, i32* %4, align 4
  br label %191

36:                                               ; preds = %3
  %37 = call i32 @sx_xlock(i32* @me_ioctl_sx)
  %38 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %39 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %38, i32 0, i32 1
  %40 = load %struct.me_softc*, %struct.me_softc** %39, align 8
  store %struct.me_softc* %40, %struct.me_softc** %11, align 8
  %41 = load %struct.me_softc*, %struct.me_softc** %11, align 8
  %42 = icmp eq %struct.me_softc* %41, null
  br i1 %42, label %43, label %45

43:                                               ; preds = %36
  %44 = load i32, i32* @ENXIO, align 4
  store i32 %44, i32* %12, align 4
  br label %188

45:                                               ; preds = %36
  store i32 0, i32* %12, align 4
  %46 = load i32, i32* %6, align 4
  switch i32 %46, label %185 [
    i32 129, label %47
    i32 136, label %110
    i32 134, label %113
    i32 135, label %113
    i32 133, label %158
    i32 128, label %164
  ]

47:                                               ; preds = %45
  %48 = load i64, i64* %7, align 8
  %49 = inttoptr i64 %48 to %struct.in_aliasreq*
  %50 = getelementptr inbounds %struct.in_aliasreq, %struct.in_aliasreq* %49, i32 0, i32 1
  store %struct.sockaddr_in* %50, %struct.sockaddr_in** %9, align 8
  %51 = load i64, i64* %7, align 8
  %52 = inttoptr i64 %51 to %struct.in_aliasreq*
  %53 = getelementptr inbounds %struct.in_aliasreq, %struct.in_aliasreq* %52, i32 0, i32 0
  store %struct.sockaddr_in* %53, %struct.sockaddr_in** %10, align 8
  %54 = load %struct.sockaddr_in*, %struct.sockaddr_in** %9, align 8
  %55 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.sockaddr_in*, %struct.sockaddr_in** %10, align 8
  %58 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %56, %59
  br i1 %60, label %81, label %61

61:                                               ; preds = %47
  %62 = load %struct.sockaddr_in*, %struct.sockaddr_in** %9, align 8
  %63 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @AF_INET, align 4
  %66 = icmp ne i32 %64, %65
  br i1 %66, label %81, label %67

67:                                               ; preds = %61
  %68 = load %struct.sockaddr_in*, %struct.sockaddr_in** %9, align 8
  %69 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.sockaddr_in*, %struct.sockaddr_in** %10, align 8
  %72 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = icmp ne i32 %70, %73
  br i1 %74, label %81, label %75

75:                                               ; preds = %67
  %76 = load %struct.sockaddr_in*, %struct.sockaddr_in** %9, align 8
  %77 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = sext i32 %78 to i64
  %80 = icmp ne i64 %79, 12
  br i1 %80, label %81, label %83

81:                                               ; preds = %75, %67, %61, %47
  %82 = load i32, i32* @EINVAL, align 4
  store i32 %82, i32* %12, align 4
  br label %187

83:                                               ; preds = %75
  %84 = load %struct.sockaddr_in*, %struct.sockaddr_in** %9, align 8
  %85 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @INADDR_ANY, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %97, label %90

90:                                               ; preds = %83
  %91 = load %struct.sockaddr_in*, %struct.sockaddr_in** %10, align 8
  %92 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @INADDR_ANY, align 4
  %96 = icmp eq i32 %94, %95
  br i1 %96, label %97, label %99

97:                                               ; preds = %90, %83
  %98 = load i32, i32* @EADDRNOTAVAIL, align 4
  store i32 %98, i32* %12, align 4
  br label %187

99:                                               ; preds = %90
  %100 = load %struct.me_softc*, %struct.me_softc** %11, align 8
  %101 = load %struct.sockaddr_in*, %struct.sockaddr_in** %9, align 8
  %102 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.sockaddr_in*, %struct.sockaddr_in** %10, align 8
  %106 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @me_set_tunnel(%struct.me_softc* %100, i32 %104, i32 %108)
  store i32 %109, i32* %12, align 4
  br label %187

110:                                              ; preds = %45
  %111 = load %struct.me_softc*, %struct.me_softc** %11, align 8
  %112 = call i32 @me_delete_tunnel(%struct.me_softc* %111)
  br label %187

113:                                              ; preds = %45, %45
  %114 = load %struct.me_softc*, %struct.me_softc** %11, align 8
  %115 = call i32 @ME_READY(%struct.me_softc* %114)
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %119, label %117

117:                                              ; preds = %113
  %118 = load i32, i32* @EADDRNOTAVAIL, align 4
  store i32 %118, i32* %12, align 4
  br label %187

119:                                              ; preds = %113
  %120 = load %struct.ifreq*, %struct.ifreq** %8, align 8
  %121 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %120, i32 0, i32 2
  %122 = bitcast i32* %121 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %122, %struct.sockaddr_in** %9, align 8
  %123 = load %struct.sockaddr_in*, %struct.sockaddr_in** %9, align 8
  %124 = call i32 @memset(%struct.sockaddr_in* %123, i32 0, i32 12)
  %125 = load i32, i32* @AF_INET, align 4
  %126 = load %struct.sockaddr_in*, %struct.sockaddr_in** %9, align 8
  %127 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %126, i32 0, i32 2
  store i32 %125, i32* %127, align 4
  %128 = load %struct.sockaddr_in*, %struct.sockaddr_in** %9, align 8
  %129 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %128, i32 0, i32 0
  store i32 12, i32* %129, align 4
  %130 = load i32, i32* %6, align 4
  switch i32 %130, label %145 [
    i32 134, label %131
    i32 135, label %138
  ]

131:                                              ; preds = %119
  %132 = load %struct.sockaddr_in*, %struct.sockaddr_in** %9, align 8
  %133 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %132, i32 0, i32 1
  %134 = load %struct.me_softc*, %struct.me_softc** %11, align 8
  %135 = getelementptr inbounds %struct.me_softc, %struct.me_softc* %134, i32 0, i32 2
  %136 = bitcast %struct.TYPE_4__* %133 to i8*
  %137 = bitcast %struct.TYPE_4__* %135 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %136, i8* align 4 %137, i64 4, i1 false)
  br label %145

138:                                              ; preds = %119
  %139 = load %struct.sockaddr_in*, %struct.sockaddr_in** %9, align 8
  %140 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %139, i32 0, i32 1
  %141 = load %struct.me_softc*, %struct.me_softc** %11, align 8
  %142 = getelementptr inbounds %struct.me_softc, %struct.me_softc* %141, i32 0, i32 1
  %143 = bitcast %struct.TYPE_4__* %140 to i8*
  %144 = bitcast %struct.TYPE_4__* %142 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %143, i8* align 4 %144, i64 4, i1 false)
  br label %145

145:                                              ; preds = %119, %138, %131
  %146 = load %struct.TYPE_5__*, %struct.TYPE_5__** @curthread, align 8
  %147 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.sockaddr_in*, %struct.sockaddr_in** %9, align 8
  %150 = call i32 @sintosa(%struct.sockaddr_in* %149)
  %151 = call i32 @prison_if(i32 %148, i32 %150)
  store i32 %151, i32* %12, align 4
  %152 = load i32, i32* %12, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %157

154:                                              ; preds = %145
  %155 = load %struct.sockaddr_in*, %struct.sockaddr_in** %9, align 8
  %156 = call i32 @memset(%struct.sockaddr_in* %155, i32 0, i32 12)
  br label %157

157:                                              ; preds = %154, %145
  br label %187

158:                                              ; preds = %45
  %159 = load %struct.me_softc*, %struct.me_softc** %11, align 8
  %160 = getelementptr inbounds %struct.me_softc, %struct.me_softc* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.ifreq*, %struct.ifreq** %8, align 8
  %163 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %162, i32 0, i32 1
  store i32 %161, i32* %163, align 4
  br label %187

164:                                              ; preds = %45
  %165 = load %struct.TYPE_5__*, %struct.TYPE_5__** @curthread, align 8
  %166 = load i32, i32* @PRIV_NET_GRE, align 4
  %167 = call i32 @priv_check(%struct.TYPE_5__* %165, i32 %166)
  store i32 %167, i32* %12, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %170

169:                                              ; preds = %164
  br label %187

170:                                              ; preds = %164
  %171 = load %struct.ifreq*, %struct.ifreq** %8, align 8
  %172 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = load i32, i32* @rt_numfibs, align 4
  %175 = icmp sge i32 %173, %174
  br i1 %175, label %176, label %178

176:                                              ; preds = %170
  %177 = load i32, i32* @EINVAL, align 4
  store i32 %177, i32* %12, align 4
  br label %184

178:                                              ; preds = %170
  %179 = load %struct.ifreq*, %struct.ifreq** %8, align 8
  %180 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = load %struct.me_softc*, %struct.me_softc** %11, align 8
  %183 = getelementptr inbounds %struct.me_softc, %struct.me_softc* %182, i32 0, i32 0
  store i32 %181, i32* %183, align 4
  br label %184

184:                                              ; preds = %178, %176
  br label %187

185:                                              ; preds = %45
  %186 = load i32, i32* @EINVAL, align 4
  store i32 %186, i32* %12, align 4
  br label %187

187:                                              ; preds = %185, %184, %169, %158, %157, %117, %110, %99, %97, %81
  br label %188

188:                                              ; preds = %187, %43
  %189 = call i32 @sx_xunlock(i32* @me_ioctl_sx)
  %190 = load i32, i32* %12, align 4
  store i32 %190, i32* %4, align 4
  br label %191

191:                                              ; preds = %188, %35, %23, %21
  %192 = load i32, i32* %4, align 4
  ret i32 %192
}

declare dso_local i32 @sx_xlock(i32*) #1

declare dso_local i32 @me_set_tunnel(%struct.me_softc*, i32, i32) #1

declare dso_local i32 @me_delete_tunnel(%struct.me_softc*) #1

declare dso_local i32 @ME_READY(%struct.me_softc*) #1

declare dso_local i32 @memset(%struct.sockaddr_in*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @prison_if(i32, i32) #1

declare dso_local i32 @sintosa(%struct.sockaddr_in*) #1

declare dso_local i32 @priv_check(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @sx_xunlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
