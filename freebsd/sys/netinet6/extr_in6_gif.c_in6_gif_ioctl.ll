; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet6/extr_in6_gif.c_in6_gif_ioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet6/extr_in6_gif.c_in6_gif_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.gif_softc = type { i8*, %struct.ip6_hdr*, i32 }
%struct.ip6_hdr = type { i32, i32, i32 }
%struct.in6_ifreq = type { i32 }
%struct.sockaddr_in6 = type { i8*, i32, i32 }
%struct.in6_aliasreq = type { %struct.sockaddr_in6, %struct.sockaddr_in6 }
%struct.sockaddr = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i8* null, align 8
@EADDRNOTAVAIL = common dso_local global i32 0, align 4
@V_ipv6_hashtbl = common dso_local global i32* null, align 8
@V_ipv6_srchashtbl = common dso_local global i8* null, align 8
@EEXIST = common dso_local global i32 0, align 4
@M_GIF = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@IPV6_VERSION = common dso_local global i32 0, align 4
@srchash = common dso_local global i32 0, align 4
@chain = common dso_local global i32 0, align 4
@curthread = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @in6_gif_ioctl(%struct.gif_softc* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.gif_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.in6_ifreq*, align 8
  %8 = alloca %struct.sockaddr_in6*, align 8
  %9 = alloca %struct.sockaddr_in6*, align 8
  %10 = alloca %struct.ip6_hdr*, align 8
  %11 = alloca i32, align 4
  store %struct.gif_softc* %0, %struct.gif_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %12 = load i64, i64* %6, align 8
  %13 = inttoptr i64 %12 to %struct.in6_ifreq*
  store %struct.in6_ifreq* %13, %struct.in6_ifreq** %7, align 8
  %14 = load i32, i32* @EINVAL, align 4
  store i32 %14, i32* %11, align 4
  %15 = load i32, i32* %5, align 4
  switch i32 %15, label %197 [
    i32 128, label %16
    i32 129, label %142
    i32 130, label %142
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
  br label %197

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
  br label %197

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
  br label %197

72:                                               ; preds = %67
  %73 = load i32*, i32** @V_ipv6_hashtbl, align 8
  %74 = icmp eq i32* %73, null
  br i1 %74, label %75, label %79

75:                                               ; preds = %72
  %76 = call i8* (...) @gif_hashinit()
  %77 = bitcast i8* %76 to i32*
  store i32* %77, i32** @V_ipv6_hashtbl, align 8
  %78 = call i8* (...) @gif_hashinit()
  store i8* %78, i8** @V_ipv6_srchashtbl, align 8
  br label %79

79:                                               ; preds = %75, %72
  %80 = load %struct.gif_softc*, %struct.gif_softc** %4, align 8
  %81 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %9, align 8
  %82 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %81, i32 0, i32 2
  %83 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %8, align 8
  %84 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %83, i32 0, i32 2
  %85 = call i32 @in6_gif_checkdup(%struct.gif_softc* %80, i32* %82, i32* %84)
  store i32 %85, i32* %11, align 4
  %86 = load i32, i32* %11, align 4
  %87 = load i32, i32* @EADDRNOTAVAIL, align 4
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %79
  br label %197

90:                                               ; preds = %79
  %91 = load i32, i32* %11, align 4
  %92 = load i32, i32* @EEXIST, align 4
  %93 = icmp eq i32 %91, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %90
  store i32 0, i32* %11, align 4
  br label %197

95:                                               ; preds = %90
  %96 = load i32, i32* @M_GIF, align 4
  %97 = load i32, i32* @M_WAITOK, align 4
  %98 = load i32, i32* @M_ZERO, align 4
  %99 = or i32 %97, %98
  %100 = call %struct.ip6_hdr* @malloc(i32 12, i32 %96, i32 %99)
  store %struct.ip6_hdr* %100, %struct.ip6_hdr** %10, align 8
  %101 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %9, align 8
  %102 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.ip6_hdr*, %struct.ip6_hdr** %10, align 8
  %105 = getelementptr inbounds %struct.ip6_hdr, %struct.ip6_hdr* %104, i32 0, i32 1
  store i32 %103, i32* %105, align 4
  %106 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %8, align 8
  %107 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.ip6_hdr*, %struct.ip6_hdr** %10, align 8
  %110 = getelementptr inbounds %struct.ip6_hdr, %struct.ip6_hdr* %109, i32 0, i32 0
  store i32 %108, i32* %110, align 4
  %111 = load i32, i32* @IPV6_VERSION, align 4
  %112 = load %struct.ip6_hdr*, %struct.ip6_hdr** %10, align 8
  %113 = getelementptr inbounds %struct.ip6_hdr, %struct.ip6_hdr* %112, i32 0, i32 2
  store i32 %111, i32* %113, align 4
  %114 = load %struct.gif_softc*, %struct.gif_softc** %4, align 8
  %115 = getelementptr inbounds %struct.gif_softc, %struct.gif_softc* %114, i32 0, i32 0
  %116 = load i8*, i8** %115, align 8
  %117 = icmp ne i8* %116, null
  br i1 %117, label %118, label %131

118:                                              ; preds = %95
  %119 = load %struct.gif_softc*, %struct.gif_softc** %4, align 8
  %120 = load i32, i32* @srchash, align 4
  %121 = call i32 @CK_LIST_REMOVE(%struct.gif_softc* %119, i32 %120)
  %122 = load %struct.gif_softc*, %struct.gif_softc** %4, align 8
  %123 = load i32, i32* @chain, align 4
  %124 = call i32 @CK_LIST_REMOVE(%struct.gif_softc* %122, i32 %123)
  %125 = call i32 (...) @GIF_WAIT()
  %126 = load %struct.gif_softc*, %struct.gif_softc** %4, align 8
  %127 = getelementptr inbounds %struct.gif_softc, %struct.gif_softc* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* @M_GIF, align 4
  %130 = call i32 @free(i32 %128, i32 %129)
  br label %131

131:                                              ; preds = %118, %95
  %132 = load i8*, i8** @AF_INET6, align 8
  %133 = load %struct.gif_softc*, %struct.gif_softc** %4, align 8
  %134 = getelementptr inbounds %struct.gif_softc, %struct.gif_softc* %133, i32 0, i32 0
  store i8* %132, i8** %134, align 8
  %135 = load %struct.ip6_hdr*, %struct.ip6_hdr** %10, align 8
  %136 = load %struct.gif_softc*, %struct.gif_softc** %4, align 8
  %137 = getelementptr inbounds %struct.gif_softc, %struct.gif_softc* %136, i32 0, i32 1
  store %struct.ip6_hdr* %135, %struct.ip6_hdr** %137, align 8
  %138 = load %struct.gif_softc*, %struct.gif_softc** %4, align 8
  %139 = call i32 @in6_gif_attach(%struct.gif_softc* %138)
  %140 = load %struct.gif_softc*, %struct.gif_softc** %4, align 8
  %141 = call i32 @in6_gif_set_running(%struct.gif_softc* %140)
  br label %197

142:                                              ; preds = %3, %3
  %143 = load %struct.gif_softc*, %struct.gif_softc** %4, align 8
  %144 = getelementptr inbounds %struct.gif_softc, %struct.gif_softc* %143, i32 0, i32 0
  %145 = load i8*, i8** %144, align 8
  %146 = load i8*, i8** @AF_INET6, align 8
  %147 = icmp ne i8* %145, %146
  br i1 %147, label %148, label %150

148:                                              ; preds = %142
  %149 = load i32, i32* @EADDRNOTAVAIL, align 4
  store i32 %149, i32* %11, align 4
  br label %197

150:                                              ; preds = %142
  %151 = load %struct.in6_ifreq*, %struct.in6_ifreq** %7, align 8
  %152 = getelementptr inbounds %struct.in6_ifreq, %struct.in6_ifreq* %151, i32 0, i32 0
  %153 = bitcast i32* %152 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %153, %struct.sockaddr_in6** %9, align 8
  %154 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %9, align 8
  %155 = call i32 @memset(%struct.sockaddr_in6* %154, i32 0, i32 16)
  %156 = load i8*, i8** @AF_INET6, align 8
  %157 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %9, align 8
  %158 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %157, i32 0, i32 0
  store i8* %156, i8** %158, align 8
  %159 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %9, align 8
  %160 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %159, i32 0, i32 1
  store i32 16, i32* %160, align 8
  %161 = load i32, i32* %5, align 4
  %162 = icmp eq i32 %161, 129
  br i1 %162, label %163, label %169

163:                                              ; preds = %150
  %164 = load %struct.gif_softc*, %struct.gif_softc** %4, align 8
  %165 = getelementptr inbounds %struct.gif_softc, %struct.gif_softc* %164, i32 0, i32 1
  %166 = load %struct.ip6_hdr*, %struct.ip6_hdr** %165, align 8
  %167 = getelementptr inbounds %struct.ip6_hdr, %struct.ip6_hdr* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  br label %175

169:                                              ; preds = %150
  %170 = load %struct.gif_softc*, %struct.gif_softc** %4, align 8
  %171 = getelementptr inbounds %struct.gif_softc, %struct.gif_softc* %170, i32 0, i32 1
  %172 = load %struct.ip6_hdr*, %struct.ip6_hdr** %171, align 8
  %173 = getelementptr inbounds %struct.ip6_hdr, %struct.ip6_hdr* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  br label %175

175:                                              ; preds = %169, %163
  %176 = phi i32 [ %168, %163 ], [ %174, %169 ]
  %177 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %9, align 8
  %178 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %177, i32 0, i32 2
  store i32 %176, i32* %178, align 4
  %179 = load %struct.TYPE_2__*, %struct.TYPE_2__** @curthread, align 8
  %180 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  %182 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %9, align 8
  %183 = bitcast %struct.sockaddr_in6* %182 to %struct.sockaddr*
  %184 = call i32 @prison_if(i32 %181, %struct.sockaddr* %183)
  store i32 %184, i32* %11, align 4
  %185 = load i32, i32* %11, align 4
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %187, label %190

187:                                              ; preds = %175
  %188 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %9, align 8
  %189 = call i32 @sa6_recoverscope(%struct.sockaddr_in6* %188)
  store i32 %189, i32* %11, align 4
  br label %190

190:                                              ; preds = %187, %175
  %191 = load i32, i32* %11, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %196

193:                                              ; preds = %190
  %194 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %9, align 8
  %195 = call i32 @memset(%struct.sockaddr_in6* %194, i32 0, i32 16)
  br label %196

196:                                              ; preds = %193, %190
  br label %197

197:                                              ; preds = %3, %196, %148, %131, %94, %89, %71, %61, %50
  %198 = load i32, i32* %11, align 4
  ret i32 %198
}

declare dso_local i32 @IN6_IS_ADDR_UNSPECIFIED(i32*) #1

declare dso_local i32 @sa6_embedscope(%struct.sockaddr_in6*, i32) #1

declare dso_local i8* @gif_hashinit(...) #1

declare dso_local i32 @in6_gif_checkdup(%struct.gif_softc*, i32*, i32*) #1

declare dso_local %struct.ip6_hdr* @malloc(i32, i32, i32) #1

declare dso_local i32 @CK_LIST_REMOVE(%struct.gif_softc*, i32) #1

declare dso_local i32 @GIF_WAIT(...) #1

declare dso_local i32 @free(i32, i32) #1

declare dso_local i32 @in6_gif_attach(%struct.gif_softc*) #1

declare dso_local i32 @in6_gif_set_running(%struct.gif_softc*) #1

declare dso_local i32 @memset(%struct.sockaddr_in6*, i32, i32) #1

declare dso_local i32 @prison_if(i32, %struct.sockaddr*) #1

declare dso_local i32 @sa6_recoverscope(%struct.sockaddr_in6*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
