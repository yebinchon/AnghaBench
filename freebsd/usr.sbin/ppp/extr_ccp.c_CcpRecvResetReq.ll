; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_ccp.c_CcpRecvResetReq.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_ccp.c_CcpRecvResetReq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 (i32*)* }
%struct.fsm = type { i32 }
%struct.ccp = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i32* }

@algorithm = common dso_local global %struct.TYPE_6__** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fsm*)* @CcpRecvResetReq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CcpRecvResetReq(%struct.fsm* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fsm*, align 8
  %4 = alloca %struct.ccp*, align 8
  store %struct.fsm* %0, %struct.fsm** %3, align 8
  %5 = load %struct.fsm*, %struct.fsm** %3, align 8
  %6 = call %struct.ccp* @fsm2ccp(%struct.fsm* %5)
  store %struct.ccp* %6, %struct.ccp** %4, align 8
  %7 = load %struct.ccp*, %struct.ccp** %4, align 8
  %8 = getelementptr inbounds %struct.ccp, %struct.ccp* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 1
  %10 = load i32*, i32** %9, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %29

13:                                               ; preds = %1
  %14 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @algorithm, align 8
  %15 = load %struct.ccp*, %struct.ccp** %4, align 8
  %16 = getelementptr inbounds %struct.ccp, %struct.ccp* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %14, i64 %18
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32 (i32*)*, i32 (i32*)** %22, align 8
  %24 = load %struct.ccp*, %struct.ccp** %4, align 8
  %25 = getelementptr inbounds %struct.ccp, %struct.ccp* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = call i32 %23(i32* %27)
  store i32 %28, i32* %2, align 4
  br label %29

29:                                               ; preds = %13, %12
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local %struct.ccp* @fsm2ccp(%struct.fsm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
