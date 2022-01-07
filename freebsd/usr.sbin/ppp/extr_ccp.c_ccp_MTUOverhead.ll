; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_ccp.c_ccp_MTUOverhead.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_ccp.c_ccp_MTUOverhead.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.ccp = type { %struct.TYPE_7__, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_5__ = type { i64 }

@ST_OPENED = common dso_local global i64 0, align 8
@algorithm = common dso_local global %struct.TYPE_8__** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ccp_MTUOverhead(%struct.ccp* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ccp*, align 8
  store %struct.ccp* %0, %struct.ccp** %3, align 8
  %4 = load %struct.ccp*, %struct.ccp** %3, align 8
  %5 = getelementptr inbounds %struct.ccp, %struct.ccp* %4, i32 0, i32 1
  %6 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @ST_OPENED, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %27

10:                                               ; preds = %1
  %11 = load %struct.ccp*, %struct.ccp** %3, align 8
  %12 = getelementptr inbounds %struct.ccp, %struct.ccp* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp uge i64 %14, 0
  br i1 %15, label %16, label %27

16:                                               ; preds = %10
  %17 = load %struct.TYPE_8__**, %struct.TYPE_8__*** @algorithm, align 8
  %18 = load %struct.ccp*, %struct.ccp** %3, align 8
  %19 = getelementptr inbounds %struct.ccp, %struct.ccp* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %17, i64 %21
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %2, align 4
  br label %28

27:                                               ; preds = %10, %1
  store i32 0, i32* %2, align 4
  br label %28

28:                                               ; preds = %27, %16
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
