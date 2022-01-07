; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/nat64/extr_nat64stl.c_ipfw_nat64stl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/nat64/extr_nat64stl.c_ipfw_nat64stl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_fw_chain = type { i32 }
%struct.ip_fw_args = type { i32*, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i64, i32, i32 }
%struct.TYPE_6__ = type { i64, i64 }
%struct.nat64stl_cfg = type { i32, i32 }

@O_EXTERNAL_ACTION = common dso_local global i64 0, align 8
@V_nat64stl_eid = common dso_local global i64 0, align 8
@O_EXTERNAL_INSTANCE = common dso_local global i64 0, align 8
@IPPROTO_ICMPV6 = common dso_local global i64 0, align 8
@NAT64SKIP = common dso_local global i32 0, align 4
@NAT64MFREE = common dso_local global i32 0, align 4
@IP_FW_NAT64 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipfw_nat64stl(%struct.ip_fw_chain* %0, %struct.ip_fw_args* %1, %struct.TYPE_6__* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ip_fw_chain*, align 8
  %7 = alloca %struct.ip_fw_args*, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca %struct.nat64stl_cfg*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.ip_fw_chain* %0, %struct.ip_fw_chain** %6, align 8
  store %struct.ip_fw_args* %1, %struct.ip_fw_args** %7, align 8
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %8, align 8
  store i32* %3, i32** %9, align 8
  %15 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %6, align 8
  %16 = call i32 @IPFW_RLOCK_ASSERT(%struct.ip_fw_chain* %15)
  %17 = load i32*, i32** %9, align 8
  store i32 0, i32* %17, align 4
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i64 1
  store %struct.TYPE_6__* %19, %struct.TYPE_6__** %10, align 8
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @O_EXTERNAL_ACTION, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %42, label %25

25:                                               ; preds = %4
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @V_nat64stl_eid, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %42, label %31

31:                                               ; preds = %25
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @O_EXTERNAL_INSTANCE, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %42, label %37

37:                                               ; preds = %31
  %38 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %6, align 8
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %40 = call %struct.nat64stl_cfg* @NAT64_LOOKUP(%struct.ip_fw_chain* %38, %struct.TYPE_6__* %39)
  store %struct.nat64stl_cfg* %40, %struct.nat64stl_cfg** %11, align 8
  %41 = icmp eq %struct.nat64stl_cfg* %40, null
  br i1 %41, label %42, label %43

42:                                               ; preds = %37, %31, %25, %4
  store i32 0, i32* %5, align 4
  br label %129

43:                                               ; preds = %37
  %44 = load %struct.ip_fw_args*, %struct.ip_fw_args** %7, align 8
  %45 = getelementptr inbounds %struct.ip_fw_args, %struct.ip_fw_args* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  switch i32 %47, label %68 [
    i32 4, label %48
    i32 6, label %59
  ]

48:                                               ; preds = %43
  %49 = load %struct.ip_fw_args*, %struct.ip_fw_args** %7, align 8
  %50 = getelementptr inbounds %struct.ip_fw_args, %struct.ip_fw_args* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @htonl(i32 %52)
  store i32 %53, i32* %12, align 4
  %54 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %6, align 8
  %55 = load %struct.nat64stl_cfg*, %struct.nat64stl_cfg** %11, align 8
  %56 = getelementptr inbounds %struct.nat64stl_cfg, %struct.nat64stl_cfg* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @ipfw_lookup_table(%struct.ip_fw_chain* %54, i32 %57, i32 4, i32* %12, i32* %13)
  store i32 %58, i32* %14, align 4
  br label %69

59:                                               ; preds = %43
  %60 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %6, align 8
  %61 = load %struct.nat64stl_cfg*, %struct.nat64stl_cfg** %11, align 8
  %62 = getelementptr inbounds %struct.nat64stl_cfg, %struct.nat64stl_cfg* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.ip_fw_args*, %struct.ip_fw_args** %7, align 8
  %65 = getelementptr inbounds %struct.ip_fw_args, %struct.ip_fw_args* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 2
  %67 = call i32 @ipfw_lookup_table(%struct.ip_fw_chain* %60, i32 %63, i32 4, i32* %66, i32* %13)
  store i32 %67, i32* %14, align 4
  br label %69

68:                                               ; preds = %43
  store i32 0, i32* %5, align 4
  br label %129

69:                                               ; preds = %59, %48
  %70 = load i32, i32* %14, align 4
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %87

72:                                               ; preds = %69
  %73 = load %struct.ip_fw_args*, %struct.ip_fw_args** %7, align 8
  %74 = getelementptr inbounds %struct.ip_fw_args, %struct.ip_fw_args* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @IPPROTO_ICMPV6, align 8
  %78 = icmp ne i64 %76, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %72
  store i32 0, i32* %5, align 4
  br label %129

80:                                               ; preds = %72
  %81 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %6, align 8
  %82 = load %struct.nat64stl_cfg*, %struct.nat64stl_cfg** %11, align 8
  %83 = load %struct.ip_fw_args*, %struct.ip_fw_args** %7, align 8
  %84 = getelementptr inbounds %struct.ip_fw_args, %struct.ip_fw_args* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = call i32 @nat64stl_handle_icmp6(%struct.ip_fw_chain* %81, %struct.nat64stl_cfg* %82, i32* %85)
  store i32 %86, i32* %14, align 4
  br label %110

87:                                               ; preds = %69
  %88 = load %struct.ip_fw_args*, %struct.ip_fw_args** %7, align 8
  %89 = getelementptr inbounds %struct.ip_fw_args, %struct.ip_fw_args* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = icmp eq i32 %91, 4
  br i1 %92, label %93, label %101

93:                                               ; preds = %87
  %94 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %6, align 8
  %95 = load %struct.nat64stl_cfg*, %struct.nat64stl_cfg** %11, align 8
  %96 = load %struct.ip_fw_args*, %struct.ip_fw_args** %7, align 8
  %97 = getelementptr inbounds %struct.ip_fw_args, %struct.ip_fw_args* %96, i32 0, i32 0
  %98 = load i32*, i32** %97, align 8
  %99 = load i32, i32* %13, align 4
  %100 = call i32 @nat64stl_handle_ip4(%struct.ip_fw_chain* %94, %struct.nat64stl_cfg* %95, i32* %98, i32 %99)
  store i32 %100, i32* %14, align 4
  br label %109

101:                                              ; preds = %87
  %102 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %6, align 8
  %103 = load %struct.nat64stl_cfg*, %struct.nat64stl_cfg** %11, align 8
  %104 = load %struct.ip_fw_args*, %struct.ip_fw_args** %7, align 8
  %105 = getelementptr inbounds %struct.ip_fw_args, %struct.ip_fw_args* %104, i32 0, i32 0
  %106 = load i32*, i32** %105, align 8
  %107 = load i32, i32* %13, align 4
  %108 = call i32 @nat64stl_handle_ip6(%struct.ip_fw_chain* %102, %struct.nat64stl_cfg* %103, i32* %106, i32 %107)
  store i32 %108, i32* %14, align 4
  br label %109

109:                                              ; preds = %101, %93
  br label %110

110:                                              ; preds = %109, %80
  %111 = load i32, i32* %14, align 4
  %112 = load i32, i32* @NAT64SKIP, align 4
  %113 = icmp eq i32 %111, %112
  br i1 %113, label %114, label %115

114:                                              ; preds = %110
  store i32 0, i32* %5, align 4
  br label %129

115:                                              ; preds = %110
  %116 = load i32*, i32** %9, align 8
  store i32 1, i32* %116, align 4
  %117 = load i32, i32* %14, align 4
  %118 = load i32, i32* @NAT64MFREE, align 4
  %119 = icmp eq i32 %117, %118
  br i1 %119, label %120, label %125

120:                                              ; preds = %115
  %121 = load %struct.ip_fw_args*, %struct.ip_fw_args** %7, align 8
  %122 = getelementptr inbounds %struct.ip_fw_args, %struct.ip_fw_args* %121, i32 0, i32 0
  %123 = load i32*, i32** %122, align 8
  %124 = call i32 @m_freem(i32* %123)
  br label %125

125:                                              ; preds = %120, %115
  %126 = load %struct.ip_fw_args*, %struct.ip_fw_args** %7, align 8
  %127 = getelementptr inbounds %struct.ip_fw_args, %struct.ip_fw_args* %126, i32 0, i32 0
  store i32* null, i32** %127, align 8
  %128 = load i32, i32* @IP_FW_NAT64, align 4
  store i32 %128, i32* %5, align 4
  br label %129

129:                                              ; preds = %125, %114, %79, %68, %42
  %130 = load i32, i32* %5, align 4
  ret i32 %130
}

declare dso_local i32 @IPFW_RLOCK_ASSERT(%struct.ip_fw_chain*) #1

declare dso_local %struct.nat64stl_cfg* @NAT64_LOOKUP(%struct.ip_fw_chain*, %struct.TYPE_6__*) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @ipfw_lookup_table(%struct.ip_fw_chain*, i32, i32, i32*, i32*) #1

declare dso_local i32 @nat64stl_handle_icmp6(%struct.ip_fw_chain*, %struct.nat64stl_cfg*, i32*) #1

declare dso_local i32 @nat64stl_handle_ip4(%struct.ip_fw_chain*, %struct.nat64stl_cfg*, i32*, i32) #1

declare dso_local i32 @nat64stl_handle_ip6(%struct.ip_fw_chain*, %struct.nat64stl_cfg*, i32*, i32) #1

declare dso_local i32 @m_freem(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
