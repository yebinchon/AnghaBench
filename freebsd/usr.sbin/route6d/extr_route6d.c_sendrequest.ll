; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/route6d/extr_route6d.c_sendrequest.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/route6d/extr_route6d.c_sendrequest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.netinfo6* }
%struct.netinfo6 = type { i32 }
%struct.ifc = type { i32, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 }

@IFF_LOOPBACK = common dso_local global i32 0, align 4
@RIP6_REQUEST = common dso_local global i32 0, align 4
@ripbuf = common dso_local global %struct.TYPE_4__* null, align 8
@HOPCNT_INFINITY6 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Send rtdump Request to %s (%s)\0A\00", align 1
@EAFNOSUPPORT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [59 x i8] c"Could not send rtdump Request to %s (%s): set IFF_UP to 0\0A\00", align 1
@IFF_UP = common dso_local global i32 0, align 4
@RIP6_RESPONSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ifc*)* @sendrequest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sendrequest(%struct.ifc* %0) #0 {
  %2 = alloca %struct.ifc*, align 8
  %3 = alloca %struct.netinfo6*, align 8
  %4 = alloca i32, align 4
  store %struct.ifc* %0, %struct.ifc** %2, align 8
  %5 = load %struct.ifc*, %struct.ifc** %2, align 8
  %6 = getelementptr inbounds %struct.ifc, %struct.ifc* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @IFF_LOOPBACK, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %58

12:                                               ; preds = %1
  %13 = load i32, i32* @RIP6_REQUEST, align 4
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ripbuf, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 8
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ripbuf, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  %18 = load %struct.netinfo6*, %struct.netinfo6** %17, align 8
  store %struct.netinfo6* %18, %struct.netinfo6** %3, align 8
  %19 = load %struct.netinfo6*, %struct.netinfo6** %3, align 8
  %20 = call i32 @memset(%struct.netinfo6* %19, i32 0, i32 4)
  %21 = load i32, i32* @HOPCNT_INFINITY6, align 4
  %22 = load %struct.netinfo6*, %struct.netinfo6** %3, align 8
  %23 = getelementptr inbounds %struct.netinfo6, %struct.netinfo6* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  %24 = load %struct.ifc*, %struct.ifc** %2, align 8
  %25 = getelementptr inbounds %struct.ifc, %struct.ifc* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.ifc*, %struct.ifc** %2, align 8
  %28 = getelementptr inbounds %struct.ifc, %struct.ifc* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = call i32 @inet6_n2p(i32* %29)
  %31 = call i32 @tracet(i32 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %26, i32 %30)
  %32 = load %struct.ifc*, %struct.ifc** %2, align 8
  %33 = getelementptr inbounds %struct.ifc, %struct.ifc* %32, i32 0, i32 1
  %34 = call i32 @RIPSIZE(i32 1)
  %35 = call i32 @sendpacket(%struct.TYPE_3__* %33, i32 %34)
  store i32 %35, i32* %4, align 4
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* @EAFNOSUPPORT, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %54

39:                                               ; preds = %12
  %40 = load %struct.ifc*, %struct.ifc** %2, align 8
  %41 = getelementptr inbounds %struct.ifc, %struct.ifc* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.ifc*, %struct.ifc** %2, align 8
  %44 = getelementptr inbounds %struct.ifc, %struct.ifc* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = call i32 @inet6_n2p(i32* %45)
  %47 = call i32 @tracet(i32 1, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0), i32 %42, i32 %46)
  %48 = load i32, i32* @IFF_UP, align 4
  %49 = xor i32 %48, -1
  %50 = load %struct.ifc*, %struct.ifc** %2, align 8
  %51 = getelementptr inbounds %struct.ifc, %struct.ifc* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = and i32 %52, %49
  store i32 %53, i32* %51, align 4
  br label %54

54:                                               ; preds = %39, %12
  %55 = load i32, i32* @RIP6_RESPONSE, align 4
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ripbuf, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 8
  br label %58

58:                                               ; preds = %54, %11
  ret void
}

declare dso_local i32 @memset(%struct.netinfo6*, i32, i32) #1

declare dso_local i32 @tracet(i32, i8*, i32, i32) #1

declare dso_local i32 @inet6_n2p(i32*) #1

declare dso_local i32 @sendpacket(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @RIPSIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
