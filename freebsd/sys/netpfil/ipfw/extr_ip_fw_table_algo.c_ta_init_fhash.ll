; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_table_algo.c_ta_init_fhash.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_table_algo.c_ta_init_fhash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_fw_chain = type { i32 }
%struct.table_info = type { i64, i32, %struct.fhashentry4*, i32* }
%struct.fhashentry4 = type { %struct.TYPE_3__, i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }
%struct.fhash_cfg = type { i32, %struct.fhashentry4, i32*, %struct.fhashentry6 }
%struct.fhashentry6 = type { %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }

@M_IPFW = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@IPFW_TFFLAG_SRCIP = common dso_local global i32 0, align 4
@IPFW_TFFLAG_DSTIP = common dso_local global i32 0, align 4
@IPFW_TFFLAG_SRCPORT = common dso_local global i32 0, align 4
@IPFW_TFFLAG_DSTPORT = common dso_local global i32 0, align 4
@IPFW_TFFLAG_PROTO = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i32 0, align 4
@ta_lookup_fhash = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ip_fw_chain*, i8**, %struct.table_info*, i8*, i32)* @ta_init_fhash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ta_init_fhash(%struct.ip_fw_chain* %0, i8** %1, %struct.table_info* %2, i8* %3, i32 %4) #0 {
  %6 = alloca %struct.ip_fw_chain*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca %struct.table_info*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.fhash_cfg*, align 8
  %12 = alloca %struct.fhashentry4*, align 8
  %13 = alloca %struct.fhashentry6*, align 8
  %14 = alloca i64, align 8
  store %struct.ip_fw_chain* %0, %struct.ip_fw_chain** %6, align 8
  store i8** %1, i8*** %7, align 8
  store %struct.table_info* %2, %struct.table_info** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  %15 = load i32, i32* @M_IPFW, align 4
  %16 = load i32, i32* @M_WAITOK, align 4
  %17 = load i32, i32* @M_ZERO, align 4
  %18 = or i32 %16, %17
  %19 = call i8* @malloc(i32 64, i32 %15, i32 %18)
  %20 = bitcast i8* %19 to %struct.fhash_cfg*
  store %struct.fhash_cfg* %20, %struct.fhash_cfg** %11, align 8
  %21 = load %struct.fhash_cfg*, %struct.fhash_cfg** %11, align 8
  %22 = getelementptr inbounds %struct.fhash_cfg, %struct.fhash_cfg* %21, i32 0, i32 0
  store i32 512, i32* %22, align 8
  %23 = load %struct.fhash_cfg*, %struct.fhash_cfg** %11, align 8
  %24 = getelementptr inbounds %struct.fhash_cfg, %struct.fhash_cfg* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = sext i32 %25 to i64
  %27 = mul i64 4, %26
  %28 = trunc i64 %27 to i32
  %29 = load i32, i32* @M_IPFW, align 4
  %30 = load i32, i32* @M_WAITOK, align 4
  %31 = load i32, i32* @M_ZERO, align 4
  %32 = or i32 %30, %31
  %33 = call i8* @malloc(i32 %28, i32 %29, i32 %32)
  %34 = bitcast i8* %33 to i32*
  %35 = load %struct.fhash_cfg*, %struct.fhash_cfg** %11, align 8
  %36 = getelementptr inbounds %struct.fhash_cfg, %struct.fhash_cfg* %35, i32 0, i32 2
  store i32* %34, i32** %36, align 8
  store i64 0, i64* %14, align 8
  br label %37

37:                                               ; preds = %51, %5
  %38 = load i64, i64* %14, align 8
  %39 = load %struct.fhash_cfg*, %struct.fhash_cfg** %11, align 8
  %40 = getelementptr inbounds %struct.fhash_cfg, %struct.fhash_cfg* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = sext i32 %41 to i64
  %43 = icmp ult i64 %38, %42
  br i1 %43, label %44, label %54

