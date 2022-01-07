; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_if_bridge.c_bridge_ioctl_gbparam.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_if_bridge.c_bridge_ioctl_gbparam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bridge_softc = type { %struct.bstp_state }
%struct.bstp_state = type { i32, i32, i32, %struct.TYPE_10__, %struct.TYPE_8__, %struct.TYPE_7__, i32, i32, i32, %struct.bstp_port* }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.bstp_port = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }
%struct.ifbropreq = type { i32, i32, i32, %struct.TYPE_9__, i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.TYPE_9__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bridge_softc*, i8*)* @bridge_ioctl_gbparam to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bridge_ioctl_gbparam(%struct.bridge_softc* %0, i8* %1) #0 {
  %3 = alloca %struct.bridge_softc*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ifbropreq*, align 8
  %6 = alloca %struct.bstp_state*, align 8
  %7 = alloca %struct.bstp_port*, align 8
  store %struct.bridge_softc* %0, %struct.bridge_softc** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.ifbropreq*
  store %struct.ifbropreq* %9, %struct.ifbropreq** %5, align 8
  %10 = load %struct.bridge_softc*, %struct.bridge_softc** %3, align 8
  %11 = getelementptr inbounds %struct.bridge_softc, %struct.bridge_softc* %10, i32 0, i32 0
  store %struct.bstp_state* %11, %struct.bstp_state** %6, align 8
  %12 = load %struct.bstp_state*, %struct.bstp_state** %6, align 8
  %13 = getelementptr inbounds %struct.bstp_state, %struct.bstp_state* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = ashr i32 %14, 8
  %16 = load %struct.ifbropreq*, %struct.ifbropreq** %5, align 8
  %17 = getelementptr inbounds %struct.ifbropreq, %struct.ifbropreq* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 8
  %18 = load %struct.bstp_state*, %struct.bstp_state** %6, align 8
  %19 = getelementptr inbounds %struct.bstp_state, %struct.bstp_state* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = ashr i32 %20, 8
  %22 = load %struct.ifbropreq*, %struct.ifbropreq** %5, align 8
  %23 = getelementptr inbounds %struct.ifbropreq, %struct.ifbropreq* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  %24 = load %struct.bstp_state*, %struct.bstp_state** %6, align 8
  %25 = getelementptr inbounds %struct.bstp_state, %struct.bstp_state* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = ashr i32 %26, 8
  %28 = load %struct.ifbropreq*, %struct.ifbropreq** %5, align 8
  %29 = getelementptr inbounds %struct.ifbropreq, %struct.ifbropreq* %28, i32 0, i32 2
  store i32 %27, i32* %29, align 8
  %30 = load %struct.bstp_state*, %struct.bstp_state** %6, align 8
  %31 = getelementptr inbounds %struct.bstp_state, %struct.bstp_state* %30, i32 0, i32 9
  %32 = load %struct.bstp_port*, %struct.bstp_port** %31, align 8
  store %struct.bstp_port* %32, %struct.bstp_port** %7, align 8
  %33 = load %struct.bstp_port*, %struct.bstp_port** %7, align 8
  %34 = icmp eq %struct.bstp_port* %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %2
  %36 = load %struct.ifbropreq*, %struct.ifbropreq** %5, align 8
  %37 = getelementptr inbounds %struct.ifbropreq, %struct.ifbropreq* %36, i32 0, i32 11
  store i64 0, i64* %37, align 8
  br label %46

38:                                               ; preds = %2
  %39 = load %struct.bstp_port*, %struct.bstp_port** %7, align 8
  %40 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %39, i32 0, i32 0
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.ifbropreq*, %struct.ifbropreq** %5, align 8
  %45 = getelementptr inbounds %struct.ifbropreq, %struct.ifbropreq* %44, i32 0, i32 11
  store i64 %43, i64* %45, align 8
  br label %46

