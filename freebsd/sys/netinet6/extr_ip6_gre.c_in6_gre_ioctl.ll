; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet6/extr_ip6_gre.c_in6_gre_ioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet6/extr_ip6_gre.c_in6_gre_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gre_sockets = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.gre_softc = type { i8*, %struct.TYPE_3__, %struct.ip6_hdr*, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.ip6_hdr = type { i32, i32 }
%struct.in6_ifreq = type { i32 }
%struct.sockaddr_in6 = type { i8*, i32, i32 }
%struct.in6_aliasreq = type { %struct.sockaddr_in6, %struct.sockaddr_in6 }
%struct.sockaddr = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i8* null, align 8
@EADDRNOTAVAIL = common dso_local global i32 0, align 4
@V_ipv6_hashtbl = common dso_local global i32* null, align 8
@V_ipv6_srchashtbl = common dso_local global i8* null, align 8
@V_ipv6_sockets = common dso_local global %struct.gre_sockets* null, align 8
@EEXIST = common dso_local global i32 0, align 4
@M_GRE = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@chain = common dso_local global i32 0, align 4
@srchash = common dso_local global i32 0, align 4
@UINT32_MAX = common dso_local global i32 0, align 4
@curthread = common dso_local global %struct.TYPE_4__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @in6_gre_ioctl(%struct.gre_softc* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.gre_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.in6_ifreq*, align 8
  %8 = alloca %struct.sockaddr_in6*, align 8
  %9 = alloca %struct.sockaddr_in6*, align 8
  %10 = alloca %struct.ip6_hdr*, align 8
  %11 = alloca i32, align 4
  store %struct.gre_softc* %0, %struct.gre_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %12 = load i64, i64* %6, align 8
  %13 = inttoptr i64 %12 to %struct.in6_ifreq*
  store %struct.in6_ifreq* %13, %struct.in6_ifreq** %7, align 8
  %14 = load i32, i32* @EINVAL, align 4
  store i32 %14, i32* %11, align 4
  %15 = load i32, i32* %5, align 4
  switch i32 %15, label %211 [
    i32 128, label %16
    i32 129, label %158
    i32 130, label %158
  ]

16:                                               ; preds = %3
  %17 = load i64, i64* %6, align 8
  %18 = inttoptr i64 %17 to %struct.in6_aliasreq*
  %19 = getelementptr inbounds %struct.in6_aliasreq, %struct.in6_aliasreq* %18, i32 0, i32 1
  store %struct.sockaddr_in6* %19, %struct.sockaddr_in6** %9, align 8
  %20 = load i64, i64* %6, align 8
  %21 = inttoptr i64 %20 to %struct.in6_aliasreq*
  %22 = getelementptr inbounds %struct.in6_aliasreq, %struct.in6_aliasreq* %21, i32 0, i32 0
  store %struct.sockaddr_in6* %22, %struct.sockaddr_in6** %8, align 8
  %23 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %9, align 8
  %24 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %8, align 8
  %27 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = icmp ne i8* %25, %28
  br i1 %29, label %50, label %30

30:                                               ; preds = %16
  %31 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %9, align 8
  %32 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = load i8*, i8** @AF_INET6, align 8
  %35 = icmp ne i8* %33, %34
  br i1 %35, label %50, label %36

36:                                               ; preds = %30
  %37 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %9, align 8
  %38 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %8, align 8
  %41 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = icmp ne i32 %39, %42
  br i1 %43, label %50, label %44

44:                                               ; preds = %36
  %45 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %9, align 8
  %46 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = sext i32 %47 to i64
  %49 = icmp ne i64 %48, 16
  br i1 %49, label %50, label %51

50:                                               ; preds = %44, %36, %30, %16
  br label %211

51:                                               ; preds = %44
  %52 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %9, align 8
  %53 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %52, i32 0, i32 2
  %54 = call i32 @IN6_IS_ADDR_UNSPECIFIED(i32* %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %61, label %56

56:                                               ; preds = %51
  %57 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %8, align 8
  %58 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %57, i32 0, i32 2
  %59 = call i32 @IN6_IS_ADDR_UNSPECIFIED(i32* %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %56, %51
  %62 = load i32, i32* @EADDRNOTAVAIL, align 4
  store i32 %62, i32* %11, align 4
  br label %211

63:                                               ; preds = %56
  %64 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %9, align 8
  %65 = call i32 @sa6_embedscope(%struct.sockaddr_in6* %64, i32 0)
  store i32 %65, i32* %11, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %71, label %67

67:                                               ; preds = %63
  %68 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %8, align 8
  %69 = call i32 @sa6_embedscope(%struct.sockaddr_in6* %68, i32 0)
  store i32 %69, i32* %11, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %67, %63
  br label %211

72:                                               ; preds = %67
  %73 = load i32*, i32** @V_ipv6_hashtbl, align 8
  %74 = icmp eq i32* %73, null
  br i1 %74, label %75, label %81

75:                                               ; preds = %72
  %76 = call i8* (...) @gre_hashinit()
  %77 = bitcast i8* %76 to i32*
  store i32* %77, i32** @V_ipv6_hashtbl, align 8
  %78 = call i8* (...) @gre_hashinit()
  store i8* %78, i8** @V_ipv6_srchashtbl, align 8
  %79 = call i8* (...) @gre_hashinit()
  %80 = bitcast i8* %79 to %struct.gre_sockets*
  store %struct.gre_sockets* %80, %struct.gre_sockets** @V_ipv6_sockets, align 8
  br label %81

81:                                               ; preds = %75, %72
  %82 = load %struct.gre_softc*, %struct.gre_softc** %4, align 8
  %83 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %9, align 8
  %84 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %83, i32 0, i32 2
  %85 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %8, align 8
  %86 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %85, i32 0, i32 2
  %87 = load %struct.gre_softc*, %struct.gre_softc** %4, align 8
  %88 = getelementptr inbounds %struct.gre_softc, %struct.gre_softc* %87, i32 0, i32 5
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @in6_gre_checkdup(%struct.gre_softc* %82, i32* %84, i32* %86, i32 %89)
  store i32 %90, i32* %11, align 4
  %91 = load i32, i32* %11, align 4
  %92 = load i32, i32* @EADDRNOTAVAIL, align 4
  %93 = icmp eq i32 %91, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %81
  br label %211

95:                                               ; preds = %81
  %96 = load i32, i32* %11, align 4
  %97 = load i32, i32* @EEXIST, align 4
  %98 = icmp eq i32 %96, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %95
  store i32 0, i32* %11, align 4
  br label %211

100:                                              ; preds = %95
  %101 = load i32, i32* @M_GRE, align 4
  %102 = load i32, i32* @M_WAITOK, align 4
  %103 = load i32, i32* @M_ZERO, align 4
  %104 = or i32 %102, %103
  %105 = call %struct.ip6_hdr* @malloc(i32 16, i32 %101, i32 %104)
  store %struct.ip6_hdr* %105, %struct.ip6_hdr** %10, align 8
  %106 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %9, align 8
  %107 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.ip6_hdr*, %struct.ip6_hdr** %10, align 8
  %110 = getelementptr inbounds %struct.ip6_hdr, %struct.ip6_hdr* %109, i32 0, i32 1
  store i32 %108, i32* %110, align 4
  %111 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %8, align 8
  %112 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.ip6_hdr*, %struct.ip6_hdr** %10, align 8
  %115 = getelementptr inbounds %struct.ip6_hdr, %struct.ip6_hdr* %114, i32 0, i32 0
  store i32 %113, i32* %115, align 4
  %116 = load %struct.gre_softc*, %struct.gre_softc** %4, align 8
  %117 = getelementptr inbounds %struct.gre_softc, %struct.gre_softc* %116, i32 0, i32 0
  %118 = load i8*, i8** %117, align 8
  %119 = icmp ne i8* %118, null
  br i1 %119, label %120, label %133

120:                                              ; preds = %100
  %121 = load %struct.gre_softc*, %struct.gre_softc** %4, align 8
  %122 = load i32, i32* @chain, align 4
  %123 = call i32 @CK_LIST_REMOVE(%struct.gre_softc* %121, i32 %122)
  %124 = load %struct.gre_softc*, %struct.gre_softc** %4, align 8
  %125 = load i32, i32* @srchash, align 4
  %126 = call i32 @CK_LIST_REMOVE(%struct.gre_softc* %124, i32 %125)
  %127 = call i32 (...) @GRE_WAIT()
  %128 = load %struct.gre_softc*, %struct.gre_softc** %4, align 8
  %129 = getelementptr inbounds %struct.gre_softc, %struct.gre_softc* %128, i32 0, i32 2
  %130 = load %struct.ip6_hdr*, %struct.ip6_hdr** %129, align 8
  %131 = load i32, i32* @M_GRE, align 4
  %132 = call i32 @free(%struct.ip6_hdr* %130, i32 %131)
  br label %133

133:                                              ; preds = %120, %100
  %134 = load i8*, i8** @AF_INET6, align 8
  %135 = load %struct.gre_softc*, %struct.gre_softc** %4, align 8
  %136 = getelementptr inbounds %struct.gre_softc, %struct.gre_softc* %135, i32 0, i32 0
  store i8* %134, i8** %136, align 8
  %137 = load %struct.ip6_hdr*, %struct.ip6_hdr** %10, align 8
  %138 = load %struct.gre_softc*, %struct.gre_softc** %4, align 8
  %139 = getelementptr inbounds %struct.gre_softc, %struct.gre_softc* %138, i32 0, i32 2
  store %struct.ip6_hdr* %137, %struct.ip6_hdr** %139, align 8
  %140 = load %struct.gre_softc*, %struct.gre_softc** %4, align 8
  %141 = getelementptr inbounds %struct.gre_softc, %struct.gre_softc* %140, i32 0, i32 4
  store i32 0, i32* %141, align 4
  %142 = load i32, i32* @UINT32_MAX, align 4
  %143 = load %struct.gre_softc*, %struct.gre_softc** %4, align 8
  %144 = getelementptr inbounds %struct.gre_softc, %struct.gre_softc* %143, i32 0, i32 3
  store i32 %142, i32* %144, align 8
  %145 = load %struct.gre_softc*, %struct.gre_softc** %4, align 8
  %146 = call i32 @in6_gre_attach(%struct.gre_softc* %145)
  store i32 %146, i32* %11, align 4
  %147 = load i32, i32* %11, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %157

149:                                              ; preds = %133
  %150 = load %struct.gre_softc*, %struct.gre_softc** %4, align 8
  %151 = getelementptr inbounds %struct.gre_softc, %struct.gre_softc* %150, i32 0, i32 0
  store i8* null, i8** %151, align 8
  %152 = load %struct.gre_softc*, %struct.gre_softc** %4, align 8
  %153 = getelementptr inbounds %struct.gre_softc, %struct.gre_softc* %152, i32 0, i32 2
  %154 = load %struct.ip6_hdr*, %struct.ip6_hdr** %153, align 8
  %155 = load i32, i32* @M_GRE, align 4
  %156 = call i32 @free(%struct.ip6_hdr* %154, i32 %155)
  br label %157

157:                                              ; preds = %149, %133
  br label %211

158:                                              ; preds = %3, %3
  %159 = load %struct.gre_softc*, %struct.gre_softc** %4, align 8
  %160 = getelementptr inbounds %struct.gre_softc, %struct.gre_softc* %159, i32 0, i32 0
  %161 = load i8*, i8** %160, align 8
  %162 = load i8*, i8** @AF_INET6, align 8
  %163 = icmp ne i8* %161, %162
  br i1 %163, label %164, label %166

164:                                              ; preds = %158
  %165 = load i32, i32* @EADDRNOTAVAIL, align 4
  store i32 %165, i32* %11, align 4
  br label %211

166:                                              ; preds = %158
  %167 = load %struct.in6_ifreq*, %struct.in6_ifreq** %7, align 8
  %168 = getelementptr inbounds %struct.in6_ifreq, %struct.in6_ifreq* %167, i32 0, i32 0
  %169 = bitcast i32* %168 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %169, %struct.sockaddr_in6** %9, align 8
  %170 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %9, align 8
  %171 = call i32 @memset(%struct.sockaddr_in6* %170, i32 0, i32 16)
  %172 = load i8*, i8** @AF_INET6, align 8
  %173 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %9, align 8
  %174 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %173, i32 0, i32 0
  store i8* %172, i8** %174, align 8
  %175 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %9, align 8
  %176 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %175, i32 0, i32 1
  store i32 16, i32* %176, align 8
  %177 = load i32, i32* %5, align 4
  %178 = icmp eq i32 %177, 129
  br i1 %178, label %179, label %184

179:                                              ; preds = %166
  %180 = load %struct.gre_softc*, %struct.gre_softc** %4, align 8
  %181 = getelementptr inbounds %struct.gre_softc, %struct.gre_softc* %180, i32 0, i32 1
  %182 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  br label %189

184:                                              ; preds = %166
  %185 = load %struct.gre_softc*, %struct.gre_softc** %4, align 8
  %186 = getelementptr inbounds %struct.gre_softc, %struct.gre_softc* %185, i32 0, i32 1
  %187 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  br label %189

189:                                              ; preds = %184, %179
  %190 = phi i32 [ %183, %179 ], [ %188, %184 ]
  %191 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %9, align 8
  %192 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %191, i32 0, i32 2
  store i32 %190, i32* %192, align 4
  %193 = load %struct.TYPE_4__*, %struct.TYPE_4__** @curthread, align 8
  %194 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 4
  %196 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %9, align 8
  %197 = bitcast %struct.sockaddr_in6* %196 to %struct.sockaddr*
  %198 = call i32 @prison_if(i32 %195, %struct.sockaddr* %197)
  store i32 %198, i32* %11, align 4
  %199 = load i32, i32* %11, align 4
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %201, label %204

201:                                              ; preds = %189
  %202 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %9, align 8
  %203 = call i32 @sa6_recoverscope(%struct.sockaddr_in6* %202)
  store i32 %203, i32* %11, align 4
  br label %204

204:                                              ; preds = %201, %189
  %205 = load i32, i32* %11, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %210

207:                                              ; preds = %204
  %208 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %9, align 8
  %209 = call i32 @memset(%struct.sockaddr_in6* %208, i32 0, i32 16)
  br label %210

210:                                              ; preds = %207, %204
  br label %211

211:                                              ; preds = %3, %210, %164, %157, %99, %94, %71, %61, %50
  %212 = load i32, i32* %11, align 4
  ret i32 %212
}

declare dso_local i32 @IN6_IS_ADDR_UNSPECIFIED(i32*) #1

declare dso_local i32 @sa6_embedscope(%struct.sockaddr_in6*, i32) #1

declare dso_local i8* @gre_hashinit(...) #1

declare dso_local i32 @in6_gre_checkdup(%struct.gre_softc*, i32*, i32*, i32) #1

declare dso_local %struct.ip6_hdr* @malloc(i32, i32, i32) #1

declare dso_local i32 @CK_LIST_REMOVE(%struct.gre_softc*, i32) #1

declare dso_local i32 @GRE_WAIT(...) #1

declare dso_local i32 @free(%struct.ip6_hdr*, i32) #1

declare dso_local i32 @in6_gre_attach(%struct.gre_softc*) #1

declare dso_local i32 @memset(%struct.sockaddr_in6*, i32, i32) #1

declare dso_local i32 @prison_if(i32, %struct.sockaddr*) #1

declare dso_local i32 @sa6_recoverscope(%struct.sockaddr_in6*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
