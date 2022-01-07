; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/nat64/extr_nat64lsn.c_ipfw_nat64lsn.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/nat64/extr_nat64lsn.c_ipfw_nat64lsn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_fw_chain = type { i32 }
%struct.ip_fw_args = type { i32*, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i64, i64 }
%struct.nat64lsn_cfg = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32 }

@O_EXTERNAL_ACTION = common dso_local global i64 0, align 8
@V_nat64lsn_eid = common dso_local global i64 0, align 8
@O_EXTERNAL_INSTANCE = common dso_local global i64 0, align 8
@IP_FW_DENY = common dso_local global i32 0, align 4
@NAT64LSN_ANYPREFIX = common dso_local global i32 0, align 4
@IP_FW_PASS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipfw_nat64lsn(%struct.ip_fw_chain* %0, %struct.ip_fw_args* %1, %struct.TYPE_8__* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ip_fw_chain*, align 8
  %7 = alloca %struct.ip_fw_args*, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.nat64lsn_cfg*, align 8
  %11 = alloca %struct.TYPE_8__*, align 8
  %12 = alloca i32, align 4
  store %struct.ip_fw_chain* %0, %struct.ip_fw_chain** %6, align 8
  store %struct.ip_fw_args* %1, %struct.ip_fw_args** %7, align 8
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %8, align 8
  store i32* %3, i32** %9, align 8
  %13 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %6, align 8
  %14 = call i32 @IPFW_RLOCK_ASSERT(%struct.ip_fw_chain* %13)
  %15 = load i32*, i32** %9, align 8
  store i32 0, i32* %15, align 4
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i64 1
  store %struct.TYPE_8__* %17, %struct.TYPE_8__** %11, align 8
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @O_EXTERNAL_ACTION, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %40, label %23

23:                                               ; preds = %4
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @V_nat64lsn_eid, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %40, label %29

29:                                               ; preds = %23
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @O_EXTERNAL_INSTANCE, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %40, label %35

35:                                               ; preds = %29
  %36 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %6, align 8
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %38 = call %struct.nat64lsn_cfg* @NAT64_LOOKUP(%struct.ip_fw_chain* %36, %struct.TYPE_8__* %37)
  store %struct.nat64lsn_cfg* %38, %struct.nat64lsn_cfg** %10, align 8
  %39 = icmp eq %struct.nat64lsn_cfg* %38, null
  br i1 %39, label %40, label %42

40:                                               ; preds = %35, %29, %23, %4
  %41 = load i32, i32* @IP_FW_DENY, align 4
  store i32 %41, i32* %5, align 4
  br label %110

42:                                               ; preds = %35
  %43 = load i32*, i32** %9, align 8
  store i32 1, i32* %43, align 4
  %44 = load %struct.ip_fw_args*, %struct.ip_fw_args** %7, align 8
  %45 = getelementptr inbounds %struct.ip_fw_args, %struct.ip_fw_args* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  switch i32 %47, label %88 [
    i32 4, label %48
    i32 6, label %55
  ]

48:                                               ; preds = %42
  %49 = load %struct.nat64lsn_cfg*, %struct.nat64lsn_cfg** %10, align 8
  %50 = load %struct.ip_fw_args*, %struct.ip_fw_args** %7, align 8
  %51 = getelementptr inbounds %struct.ip_fw_args, %struct.ip_fw_args* %50, i32 0, i32 1
  %52 = load %struct.ip_fw_args*, %struct.ip_fw_args** %7, align 8
  %53 = getelementptr inbounds %struct.ip_fw_args, %struct.ip_fw_args* %52, i32 0, i32 0
  %54 = call i32 @nat64lsn_translate4(%struct.nat64lsn_cfg* %49, %struct.TYPE_9__* %51, i32** %53)
  store i32 %54, i32* %12, align 4
  br label %92

55:                                               ; preds = %42
  %56 = load %struct.nat64lsn_cfg*, %struct.nat64lsn_cfg** %10, align 8
  %57 = getelementptr inbounds %struct.nat64lsn_cfg, %struct.nat64lsn_cfg* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @NAT64LSN_ANYPREFIX, align 4
  %61 = and i32 %59, %60
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %81

63:                                               ; preds = %55
  %64 = load %struct.ip_fw_args*, %struct.ip_fw_args** %7, align 8
  %65 = getelementptr inbounds %struct.ip_fw_args, %struct.ip_fw_args* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 1
  %67 = load %struct.nat64lsn_cfg*, %struct.nat64lsn_cfg** %10, align 8
  %68 = getelementptr inbounds %struct.nat64lsn_cfg, %struct.nat64lsn_cfg* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 2
  %70 = load %struct.nat64lsn_cfg*, %struct.nat64lsn_cfg** %10, align 8
  %71 = getelementptr inbounds %struct.nat64lsn_cfg, %struct.nat64lsn_cfg* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = sdiv i32 %73, 8
  %75 = call i32 @memcmp(i32* %66, i32* %69, i32 %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %63
  %78 = load %struct.nat64lsn_cfg*, %struct.nat64lsn_cfg** %10, align 8
  %79 = getelementptr inbounds %struct.nat64lsn_cfg, %struct.nat64lsn_cfg* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  store i32 %80, i32* %12, align 4
  br label %92

81:                                               ; preds = %63, %55
  %82 = load %struct.nat64lsn_cfg*, %struct.nat64lsn_cfg** %10, align 8
  %83 = load %struct.ip_fw_args*, %struct.ip_fw_args** %7, align 8
  %84 = getelementptr inbounds %struct.ip_fw_args, %struct.ip_fw_args* %83, i32 0, i32 1
  %85 = load %struct.ip_fw_args*, %struct.ip_fw_args** %7, align 8
  %86 = getelementptr inbounds %struct.ip_fw_args, %struct.ip_fw_args* %85, i32 0, i32 0
  %87 = call i32 @nat64lsn_translate6(%struct.nat64lsn_cfg* %82, %struct.TYPE_9__* %84, i32** %86)
  store i32 %87, i32* %12, align 4
  br label %92

88:                                               ; preds = %42
  %89 = load %struct.nat64lsn_cfg*, %struct.nat64lsn_cfg** %10, align 8
  %90 = getelementptr inbounds %struct.nat64lsn_cfg, %struct.nat64lsn_cfg* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  store i32 %91, i32* %12, align 4
  br label %92

92:                                               ; preds = %88, %81, %77, %48
  %93 = load i32, i32* %12, align 4
  %94 = load i32, i32* @IP_FW_PASS, align 4
  %95 = icmp ne i32 %93, %94
  br i1 %95, label %96, label %108

96:                                               ; preds = %92
  %97 = load %struct.ip_fw_args*, %struct.ip_fw_args** %7, align 8
  %98 = getelementptr inbounds %struct.ip_fw_args, %struct.ip_fw_args* %97, i32 0, i32 0
  %99 = load i32*, i32** %98, align 8
  %100 = icmp ne i32* %99, null
  br i1 %100, label %101, label %108

101:                                              ; preds = %96
  %102 = load %struct.ip_fw_args*, %struct.ip_fw_args** %7, align 8
  %103 = getelementptr inbounds %struct.ip_fw_args, %struct.ip_fw_args* %102, i32 0, i32 0
  %104 = load i32*, i32** %103, align 8
  %105 = call i32 @m_freem(i32* %104)
  %106 = load %struct.ip_fw_args*, %struct.ip_fw_args** %7, align 8
  %107 = getelementptr inbounds %struct.ip_fw_args, %struct.ip_fw_args* %106, i32 0, i32 0
  store i32* null, i32** %107, align 8
  br label %108

108:                                              ; preds = %101, %96, %92
  %109 = load i32, i32* %12, align 4
  store i32 %109, i32* %5, align 4
  br label %110

110:                                              ; preds = %108, %40
  %111 = load i32, i32* %5, align 4
  ret i32 %111
}

declare dso_local i32 @IPFW_RLOCK_ASSERT(%struct.ip_fw_chain*) #1

declare dso_local %struct.nat64lsn_cfg* @NAT64_LOOKUP(%struct.ip_fw_chain*, %struct.TYPE_8__*) #1

declare dso_local i32 @nat64lsn_translate4(%struct.nat64lsn_cfg*, %struct.TYPE_9__*, i32**) #1

declare dso_local i32 @memcmp(i32*, i32*, i32) #1

declare dso_local i32 @nat64lsn_translate6(%struct.nat64lsn_cfg*, %struct.TYPE_9__*, i32**) #1

declare dso_local i32 @m_freem(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
