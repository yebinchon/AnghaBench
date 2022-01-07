; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_if_ethersubr.c_ether_8021q_frame.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_if_ethersubr.c_ether_8021q_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.ifnet = type { i64, i32 }
%struct.m_tag = type { i32 }

@ether_8021q_frame.pad = internal constant [8 x i8] zeroinitializer, align 1
@V_soft_pad = common dso_local global i64 0, align 8
@IFT_ETHER = common dso_local global i64 0, align 8
@ETHERMIN = common dso_local global i32 0, align 4
@ETHER_HDR_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"cannot pad short frame\00", align 1
@vlan_mtag_pcp = common dso_local global i64 0, align 8
@MTAG_8021Q = common dso_local global i32 0, align 4
@MTAG_8021Q_PCP_OUT = common dso_local global i32 0, align 4
@IFCAP_VLAN_HWTAGGING = common dso_local global i32 0, align 4
@M_VLANTAG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"unable to prepend 802.1Q header\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ether_8021q_frame(%struct.mbuf** %0, %struct.ifnet* %1, %struct.ifnet* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mbuf**, align 8
  %8 = alloca %struct.ifnet*, align 8
  %9 = alloca %struct.ifnet*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.m_tag*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.mbuf** %0, %struct.mbuf*** %7, align 8
  store %struct.ifnet* %1, %struct.ifnet** %8, align 8
  store %struct.ifnet* %2, %struct.ifnet** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = load i64, i64* @V_soft_pad, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %61

17:                                               ; preds = %5
  %18 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  %19 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @IFT_ETHER, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %61

23:                                               ; preds = %17
  %24 = load i32, i32* @ETHERMIN, align 4
  %25 = load i32, i32* @ETHER_HDR_LEN, align 4
  %26 = add nsw i32 %24, %25
  %27 = load %struct.mbuf**, %struct.mbuf*** %7, align 8
  %28 = load %struct.mbuf*, %struct.mbuf** %27, align 8
  %29 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = sub nsw i32 %26, %31
  store i32 %32, i32* %13, align 4
  br label %33

33:                                               ; preds = %45, %23
  %34 = load i32, i32* %13, align 4
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %36, label %50

36:                                               ; preds = %33
  %37 = load %struct.mbuf**, %struct.mbuf*** %7, align 8
  %38 = load %struct.mbuf*, %struct.mbuf** %37, align 8
  %39 = load i32, i32* %13, align 4
  %40 = call i32 @min(i32 %39, i32 8)
  %41 = call i32 @m_append(%struct.mbuf* %38, i32 %40, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @ether_8021q_frame.pad, i64 0, i64 0))
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %36
  br label %50

44:                                               ; preds = %36
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %13, align 4
  %47 = sext i32 %46 to i64
  %48 = sub i64 %47, 8
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %13, align 4
  br label %33

50:                                               ; preds = %43, %33
  %51 = load i32, i32* %13, align 4
  %52 = icmp sgt i32 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %50
  %54 = load %struct.mbuf**, %struct.mbuf*** %7, align 8
  %55 = load %struct.mbuf*, %struct.mbuf** %54, align 8
  %56 = call i32 @m_freem(%struct.mbuf* %55)
  %57 = load %struct.mbuf**, %struct.mbuf*** %7, align 8
  store %struct.mbuf* null, %struct.mbuf** %57, align 8
  %58 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %59 = call i32 @if_printf(%struct.ifnet* %58, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %115

60:                                               ; preds = %50
  br label %61

61:                                               ; preds = %60, %17, %5
  %62 = load i64, i64* @vlan_mtag_pcp, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %78

64:                                               ; preds = %61
  %65 = load %struct.mbuf**, %struct.mbuf*** %7, align 8
  %66 = load %struct.mbuf*, %struct.mbuf** %65, align 8
  %67 = load i32, i32* @MTAG_8021Q, align 4
  %68 = load i32, i32* @MTAG_8021Q_PCP_OUT, align 4
  %69 = call %struct.m_tag* @m_tag_locate(%struct.mbuf* %66, i32 %67, i32 %68, i32* null)
  store %struct.m_tag* %69, %struct.m_tag** %12, align 8
  %70 = icmp ne %struct.m_tag* %69, null
  br i1 %70, label %71, label %78

71:                                               ; preds = %64
  %72 = load i32, i32* %10, align 4
  %73 = load %struct.m_tag*, %struct.m_tag** %12, align 8
  %74 = getelementptr inbounds %struct.m_tag, %struct.m_tag* %73, i64 1
  %75 = bitcast %struct.m_tag* %74 to i32*
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @EVL_MAKETAG(i32 %72, i32 %76, i32 0)
  store i32 %77, i32* %14, align 4
  br label %82

78:                                               ; preds = %64, %61
  %79 = load i32, i32* %10, align 4
  %80 = load i32, i32* %11, align 4
  %81 = call i32 @EVL_MAKETAG(i32 %79, i32 %80, i32 0)
  store i32 %81, i32* %14, align 4
  br label %82

82:                                               ; preds = %78, %71
  %83 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  %84 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @IFCAP_VLAN_HWTAGGING, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %101

89:                                               ; preds = %82
  %90 = load i32, i32* %14, align 4
  %91 = load %struct.mbuf**, %struct.mbuf*** %7, align 8
  %92 = load %struct.mbuf*, %struct.mbuf** %91, align 8
  %93 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 1
  store i32 %90, i32* %94, align 4
  %95 = load i32, i32* @M_VLANTAG, align 4
  %96 = load %struct.mbuf**, %struct.mbuf*** %7, align 8
  %97 = load %struct.mbuf*, %struct.mbuf** %96, align 8
  %98 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = or i32 %99, %95
  store i32 %100, i32* %98, align 4
  br label %114

101:                                              ; preds = %82
  %102 = load %struct.mbuf**, %struct.mbuf*** %7, align 8
  %103 = load %struct.mbuf*, %struct.mbuf** %102, align 8
  %104 = load i32, i32* %14, align 4
  %105 = call %struct.mbuf* @ether_vlanencap(%struct.mbuf* %103, i32 %104)
  %106 = load %struct.mbuf**, %struct.mbuf*** %7, align 8
  store %struct.mbuf* %105, %struct.mbuf** %106, align 8
  %107 = load %struct.mbuf**, %struct.mbuf*** %7, align 8
  %108 = load %struct.mbuf*, %struct.mbuf** %107, align 8
  %109 = icmp eq %struct.mbuf* %108, null
  br i1 %109, label %110, label %113

110:                                              ; preds = %101
  %111 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %112 = call i32 @if_printf(%struct.ifnet* %111, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %115

113:                                              ; preds = %101
  br label %114

114:                                              ; preds = %113, %89
  store i32 1, i32* %6, align 4
  br label %115

115:                                              ; preds = %114, %110, %53
  %116 = load i32, i32* %6, align 4
  ret i32 %116
}

declare dso_local i32 @m_append(%struct.mbuf*, i32, i8*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

declare dso_local i32 @if_printf(%struct.ifnet*, i8*) #1

declare dso_local %struct.m_tag* @m_tag_locate(%struct.mbuf*, i32, i32, i32*) #1

declare dso_local i32 @EVL_MAKETAG(i32, i32, i32) #1

declare dso_local %struct.mbuf* @ether_vlanencap(%struct.mbuf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
