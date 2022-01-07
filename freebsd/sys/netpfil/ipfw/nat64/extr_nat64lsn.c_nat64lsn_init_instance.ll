; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/nat64/extr_nat64lsn.c_nat64lsn_init_instance.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/nat64/extr_nat64lsn.c_nat64lsn_init_instance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nat64lsn_cfg = type { i32, i32, i32, i32, i32, i32, i32, %struct.nat64lsn_alias*, i32*, i32, %struct.TYPE_4__, i32, i32 }
%struct.nat64lsn_alias = type { i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.ip_fw_chain = type { i32 }

@M_NAT64LSN = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@curvnet = common dso_local global i32 0, align 4
@NAT64STATS = common dso_local global i32 0, align 4
@NAT64LSN_HOSTS_HSIZE = common dso_local global i32 0, align 4
@CALLOUT_MPSAFE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.nat64lsn_cfg* @nat64lsn_init_instance(%struct.ip_fw_chain* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ip_fw_chain*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.nat64lsn_cfg*, align 8
  %8 = alloca %struct.nat64lsn_alias*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ip_fw_chain* %0, %struct.ip_fw_chain** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load i32, i32* @M_NAT64LSN, align 4
  %12 = load i32, i32* @M_WAITOK, align 4
  %13 = load i32, i32* @M_ZERO, align 4
  %14 = or i32 %12, %13
  %15 = call i8* @malloc(i32 64, i32 %11, i32 %14)
  %16 = bitcast i8* %15 to %struct.nat64lsn_cfg*
  store %struct.nat64lsn_cfg* %16, %struct.nat64lsn_cfg** %7, align 8
  %17 = load %struct.nat64lsn_cfg*, %struct.nat64lsn_cfg** %7, align 8
  %18 = call i32 @CFG_LOCK_INIT(%struct.nat64lsn_cfg* %17)
  %19 = load %struct.nat64lsn_cfg*, %struct.nat64lsn_cfg** %7, align 8
  %20 = call i32 @CALLOUT_LOCK_INIT(%struct.nat64lsn_cfg* %19)
  %21 = load %struct.nat64lsn_cfg*, %struct.nat64lsn_cfg** %7, align 8
  %22 = getelementptr inbounds %struct.nat64lsn_cfg, %struct.nat64lsn_cfg* %21, i32 0, i32 12
  %23 = call i32 @STAILQ_INIT(i32* %22)
  %24 = load i32, i32* @curvnet, align 4
  %25 = load %struct.nat64lsn_cfg*, %struct.nat64lsn_cfg** %7, align 8
  %26 = getelementptr inbounds %struct.nat64lsn_cfg, %struct.nat64lsn_cfg* %25, i32 0, i32 11
  store i32 %24, i32* %26, align 8
  %27 = load %struct.nat64lsn_cfg*, %struct.nat64lsn_cfg** %7, align 8
  %28 = getelementptr inbounds %struct.nat64lsn_cfg, %struct.nat64lsn_cfg* %27, i32 0, i32 10
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @NAT64STATS, align 4
  %33 = load i32, i32* @M_WAITOK, align 4
  %34 = call i32 @COUNTER_ARRAY_ALLOC(i32 %31, i32 %32, i32 %33)
  %35 = call i32 (...) @arc4random()
  %36 = load %struct.nat64lsn_cfg*, %struct.nat64lsn_cfg** %7, align 8
  %37 = getelementptr inbounds %struct.nat64lsn_cfg, %struct.nat64lsn_cfg* %36, i32 0, i32 9
  store i32 %35, i32* %37, align 8
  %38 = load i32, i32* @NAT64LSN_HOSTS_HSIZE, align 4
  %39 = load %struct.nat64lsn_cfg*, %struct.nat64lsn_cfg** %7, align 8
  %40 = getelementptr inbounds %struct.nat64lsn_cfg, %struct.nat64lsn_cfg* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  %41 = load %struct.nat64lsn_cfg*, %struct.nat64lsn_cfg** %7, align 8
  %42 = getelementptr inbounds %struct.nat64lsn_cfg, %struct.nat64lsn_cfg* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = sext i32 %43 to i64
  %45 = mul i64 4, %44
  %46 = trunc i64 %45 to i32
  %47 = load i32, i32* @M_NAT64LSN, align 4
  %48 = load i32, i32* @M_WAITOK, align 4
  %49 = load i32, i32* @M_ZERO, align 4
  %50 = or i32 %48, %49
  %51 = call i8* @malloc(i32 %46, i32 %47, i32 %50)
  %52 = bitcast i8* %51 to i32*
  %53 = load %struct.nat64lsn_cfg*, %struct.nat64lsn_cfg** %7, align 8
  %54 = getelementptr inbounds %struct.nat64lsn_cfg, %struct.nat64lsn_cfg* %53, i32 0, i32 8
  store i32* %52, i32** %54, align 8
  store i32 0, i32* %9, align 4
  br label %55

55:                                               ; preds = %69, %3
  %56 = load i32, i32* %9, align 4
  %57 = load %struct.nat64lsn_cfg*, %struct.nat64lsn_cfg** %7, align 8
  %58 = getelementptr inbounds %struct.nat64lsn_cfg, %struct.nat64lsn_cfg* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp slt i32 %56, %59
  br i1 %60, label %61, label %72

61:                                               ; preds = %55
  %62 = load %struct.nat64lsn_cfg*, %struct.nat64lsn_cfg** %7, align 8
  %63 = getelementptr inbounds %struct.nat64lsn_cfg, %struct.nat64lsn_cfg* %62, i32 0, i32 8
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* %9, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = call i32 @CK_SLIST_INIT(i32* %67)
  br label %69

69:                                               ; preds = %61
  %70 = load i32, i32* %9, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %9, align 4
  br label %55

72:                                               ; preds = %55
  %73 = load i32, i32* %6, align 4
  %74 = sub nsw i32 32, %73
  %75 = shl i32 1, %74
  store i32 %75, i32* %10, align 4
  %76 = load i32, i32* %5, align 4
  %77 = load %struct.nat64lsn_cfg*, %struct.nat64lsn_cfg** %7, align 8
  %78 = getelementptr inbounds %struct.nat64lsn_cfg, %struct.nat64lsn_cfg* %77, i32 0, i32 1
  store i32 %76, i32* %78, align 4
  %79 = load i32, i32* %5, align 4
  %80 = load i32, i32* %10, align 4
  %81 = sub nsw i32 %80, 1
  %82 = or i32 %79, %81
  %83 = load %struct.nat64lsn_cfg*, %struct.nat64lsn_cfg** %7, align 8
  %84 = getelementptr inbounds %struct.nat64lsn_cfg, %struct.nat64lsn_cfg* %83, i32 0, i32 2
  store i32 %82, i32* %84, align 8
  %85 = load i32, i32* %6, align 4
  %86 = load %struct.nat64lsn_cfg*, %struct.nat64lsn_cfg** %7, align 8
  %87 = getelementptr inbounds %struct.nat64lsn_cfg, %struct.nat64lsn_cfg* %86, i32 0, i32 3
  store i32 %85, i32* %87, align 4
  %88 = load i32, i32* %10, align 4
  %89 = sext i32 %88 to i64
  %90 = mul i64 8, %89
  %91 = trunc i64 %90 to i32
  %92 = load i32, i32* @M_NAT64LSN, align 4
  %93 = load i32, i32* @M_WAITOK, align 4
  %94 = load i32, i32* @M_ZERO, align 4
  %95 = or i32 %93, %94
  %96 = call i8* @malloc(i32 %91, i32 %92, i32 %95)
  %97 = bitcast i8* %96 to %struct.nat64lsn_alias*
  %98 = load %struct.nat64lsn_cfg*, %struct.nat64lsn_cfg** %7, align 8
  %99 = getelementptr inbounds %struct.nat64lsn_cfg, %struct.nat64lsn_cfg* %98, i32 0, i32 7
  store %struct.nat64lsn_alias* %97, %struct.nat64lsn_alias** %99, align 8
  store i32 0, i32* %9, align 4
  br label %100

100:                                              ; preds = %121, %72
  %101 = load i32, i32* %9, align 4
  %102 = load i32, i32* %10, align 4
  %103 = icmp slt i32 %101, %102
  br i1 %103, label %104, label %124

104:                                              ; preds = %100
  %105 = load %struct.nat64lsn_cfg*, %struct.nat64lsn_cfg** %7, align 8
  %106 = getelementptr inbounds %struct.nat64lsn_cfg, %struct.nat64lsn_cfg* %105, i32 0, i32 7
  %107 = load %struct.nat64lsn_alias*, %struct.nat64lsn_alias** %106, align 8
  %108 = load i32, i32* %9, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.nat64lsn_alias, %struct.nat64lsn_alias* %107, i64 %109
  store %struct.nat64lsn_alias* %110, %struct.nat64lsn_alias** %8, align 8
  %111 = load i32, i32* %5, align 4
  %112 = load i32, i32* %9, align 4
  %113 = add nsw i32 %111, %112
  %114 = load %struct.nat64lsn_alias*, %struct.nat64lsn_alias** %8, align 8
  %115 = getelementptr inbounds %struct.nat64lsn_alias, %struct.nat64lsn_alias* %114, i32 0, i32 0
  store i32 %113, i32* %115, align 4
  %116 = load %struct.nat64lsn_alias*, %struct.nat64lsn_alias** %8, align 8
  %117 = getelementptr inbounds %struct.nat64lsn_alias, %struct.nat64lsn_alias* %116, i32 0, i32 1
  %118 = call i32 @CK_SLIST_INIT(i32* %117)
  %119 = load %struct.nat64lsn_alias*, %struct.nat64lsn_alias** %8, align 8
  %120 = call i32 @ALIAS_LOCK_INIT(%struct.nat64lsn_alias* %119)
  br label %121

121:                                              ; preds = %104
  %122 = load i32, i32* %9, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %9, align 4
  br label %100

124:                                              ; preds = %100
  %125 = load %struct.nat64lsn_cfg*, %struct.nat64lsn_cfg** %7, align 8
  %126 = getelementptr inbounds %struct.nat64lsn_cfg, %struct.nat64lsn_cfg* %125, i32 0, i32 6
  %127 = load %struct.nat64lsn_cfg*, %struct.nat64lsn_cfg** %7, align 8
  %128 = getelementptr inbounds %struct.nat64lsn_cfg, %struct.nat64lsn_cfg* %127, i32 0, i32 5
  %129 = call i32 @callout_init_mtx(i32* %126, i32* %128, i32 0)
  %130 = load %struct.nat64lsn_cfg*, %struct.nat64lsn_cfg** %7, align 8
  %131 = getelementptr inbounds %struct.nat64lsn_cfg, %struct.nat64lsn_cfg* %130, i32 0, i32 4
  %132 = load i32, i32* @CALLOUT_MPSAFE, align 4
  %133 = call i32 @callout_init(i32* %131, i32 %132)
  %134 = load %struct.nat64lsn_cfg*, %struct.nat64lsn_cfg** %7, align 8
  ret %struct.nat64lsn_cfg* %134
}

declare dso_local i8* @malloc(i32, i32, i32) #1

declare dso_local i32 @CFG_LOCK_INIT(%struct.nat64lsn_cfg*) #1

declare dso_local i32 @CALLOUT_LOCK_INIT(%struct.nat64lsn_cfg*) #1

declare dso_local i32 @STAILQ_INIT(i32*) #1

declare dso_local i32 @COUNTER_ARRAY_ALLOC(i32, i32, i32) #1

declare dso_local i32 @arc4random(...) #1

declare dso_local i32 @CK_SLIST_INIT(i32*) #1

declare dso_local i32 @ALIAS_LOCK_INIT(%struct.nat64lsn_alias*) #1

declare dso_local i32 @callout_init_mtx(i32*, i32*, i32) #1

declare dso_local i32 @callout_init(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
