; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_ip_divert.c_div_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_ip_divert.c_div_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i64 }
%struct.thread = type { i32 }
%struct.inpcb = type { i32, i32, i32 }

@.str = private unnamed_addr constant [24 x i8] c"div_attach: inp != NULL\00", align 1
@PRIV_NETINET_DIVERT = common dso_local global i32 0, align 4
@div_sendspace = common dso_local global i32 0, align 4
@div_recvspace = common dso_local global i32 0, align 4
@V_divcbinfo = common dso_local global i32 0, align 4
@INP_IPV4 = common dso_local global i32 0, align 4
@INP_HDRINCL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, i32, %struct.thread*)* @div_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @div_attach(%struct.socket* %0, i32 %1, %struct.thread* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.socket*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.thread*, align 8
  %8 = alloca %struct.inpcb*, align 8
  %9 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.thread* %2, %struct.thread** %7, align 8
  %10 = load %struct.socket*, %struct.socket** %5, align 8
  %11 = call %struct.inpcb* @sotoinpcb(%struct.socket* %10)
  store %struct.inpcb* %11, %struct.inpcb** %8, align 8
  %12 = load %struct.inpcb*, %struct.inpcb** %8, align 8
  %13 = icmp eq %struct.inpcb* %12, null
  %14 = zext i1 %13 to i32
  %15 = call i32 @KASSERT(i32 %14, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.thread*, %struct.thread** %7, align 8
  %17 = icmp ne %struct.thread* %16, null
  br i1 %17, label %18, label %27

18:                                               ; preds = %3
  %19 = load %struct.thread*, %struct.thread** %7, align 8
  %20 = load i32, i32* @PRIV_NETINET_DIVERT, align 4
  %21 = call i32 @priv_check(%struct.thread* %19, i32 %20)
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %9, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %18
  %25 = load i32, i32* %9, align 4
  store i32 %25, i32* %4, align 4
  br label %66

26:                                               ; preds = %18
  br label %27

27:                                               ; preds = %26, %3
  %28 = load %struct.socket*, %struct.socket** %5, align 8
  %29 = load i32, i32* @div_sendspace, align 4
  %30 = load i32, i32* @div_recvspace, align 4
  %31 = call i32 @soreserve(%struct.socket* %28, i32 %29, i32 %30)
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %9, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %27
  %35 = load i32, i32* %9, align 4
  store i32 %35, i32* %4, align 4
  br label %66

36:                                               ; preds = %27
  %37 = call i32 @INP_INFO_WLOCK(i32* @V_divcbinfo)
  %38 = load %struct.socket*, %struct.socket** %5, align 8
  %39 = call i32 @in_pcballoc(%struct.socket* %38, i32* @V_divcbinfo)
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %9, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %36
  %43 = call i32 @INP_INFO_WUNLOCK(i32* @V_divcbinfo)
  %44 = load i32, i32* %9, align 4
  store i32 %44, i32* %4, align 4
  br label %66

45:                                               ; preds = %36
  %46 = load %struct.socket*, %struct.socket** %5, align 8
  %47 = getelementptr inbounds %struct.socket, %struct.socket* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = inttoptr i64 %48 to %struct.inpcb*
  store %struct.inpcb* %49, %struct.inpcb** %8, align 8
  %50 = call i32 @INP_INFO_WUNLOCK(i32* @V_divcbinfo)
  %51 = load i32, i32* %6, align 4
  %52 = load %struct.inpcb*, %struct.inpcb** %8, align 8
  %53 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 4
  %54 = load i32, i32* @INP_IPV4, align 4
  %55 = load %struct.inpcb*, %struct.inpcb** %8, align 8
  %56 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = or i32 %57, %54
  store i32 %58, i32* %56, align 4
  %59 = load i32, i32* @INP_HDRINCL, align 4
  %60 = load %struct.inpcb*, %struct.inpcb** %8, align 8
  %61 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = or i32 %62, %59
  store i32 %63, i32* %61, align 4
  %64 = load %struct.inpcb*, %struct.inpcb** %8, align 8
  %65 = call i32 @INP_WUNLOCK(%struct.inpcb* %64)
  store i32 0, i32* %4, align 4
  br label %66

66:                                               ; preds = %45, %42, %34, %24
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

declare dso_local %struct.inpcb* @sotoinpcb(%struct.socket*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @priv_check(%struct.thread*, i32) #1

declare dso_local i32 @soreserve(%struct.socket*, i32, i32) #1

declare dso_local i32 @INP_INFO_WLOCK(i32*) #1

declare dso_local i32 @in_pcballoc(%struct.socket*, i32*) #1

declare dso_local i32 @INP_INFO_WUNLOCK(i32*) #1

declare dso_local i32 @INP_WUNLOCK(%struct.inpcb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