46:                                               ; preds = %38, %35
  %47 = load %struct.bstp_state*, %struct.bstp_state** %6, align 8
  %48 = getelementptr inbounds %struct.bstp_state, %struct.bstp_state* %47, i32 0, i32 8
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.ifbropreq*, %struct.ifbropreq** %5, align 8
  %51 = getelementptr inbounds %struct.ifbropreq, %struct.ifbropreq* %50, i32 0, i32 10
  store i32 %49, i32* %51, align 4
  %52 = load %struct.bstp_state*, %struct.bstp_state** %6, align 8
  %53 = getelementptr inbounds %struct.bstp_state, %struct.bstp_state* %52, i32 0, i32 7
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.ifbropreq*, %struct.ifbropreq** %5, align 8
  %56 = getelementptr inbounds %struct.ifbropreq, %struct.ifbropreq* %55, i32 0, i32 9
  store i32 %54, i32* %56, align 8
  %57 = load %struct.bstp_state*, %struct.bstp_state** %6, align 8
  %58 = getelementptr inbounds %struct.bstp_state, %struct.bstp_state* %57, i32 0, i32 6
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.ifbropreq*, %struct.ifbropreq** %5, align 8
  %61 = getelementptr inbounds %struct.ifbropreq, %struct.ifbropreq* %60, i32 0, i32 8
  store i32 %59, i32* %61, align 4
  %62 = load %struct.bstp_state*, %struct.bstp_state** %6, align 8
  %63 = getelementptr inbounds %struct.bstp_state, %struct.bstp_state* %62, i32 0, i32 4
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.ifbropreq*, %struct.ifbropreq** %5, align 8
  %67 = getelementptr inbounds %struct.ifbropreq, %struct.ifbropreq* %66, i32 0, i32 7
  store i32 %65, i32* %67, align 8
  %68 = load %struct.bstp_state*, %struct.bstp_state** %6, align 8
  %69 = getelementptr inbounds %struct.bstp_state, %struct.bstp_state* %68, i32 0, i32 5
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.ifbropreq*, %struct.ifbropreq** %5, align 8
  %73 = getelementptr inbounds %struct.ifbropreq, %struct.ifbropreq* %72, i32 0, i32 6
  store i32 %71, i32* %73, align 4
  %74 = load %struct.bstp_state*, %struct.bstp_state** %6, align 8
  %75 = getelementptr inbounds %struct.bstp_state, %struct.bstp_state* %74, i32 0, i32 4
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.ifbropreq*, %struct.ifbropreq** %5, align 8
  %79 = getelementptr inbounds %struct.ifbropreq, %struct.ifbropreq* %78, i32 0, i32 5
  store i32 %77, i32* %79, align 8
  %80 = load %struct.bstp_state*, %struct.bstp_state** %6, align 8
  %81 = getelementptr inbounds %struct.bstp_state, %struct.bstp_state* %80, i32 0, i32 4
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.ifbropreq*, %struct.ifbropreq** %5, align 8
  %85 = getelementptr inbounds %struct.ifbropreq, %struct.ifbropreq* %84, i32 0, i32 4
  store i32 %83, i32* %85, align 4
  %86 = load %struct.bstp_state*, %struct.bstp_state** %6, align 8
  %87 = getelementptr inbounds %struct.bstp_state, %struct.bstp_state* %86, i32 0, i32 3
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.ifbropreq*, %struct.ifbropreq** %5, align 8
  %91 = getelementptr inbounds %struct.ifbropreq, %struct.ifbropreq* %90, i32 0, i32 3
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 1
  store i32 %89, i32* %92, align 4
  %93 = load %struct.bstp_state*, %struct.bstp_state** %6, align 8
  %94 = getelementptr inbounds %struct.bstp_state, %struct.bstp_state* %93, i32 0, i32 3
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.ifbropreq*, %struct.ifbropreq** %5, align 8
  %98 = getelementptr inbounds %struct.ifbropreq, %struct.ifbropreq* %97, i32 0, i32 3
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 0
  store i32 %96, i32* %99, align 4
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
