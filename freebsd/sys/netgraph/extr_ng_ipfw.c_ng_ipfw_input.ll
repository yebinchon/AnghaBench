; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_ipfw.c_ng_ipfw_input.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_ipfw.c_ng_ipfw_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { i32 }
%struct.ip_fw_args = type { i32, %struct.ipfw_rule_ref }
%struct.ipfw_rule_ref = type { i32 }
%struct.m_tag = type { i32 }

@fw_node = common dso_local global i32* null, align 8
@ESRCH = common dso_local global i32 0, align 4
@MTAG_IPFW_RULE = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IPFW_ONEPASS = common dso_local global i32 0, align 4
@IPFW_ARGS_IN = common dso_local global i32 0, align 4
@IPFW_INFO_IN = common dso_local global i32 0, align 4
@IPFW_INFO_OUT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mbuf**, %struct.ip_fw_args*, i32)* @ng_ipfw_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ng_ipfw_input(%struct.mbuf** %0, %struct.ip_fw_args* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mbuf**, align 8
  %6 = alloca %struct.ip_fw_args*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mbuf*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.m_tag*, align 8
  %12 = alloca %struct.ipfw_rule_ref*, align 8
  store %struct.mbuf** %0, %struct.mbuf*** %5, align 8
  store %struct.ip_fw_args* %1, %struct.ip_fw_args** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %10, align 4
  %13 = load i32*, i32** @fw_node, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %23, label %15

15:                                               ; preds = %3
  %16 = load i32*, i32** @fw_node, align 8
  %17 = load %struct.ip_fw_args*, %struct.ip_fw_args** %6, align 8
  %18 = getelementptr inbounds %struct.ip_fw_args, %struct.ip_fw_args* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.ipfw_rule_ref, %struct.ipfw_rule_ref* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32* @ng_ipfw_findhook1(i32* %16, i32 %20)
  store i32* %21, i32** %9, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %15, %3
  %24 = load i32, i32* @ESRCH, align 4
  store i32 %24, i32* %4, align 4
  br label %103

25:                                               ; preds = %15
  %26 = load i32, i32* %7, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %76

28:                                               ; preds = %25
  %29 = load %struct.mbuf**, %struct.mbuf*** %5, align 8
  %30 = load %struct.mbuf*, %struct.mbuf** %29, align 8
  store %struct.mbuf* %30, %struct.mbuf** %8, align 8
  %31 = load %struct.mbuf**, %struct.mbuf*** %5, align 8
  store %struct.mbuf* null, %struct.mbuf** %31, align 8
  %32 = load i32, i32* @MTAG_IPFW_RULE, align 4
  %33 = load i32, i32* @M_NOWAIT, align 4
  %34 = load i32, i32* @M_ZERO, align 4
  %35 = or i32 %33, %34
  %36 = call %struct.m_tag* @m_tag_alloc(i32 %32, i32 0, i32 4, i32 %35)
  store %struct.m_tag* %36, %struct.m_tag** %11, align 8
  %37 = load %struct.m_tag*, %struct.m_tag** %11, align 8
  %38 = icmp eq %struct.m_tag* %37, null
  br i1 %38, label %39, label %43

39:                                               ; preds = %28
  %40 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %41 = call i32 @m_freem(%struct.mbuf* %40)
  %42 = load i32, i32* @ENOMEM, align 4
  store i32 %42, i32* %4, align 4
  br label %103

43:                                               ; preds = %28
  %44 = load %struct.m_tag*, %struct.m_tag** %11, align 8
  %45 = getelementptr inbounds %struct.m_tag, %struct.m_tag* %44, i64 1
  %46 = bitcast %struct.m_tag* %45 to %struct.ipfw_rule_ref*
  store %struct.ipfw_rule_ref* %46, %struct.ipfw_rule_ref** %12, align 8
  %47 = load %struct.ipfw_rule_ref*, %struct.ipfw_rule_ref** %12, align 8
  %48 = load %struct.ip_fw_args*, %struct.ip_fw_args** %6, align 8
  %49 = getelementptr inbounds %struct.ip_fw_args, %struct.ip_fw_args* %48, i32 0, i32 1
  %50 = bitcast %struct.ipfw_rule_ref* %47 to i8*
  %51 = bitcast %struct.ipfw_rule_ref* %49 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %50, i8* align 4 %51, i64 4, i1 false)
  %52 = load i32, i32* @IPFW_ONEPASS, align 4
  %53 = load %struct.ipfw_rule_ref*, %struct.ipfw_rule_ref** %12, align 8
  %54 = getelementptr inbounds %struct.ipfw_rule_ref, %struct.ipfw_rule_ref* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = and i32 %55, %52
  store i32 %56, i32* %54, align 4
  %57 = load %struct.ip_fw_args*, %struct.ip_fw_args** %6, align 8
  %58 = getelementptr inbounds %struct.ip_fw_args, %struct.ip_fw_args* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @IPFW_ARGS_IN, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %43
  %64 = load i32, i32* @IPFW_INFO_IN, align 4
  br label %67

