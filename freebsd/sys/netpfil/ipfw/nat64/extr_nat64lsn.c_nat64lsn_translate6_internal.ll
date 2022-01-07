; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/nat64/extr_nat64lsn.c_nat64lsn_translate6_internal.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/nat64/extr_nat64lsn.c_nat64lsn_translate6_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nat64lsn_cfg = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.mbuf = type { i32 }
%struct.nat64lsn_state = type { i64, i32, i32, i32 }
%struct.pfloghdr = type { i32 }

@NAT64_LOG = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i32 0, align 4
@NAT64SKIP = common dso_local global i32 0, align 4
@NAT64RETURN = common dso_local global i32 0, align 4
@IP_FW_DENY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nat64lsn_cfg*, %struct.mbuf**, %struct.nat64lsn_state*, i32)* @nat64lsn_translate6_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nat64lsn_translate6_internal(%struct.nat64lsn_cfg* %0, %struct.mbuf** %1, %struct.nat64lsn_state* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nat64lsn_cfg*, align 8
  %7 = alloca %struct.mbuf**, align 8
  %8 = alloca %struct.nat64lsn_state*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.pfloghdr, align 4
  %11 = alloca %struct.pfloghdr*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.nat64lsn_cfg* %0, %struct.nat64lsn_cfg** %6, align 8
  store %struct.mbuf** %1, %struct.mbuf*** %7, align 8
  store %struct.nat64lsn_state* %2, %struct.nat64lsn_state** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load i64, i64* %13, align 8
  %15 = call i32 @SET_AGE(i64 %14)
  %16 = load %struct.nat64lsn_state*, %struct.nat64lsn_state** %8, align 8
  %17 = getelementptr inbounds %struct.nat64lsn_state, %struct.nat64lsn_state* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* %13, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %4
  %22 = load i64, i64* %13, align 8
  %23 = load %struct.nat64lsn_state*, %struct.nat64lsn_state** %8, align 8
  %24 = getelementptr inbounds %struct.nat64lsn_state, %struct.nat64lsn_state* %23, i32 0, i32 0
  store i64 %22, i64* %24, align 8
  br label %25

25:                                               ; preds = %21, %4
  %26 = load %struct.nat64lsn_state*, %struct.nat64lsn_state** %8, align 8
  %27 = getelementptr inbounds %struct.nat64lsn_state, %struct.nat64lsn_state* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* %9, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %25
  %33 = load i32, i32* %9, align 4
  %34 = load %struct.nat64lsn_state*, %struct.nat64lsn_state** %8, align 8
  %35 = getelementptr inbounds %struct.nat64lsn_state, %struct.nat64lsn_state* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = or i32 %36, %33
  store i32 %37, i32* %35, align 8
  br label %38

38:                                               ; preds = %32, %25
  %39 = load %struct.nat64lsn_cfg*, %struct.nat64lsn_cfg** %6, align 8
  %40 = getelementptr inbounds %struct.nat64lsn_cfg, %struct.nat64lsn_cfg* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @NAT64_LOG, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %38
  store %struct.pfloghdr* %10, %struct.pfloghdr** %11, align 8
  %47 = load %struct.pfloghdr*, %struct.pfloghdr** %11, align 8
  %48 = load %struct.mbuf**, %struct.mbuf*** %7, align 8
  %49 = load %struct.mbuf*, %struct.mbuf** %48, align 8
  %50 = load i32, i32* @AF_INET6, align 4
  %51 = load %struct.nat64lsn_state*, %struct.nat64lsn_state** %8, align 8
  %52 = call i32 @nat64lsn_log(%struct.pfloghdr* %47, %struct.mbuf* %49, i32 %50, %struct.nat64lsn_state* %51)
  br label %54

53:                                               ; preds = %38
  store %struct.pfloghdr* null, %struct.pfloghdr** %11, align 8
  br label %54

54:                                               ; preds = %53, %46
  %55 = load %struct.mbuf**, %struct.mbuf*** %7, align 8
  %56 = load %struct.mbuf*, %struct.mbuf** %55, align 8
  %57 = load %struct.nat64lsn_state*, %struct.nat64lsn_state** %8, align 8
  %58 = getelementptr inbounds %struct.nat64lsn_state, %struct.nat64lsn_state* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @htonl(i32 %59)
  %61 = load %struct.nat64lsn_state*, %struct.nat64lsn_state** %8, align 8
  %62 = getelementptr inbounds %struct.nat64lsn_state, %struct.nat64lsn_state* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @htons(i32 %63)
  %65 = load %struct.nat64lsn_cfg*, %struct.nat64lsn_cfg** %6, align 8
  %66 = getelementptr inbounds %struct.nat64lsn_cfg, %struct.nat64lsn_cfg* %65, i32 0, i32 1
  %67 = load %struct.pfloghdr*, %struct.pfloghdr** %11, align 8
  %68 = call i32 @nat64_do_handle_ip6(%struct.mbuf* %56, i32 %60, i32 %64, %struct.TYPE_2__* %66, %struct.pfloghdr* %67)
  store i32 %68, i32* %12, align 4
  %69 = load i32, i32* %12, align 4
  %70 = load i32, i32* @NAT64SKIP, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %76

72:                                               ; preds = %54
  %73 = load %struct.nat64lsn_cfg*, %struct.nat64lsn_cfg** %6, align 8
  %74 = getelementptr inbounds %struct.nat64lsn_cfg, %struct.nat64lsn_cfg* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  store i32 %75, i32* %5, align 4
  br label %84

76:                                               ; preds = %54
  %77 = load i32, i32* %12, align 4
  %78 = load i32, i32* @NAT64RETURN, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %82

80:                                               ; preds = %76
  %81 = load %struct.mbuf**, %struct.mbuf*** %7, align 8
  store %struct.mbuf* null, %struct.mbuf** %81, align 8
  br label %82

82:                                               ; preds = %80, %76
  %83 = load i32, i32* @IP_FW_DENY, align 4
  store i32 %83, i32* %5, align 4
  br label %84

84:                                               ; preds = %82, %72
  %85 = load i32, i32* %5, align 4
  ret i32 %85
}

declare dso_local i32 @SET_AGE(i64) #1

declare dso_local i32 @nat64lsn_log(%struct.pfloghdr*, %struct.mbuf*, i32, %struct.nat64lsn_state*) #1

declare dso_local i32 @nat64_do_handle_ip6(%struct.mbuf*, i32, i32, %struct.TYPE_2__*, %struct.pfloghdr*) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @htons(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
