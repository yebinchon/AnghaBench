; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_if_tuntap.c_tunoutput.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_if_tuntap.c_tunoutput.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32, i32 (%struct.ifnet*, %struct.mbuf*)*, i32, %struct.tuntap_softc* }
%struct.tuntap_softc = type { i32 }
%struct.mbuf = type { i64* }
%struct.sockaddr = type { i64, i32, %struct.sockaddr* }
%struct.route = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"tunoutput\0A\00", align 1
@TUN_READY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"not ready 0%o\0A\00", align 1
@EHOSTDOWN = common dso_local global i32 0, align 4
@IFF_UP = common dso_local global i32 0, align 4
@AF_UNSPEC = common dso_local global i64 0, align 8
@TUN_LMODE = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@IFCOUNTER_IQDROPS = common dso_local global i32 0, align 4
@IFCOUNTER_OERRORS = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@TUN_IFHEAD = common dso_local global i32 0, align 4
@EAFNOSUPPORT = common dso_local global i32 0, align 4
@IFCOUNTER_OPACKETS = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifnet*, %struct.mbuf*, %struct.sockaddr*, %struct.route*)* @tunoutput to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tunoutput(%struct.ifnet* %0, %struct.mbuf* %1, %struct.sockaddr* %2, %struct.route* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ifnet*, align 8
  %7 = alloca %struct.mbuf*, align 8
  %8 = alloca %struct.sockaddr*, align 8
  %9 = alloca %struct.route*, align 8
  %10 = alloca %struct.tuntap_softc*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.ifnet* %0, %struct.ifnet** %6, align 8
  store %struct.mbuf* %1, %struct.mbuf** %7, align 8
  store %struct.sockaddr* %2, %struct.sockaddr** %8, align 8
  store %struct.route* %3, %struct.route** %9, align 8
  %14 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %15 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %14, i32 0, i32 3
  %16 = load %struct.tuntap_softc*, %struct.tuntap_softc** %15, align 8
  store %struct.tuntap_softc* %16, %struct.tuntap_softc** %10, align 8
  %17 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %18 = call i32 (%struct.ifnet*, i8*, ...) @TUNDEBUG(%struct.ifnet* %17, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.tuntap_softc*, %struct.tuntap_softc** %10, align 8
  %20 = call i32 @TUN_LOCK(%struct.tuntap_softc* %19)
  %21 = load %struct.tuntap_softc*, %struct.tuntap_softc** %10, align 8
  %22 = getelementptr inbounds %struct.tuntap_softc, %struct.tuntap_softc* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %11, align 4
  %24 = load %struct.tuntap_softc*, %struct.tuntap_softc** %10, align 8
  %25 = call i32 @TUN_UNLOCK(%struct.tuntap_softc* %24)
  %26 = load i32, i32* %11, align 4
  %27 = load i32, i32* @TUN_READY, align 4
  %28 = and i32 %26, %27
  %29 = load i32, i32* @TUN_READY, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %40

31:                                               ; preds = %4
  %32 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %33 = load %struct.tuntap_softc*, %struct.tuntap_softc** %10, align 8
  %34 = getelementptr inbounds %struct.tuntap_softc, %struct.tuntap_softc* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 (%struct.ifnet*, i8*, ...) @TUNDEBUG(%struct.ifnet* %32, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  %37 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %38 = call i32 @m_freem(%struct.mbuf* %37)
  %39 = load i32, i32* @EHOSTDOWN, align 4
  store i32 %39, i32* %5, align 4
  br label %156

40:                                               ; preds = %4
  %41 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %42 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @IFF_UP, align 4
  %45 = and i32 %43, %44
  %46 = load i32, i32* @IFF_UP, align 4
  %47 = icmp ne i32 %45, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %40
  %49 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %50 = call i32 @m_freem(%struct.mbuf* %49)
  %51 = load i32, i32* @EHOSTDOWN, align 4
  store i32 %51, i32* %5, align 4
  br label %156

52:                                               ; preds = %40
  %53 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %54 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @AF_UNSPEC, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %63

58:                                               ; preds = %52
  %59 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %60 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %59, i32 0, i32 2
  %61 = load %struct.sockaddr*, %struct.sockaddr** %60, align 8
  %62 = call i32 @bcopy(%struct.sockaddr* %61, i64* %13, i32 8)
  br label %67

63:                                               ; preds = %52
  %64 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %65 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  store i64 %66, i64* %13, align 8
  br label %67

67:                                               ; preds = %63, %58
  %68 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %69 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = call i64 @bpf_peers_present(i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %67
  %74 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %75 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %78 = call i32 @bpf_mtap2(i32 %76, i64* %13, i32 8, %struct.mbuf* %77)
  br label %79

79:                                               ; preds = %73, %67
  %80 = load i32, i32* %11, align 4
  %81 = load i32, i32* @TUN_LMODE, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %111

84:                                               ; preds = %79
  %85 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %86 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %87 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @M_NOWAIT, align 4
  %90 = call i32 @M_PREPEND(%struct.mbuf* %85, i32 %88, i32 %89)
  %91 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %92 = icmp eq %struct.mbuf* %91, null
  br i1 %92, label %93, label %101

93:                                               ; preds = %84
  %94 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %95 = load i32, i32* @IFCOUNTER_IQDROPS, align 4
  %96 = call i32 @if_inc_counter(%struct.ifnet* %94, i32 %95, i32 1)
  %97 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %98 = load i32, i32* @IFCOUNTER_OERRORS, align 4
  %99 = call i32 @if_inc_counter(%struct.ifnet* %97, i32 %98, i32 1)
  %100 = load i32, i32* @ENOBUFS, align 4
  store i32 %100, i32* %5, align 4
  br label %156

101:                                              ; preds = %84
  %102 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %103 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %104 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %103, i32 0, i32 0
  %105 = load i64*, i64** %104, align 8
  %106 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %107 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @bcopy(%struct.sockaddr* %102, i64* %105, i32 %108)
  br label %110

110:                                              ; preds = %101
  br label %111

111:                                              ; preds = %110, %79
  %112 = load i32, i32* %11, align 4
  %113 = load i32, i32* @TUN_IFHEAD, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %137

116:                                              ; preds = %111
  %117 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %118 = load i32, i32* @M_NOWAIT, align 4
  %119 = call i32 @M_PREPEND(%struct.mbuf* %117, i32 4, i32 %118)
  %120 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %121 = icmp eq %struct.mbuf* %120, null
  br i1 %121, label %122, label %130

122:                                              ; preds = %116
  %123 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %124 = load i32, i32* @IFCOUNTER_IQDROPS, align 4
  %125 = call i32 @if_inc_counter(%struct.ifnet* %123, i32 %124, i32 1)
  %126 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %127 = load i32, i32* @IFCOUNTER_OERRORS, align 4
  %128 = call i32 @if_inc_counter(%struct.ifnet* %126, i32 %127, i32 1)
  %129 = load i32, i32* @ENOBUFS, align 4
  store i32 %129, i32* %5, align 4
  br label %156

130:                                              ; preds = %116
  %131 = load i64, i64* %13, align 8
  %132 = call i64 @htonl(i64 %131)
  %133 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %134 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %133, i32 0, i32 0
  %135 = load i64*, i64** %134, align 8
  store i64 %132, i64* %135, align 8
  br label %136

136:                                              ; preds = %130
  br label %141

137:                                              ; preds = %111
  %138 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %139 = call i32 @m_freem(%struct.mbuf* %138)
  %140 = load i32, i32* @EAFNOSUPPORT, align 4
  store i32 %140, i32* %5, align 4
  br label %156

141:                                              ; preds = %136
  %142 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %143 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %142, i32 0, i32 1
  %144 = load i32 (%struct.ifnet*, %struct.mbuf*)*, i32 (%struct.ifnet*, %struct.mbuf*)** %143, align 8
  %145 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %146 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %147 = call i32 %144(%struct.ifnet* %145, %struct.mbuf* %146)
  store i32 %147, i32* %12, align 4
  %148 = load i32, i32* %12, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %152

150:                                              ; preds = %141
  %151 = load i32, i32* @ENOBUFS, align 4
  store i32 %151, i32* %5, align 4
  br label %156

152:                                              ; preds = %141
  %153 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %154 = load i32, i32* @IFCOUNTER_OPACKETS, align 4
  %155 = call i32 @if_inc_counter(%struct.ifnet* %153, i32 %154, i32 1)
  store i32 0, i32* %5, align 4
  br label %156

156:                                              ; preds = %152, %150, %137, %122, %93, %48, %31
  %157 = load i32, i32* %5, align 4
  ret i32 %157
}

declare dso_local i32 @TUNDEBUG(%struct.ifnet*, i8*, ...) #1

declare dso_local i32 @TUN_LOCK(%struct.tuntap_softc*) #1

declare dso_local i32 @TUN_UNLOCK(%struct.tuntap_softc*) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

declare dso_local i32 @bcopy(%struct.sockaddr*, i64*, i32) #1

declare dso_local i64 @bpf_peers_present(i32) #1

declare dso_local i32 @bpf_mtap2(i32, i64*, i32, %struct.mbuf*) #1

declare dso_local i32 @M_PREPEND(%struct.mbuf*, i32, i32) #1

declare dso_local i32 @if_inc_counter(%struct.ifnet*, i32, i32) #1

declare dso_local i64 @htonl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
