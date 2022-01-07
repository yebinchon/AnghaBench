; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_i40e_dcb.c_i40e_add_ieee_app_pri_tlv.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_i40e_dcb.c_i40e_add_ieee_app_pri_tlv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_lldp_org_tlv = type { i64*, i32, i32 }
%struct.i40e_dcbx_config = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32 }

@I40E_IEEE_8021QAZ_OUI = common dso_local global i32 0, align 4
@I40E_LLDP_TLV_OUI_SHIFT = common dso_local global i32 0, align 4
@I40E_IEEE_SUBTYPE_APP_PRI = common dso_local global i32 0, align 4
@I40E_IEEE_APP_PRIO_SHIFT = common dso_local global i64 0, align 8
@I40E_DCBX_MAX_APPS = common dso_local global i64 0, align 8
@I40E_TLV_TYPE_ORG = common dso_local global i64 0, align 8
@I40E_LLDP_TLV_TYPE_SHIFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i40e_lldp_org_tlv*, %struct.i40e_dcbx_config*)* @i40e_add_ieee_app_pri_tlv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i40e_add_ieee_app_pri_tlv(%struct.i40e_lldp_org_tlv* %0, %struct.i40e_dcbx_config* %1) #0 {
  %3 = alloca %struct.i40e_lldp_org_tlv*, align 8
  %4 = alloca %struct.i40e_dcbx_config*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64, align 8
  store %struct.i40e_lldp_org_tlv* %0, %struct.i40e_lldp_org_tlv** %3, align 8
  store %struct.i40e_dcbx_config* %1, %struct.i40e_dcbx_config** %4, align 8
  store i64 0, i64* %7, align 8
  store i64 0, i64* %10, align 8
  %13 = load %struct.i40e_lldp_org_tlv*, %struct.i40e_lldp_org_tlv** %3, align 8
  %14 = getelementptr inbounds %struct.i40e_lldp_org_tlv, %struct.i40e_lldp_org_tlv* %13, i32 0, i32 0
  %15 = load i64*, i64** %14, align 8
  store i64* %15, i64** %11, align 8
  %16 = load %struct.i40e_dcbx_config*, %struct.i40e_dcbx_config** %4, align 8
  %17 = getelementptr inbounds %struct.i40e_dcbx_config, %struct.i40e_dcbx_config* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  br label %117

21:                                               ; preds = %2
  %22 = load i32, i32* @I40E_IEEE_8021QAZ_OUI, align 4
  %23 = load i32, i32* @I40E_LLDP_TLV_OUI_SHIFT, align 4
  %24 = shl i32 %22, %23
  %25 = load i32, i32* @I40E_IEEE_SUBTYPE_APP_PRI, align 4
  %26 = or i32 %24, %25
  %27 = sext i32 %26 to i64
  store i64 %27, i64* %12, align 8
  %28 = load i64, i64* %12, align 8
  %29 = call i32 @I40E_HTONL(i64 %28)
  %30 = load %struct.i40e_lldp_org_tlv*, %struct.i40e_lldp_org_tlv** %3, align 8
  %31 = getelementptr inbounds %struct.i40e_lldp_org_tlv, %struct.i40e_lldp_org_tlv* %30, i32 0, i32 2
  store i32 %29, i32* %31, align 4
  %32 = load i64, i64* %7, align 8
  %33 = add i64 %32, 1
  store i64 %33, i64* %7, align 8
  br label %34

34:                                               ; preds = %102, %21
  %35 = load i64, i64* %10, align 8
  %36 = load %struct.i40e_dcbx_config*, %struct.i40e_dcbx_config** %4, align 8
  %37 = getelementptr inbounds %struct.i40e_dcbx_config, %struct.i40e_dcbx_config* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ult i64 %35, %38
  br i1 %39, label %40, label %103