44:                                               ; preds = %37
  %45 = load %struct.fhash_cfg*, %struct.fhash_cfg** %11, align 8
  %46 = getelementptr inbounds %struct.fhash_cfg, %struct.fhash_cfg* %45, i32 0, i32 2
  %47 = load i32*, i32** %46, align 8
  %48 = load i64, i64* %14, align 8
  %49 = getelementptr inbounds i32, i32* %47, i64 %48
  %50 = call i32 @SLIST_INIT(i32* %49)
  br label %51

51:                                               ; preds = %44
  %52 = load i64, i64* %14, align 8
  %53 = add i64 %52, 1
  store i64 %53, i64* %14, align 8
  br label %37

54:                                               ; preds = %37
  %55 = load %struct.fhash_cfg*, %struct.fhash_cfg** %11, align 8
  %56 = getelementptr inbounds %struct.fhash_cfg, %struct.fhash_cfg* %55, i32 0, i32 1
  store %struct.fhashentry4* %56, %struct.fhashentry4** %12, align 8
  %57 = load %struct.fhash_cfg*, %struct.fhash_cfg** %11, align 8
  %58 = getelementptr inbounds %struct.fhash_cfg, %struct.fhash_cfg* %57, i32 0, i32 3
  store %struct.fhashentry6* %58, %struct.fhashentry6** %13, align 8
  %59 = load i32, i32* %10, align 4
  %60 = load i32, i32* @IPFW_TFFLAG_SRCIP, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %70

63:                                               ; preds = %54
  %64 = load %struct.fhashentry4*, %struct.fhashentry4** %12, align 8
  %65 = getelementptr inbounds %struct.fhashentry4, %struct.fhashentry4* %64, i32 0, i32 2
  %66 = call i32 @memset(i32* %65, i32 255, i32 4)
  %67 = load %struct.fhashentry6*, %struct.fhashentry6** %13, align 8
  %68 = getelementptr inbounds %struct.fhashentry6, %struct.fhashentry6* %67, i32 0, i32 2
  %69 = call i32 @memset(i32* %68, i32 255, i32 4)
  br label %70

70:                                               ; preds = %63, %54
  %71 = load i32, i32* %10, align 4
  %72 = load i32, i32* @IPFW_TFFLAG_DSTIP, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %82

75:                                               ; preds = %70
  %76 = load %struct.fhashentry4*, %struct.fhashentry4** %12, align 8
  %77 = getelementptr inbounds %struct.fhashentry4, %struct.fhashentry4* %76, i32 0, i32 1
  %78 = call i32 @memset(i32* %77, i32 255, i32 4)
  %79 = load %struct.fhashentry6*, %struct.fhashentry6** %13, align 8
  %80 = getelementptr inbounds %struct.fhashentry6, %struct.fhashentry6* %79, i32 0, i32 1
  %81 = call i32 @memset(i32* %80, i32 255, i32 4)
  br label %82

82:                                               ; preds = %75, %70
  %83 = load i32, i32* %10, align 4
  %84 = load i32, i32* @IPFW_TFFLAG_SRCPORT, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %96

87:                                               ; preds = %82
  %88 = load %struct.fhashentry4*, %struct.fhashentry4** %12, align 8
  %89 = getelementptr inbounds %struct.fhashentry4, %struct.fhashentry4* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 3
  %91 = call i32 @memset(i32* %90, i32 255, i32 4)
  %92 = load %struct.fhashentry6*, %struct.fhashentry6** %13, align 8
  %93 = getelementptr inbounds %struct.fhashentry6, %struct.fhashentry6* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 3
  %95 = call i32 @memset(i32* %94, i32 255, i32 4)
  br label %96

96:                                               ; preds = %87, %82
  %97 = load i32, i32* %10, align 4
  %98 = load i32, i32* @IPFW_TFFLAG_DSTPORT, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %110

