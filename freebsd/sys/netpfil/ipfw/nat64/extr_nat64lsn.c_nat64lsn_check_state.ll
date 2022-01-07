; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/nat64/extr_nat64lsn.c_nat64lsn_check_state.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/nat64/extr_nat64lsn.c_nat64lsn_check_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nat64lsn_cfg = type { i32, i32, i32, i32, i32 }
%struct.nat64lsn_state = type { i32, i32, i32 }

@NAT64_BIT_STALE = common dso_local global i32 0, align 4
@NAT64_BIT_READY_IPV4 = common dso_local global i32 0, align 4
@NAT64_BIT_TCP_FIN = common dso_local global i32 0, align 4
@NAT64_BIT_TCP_ESTAB = common dso_local global i32 0, align 4
@NAT64_BIT_TCP_SYN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nat64lsn_cfg*, %struct.nat64lsn_state*)* @nat64lsn_check_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nat64lsn_check_state(%struct.nat64lsn_cfg* %0, %struct.nat64lsn_state* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nat64lsn_cfg*, align 8
  %5 = alloca %struct.nat64lsn_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.nat64lsn_cfg* %0, %struct.nat64lsn_cfg** %4, align 8
  store %struct.nat64lsn_state* %1, %struct.nat64lsn_state** %5, align 8
  %8 = load %struct.nat64lsn_state*, %struct.nat64lsn_state** %5, align 8
  %9 = getelementptr inbounds %struct.nat64lsn_state, %struct.nat64lsn_state* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @NAT64_BIT_STALE, align 4
  %12 = call i64 @ISSET32(i32 %10, i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %93

15:                                               ; preds = %2
  %16 = load %struct.nat64lsn_state*, %struct.nat64lsn_state** %5, align 8
  %17 = getelementptr inbounds %struct.nat64lsn_state, %struct.nat64lsn_state* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @NAT64_BIT_READY_IPV4, align 4
  %20 = call i64 @ISSET32(i32 %18, i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %15
  store i32 0, i32* %3, align 4
  br label %93

23:                                               ; preds = %15
  %24 = load %struct.nat64lsn_state*, %struct.nat64lsn_state** %5, align 8
  %25 = getelementptr inbounds %struct.nat64lsn_state, %struct.nat64lsn_state* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @GET_AGE(i32 %26)
  store i32 %27, i32* %6, align 4
  %28 = load %struct.nat64lsn_state*, %struct.nat64lsn_state** %5, align 8
  %29 = getelementptr inbounds %struct.nat64lsn_state, %struct.nat64lsn_state* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  switch i32 %30, label %92 [
    i32 129, label %31
    i32 128, label %76
    i32 130, label %84
  ]

31:                                               ; preds = %23
  %32 = load %struct.nat64lsn_state*, %struct.nat64lsn_state** %5, align 8
  %33 = getelementptr inbounds %struct.nat64lsn_state, %struct.nat64lsn_state* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @NAT64_BIT_TCP_FIN, align 4
  %36 = call i64 @ISSET32(i32 %34, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %31
  %39 = load %struct.nat64lsn_cfg*, %struct.nat64lsn_cfg** %4, align 8
  %40 = getelementptr inbounds %struct.nat64lsn_cfg, %struct.nat64lsn_cfg* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %7, align 4
  br label %70

42:                                               ; preds = %31
  %43 = load %struct.nat64lsn_state*, %struct.nat64lsn_state** %5, align 8
  %44 = getelementptr inbounds %struct.nat64lsn_state, %struct.nat64lsn_state* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @NAT64_BIT_TCP_ESTAB, align 4
  %47 = call i64 @ISSET32(i32 %45, i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %42
  %50 = load %struct.nat64lsn_cfg*, %struct.nat64lsn_cfg** %4, align 8
  %51 = getelementptr inbounds %struct.nat64lsn_cfg, %struct.nat64lsn_cfg* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %7, align 4
  br label %69

53:                                               ; preds = %42
  %54 = load %struct.nat64lsn_state*, %struct.nat64lsn_state** %5, align 8
  %55 = getelementptr inbounds %struct.nat64lsn_state, %struct.nat64lsn_state* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @NAT64_BIT_TCP_SYN, align 4
  %58 = call i64 @ISSET32(i32 %56, i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %53
  %61 = load %struct.nat64lsn_cfg*, %struct.nat64lsn_cfg** %4, align 8
  %62 = getelementptr inbounds %struct.nat64lsn_cfg, %struct.nat64lsn_cfg* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %7, align 4
  br label %68

64:                                               ; preds = %53
  %65 = load %struct.nat64lsn_cfg*, %struct.nat64lsn_cfg** %4, align 8
  %66 = getelementptr inbounds %struct.nat64lsn_cfg, %struct.nat64lsn_cfg* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  store i32 %67, i32* %7, align 4
  br label %68

68:                                               ; preds = %64, %60
  br label %69

69:                                               ; preds = %68, %49
  br label %70

70:                                               ; preds = %69, %38
  %71 = load i32, i32* %6, align 4
  %72 = load i32, i32* %7, align 4
  %73 = icmp sgt i32 %71, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %70
  store i32 1, i32* %3, align 4
  br label %93

75:                                               ; preds = %70
  br label %92

76:                                               ; preds = %23
  %77 = load i32, i32* %6, align 4
  %78 = load %struct.nat64lsn_cfg*, %struct.nat64lsn_cfg** %4, align 8
  %79 = getelementptr inbounds %struct.nat64lsn_cfg, %struct.nat64lsn_cfg* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 4
  %81 = icmp sgt i32 %77, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %76
  store i32 1, i32* %3, align 4
  br label %93

83:                                               ; preds = %76
  br label %92

84:                                               ; preds = %23
  %85 = load i32, i32* %6, align 4
  %86 = load %struct.nat64lsn_cfg*, %struct.nat64lsn_cfg** %4, align 8
  %87 = getelementptr inbounds %struct.nat64lsn_cfg, %struct.nat64lsn_cfg* %86, i32 0, i32 4
  %88 = load i32, i32* %87, align 4
  %89 = icmp sgt i32 %85, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %84
  store i32 1, i32* %3, align 4
  br label %93

91:                                               ; preds = %84
  br label %92

92:                                               ; preds = %23, %91, %83, %75
  store i32 0, i32* %3, align 4
  br label %93

93:                                               ; preds = %92, %90, %82, %74, %22, %14
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

declare dso_local i64 @ISSET32(i32, i32) #1

declare dso_local i32 @GET_AGE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
