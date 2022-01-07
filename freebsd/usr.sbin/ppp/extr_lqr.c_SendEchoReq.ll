; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_lqr.c_SendEchoReq.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_lqr.c_SendEchoReq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lcp = type { %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.hdlc = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.echolqr = type { i8*, i8*, i8* }
%struct.TYPE_7__ = type { %struct.hdlc }

@SIGNATURE = common dso_local global i32 0, align 4
@CODE_ECHOREQ = common dso_local global i32 0, align 4
@MB_ECHOOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lcp*)* @SendEchoReq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SendEchoReq(%struct.lcp* %0) #0 {
  %2 = alloca %struct.lcp*, align 8
  %3 = alloca %struct.hdlc*, align 8
  %4 = alloca %struct.echolqr, align 8
  store %struct.lcp* %0, %struct.lcp** %2, align 8
  %5 = load %struct.lcp*, %struct.lcp** %2, align 8
  %6 = getelementptr inbounds %struct.lcp, %struct.lcp* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.TYPE_7__* @link2physical(i32 %8)
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  store %struct.hdlc* %10, %struct.hdlc** %3, align 8
  %11 = load %struct.lcp*, %struct.lcp** %2, align 8
  %12 = getelementptr inbounds %struct.lcp, %struct.lcp* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i8* @htonl(i32 %13)
  %15 = getelementptr inbounds %struct.echolqr, %struct.echolqr* %4, i32 0, i32 2
  store i8* %14, i8** %15, align 8
  %16 = load i32, i32* @SIGNATURE, align 4
  %17 = call i8* @htonl(i32 %16)
  %18 = getelementptr inbounds %struct.echolqr, %struct.echolqr* %4, i32 0, i32 1
  store i8* %17, i8** %18, align 8
  %19 = load %struct.hdlc*, %struct.hdlc** %3, align 8
  %20 = getelementptr inbounds %struct.hdlc, %struct.hdlc* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i8* @htonl(i32 %23)
  %25 = getelementptr inbounds %struct.echolqr, %struct.echolqr* %4, i32 0, i32 0
  store i8* %24, i8** %25, align 8
  %26 = load %struct.lcp*, %struct.lcp** %2, align 8
  %27 = getelementptr inbounds %struct.lcp, %struct.lcp* %26, i32 0, i32 0
  %28 = load i32, i32* @CODE_ECHOREQ, align 4
  %29 = load %struct.hdlc*, %struct.hdlc** %3, align 8
  %30 = getelementptr inbounds %struct.hdlc, %struct.hdlc* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %32, align 4
  %35 = bitcast %struct.echolqr* %4 to i32*
  %36 = load i32, i32* @MB_ECHOOUT, align 4
  %37 = call i32 @fsm_Output(%struct.TYPE_8__* %27, i32 %28, i32 %33, i32* %35, i32 24, i32 %36)
  ret void
}

declare dso_local %struct.TYPE_7__* @link2physical(i32) #1

declare dso_local i8* @htonl(i32) #1

declare dso_local i32 @fsm_Output(%struct.TYPE_8__*, i32, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
