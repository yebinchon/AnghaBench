; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_in_gif.c_in_gif_ioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_in_gif.c_in_gif_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.gif_softc = type { i8*, %struct.ip*, i32 }
%struct.ip = type { %struct.TYPE_3__, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.ifreq = type { i32 }
%struct.sockaddr_in = type { i8*, i32, %struct.TYPE_3__ }
%struct.in_aliasreq = type { %struct.sockaddr_in, %struct.sockaddr_in }
%struct.sockaddr = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i8* null, align 8
@INADDR_ANY = common dso_local global i32 0, align 4
@EADDRNOTAVAIL = common dso_local global i32 0, align 4
@V_ipv4_hashtbl = common dso_local global i32* null, align 8
@V_ipv4_srchashtbl = common dso_local global i8* null, align 8
@EEXIST = common dso_local global i32 0, align 4
@M_GIF = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@srchash = common dso_local global i32 0, align 4
@chain = common dso_local global i32 0, align 4
@curthread = common dso_local global %struct.TYPE_4__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @in_gif_ioctl(%struct.gif_softc* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.gif_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.ifreq*, align 8
  %8 = alloca %struct.sockaddr_in*, align 8
  %9 = alloca %struct.sockaddr_in*, align 8
  %10 = alloca %struct.ip*, align 8
  %11 = alloca i32, align 4
  store %struct.gif_softc* %0, %struct.gif_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %12 = load i64, i64* %6, align 8
  %13 = inttoptr i64 %12 to %struct.ifreq*
  store %struct.ifreq* %13, %struct.ifreq** %7, align 8
  %14 = load i32, i32* @EINVAL, align 4
  store i32 %14, i32* %11, align 4
  %15 = load i32, i32* %5, align 4
  switch i32 %15, label %192 [
    i32 128, label %16
    i32 129, label %142
    i32 130, label %142
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
  br label %192

51:                                               ; preds = %44
  %52 = load %struct.sockaddr_in*, %struct.sockaddr_in** %9, align 8
  %53 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @INADDR_ANY, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %65, label %58

58:                                               ; preds = %51
  %59 = load %struct.sockaddr_in*, %struct.sockaddr_in** %8, align 8
  %60 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @INADDR_ANY, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %58, %51
  %66 = load i32, i32* @EADDRNOTAVAIL, align 4
  store i32 %66, i32* %11, align 4
  br label %192

67:                                               ; preds = %58
  %68 = load i32*, i32** @V_ipv4_hashtbl, align 8
  %69 = icmp eq i32* %68, null
  br i1 %69, label %70, label %74

70:                                               ; preds = %67
  %71 = call i8* (...) @gif_hashinit()
  %72 = bitcast i8* %71 to i32*
  store i32* %72, i32** @V_ipv4_hashtbl, align 8
  %73 = call i8* (...) @gif_hashinit()
  store i8* %73, i8** @V_ipv4_srchashtbl, align 8
  br label %74

74:                                               ; preds = %70, %67
  %75 = load %struct.gif_softc*, %struct.gif_softc** %4, align 8
  %76 = load %struct.sockaddr_in*, %struct.sockaddr_in** %9, align 8
  %77 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.sockaddr_in*, %struct.sockaddr_in** %8, align 8
  %81 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @in_gif_checkdup(%struct.gif_softc* %75, i32 %79, i32 %83)
  store i32 %84, i32* %11, align 4
  %85 = load i32, i32* %11, align 4
  %86 = load i32, i32* @EADDRNOTAVAIL, align 4
  %87 = icmp eq i32 %85, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %74
  br label %192

89:                                               ; preds = %74
  %90 = load i32, i32* %11, align 4
  %91 = load i32, i32* @EEXIST, align 4
  %92 = icmp eq i32 %90, %91
  br i1 %92, label %93, label %94

93:                                               ; preds = %89
  store i32 0, i32* %11, align 4
  br label %192

94:                                               ; preds = %89
  %95 = load i32, i32* @M_GIF, align 4
  %96 = load i32, i32* @M_WAITOK, align 4
  %97 = load i32, i32* @M_ZERO, align 4
  %98 = or i32 %96, %97
  %99 = call %struct.ip* @malloc(i32 8, i32 %95, i32 %98)
  store %struct.ip* %99, %struct.ip** %10, align 8
  %100 = load %struct.sockaddr_in*, %struct.sockaddr_in** %9, align 8
  %101 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %100, i32 0, i32 2
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.ip*, %struct.ip** %10, align 8
  %105 = getelementptr inbounds %struct.ip, %struct.ip* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 0
  store i32 %103, i32* %106, align 4
  %107 = load %struct.sockaddr_in*, %struct.sockaddr_in** %8, align 8
  %108 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %107, i32 0, i32 2
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.ip*, %struct.ip** %10, align 8
  %112 = getelementptr inbounds %struct.ip, %struct.ip* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 0
  store i32 %110, i32* %113, align 4
  %114 = load %struct.gif_softc*, %struct.gif_softc** %4, align 8
  %115 = getelementptr inbounds %struct.gif_softc, %struct.gif_softc* %114, i32 0, i32 0
  %116 = load i8*, i8** %115, align 8
  %117 = icmp ne i8* %116, null
  br i1 %117, label %118, label %131

118:                                              ; preds = %94
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

131:                                              ; preds = %118, %94
  %132 = load i8*, i8** @AF_INET, align 8
  %133 = load %struct.gif_softc*, %struct.gif_softc** %4, align 8
  %134 = getelementptr inbounds %struct.gif_softc, %struct.gif_softc* %133, i32 0, i32 0
  store i8* %132, i8** %134, align 8
  %135 = load %struct.ip*, %struct.ip** %10, align 8
  %136 = load %struct.gif_softc*, %struct.gif_softc** %4, align 8
  %137 = getelementptr inbounds %struct.gif_softc, %struct.gif_softc* %136, i32 0, i32 1
  store %struct.ip* %135, %struct.ip** %137, align 8
  %138 = load %struct.gif_softc*, %struct.gif_softc** %4, align 8
  %139 = call i32 @in_gif_attach(%struct.gif_softc* %138)
  %140 = load %struct.gif_softc*, %struct.gif_softc** %4, align 8
  %141 = call i32 @in_gif_set_running(%struct.gif_softc* %140)
  br label %192

142:                                              ; preds = %3, %3
  %143 = load %struct.gif_softc*, %struct.gif_softc** %4, align 8
  %144 = getelementptr inbounds %struct.gif_softc, %struct.gif_softc* %143, i32 0, i32 0
  %145 = load i8*, i8** %144, align 8
  %146 = load i8*, i8** @AF_INET, align 8
  %147 = icmp ne i8* %145, %146
  br i1 %147, label %148, label %150

148:                                              ; preds = %142
  %149 = load i32, i32* @EADDRNOTAVAIL, align 4
  store i32 %149, i32* %11, align 4
  br label %192

150:                                              ; preds = %142
  %151 = load %struct.ifreq*, %struct.ifreq** %7, align 8
  %152 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %151, i32 0, i32 0
  %153 = bitcast i32* %152 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %153, %struct.sockaddr_in** %9, align 8
  %154 = load %struct.sockaddr_in*, %struct.sockaddr_in** %9, align 8
  %155 = call i32 @memset(%struct.sockaddr_in* %154, i32 0, i32 16)
  %156 = load i8*, i8** @AF_INET, align 8
  %157 = load %struct.sockaddr_in*, %struct.sockaddr_in** %9, align 8
  %158 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %157, i32 0, i32 0
  store i8* %156, i8** %158, align 8
  %159 = load %struct.sockaddr_in*, %struct.sockaddr_in** %9, align 8
  %160 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %159, i32 0, i32 1
  store i32 16, i32* %160, align 8
  %161 = load %struct.sockaddr_in*, %struct.sockaddr_in** %9, align 8
  %162 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %161, i32 0, i32 2
  %163 = load i32, i32* %5, align 4
  %164 = icmp eq i32 %163, 129
  br i1 %164, label %165, label %172

165:                                              ; preds = %150
  %166 = load %struct.gif_softc*, %struct.gif_softc** %4, align 8
  %167 = getelementptr inbounds %struct.gif_softc, %struct.gif_softc* %166, i32 0, i32 1
  %168 = load %struct.ip*, %struct.ip** %167, align 8
  %169 = getelementptr inbounds %struct.ip, %struct.ip* %168, i32 0, i32 1
  %170 = bitcast %struct.TYPE_3__* %162 to i8*
  %171 = bitcast %struct.TYPE_3__* %169 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %170, i8* align 4 %171, i64 4, i1 false)
  br label %179

172:                                              ; preds = %150
  %173 = load %struct.gif_softc*, %struct.gif_softc** %4, align 8
  %174 = getelementptr inbounds %struct.gif_softc, %struct.gif_softc* %173, i32 0, i32 1
  %175 = load %struct.ip*, %struct.ip** %174, align 8
  %176 = getelementptr inbounds %struct.ip, %struct.ip* %175, i32 0, i32 0
  %177 = bitcast %struct.TYPE_3__* %162 to i8*
  %178 = bitcast %struct.TYPE_3__* %176 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %177, i8* align 4 %178, i64 4, i1 false)
  br label %179

179:                                              ; preds = %172, %165
  %180 = load %struct.TYPE_4__*, %struct.TYPE_4__** @curthread, align 8
  %181 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = load %struct.sockaddr_in*, %struct.sockaddr_in** %9, align 8
  %184 = bitcast %struct.sockaddr_in* %183 to %struct.sockaddr*
  %185 = call i32 @prison_if(i32 %182, %struct.sockaddr* %184)
  store i32 %185, i32* %11, align 4
  %186 = load i32, i32* %11, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %191

188:                                              ; preds = %179
  %189 = load %struct.sockaddr_in*, %struct.sockaddr_in** %9, align 8
  %190 = call i32 @memset(%struct.sockaddr_in* %189, i32 0, i32 16)
  br label %191

191:                                              ; preds = %188, %179
  br label %192

192:                                              ; preds = %3, %191, %148, %131, %93, %88, %65, %50
  %193 = load i32, i32* %11, align 4
  ret i32 %193
}

declare dso_local i8* @gif_hashinit(...) #1

declare dso_local i32 @in_gif_checkdup(%struct.gif_softc*, i32, i32) #1

declare dso_local %struct.ip* @malloc(i32, i32, i32) #1

declare dso_local i32 @CK_LIST_REMOVE(%struct.gif_softc*, i32) #1

declare dso_local i32 @GIF_WAIT(...) #1

declare dso_local i32 @free(i32, i32) #1

declare dso_local i32 @in_gif_attach(%struct.gif_softc*) #1

declare dso_local i32 @in_gif_set_running(%struct.gif_softc*) #1

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
