; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netipsec/extr_xform_tcp.c_tcp_ipsec_pcbctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netipsec/extr_xform_tcp.c_tcp_ipsec_pcbctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inpcb = type { i32 }
%struct.sockopt = type { i64, i64 }
%struct.tcpcb = type { i32 }

@TCP_MD5SIG = common dso_local global i64 0, align 8
@ENOPROTOOPT = common dso_local global i32 0, align 4
@SOPT_GET = common dso_local global i64 0, align 8
@INP_TIMEWAIT = common dso_local global i32 0, align 4
@INP_DROPPED = common dso_local global i32 0, align 4
@ECONNRESET = common dso_local global i32 0, align 4
@TF_SIGNATURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inpcb*, %struct.sockopt*)* @tcp_ipsec_pcbctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcp_ipsec_pcbctl(%struct.inpcb* %0, %struct.sockopt* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inpcb*, align 8
  %5 = alloca %struct.sockopt*, align 8
  %6 = alloca %struct.tcpcb*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.inpcb* %0, %struct.inpcb** %4, align 8
  store %struct.sockopt* %1, %struct.sockopt** %5, align 8
  %9 = load %struct.sockopt*, %struct.sockopt** %5, align 8
  %10 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @TCP_MD5SIG, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* @ENOPROTOOPT, align 4
  store i32 %15, i32* %3, align 4
  br label %96

16:                                               ; preds = %2
  %17 = load %struct.sockopt*, %struct.sockopt** %5, align 8
  %18 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @SOPT_GET, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %52

22:                                               ; preds = %16
  %23 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  %24 = call i32 @INP_RLOCK(%struct.inpcb* %23)
  %25 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  %26 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @INP_TIMEWAIT, align 4
  %29 = load i32, i32* @INP_DROPPED, align 4
  %30 = or i32 %28, %29
  %31 = and i32 %27, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %22
  %34 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  %35 = call i32 @INP_RUNLOCK(%struct.inpcb* %34)
  %36 = load i32, i32* @ECONNRESET, align 4
  store i32 %36, i32* %3, align 4
  br label %96

37:                                               ; preds = %22
  %38 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  %39 = call %struct.tcpcb* @intotcpcb(%struct.inpcb* %38)
  store %struct.tcpcb* %39, %struct.tcpcb** %6, align 8
  %40 = load %struct.tcpcb*, %struct.tcpcb** %6, align 8
  %41 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @TF_SIGNATURE, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  %46 = zext i1 %45 to i64
  %47 = select i1 %45, i32 1, i32 0
  store i32 %47, i32* %8, align 4
  %48 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  %49 = call i32 @INP_RUNLOCK(%struct.inpcb* %48)
  %50 = load %struct.sockopt*, %struct.sockopt** %5, align 8
  %51 = call i32 @sooptcopyout(%struct.sockopt* %50, i32* %8, i32 4)
  store i32 %51, i32* %3, align 4
  br label %96

52:                                               ; preds = %16
  %53 = load %struct.sockopt*, %struct.sockopt** %5, align 8
  %54 = call i32 @sooptcopyin(%struct.sockopt* %53, i32* %8, i32 4, i32 4)
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* %7, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %52
  %58 = load i32, i32* %7, align 4
  store i32 %58, i32* %3, align 4
  br label %96

59:                                               ; preds = %52
  %60 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  %61 = call i32 @INP_WLOCK(%struct.inpcb* %60)
  %62 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  %63 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @INP_TIMEWAIT, align 4
  %66 = load i32, i32* @INP_DROPPED, align 4
  %67 = or i32 %65, %66
  %68 = and i32 %64, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %59
  %71 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  %72 = call i32 @INP_WUNLOCK(%struct.inpcb* %71)
  %73 = load i32, i32* @ECONNRESET, align 4
  store i32 %73, i32* %3, align 4
  br label %96

74:                                               ; preds = %59
  %75 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  %76 = call %struct.tcpcb* @intotcpcb(%struct.inpcb* %75)
  store %struct.tcpcb* %76, %struct.tcpcb** %6, align 8
  %77 = load i32, i32* %8, align 4
  %78 = icmp sgt i32 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %74
  %80 = load i32, i32* @TF_SIGNATURE, align 4
  %81 = load %struct.tcpcb*, %struct.tcpcb** %6, align 8
  %82 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = or i32 %83, %80
  store i32 %84, i32* %82, align 4
  br label %92

85:                                               ; preds = %74
  %86 = load i32, i32* @TF_SIGNATURE, align 4
  %87 = xor i32 %86, -1
  %88 = load %struct.tcpcb*, %struct.tcpcb** %6, align 8
  %89 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = and i32 %90, %87
  store i32 %91, i32* %89, align 4
  br label %92

92:                                               ; preds = %85, %79
  %93 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  %94 = call i32 @INP_WUNLOCK(%struct.inpcb* %93)
  %95 = load i32, i32* %7, align 4
  store i32 %95, i32* %3, align 4
  br label %96

96:                                               ; preds = %92, %70, %57, %37, %33, %14
  %97 = load i32, i32* %3, align 4
  ret i32 %97
}

declare dso_local i32 @INP_RLOCK(%struct.inpcb*) #1

declare dso_local i32 @INP_RUNLOCK(%struct.inpcb*) #1

declare dso_local %struct.tcpcb* @intotcpcb(%struct.inpcb*) #1

declare dso_local i32 @sooptcopyout(%struct.sockopt*, i32*, i32) #1

declare dso_local i32 @sooptcopyin(%struct.sockopt*, i32*, i32, i32) #1

declare dso_local i32 @INP_WLOCK(%struct.inpcb*) #1

declare dso_local i32 @INP_WUNLOCK(%struct.inpcb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
