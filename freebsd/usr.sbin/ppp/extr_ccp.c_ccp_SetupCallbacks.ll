; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_ccp.c_ccp_SetupCallbacks.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_ccp.c_ccp_SetupCallbacks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccp = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_8__, %struct.TYPE_6__, %struct.TYPE_5__, i32* }
%struct.TYPE_8__ = type { i8* }
%struct.TYPE_6__ = type { i8* }
%struct.TYPE_5__ = type { i8* }

@ccp_Callbacks = common dso_local global i32 0, align 4
@ccp_TimerNames = common dso_local global i8** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ccp_SetupCallbacks(%struct.ccp* %0) #0 {
  %2 = alloca %struct.ccp*, align 8
  store %struct.ccp* %0, %struct.ccp** %2, align 8
  %3 = load %struct.ccp*, %struct.ccp** %2, align 8
  %4 = getelementptr inbounds %struct.ccp, %struct.ccp* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 3
  store i32* @ccp_Callbacks, i32** %5, align 8
  %6 = load i8**, i8*** @ccp_TimerNames, align 8
  %7 = getelementptr inbounds i8*, i8** %6, i64 0
  %8 = load i8*, i8** %7, align 8
  %9 = load %struct.ccp*, %struct.ccp** %2, align 8
  %10 = getelementptr inbounds %struct.ccp, %struct.ccp* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  store i8* %8, i8** %12, align 8
  %13 = load i8**, i8*** @ccp_TimerNames, align 8
  %14 = getelementptr inbounds i8*, i8** %13, i64 1
  %15 = load i8*, i8** %14, align 8
  %16 = load %struct.ccp*, %struct.ccp** %2, align 8
  %17 = getelementptr inbounds %struct.ccp, %struct.ccp* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  store i8* %15, i8** %19, align 8
  %20 = load i8**, i8*** @ccp_TimerNames, align 8
  %21 = getelementptr inbounds i8*, i8** %20, i64 2
  %22 = load i8*, i8** %21, align 8
  %23 = load %struct.ccp*, %struct.ccp** %2, align 8
  %24 = getelementptr inbounds %struct.ccp, %struct.ccp* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  store i8* %22, i8** %26, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
