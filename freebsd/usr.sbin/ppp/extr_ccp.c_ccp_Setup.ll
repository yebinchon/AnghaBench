; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_ccp.c_ccp_Setup.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_ccp.c_ccp_Setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccp = type { i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_6__ }
%struct.TYPE_10__ = type { i32, i32*, i32* }
%struct.TYPE_9__ = type { i32, %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ccp_Setup(%struct.ccp* %0) #0 {
  %2 = alloca %struct.ccp*, align 8
  store %struct.ccp* %0, %struct.ccp** %2, align 8
  %3 = load %struct.ccp*, %struct.ccp** %2, align 8
  %4 = getelementptr inbounds %struct.ccp, %struct.ccp* %3, i32 0, i32 12
  %5 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 0
  store i64 0, i64* %5, align 8
  %6 = load %struct.ccp*, %struct.ccp** %2, align 8
  %7 = getelementptr inbounds %struct.ccp, %struct.ccp* %6, i32 0, i32 1
  store i32 -1, i32* %7, align 4
  %8 = load %struct.ccp*, %struct.ccp** %2, align 8
  %9 = getelementptr inbounds %struct.ccp, %struct.ccp* %8, i32 0, i32 0
  store i32 -1, i32* %9, align 8
  %10 = load %struct.ccp*, %struct.ccp** %2, align 8
  %11 = getelementptr inbounds %struct.ccp, %struct.ccp* %10, i32 0, i32 3
  store i32 -1, i32* %11, align 4
  %12 = load %struct.ccp*, %struct.ccp** %2, align 8
  %13 = getelementptr inbounds %struct.ccp, %struct.ccp* %12, i32 0, i32 2
  store i32 -1, i32* %13, align 8
  %14 = load %struct.ccp*, %struct.ccp** %2, align 8
  %15 = getelementptr inbounds %struct.ccp, %struct.ccp* %14, i32 0, i32 10
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  store i32 -1, i32* %16, align 8
  %17 = load %struct.ccp*, %struct.ccp** %2, align 8
  %18 = getelementptr inbounds %struct.ccp, %struct.ccp* %17, i32 0, i32 11
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  store i32 -1, i32* %19, align 8
  %20 = load %struct.ccp*, %struct.ccp** %2, align 8
  %21 = getelementptr inbounds %struct.ccp, %struct.ccp* %20, i32 0, i32 10
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 2
  store i32* null, i32** %22, align 8
  %23 = load %struct.ccp*, %struct.ccp** %2, align 8
  %24 = getelementptr inbounds %struct.ccp, %struct.ccp* %23, i32 0, i32 11
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 2
  store i32 0, i32* %25, align 8
  %26 = load %struct.ccp*, %struct.ccp** %2, align 8
  %27 = getelementptr inbounds %struct.ccp, %struct.ccp* %26, i32 0, i32 11
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  store i32 -1, i32* %30, align 4
  %31 = load %struct.ccp*, %struct.ccp** %2, align 8
  %32 = getelementptr inbounds %struct.ccp, %struct.ccp* %31, i32 0, i32 10
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 1
  store i32* null, i32** %33, align 8
  %34 = load %struct.ccp*, %struct.ccp** %2, align 8
  %35 = getelementptr inbounds %struct.ccp, %struct.ccp* %34, i32 0, i32 8
  store i64 0, i64* %35, align 8
  %36 = load %struct.ccp*, %struct.ccp** %2, align 8
  %37 = getelementptr inbounds %struct.ccp, %struct.ccp* %36, i32 0, i32 9
  store i64 0, i64* %37, align 8
  %38 = load %struct.ccp*, %struct.ccp** %2, align 8
  %39 = getelementptr inbounds %struct.ccp, %struct.ccp* %38, i32 0, i32 6
  store i64 0, i64* %39, align 8
  %40 = load %struct.ccp*, %struct.ccp** %2, align 8
  %41 = getelementptr inbounds %struct.ccp, %struct.ccp* %40, i32 0, i32 7
  store i64 0, i64* %41, align 8
  %42 = load %struct.ccp*, %struct.ccp** %2, align 8
  %43 = getelementptr inbounds %struct.ccp, %struct.ccp* %42, i32 0, i32 4
  store i64 0, i64* %43, align 8
  %44 = load %struct.ccp*, %struct.ccp** %2, align 8
  %45 = getelementptr inbounds %struct.ccp, %struct.ccp* %44, i32 0, i32 5
  store i64 0, i64* %45, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