40:                                               ; preds = %34
  %41 = load %struct.i40e_dcbx_config*, %struct.i40e_dcbx_config** %4, align 8
  %42 = getelementptr inbounds %struct.i40e_dcbx_config, %struct.i40e_dcbx_config* %41, i32 0, i32 1
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = load i64, i64* %10, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = and i32 %47, 7
  %49 = sext i32 %48 to i64
  store i64 %49, i64* %8, align 8
  %50 = load %struct.i40e_dcbx_config*, %struct.i40e_dcbx_config** %4, align 8
  %51 = getelementptr inbounds %struct.i40e_dcbx_config, %struct.i40e_dcbx_config* %50, i32 0, i32 1
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = load i64, i64* %10, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = and i32 %56, 7
  %58 = sext i32 %57 to i64
  store i64 %58, i64* %9, align 8
  %59 = load i64, i64* %8, align 8
  %60 = load i64, i64* @I40E_IEEE_APP_PRIO_SHIFT, align 8
  %61 = shl i64 %59, %60
  %62 = load i64, i64* %9, align 8
  %63 = or i64 %61, %62
  %64 = load i64*, i64** %11, align 8
  %65 = load i64, i64* %7, align 8
  %66 = getelementptr inbounds i64, i64* %64, i64 %65
  store i64 %63, i64* %66, align 8
  %67 = load %struct.i40e_dcbx_config*, %struct.i40e_dcbx_config** %4, align 8
  %68 = getelementptr inbounds %struct.i40e_dcbx_config, %struct.i40e_dcbx_config* %67, i32 0, i32 1
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = load i64, i64* %10, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = ashr i32 %73, 8
  %75 = and i32 %74, 255
  %76 = sext i32 %75 to i64
  %77 = load i64*, i64** %11, align 8
  %78 = load i64, i64* %7, align 8
  %79 = add i64 %78, 1
  %80 = getelementptr inbounds i64, i64* %77, i64 %79
  store i64 %76, i64* %80, align 8
  %81 = load %struct.i40e_dcbx_config*, %struct.i40e_dcbx_config** %4, align 8
  %82 = getelementptr inbounds %struct.i40e_dcbx_config, %struct.i40e_dcbx_config* %81, i32 0, i32 1
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = load i64, i64* %10, align 8
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = and i32 %87, 255
  %89 = sext i32 %88 to i64
  %90 = load i64*, i64** %11, align 8
  %91 = load i64, i64* %7, align 8
  %92 = add i64 %91, 2
  %93 = getelementptr inbounds i64, i64* %90, i64 %92
  store i64 %89, i64* %93, align 8
  %94 = load i64, i64* %7, align 8
  %95 = add i64 %94, 3
  store i64 %95, i64* %7, align 8
  %96 = load i64, i64* %10, align 8
  %97 = add i64 %96, 1
  store i64 %97, i64* %10, align 8
  %98 = load i64, i64* %10, align 8
  %99 = load i64, i64* @I40E_DCBX_MAX_APPS, align 8
  %100 = icmp uge i64 %98, %99
  br i1 %100, label %101, label %102

101:                                              ; preds = %40
  br label %103

102:                                              ; preds = %40
  br label %34

103:                                              ; preds = %101, %34
  %104 = load i64, i64* %10, align 8
  %105 = mul i64 %104, 3
  %106 = add i64 5, %105
  store i64 %106, i64* %6, align 8
  %107 = load i64, i64* @I40E_TLV_TYPE_ORG, align 8
  %108 = load i64, i64* @I40E_LLDP_TLV_TYPE_SHIFT, align 8
  %109 = shl i64 %107, %108
  %110 = load i64, i64* %6, align 8
  %111 = and i64 %110, 511
  %112 = or i64 %109, %111
  store i64 %112, i64* %5, align 8
  %113 = load i64, i64* %5, align 8
  %114 = call i32 @I40E_HTONS(i64 %113)
  %115 = load %struct.i40e_lldp_org_tlv*, %struct.i40e_lldp_org_tlv** %3, align 8
  %116 = getelementptr inbounds %struct.i40e_lldp_org_tlv, %struct.i40e_lldp_org_tlv* %115, i32 0, i32 1
  store i32 %114, i32* %116, align 8
  br label %117

117:                                              ; preds = %103, %20
  ret void
}

declare dso_local i32 @I40E_HTONL(i64) #1

declare dso_local i32 @I40E_HTONS(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
