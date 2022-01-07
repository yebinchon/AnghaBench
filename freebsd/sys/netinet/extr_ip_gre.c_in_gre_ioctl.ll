; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_ip_gre.c_in_gre_ioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_ip_gre.c_in_gre_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gre_sockets = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.gre_softc = type { i8*, %struct.TYPE_9__, %struct.ip*, i32, i32, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.ip = type { %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.ifreq = type { i32 }
%struct.sockaddr_in = type { i8*, i32, %struct.TYPE_8__ }
%struct.in_aliasreq = type { %struct.sockaddr_in, %struct.sockaddr_in }
%struct.sockaddr = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i8* null, align 8
@INADDR_ANY = common dso_local global i32 0, align 4
@EADDRNOTAVAIL = common dso_local global i32 0, align 4
@V_ipv4_hashtbl = common dso_local global i32* null, align 8
@V_ipv4_srchashtbl = common dso_local global i8* null, align 8
@V_ipv4_sockets = common dso_local global %struct.gre_sockets* null, align 8
@EEXIST = common dso_local global i32 0, align 4
@M_GRE = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@chain = common dso_local global i32 0, align 4
@srchash = common dso_local global i32 0, align 4
@UINT32_MAX = common dso_local global i32 0, align 4
@curthread = common dso_local global %struct.TYPE_10__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @in_gre_ioctl(%struct.gre_softc* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.gre_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.ifreq*, align 8
  %8 = alloca %struct.sockaddr_in*, align 8
  %9 = alloca %struct.sockaddr_in*, align 8
  %10 = alloca %struct.ip*, align 8
  %11 = alloca i32, align 4
  store %struct.gre_softc* %0, %struct.gre_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %12 = load i64, i64* %6, align 8
  %13 = inttoptr i64 %12 to %struct.ifreq*
  store %struct.ifreq* %13, %struct.ifreq** %7, align 8
  %14 = load i32, i32* @EINVAL, align 4
  store i32 %14, i32* %11, align 4
  %15 = load i32, i32* %5, align 4
  switch i32 %15, label %209 [
    i32 128, label %16
    i32 129, label %161
    i32 130, label %161
  ]

16:                                               ; preds = %3
  %17 = load i64, i64* %6, align 8
  %18 = inttoptr i64 %17 to %struct.in_aliasreq*
  %19 = getelementptr inbounds %struct.in_aliasreq, %struct.in_aliasreq* %18, i32 0, i32 1
  store %struct.sockaddr_in* %19, %struct.sockaddr_in** %9, align 8
  %20 = load i64, i64* %6, align 8
  %21 = inttoptr i64 %20 to %struct.in_aliasreq*
  %22 = getelementptr inbounds %struct.in_aliasreq, %struct.in_aliasreq* %21, i32 0, i32 0
  store %struct.sockaddr_in* %22, %struct.sockaddr_in** %8, align 8
  %23 = load %struct.sockaddr_in*, %struct.sockaddr_in** %9, align 8
  %24 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = load %struct.sockaddr_in*, %struct.sockaddr_in** %8, align 8
  %27 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = icmp ne i8* %25, %28
  br i1 %29, label %50, label %30

30:                                               ; preds = %16
  %31 = load %struct.sockaddr_in*, %struct.sockaddr_in** %9, align 8
  %32 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = load i8*, i8** @AF_INET, align 8
  %35 = icmp ne i8* %33, %34
  br i1 %35, label %50, label %36

36:                                               ; preds = %30
  %37 = load %struct.sockaddr_in*, %struct.sockaddr_in** %9, align 8
  %38 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.sockaddr_in*, %struct.sockaddr_in** %8, align 8
  %41 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = icmp ne i32 %39, %42
  br i1 %43, label %50, label %44

44:                                               ; preds = %36
  %45 = load %struct.sockaddr_in*, %struct.sockaddr_in** %9, align 8
  %46 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = sext i32 %47 to i64
  %49 = icmp ne i64 %48, 16
  br i1 %49, label %50, label %51

50:                                               ; preds = %44, %36, %30, %16
  br label %209

51:                                               ; preds = %44
  %52 = load %struct.sockaddr_in*, %struct.sockaddr_in** %9, align 8
  %53 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @INADDR_ANY, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %65, label %58

58:                                               ; preds = %51
  %59 = load %struct.sockaddr_in*, %struct.sockaddr_in** %8, align 8
  %60 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @INADDR_ANY, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %58, %51
  %66 = load i32, i32* @EADDRNOTAVAIL, align 4
  store i32 %66, i32* %11, align 4
  br label %209

67:                                               ; preds = %58
  %68 = load i32*, i32** @V_ipv4_hashtbl, align 8
  %69 = icmp eq i32* %68, null
  br i1 %69, label %70, label %76

70:                                               ; preds = %67
  %71 = call i8* (...) @gre_hashinit()
  %72 = bitcast i8* %71 to i32*
  store i32* %72, i32** @V_ipv4_hashtbl, align 8
  %73 = call i8* (...) @gre_hashinit()
  store i8* %73, i8** @V_ipv4_srchashtbl, align 8
  %74 = call i8* (...) @gre_hashinit()
  %75 = bitcast i8* %74 to %struct.gre_sockets*
  store %struct.gre_sockets* %75, %struct.gre_sockets** @V_ipv4_sockets, align 8
  br label %76

76:                                               ; preds = %70, %67
  %77 = load %struct.gre_softc*, %struct.gre_softc** %4, align 8
  %78 = load %struct.sockaddr_in*, %struct.sockaddr_in** %9, align 8
  %79 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %78, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.sockaddr_in*, %struct.sockaddr_in** %8, align 8
  %83 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.gre_softc*, %struct.gre_softc** %4, align 8
  %87 = getelementptr inbounds %struct.gre_softc, %struct.gre_softc* %86, i32 0, i32 5
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @in_gre_checkdup(%struct.gre_softc* %77, i32 %81, i32 %85, i32 %88)
  store i32 %89, i32* %11, align 4
  %90 = load i32, i32* %11, align 4
  %91 = load i32, i32* @EADDRNOTAVAIL, align 4
  %92 = icmp eq i32 %90, %91
  br i1 %92, label %93, label %94

93:                                               ; preds = %76
  br label %209

94:                                               ; preds = %76
  %95 = load i32, i32* %11, align 4
  %96 = load i32, i32* @EEXIST, align 4
  %97 = icmp eq i32 %95, %96
  br i1 %97, label %98, label %99

98:                                               ; preds = %94
  store i32 0, i32* %11, align 4
  br label %209

99:                                               ; preds = %94
  %100 = load i32, i32* @M_GRE, align 4
  %101 = load i32, i32* @M_WAITOK, align 4
  %102 = load i32, i32* @M_ZERO, align 4
  %103 = or i32 %101, %102
  %104 = call %struct.ip* @malloc(i32 16, i32 %100, i32 %103)
  store %struct.ip* %104, %struct.ip** %10, align 8
  %105 = load %struct.sockaddr_in*, %struct.sockaddr_in** %9, align 8
  %106 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %105, i32 0, i32 2
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.ip*, %struct.ip** %10, align 8
  %110 = getelementptr inbounds %struct.ip, %struct.ip* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 0
  store i32 %108, i32* %111, align 4
  %112 = load %struct.sockaddr_in*, %struct.sockaddr_in** %8, align 8
  %113 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %112, i32 0, i32 2
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.ip*, %struct.ip** %10, align 8
  %117 = getelementptr inbounds %struct.ip, %struct.ip* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 0
  store i32 %115, i32* %118, align 4
  %119 = load %struct.gre_softc*, %struct.gre_softc** %4, align 8
  %120 = getelementptr inbounds %struct.gre_softc, %struct.gre_softc* %119, i32 0, i32 0
  %121 = load i8*, i8** %120, align 8
  %122 = icmp ne i8* %121, null
  br i1 %122, label %123, label %136

123:                                              ; preds = %99
  %124 = load %struct.gre_softc*, %struct.gre_softc** %4, align 8
  %125 = load i32, i32* @chain, align 4
  %126 = call i32 @CK_LIST_REMOVE(%struct.gre_softc* %124, i32 %125)
  %127 = load %struct.gre_softc*, %struct.gre_softc** %4, align 8
  %128 = load i32, i32* @srchash, align 4
  %129 = call i32 @CK_LIST_REMOVE(%struct.gre_softc* %127, i32 %128)
  %130 = call i32 (...) @GRE_WAIT()
  %131 = load %struct.gre_softc*, %struct.gre_softc** %4, align 8
  %132 = getelementptr inbounds %struct.gre_softc, %struct.gre_softc* %131, i32 0, i32 2
  %133 = load %struct.ip*, %struct.ip** %132, align 8
  %134 = load i32, i32* @M_GRE, align 4
  %135 = call i32 @free(%struct.ip* %133, i32 %134)
  br label %136

136:                                              ; preds = %123, %99
  %137 = load i8*, i8** @AF_INET, align 8
  %138 = load %struct.gre_softc*, %struct.gre_softc** %4, align 8
  %139 = getelementptr inbounds %struct.gre_softc, %struct.gre_softc* %138, i32 0, i32 0
  store i8* %137, i8** %139, align 8
  %140 = load %struct.ip*, %struct.ip** %10, align 8
  %141 = load %struct.gre_softc*, %struct.gre_softc** %4, align 8
  %142 = getelementptr inbounds %struct.gre_softc, %struct.gre_softc* %141, i32 0, i32 2
  store %struct.ip* %140, %struct.ip** %142, align 8
  %143 = load %struct.gre_softc*, %struct.gre_softc** %4, align 8
  %144 = getelementptr inbounds %struct.gre_softc, %struct.gre_softc* %143, i32 0, i32 4
  store i32 0, i32* %144, align 4
  %145 = load i32, i32* @UINT32_MAX, align 4
  %146 = load %struct.gre_softc*, %struct.gre_softc** %4, align 8
  %147 = getelementptr inbounds %struct.gre_softc, %struct.gre_softc* %146, i32 0, i32 3
  store i32 %145, i32* %147, align 8
  %148 = load %struct.gre_softc*, %struct.gre_softc** %4, align 8
  %149 = call i32 @in_gre_attach(%struct.gre_softc* %148)
  store i32 %149, i32* %11, align 4
  %150 = load i32, i32* %11, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %160

152:                                              ; preds = %136
  %153 = load %struct.gre_softc*, %struct.gre_softc** %4, align 8
  %154 = getelementptr inbounds %struct.gre_softc, %struct.gre_softc* %153, i32 0, i32 0
  store i8* null, i8** %154, align 8
  %155 = load %struct.gre_softc*, %struct.gre_softc** %4, align 8
  %156 = getelementptr inbounds %struct.gre_softc, %struct.gre_softc* %155, i32 0, i32 2
  %157 = load %struct.ip*, %struct.ip** %156, align 8
  %158 = load i32, i32* @M_GRE, align 4
  %159 = call i32 @free(%struct.ip* %157, i32 %158)
  br label %160

160:                                              ; preds = %152, %136
  br label %209

161:                                              ; preds = %3, %3
  %162 = load %struct.gre_softc*, %struct.gre_softc** %4, align 8
  %163 = getelementptr inbounds %struct.gre_softc, %struct.gre_softc* %162, i32 0, i32 0
  %164 = load i8*, i8** %163, align 8
  %165 = load i8*, i8** @AF_INET, align 8
  %166 = icmp ne i8* %164, %165
  br i1 %166, label %167, label %169

167:                                              ; preds = %161
  %168 = load i32, i32* @EADDRNOTAVAIL, align 4
  store i32 %168, i32* %11, align 4
  br label %209

169:                                              ; preds = %161
  %170 = load %struct.ifreq*, %struct.ifreq** %7, align 8
  %171 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %170, i32 0, i32 0
  %172 = bitcast i32* %171 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %172, %struct.sockaddr_in** %9, align 8
  %173 = load %struct.sockaddr_in*, %struct.sockaddr_in** %9, align 8
  %174 = call i32 @memset(%struct.sockaddr_in* %173, i32 0, i32 16)
  %175 = load i8*, i8** @AF_INET, align 8
  %176 = load %struct.sockaddr_in*, %struct.sockaddr_in** %9, align 8
  %177 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %176, i32 0, i32 0
  store i8* %175, i8** %177, align 8
  %178 = load %struct.sockaddr_in*, %struct.sockaddr_in** %9, align 8
  %179 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %178, i32 0, i32 1
  store i32 16, i32* %179, align 8
  %180 = load %struct.sockaddr_in*, %struct.sockaddr_in** %9, align 8
  %181 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %180, i32 0, i32 2
  %182 = load i32, i32* %5, align 4
  %183 = icmp eq i32 %182, 129
  br i1 %183, label %184, label %190

184:                                              ; preds = %169
  %185 = load %struct.gre_softc*, %struct.gre_softc** %4, align 8
  %186 = getelementptr inbounds %struct.gre_softc, %struct.gre_softc* %185, i32 0, i32 1
  %187 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %186, i32 0, i32 1
  %188 = bitcast %struct.TYPE_8__* %181 to i8*
  %189 = bitcast %struct.TYPE_8__* %187 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %188, i8* align 4 %189, i64 4, i1 false)
  br label %196

190:                                              ; preds = %169
  %191 = load %struct.gre_softc*, %struct.gre_softc** %4, align 8
  %192 = getelementptr inbounds %struct.gre_softc, %struct.gre_softc* %191, i32 0, i32 1
  %193 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %192, i32 0, i32 0
  %194 = bitcast %struct.TYPE_8__* %181 to i8*
  %195 = bitcast %struct.TYPE_8__* %193 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %194, i8* align 8 %195, i64 4, i1 false)
  br label %196

196:                                              ; preds = %190, %184
  %197 = load %struct.TYPE_10__*, %struct.TYPE_10__** @curthread, align 8
  %198 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 4
  %200 = load %struct.sockaddr_in*, %struct.sockaddr_in** %9, align 8
  %201 = bitcast %struct.sockaddr_in* %200 to %struct.sockaddr*
  %202 = call i32 @prison_if(i32 %199, %struct.sockaddr* %201)
  store i32 %202, i32* %11, align 4
  %203 = load i32, i32* %11, align 4
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %208

205:                                              ; preds = %196
  %206 = load %struct.sockaddr_in*, %struct.sockaddr_in** %9, align 8
  %207 = call i32 @memset(%struct.sockaddr_in* %206, i32 0, i32 16)
  br label %208

208:                                              ; preds = %205, %196
  br label %209

209:                                              ; preds = %3, %208, %167, %160, %98, %93, %65, %50
  %210 = load i32, i32* %11, align 4
  ret i32 %210
}

declare dso_local i8* @gre_hashinit(...) #1

declare dso_local i32 @in_gre_checkdup(%struct.gre_softc*, i32, i32, i32) #1

declare dso_local %struct.ip* @malloc(i32, i32, i32) #1

declare dso_local i32 @CK_LIST_REMOVE(%struct.gre_softc*, i32) #1

declare dso_local i32 @GRE_WAIT(...) #1

declare dso_local i32 @free(%struct.ip*, i32) #1

declare dso_local i32 @in_gre_attach(%struct.gre_softc*) #1

declare dso_local i32 @memset(%struct.sockaddr_in*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @prison_if(i32, %struct.sockaddr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