101:                                              ; preds = %96
  %102 = load %struct.fhashentry4*, %struct.fhashentry4** %12, align 8
  %103 = getelementptr inbounds %struct.fhashentry4, %struct.fhashentry4* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 2
  %105 = call i32 @memset(i32* %104, i32 255, i32 4)
  %106 = load %struct.fhashentry6*, %struct.fhashentry6** %13, align 8
  %107 = getelementptr inbounds %struct.fhashentry6, %struct.fhashentry6* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 2
  %109 = call i32 @memset(i32* %108, i32 255, i32 4)
  br label %110

110:                                              ; preds = %101, %96
  %111 = load i32, i32* %10, align 4
  %112 = load i32, i32* @IPFW_TFFLAG_PROTO, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %124

115:                                              ; preds = %110
  %116 = load %struct.fhashentry4*, %struct.fhashentry4** %12, align 8
  %117 = getelementptr inbounds %struct.fhashentry4, %struct.fhashentry4* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i32 0, i32 1
  %119 = call i32 @memset(i32* %118, i32 255, i32 4)
  %120 = load %struct.fhashentry6*, %struct.fhashentry6** %13, align 8
  %121 = getelementptr inbounds %struct.fhashentry6, %struct.fhashentry6* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 1
  %123 = call i32 @memset(i32* %122, i32 255, i32 4)
  br label %124

124:                                              ; preds = %115, %110
  %125 = load i32, i32* @AF_INET, align 4
  %126 = load %struct.fhashentry4*, %struct.fhashentry4** %12, align 8
  %127 = getelementptr inbounds %struct.fhashentry4, %struct.fhashentry4* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %127, i32 0, i32 0
  store i32 %125, i32* %128, align 4
  %129 = load i32, i32* @AF_INET6, align 4
  %130 = load %struct.fhashentry6*, %struct.fhashentry6** %13, align 8
  %131 = getelementptr inbounds %struct.fhashentry6, %struct.fhashentry6* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 0
  store i32 %129, i32* %132, align 4
  %133 = load %struct.fhash_cfg*, %struct.fhash_cfg** %11, align 8
  %134 = bitcast %struct.fhash_cfg* %133 to i8*
  %135 = load i8**, i8*** %7, align 8
  store i8* %134, i8** %135, align 8
  %136 = load %struct.fhash_cfg*, %struct.fhash_cfg** %11, align 8
  %137 = getelementptr inbounds %struct.fhash_cfg, %struct.fhash_cfg* %136, i32 0, i32 2
  %138 = load i32*, i32** %137, align 8
  %139 = load %struct.table_info*, %struct.table_info** %8, align 8
  %140 = getelementptr inbounds %struct.table_info, %struct.table_info* %139, i32 0, i32 3
  store i32* %138, i32** %140, align 8
  %141 = load %struct.fhash_cfg*, %struct.fhash_cfg** %11, align 8
  %142 = getelementptr inbounds %struct.fhash_cfg, %struct.fhash_cfg* %141, i32 0, i32 1
  %143 = load %struct.table_info*, %struct.table_info** %8, align 8
  %144 = getelementptr inbounds %struct.table_info, %struct.table_info* %143, i32 0, i32 2
  store %struct.fhashentry4* %142, %struct.fhashentry4** %144, align 8
  %145 = load %struct.fhash_cfg*, %struct.fhash_cfg** %11, align 8
  %146 = getelementptr inbounds %struct.fhash_cfg, %struct.fhash_cfg* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = sext i32 %147 to i64
  %149 = load %struct.table_info*, %struct.table_info** %8, align 8
  %150 = getelementptr inbounds %struct.table_info, %struct.table_info* %149, i32 0, i32 0
  store i64 %148, i64* %150, align 8
  %151 = load i32, i32* @ta_lookup_fhash, align 4
  %152 = load %struct.table_info*, %struct.table_info** %8, align 8
  %153 = getelementptr inbounds %struct.table_info, %struct.table_info* %152, i32 0, i32 1
  store i32 %151, i32* %153, align 8
  ret i32 0
}

declare dso_local i8* @malloc(i32, i32, i32) #1

declare dso_local i32 @SLIST_INIT(i32*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