65:                                               ; preds = %43
  %66 = load i32, i32* @IPFW_INFO_OUT, align 4
  br label %67

67:                                               ; preds = %65, %63
  %68 = phi i32 [ %64, %63 ], [ %66, %65 ]
  %69 = load %struct.ipfw_rule_ref*, %struct.ipfw_rule_ref** %12, align 8
  %70 = getelementptr inbounds %struct.ipfw_rule_ref, %struct.ipfw_rule_ref* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = or i32 %71, %68
  store i32 %72, i32* %70, align 4
  %73 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %74 = load %struct.m_tag*, %struct.m_tag** %11, align 8
  %75 = call i32 @m_tag_prepend(%struct.mbuf* %73, %struct.m_tag* %74)
  br label %85

76:                                               ; preds = %25
  %77 = load %struct.mbuf**, %struct.mbuf*** %5, align 8
  %78 = load %struct.mbuf*, %struct.mbuf** %77, align 8
  %79 = load i32, i32* @M_NOWAIT, align 4
  %80 = call %struct.mbuf* @m_dup(%struct.mbuf* %78, i32 %79)
  store %struct.mbuf* %80, %struct.mbuf** %8, align 8
  %81 = icmp eq %struct.mbuf* %80, null
  br i1 %81, label %82, label %84

82:                                               ; preds = %76
  %83 = load i32, i32* @ENOMEM, align 4
  store i32 %83, i32* %4, align 4
  br label %103

84:                                               ; preds = %76
  br label %85

85:                                               ; preds = %84, %67
  %86 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %87 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = sext i32 %88 to i64
  %90 = icmp ult i64 %89, 4
  br i1 %90, label %91, label %97

91:                                               ; preds = %85
  %92 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %93 = call %struct.mbuf* @m_pullup(%struct.mbuf* %92, i32 4)
  store %struct.mbuf* %93, %struct.mbuf** %8, align 8
  %94 = icmp eq %struct.mbuf* %93, null
  br i1 %94, label %95, label %97

95:                                               ; preds = %91
  %96 = load i32, i32* @EINVAL, align 4
  store i32 %96, i32* %4, align 4
  br label %103

97:                                               ; preds = %91, %85
  %98 = load i32, i32* %10, align 4
  %99 = load i32*, i32** %9, align 8
  %100 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %101 = call i32 @NG_SEND_DATA_ONLY(i32 %98, i32* %99, %struct.mbuf* %100)
  %102 = load i32, i32* %10, align 4
  store i32 %102, i32* %4, align 4
  br label %103

103:                                              ; preds = %97, %95, %82, %39, %23
  %104 = load i32, i32* %4, align 4
  ret i32 %104
}

declare dso_local i32* @ng_ipfw_findhook1(i32*, i32) #1

declare dso_local %struct.m_tag* @m_tag_alloc(i32, i32, i32, i32) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @m_tag_prepend(%struct.mbuf*, %struct.m_tag*) #1

declare dso_local %struct.mbuf* @m_dup(%struct.mbuf*, i32) #1

declare dso_local %struct.mbuf* @m_pullup(%struct.mbuf*, i32) #1

declare dso_local i32 @NG_SEND_DATA_ONLY(i32, i32*, %struct.mbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
