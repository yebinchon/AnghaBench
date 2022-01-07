; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_ip_output.c_ip_output_send.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_ip_output.c_ip_output_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inpcb = type { i32, %struct.m_snd_tag* }
%struct.m_snd_tag = type { %struct.ifnet* }
%struct.ifnet = type { i32 (%struct.ifnet*, %struct.mbuf*, %struct.sockaddr*, %struct.route*)* }
%struct.sockaddr = type { i32 }
%struct.mbuf = type { %struct.TYPE_7__, %struct.TYPE_8__* }
%struct.TYPE_7__ = type { i32, i32, i32* }
%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.sockaddr_in = type { i32 }
%struct.route = type { i32 }

@CSUM_SND_TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"trying to add a send tag to a forwarded packet\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@INP_RATE_LIMIT_CHANGED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inpcb*, %struct.ifnet*, %struct.mbuf*, %struct.sockaddr_in*, %struct.route*, i32)* @ip_output_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip_output_send(%struct.inpcb* %0, %struct.ifnet* %1, %struct.mbuf* %2, %struct.sockaddr_in* %3, %struct.route* %4, i32 %5) #0 {
  %7 = alloca %struct.inpcb*, align 8
  %8 = alloca %struct.ifnet*, align 8
  %9 = alloca %struct.mbuf*, align 8
  %10 = alloca %struct.sockaddr_in*, align 8
  %11 = alloca %struct.route*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.m_snd_tag*, align 8
  %14 = alloca i32, align 4
  store %struct.inpcb* %0, %struct.inpcb** %7, align 8
  store %struct.ifnet* %1, %struct.ifnet** %8, align 8
  store %struct.mbuf* %2, %struct.mbuf** %9, align 8
  store %struct.sockaddr_in* %3, %struct.sockaddr_in** %10, align 8
  store %struct.route* %4, %struct.route** %11, align 8
  store i32 %5, i32* %12, align 4
  %15 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %16 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @CSUM_SND_TAG, align 4
  %20 = and i32 %18, %19
  %21 = icmp eq i32 %20, 0
  %22 = zext i1 %21 to i32
  %23 = call i32 @MPASS(i32 %22)
  store %struct.m_snd_tag* null, %struct.m_snd_tag** %13, align 8
  %24 = load i32, i32* %12, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %56

26:                                               ; preds = %6
  %27 = load %struct.m_snd_tag*, %struct.m_snd_tag** %13, align 8
  %28 = icmp ne %struct.m_snd_tag* %27, null
  br i1 %28, label %29, label %56

29:                                               ; preds = %26
  %30 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %31 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 2
  %33 = load i32*, i32** %32, align 8
  %34 = icmp eq i32* %33, null
  %35 = zext i1 %34 to i32
  %36 = call i32 @KASSERT(i32 %35, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %37 = load %struct.m_snd_tag*, %struct.m_snd_tag** %13, align 8
  %38 = getelementptr inbounds %struct.m_snd_tag, %struct.m_snd_tag* %37, i32 0, i32 0
  %39 = load %struct.ifnet*, %struct.ifnet** %38, align 8
  %40 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %41 = icmp ne %struct.ifnet* %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %29
  %43 = load i32, i32* @EAGAIN, align 4
  store i32 %43, i32* %14, align 4
  br label %66

44:                                               ; preds = %29
  %45 = load %struct.m_snd_tag*, %struct.m_snd_tag** %13, align 8
  %46 = call i32 @m_snd_tag_ref(%struct.m_snd_tag* %45)
  %47 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %48 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 1
  store i32 %46, i32* %49, align 4
  %50 = load i32, i32* @CSUM_SND_TAG, align 4
  %51 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %52 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = or i32 %54, %50
  store i32 %55, i32* %53, align 8
  br label %56

56:                                               ; preds = %44, %26, %6
  %57 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %58 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %57, i32 0, i32 0
  %59 = load i32 (%struct.ifnet*, %struct.mbuf*, %struct.sockaddr*, %struct.route*)*, i32 (%struct.ifnet*, %struct.mbuf*, %struct.sockaddr*, %struct.route*)** %58, align 8
  %60 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %61 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %62 = load %struct.sockaddr_in*, %struct.sockaddr_in** %10, align 8
  %63 = bitcast %struct.sockaddr_in* %62 to %struct.sockaddr*
  %64 = load %struct.route*, %struct.route** %11, align 8
  %65 = call i32 %59(%struct.ifnet* %60, %struct.mbuf* %61, %struct.sockaddr* %63, %struct.route* %64)
  store i32 %65, i32* %14, align 4
  br label %66

66:                                               ; preds = %56, %42
  %67 = load i32, i32* %14, align 4
  ret i32 %67
}

declare dso_local i32 @MPASS(i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @m_snd_tag_ref(%struct.m_snd_tag*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
