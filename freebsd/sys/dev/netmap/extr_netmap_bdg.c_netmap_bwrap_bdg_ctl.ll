; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_netmap_bdg.c_netmap_bwrap_bdg_ctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_netmap_bdg.c_netmap_bwrap_bdg_ctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nmreq_header = type { i64, i64 }
%struct.netmap_adapter = type { i64, i32, i32 }
%struct.netmap_priv_d = type { i32 }
%struct.netmap_bwrap_adapter = type { %struct.netmap_priv_d* }
%struct.nmreq_vale_attach = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i32 }

@NETMAP_REQ_VALE_ATTACH = common dso_local global i64 0, align 8
@NR_REG_ALL_NIC = common dso_local global i64 0, align 8
@NR_REG_NIC_SW = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@NAF_BUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nmreq_header*, %struct.netmap_adapter*)* @netmap_bwrap_bdg_ctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netmap_bwrap_bdg_ctl(%struct.nmreq_header* %0, %struct.netmap_adapter* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nmreq_header*, align 8
  %5 = alloca %struct.netmap_adapter*, align 8
  %6 = alloca %struct.netmap_priv_d*, align 8
  %7 = alloca %struct.netmap_bwrap_adapter*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.nmreq_vale_attach*, align 8
  store %struct.nmreq_header* %0, %struct.nmreq_header** %4, align 8
  store %struct.netmap_adapter* %1, %struct.netmap_adapter** %5, align 8
  %10 = load %struct.netmap_adapter*, %struct.netmap_adapter** %5, align 8
  %11 = bitcast %struct.netmap_adapter* %10 to %struct.netmap_bwrap_adapter*
  store %struct.netmap_bwrap_adapter* %11, %struct.netmap_bwrap_adapter** %7, align 8
  store i32 0, i32* %8, align 4
  %12 = load %struct.nmreq_header*, %struct.nmreq_header** %4, align 8
  %13 = getelementptr inbounds %struct.nmreq_header, %struct.nmreq_header* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @NETMAP_REQ_VALE_ATTACH, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %97

17:                                               ; preds = %2
  %18 = load %struct.nmreq_header*, %struct.nmreq_header** %4, align 8
  %19 = getelementptr inbounds %struct.nmreq_header, %struct.nmreq_header* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to %struct.nmreq_vale_attach*
  store %struct.nmreq_vale_attach* %21, %struct.nmreq_vale_attach** %9, align 8
  %22 = load %struct.nmreq_vale_attach*, %struct.nmreq_vale_attach** %9, align 8
  %23 = getelementptr inbounds %struct.nmreq_vale_attach, %struct.nmreq_vale_attach* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %41, label %27

27:                                               ; preds = %17
  %28 = load %struct.nmreq_vale_attach*, %struct.nmreq_vale_attach** %9, align 8
  %29 = getelementptr inbounds %struct.nmreq_vale_attach, %struct.nmreq_vale_attach* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @NR_REG_ALL_NIC, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %43

34:                                               ; preds = %27
  %35 = load %struct.nmreq_vale_attach*, %struct.nmreq_vale_attach** %9, align 8
  %36 = getelementptr inbounds %struct.nmreq_vale_attach, %struct.nmreq_vale_attach* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @NR_REG_NIC_SW, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %34, %17
  %42 = load i32, i32* @EINVAL, align 4
  store i32 %42, i32* %3, align 4
  br label %119

43:                                               ; preds = %34, %27
  %44 = load %struct.netmap_adapter*, %struct.netmap_adapter** %5, align 8
  %45 = call i64 @NETMAP_OWNED_BY_ANY(%struct.netmap_adapter* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %43
  %48 = load i32, i32* @EBUSY, align 4
  store i32 %48, i32* %3, align 4
  br label %119

49:                                               ; preds = %43
  %50 = load %struct.netmap_bwrap_adapter*, %struct.netmap_bwrap_adapter** %7, align 8
  %51 = getelementptr inbounds %struct.netmap_bwrap_adapter, %struct.netmap_bwrap_adapter* %50, i32 0, i32 0
  %52 = load %struct.netmap_priv_d*, %struct.netmap_priv_d** %51, align 8
  %53 = icmp ne %struct.netmap_priv_d* %52, null
  br i1 %53, label %54, label %55

54:                                               ; preds = %49
  store i32 0, i32* %3, align 4
  br label %119

55:                                               ; preds = %49
  %56 = call %struct.netmap_priv_d* (...) @netmap_priv_new()
  store %struct.netmap_priv_d* %56, %struct.netmap_priv_d** %6, align 8
  %57 = load %struct.netmap_priv_d*, %struct.netmap_priv_d** %6, align 8
  %58 = icmp eq %struct.netmap_priv_d* %57, null
  br i1 %58, label %59, label %61

59:                                               ; preds = %55
  %60 = load i32, i32* @ENOMEM, align 4
  store i32 %60, i32* %3, align 4
  br label %119

61:                                               ; preds = %55
  %62 = load %struct.netmap_adapter*, %struct.netmap_adapter** %5, align 8
  %63 = getelementptr inbounds %struct.netmap_adapter, %struct.netmap_adapter* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.netmap_priv_d*, %struct.netmap_priv_d** %6, align 8
  %66 = getelementptr inbounds %struct.netmap_priv_d, %struct.netmap_priv_d* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 4
  %67 = load %struct.netmap_priv_d*, %struct.netmap_priv_d** %6, align 8
  %68 = load %struct.netmap_adapter*, %struct.netmap_adapter** %5, align 8
  %69 = load %struct.nmreq_vale_attach*, %struct.nmreq_vale_attach** %9, align 8
  %70 = getelementptr inbounds %struct.nmreq_vale_attach, %struct.nmreq_vale_attach* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.nmreq_vale_attach*, %struct.nmreq_vale_attach** %9, align 8
  %74 = getelementptr inbounds %struct.nmreq_vale_attach, %struct.nmreq_vale_attach* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.nmreq_vale_attach*, %struct.nmreq_vale_attach** %9, align 8
  %78 = getelementptr inbounds %struct.nmreq_vale_attach, %struct.nmreq_vale_attach* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @netmap_do_regif(%struct.netmap_priv_d* %67, %struct.netmap_adapter* %68, i64 %72, i64 %76, i32 %80)
  store i32 %81, i32* %8, align 4
  %82 = load i32, i32* %8, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %61
  %85 = load %struct.netmap_priv_d*, %struct.netmap_priv_d** %6, align 8
  %86 = call i32 @netmap_priv_delete(%struct.netmap_priv_d* %85)
  %87 = load i32, i32* %8, align 4
  store i32 %87, i32* %3, align 4
  br label %119

88:                                               ; preds = %61
  %89 = load %struct.netmap_priv_d*, %struct.netmap_priv_d** %6, align 8
  %90 = load %struct.netmap_bwrap_adapter*, %struct.netmap_bwrap_adapter** %7, align 8
  %91 = getelementptr inbounds %struct.netmap_bwrap_adapter, %struct.netmap_bwrap_adapter* %90, i32 0, i32 0
  store %struct.netmap_priv_d* %89, %struct.netmap_priv_d** %91, align 8
  %92 = load i32, i32* @NAF_BUSY, align 4
  %93 = load %struct.netmap_adapter*, %struct.netmap_adapter** %5, align 8
  %94 = getelementptr inbounds %struct.netmap_adapter, %struct.netmap_adapter* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = or i32 %95, %92
  store i32 %96, i32* %94, align 8
  br label %117

97:                                               ; preds = %2
  %98 = load %struct.netmap_adapter*, %struct.netmap_adapter** %5, align 8
  %99 = getelementptr inbounds %struct.netmap_adapter, %struct.netmap_adapter* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = icmp eq i64 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %97
  %103 = load i32, i32* @EINVAL, align 4
  store i32 %103, i32* %3, align 4
  br label %119

104:                                              ; preds = %97
  %105 = load %struct.netmap_bwrap_adapter*, %struct.netmap_bwrap_adapter** %7, align 8
  %106 = getelementptr inbounds %struct.netmap_bwrap_adapter, %struct.netmap_bwrap_adapter* %105, i32 0, i32 0
  %107 = load %struct.netmap_priv_d*, %struct.netmap_priv_d** %106, align 8
  %108 = call i32 @netmap_priv_delete(%struct.netmap_priv_d* %107)
  %109 = load %struct.netmap_bwrap_adapter*, %struct.netmap_bwrap_adapter** %7, align 8
  %110 = getelementptr inbounds %struct.netmap_bwrap_adapter, %struct.netmap_bwrap_adapter* %109, i32 0, i32 0
  store %struct.netmap_priv_d* null, %struct.netmap_priv_d** %110, align 8
  %111 = load i32, i32* @NAF_BUSY, align 4
  %112 = xor i32 %111, -1
  %113 = load %struct.netmap_adapter*, %struct.netmap_adapter** %5, align 8
  %114 = getelementptr inbounds %struct.netmap_adapter, %struct.netmap_adapter* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 8
  %116 = and i32 %115, %112
  store i32 %116, i32* %114, align 8
  br label %117

117:                                              ; preds = %104, %88
  %118 = load i32, i32* %8, align 4
  store i32 %118, i32* %3, align 4
  br label %119

119:                                              ; preds = %117, %102, %84, %59, %54, %47, %41
  %120 = load i32, i32* %3, align 4
  ret i32 %120
}

declare dso_local i64 @NETMAP_OWNED_BY_ANY(%struct.netmap_adapter*) #1

declare dso_local %struct.netmap_priv_d* @netmap_priv_new(...) #1

declare dso_local i32 @netmap_do_regif(%struct.netmap_priv_d*, %struct.netmap_adapter*, i64, i64, i32) #1

declare dso_local i32 @netmap_priv_delete(%struct.netmap_priv_d*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
