; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netipsec/extr_udpencap.c_udp_ipsec_pcbctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netipsec/extr_udpencap.c_udp_ipsec_pcbctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inpcb = type { i32 }
%struct.sockopt = type { i64, i64 }
%struct.udpcb = type { i32 }

@UDP_ENCAP = common dso_local global i64 0, align 8
@ENOPROTOOPT = common dso_local global i32 0, align 4
@SOPT_GET = common dso_local global i64 0, align 8
@UF_ESPINUDP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @udp_ipsec_pcbctl(%struct.inpcb* %0, %struct.sockopt* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inpcb*, align 8
  %5 = alloca %struct.sockopt*, align 8
  %6 = alloca %struct.udpcb*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.inpcb* %0, %struct.inpcb** %4, align 8
  store %struct.sockopt* %1, %struct.sockopt** %5, align 8
  %9 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  %10 = call i32 @INP_WLOCK_ASSERT(%struct.inpcb* %9)
  %11 = load %struct.sockopt*, %struct.sockopt** %5, align 8
  %12 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @UDP_ENCAP, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  %18 = call i32 @INP_WUNLOCK(%struct.inpcb* %17)
  %19 = load i32, i32* @ENOPROTOOPT, align 4
  store i32 %19, i32* %3, align 4
  br label %74

20:                                               ; preds = %2
  %21 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  %22 = call %struct.udpcb* @intoudpcb(%struct.inpcb* %21)
  store %struct.udpcb* %22, %struct.udpcb** %6, align 8
  %23 = load %struct.sockopt*, %struct.sockopt** %5, align 8
  %24 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @SOPT_GET, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %42

28:                                               ; preds = %20
  %29 = load %struct.udpcb*, %struct.udpcb** %6, align 8
  %30 = getelementptr inbounds %struct.udpcb, %struct.udpcb* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @UF_ESPINUDP, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %28
  store i32 128, i32* %8, align 4
  br label %37

36:                                               ; preds = %28
  store i32 0, i32* %8, align 4
  br label %37

37:                                               ; preds = %36, %35
  %38 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  %39 = call i32 @INP_WUNLOCK(%struct.inpcb* %38)
  %40 = load %struct.sockopt*, %struct.sockopt** %5, align 8
  %41 = call i32 @sooptcopyout(%struct.sockopt* %40, i32* %8, i32 4)
  store i32 %41, i32* %3, align 4
  br label %74

42:                                               ; preds = %20
  %43 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  %44 = call i32 @INP_WUNLOCK(%struct.inpcb* %43)
  %45 = load %struct.sockopt*, %struct.sockopt** %5, align 8
  %46 = call i32 @sooptcopyin(%struct.sockopt* %45, i32* %8, i32 4, i32 4)
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %7, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %42
  %50 = load i32, i32* %7, align 4
  store i32 %50, i32* %3, align 4
  br label %74

51:                                               ; preds = %42
  %52 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  %53 = call i32 @INP_WLOCK(%struct.inpcb* %52)
  %54 = load i32, i32* %8, align 4
  switch i32 %54, label %68 [
    i32 0, label %55
    i32 128, label %62
  ]

55:                                               ; preds = %51
  %56 = load i32, i32* @UF_ESPINUDP, align 4
  %57 = xor i32 %56, -1
  %58 = load %struct.udpcb*, %struct.udpcb** %6, align 8
  %59 = getelementptr inbounds %struct.udpcb, %struct.udpcb* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = and i32 %60, %57
  store i32 %61, i32* %59, align 4
  br label %70

62:                                               ; preds = %51
  %63 = load i32, i32* @UF_ESPINUDP, align 4
  %64 = load %struct.udpcb*, %struct.udpcb** %6, align 8
  %65 = getelementptr inbounds %struct.udpcb, %struct.udpcb* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = or i32 %66, %63
  store i32 %67, i32* %65, align 4
  br label %70

68:                                               ; preds = %51
  %69 = load i32, i32* @EINVAL, align 4
  store i32 %69, i32* %7, align 4
  br label %70

70:                                               ; preds = %68, %62, %55
  %71 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  %72 = call i32 @INP_WUNLOCK(%struct.inpcb* %71)
  %73 = load i32, i32* %7, align 4
  store i32 %73, i32* %3, align 4
  br label %74

74:                                               ; preds = %70, %49, %37, %16
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local i32 @INP_WLOCK_ASSERT(%struct.inpcb*) #1

declare dso_local i32 @INP_WUNLOCK(%struct.inpcb*) #1

declare dso_local %struct.udpcb* @intoudpcb(%struct.inpcb*) #1

declare dso_local i32 @sooptcopyout(%struct.sockopt*, i32*, i32) #1

declare dso_local i32 @sooptcopyin(%struct.sockopt*, i32*, i32, i32) #1

declare dso_local i32 @INP_WLOCK(%struct.inpcb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
