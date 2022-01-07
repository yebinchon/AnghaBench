; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/nat64/extr_nat64clat.c_ipfw_nat64clat.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/nat64/extr_nat64clat.c_ipfw_nat64clat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_fw_chain = type { i32 }
%struct.ip_fw_args = type { i32*, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i64 }
%struct.TYPE_6__ = type { i64, i64 }
%struct.nat64clat_cfg = type { i32 }

@O_EXTERNAL_ACTION = common dso_local global i64 0, align 8
@V_nat64clat_eid = common dso_local global i64 0, align 8
@O_EXTERNAL_INSTANCE = common dso_local global i64 0, align 8
@NAT64SKIP = common dso_local global i32 0, align 4
@IPPROTO_ICMPV6 = common dso_local global i64 0, align 8
@NAT64MFREE = common dso_local global i32 0, align 4
@IP_FW_NAT64 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipfw_nat64clat(%struct.ip_fw_chain* %0, %struct.ip_fw_args* %1, %struct.TYPE_6__* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ip_fw_chain*, align 8
  %7 = alloca %struct.ip_fw_args*, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca %struct.nat64clat_cfg*, align 8
  %12 = alloca i32, align 4
  store %struct.ip_fw_chain* %0, %struct.ip_fw_chain** %6, align 8
  store %struct.ip_fw_args* %1, %struct.ip_fw_args** %7, align 8
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %8, align 8
  store i32* %3, i32** %9, align 8
  %13 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %6, align 8
  %14 = call i32 @IPFW_RLOCK_ASSERT(%struct.ip_fw_chain* %13)
  %15 = load i32*, i32** %9, align 8
  store i32 0, i32* %15, align 4
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i64 1
  store %struct.TYPE_6__* %17, %struct.TYPE_6__** %10, align 8
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @O_EXTERNAL_ACTION, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %40, label %23

23:                                               ; preds = %4
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @V_nat64clat_eid, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %40, label %29

29:                                               ; preds = %23
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @O_EXTERNAL_INSTANCE, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %40, label %35

35:                                               ; preds = %29
  %36 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %6, align 8
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %38 = call %struct.nat64clat_cfg* @NAT64_LOOKUP(%struct.ip_fw_chain* %36, %struct.TYPE_6__* %37)
  store %struct.nat64clat_cfg* %38, %struct.nat64clat_cfg** %11, align 8
  %39 = icmp eq %struct.nat64clat_cfg* %38, null
  br i1 %39, label %40, label %41

40:                                               ; preds = %35, %29, %23, %4
  store i32 0, i32* %5, align 4
  br label %99

41:                                               ; preds = %35
  %42 = load %struct.ip_fw_args*, %struct.ip_fw_args** %7, align 8
  %43 = getelementptr inbounds %struct.ip_fw_args, %struct.ip_fw_args* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  switch i32 %45, label %60 [
    i32 4, label %46
    i32 6, label %53
  ]

46:                                               ; preds = %41
  %47 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %6, align 8
  %48 = load %struct.nat64clat_cfg*, %struct.nat64clat_cfg** %11, align 8
  %49 = load %struct.ip_fw_args*, %struct.ip_fw_args** %7, align 8
  %50 = getelementptr inbounds %struct.ip_fw_args, %struct.ip_fw_args* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = call i32 @nat64clat_handle_ip4(%struct.ip_fw_chain* %47, %struct.nat64clat_cfg* %48, i32* %51)
  store i32 %52, i32* %12, align 4
  br label %61

53:                                               ; preds = %41
  %54 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %6, align 8
  %55 = load %struct.nat64clat_cfg*, %struct.nat64clat_cfg** %11, align 8
  %56 = load %struct.ip_fw_args*, %struct.ip_fw_args** %7, align 8
  %57 = getelementptr inbounds %struct.ip_fw_args, %struct.ip_fw_args* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = call i32 @nat64clat_handle_ip6(%struct.ip_fw_chain* %54, %struct.nat64clat_cfg* %55, i32* %58)
  store i32 %59, i32* %12, align 4
  br label %61

60:                                               ; preds = %41
  store i32 0, i32* %5, align 4
  br label %99

61:                                               ; preds = %53, %46
  %62 = load i32, i32* %12, align 4
  %63 = load i32, i32* @NAT64SKIP, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %80

65:                                               ; preds = %61
  %66 = load %struct.ip_fw_args*, %struct.ip_fw_args** %7, align 8
  %67 = getelementptr inbounds %struct.ip_fw_args, %struct.ip_fw_args* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @IPPROTO_ICMPV6, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %65
  store i32 0, i32* %5, align 4
  br label %99

73:                                               ; preds = %65
  %74 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %6, align 8
  %75 = load %struct.nat64clat_cfg*, %struct.nat64clat_cfg** %11, align 8
  %76 = load %struct.ip_fw_args*, %struct.ip_fw_args** %7, align 8
  %77 = getelementptr inbounds %struct.ip_fw_args, %struct.ip_fw_args* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = call i32 @nat64clat_handle_icmp6(%struct.ip_fw_chain* %74, %struct.nat64clat_cfg* %75, i32* %78)
  store i32 %79, i32* %12, align 4
  br label %80

80:                                               ; preds = %73, %61
  %81 = load i32, i32* %12, align 4
  %82 = load i32, i32* @NAT64SKIP, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %80
  store i32 0, i32* %5, align 4
  br label %99

85:                                               ; preds = %80
  %86 = load i32*, i32** %9, align 8
  store i32 1, i32* %86, align 4
  %87 = load i32, i32* %12, align 4
  %88 = load i32, i32* @NAT64MFREE, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %95

90:                                               ; preds = %85
  %91 = load %struct.ip_fw_args*, %struct.ip_fw_args** %7, align 8
  %92 = getelementptr inbounds %struct.ip_fw_args, %struct.ip_fw_args* %91, i32 0, i32 0
  %93 = load i32*, i32** %92, align 8
  %94 = call i32 @m_freem(i32* %93)
  br label %95

95:                                               ; preds = %90, %85
  %96 = load %struct.ip_fw_args*, %struct.ip_fw_args** %7, align 8
  %97 = getelementptr inbounds %struct.ip_fw_args, %struct.ip_fw_args* %96, i32 0, i32 0
  store i32* null, i32** %97, align 8
  %98 = load i32, i32* @IP_FW_NAT64, align 4
  store i32 %98, i32* %5, align 4
  br label %99

99:                                               ; preds = %95, %84, %72, %60, %40
  %100 = load i32, i32* %5, align 4
  ret i32 %100
}

declare dso_local i32 @IPFW_RLOCK_ASSERT(%struct.ip_fw_chain*) #1

declare dso_local %struct.nat64clat_cfg* @NAT64_LOOKUP(%struct.ip_fw_chain*, %struct.TYPE_6__*) #1

declare dso_local i32 @nat64clat_handle_ip4(%struct.ip_fw_chain*, %struct.nat64clat_cfg*, i32*) #1

declare dso_local i32 @nat64clat_handle_ip6(%struct.ip_fw_chain*, %struct.nat64clat_cfg*, i32*) #1

declare dso_local i32 @nat64clat_handle_icmp6(%struct.ip_fw_chain*, %struct.nat64clat_cfg*, i32*) #1

declare dso_local i32 @m_freem(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
