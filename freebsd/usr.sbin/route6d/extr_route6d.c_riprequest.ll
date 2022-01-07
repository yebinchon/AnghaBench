; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/route6d/extr_route6d.c_riprequest.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/route6d/extr_route6d.c_riprequest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifc = type { i32 }
%struct.netinfo6 = type { i64, i32, i32 }
%struct.sockaddr_in6 = type { i32 }
%struct.riprt = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@HOPCNT_INFINITY6 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"\09RIP Request\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"\09RIP Request -- whole routing table\0A\00", align 1
@RRTF_SENDANYWAY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ifc*, %struct.netinfo6*, i32, %struct.sockaddr_in6*)* @riprequest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @riprequest(%struct.ifc* %0, %struct.netinfo6* %1, i32 %2, %struct.sockaddr_in6* %3) #0 {
  %5 = alloca %struct.ifc*, align 8
  %6 = alloca %struct.netinfo6*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sockaddr_in6*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.riprt*, align 8
  store %struct.ifc* %0, %struct.ifc** %5, align 8
  store %struct.netinfo6* %1, %struct.netinfo6** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.sockaddr_in6* %3, %struct.sockaddr_in6** %8, align 8
  %11 = load i32, i32* %7, align 4
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %13, label %29

13:                                               ; preds = %4
  %14 = load %struct.netinfo6*, %struct.netinfo6** %6, align 8
  %15 = getelementptr inbounds %struct.netinfo6, %struct.netinfo6* %14, i32 0, i32 2
  %16 = call i64 @IN6_IS_ADDR_UNSPECIFIED(i32* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %29

18:                                               ; preds = %13
  %19 = load %struct.netinfo6*, %struct.netinfo6** %6, align 8
  %20 = getelementptr inbounds %struct.netinfo6, %struct.netinfo6* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %18
  %24 = load %struct.netinfo6*, %struct.netinfo6** %6, align 8
  %25 = getelementptr inbounds %struct.netinfo6, %struct.netinfo6* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @HOPCNT_INFINITY6, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %62, label %29

29:                                               ; preds = %23, %18, %13, %4
  %30 = call i32 @trace(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %9, align 4
  br label %31

31:                                               ; preds = %52, %29
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* %7, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %57

35:                                               ; preds = %31
  %36 = load %struct.netinfo6*, %struct.netinfo6** %6, align 8
  %37 = call %struct.riprt* @rtsearch(%struct.netinfo6* %36)
  store %struct.riprt* %37, %struct.riprt** %10, align 8
  %38 = load %struct.riprt*, %struct.riprt** %10, align 8
  %39 = icmp ne %struct.riprt* %38, null
  br i1 %39, label %40, label %47

40:                                               ; preds = %35
  %41 = load %struct.riprt*, %struct.riprt** %10, align 8
  %42 = getelementptr inbounds %struct.riprt, %struct.riprt* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.netinfo6*, %struct.netinfo6** %6, align 8
  %46 = getelementptr inbounds %struct.netinfo6, %struct.netinfo6* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 8
  br label %51

47:                                               ; preds = %35
  %48 = load i32, i32* @HOPCNT_INFINITY6, align 4
  %49 = load %struct.netinfo6*, %struct.netinfo6** %6, align 8
  %50 = getelementptr inbounds %struct.netinfo6, %struct.netinfo6* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 8
  br label %51

51:                                               ; preds = %47, %40
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %9, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %9, align 4
  %55 = load %struct.netinfo6*, %struct.netinfo6** %6, align 8
  %56 = getelementptr inbounds %struct.netinfo6, %struct.netinfo6* %55, i32 1
  store %struct.netinfo6* %56, %struct.netinfo6** %6, align 8
  br label %31

57:                                               ; preds = %31
  %58 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %8, align 8
  %59 = load i32, i32* %7, align 4
  %60 = call i32 @RIPSIZE(i32 %59)
  %61 = call i32 @sendpacket(%struct.sockaddr_in6* %58, i32 %60)
  br label %68

62:                                               ; preds = %23
  %63 = call i32 @trace(i32 1, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %64 = load %struct.ifc*, %struct.ifc** %5, align 8
  %65 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %8, align 8
  %66 = load i32, i32* @RRTF_SENDANYWAY, align 4
  %67 = call i32 @ripsend(%struct.ifc* %64, %struct.sockaddr_in6* %65, i32 %66)
  br label %68

68:                                               ; preds = %62, %57
  ret void
}

declare dso_local i64 @IN6_IS_ADDR_UNSPECIFIED(i32*) #1

declare dso_local i32 @trace(i32, i8*) #1

declare dso_local %struct.riprt* @rtsearch(%struct.netinfo6*) #1

declare dso_local i32 @sendpacket(%struct.sockaddr_in6*, i32) #1

declare dso_local i32 @RIPSIZE(i32) #1

declare dso_local i32 @ripsend(%struct.ifc*, %struct.sockaddr_in6*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
