; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_dummynet.c_config_link.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_dummynet.c_config_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.dn_link = type { i32, i32, i32, i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.dn_id = type { i32 }
%struct.dn_schk = type { %struct.TYPE_5__, i32* }
%struct.TYPE_5__ = type { i32, i32, i64, i32, %struct.TYPE_4__ }

@.str = private unnamed_addr constant [20 x i8] c"invalid pipe len %d\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@DN_MAX_ID = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"sched %d not found\00", align 1
@M_DUMMYNET = common dso_local global i32 0, align 4
@dn_cfg = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dn_link*, %struct.dn_id*)* @config_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @config_link(%struct.dn_link* %0, %struct.dn_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dn_link*, align 8
  %5 = alloca %struct.dn_id*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.dn_schk*, align 8
  store %struct.dn_link* %0, %struct.dn_link** %4, align 8
  store %struct.dn_id* %1, %struct.dn_id** %5, align 8
  %8 = load %struct.dn_link*, %struct.dn_link** %4, align 8
  %9 = getelementptr inbounds %struct.dn_link, %struct.dn_link* %8, i32 0, i32 4
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = sext i32 %11 to i64
  %13 = icmp ne i64 %12, 32
  br i1 %13, label %14, label %21

14:                                               ; preds = %2
  %15 = load %struct.dn_link*, %struct.dn_link** %4, align 8
  %16 = getelementptr inbounds %struct.dn_link, %struct.dn_link* %15, i32 0, i32 4
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @D(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load i32, i32* @EINVAL, align 4
  store i32 %20, i32* %3, align 4
  br label %129

21:                                               ; preds = %2
  %22 = load %struct.dn_link*, %struct.dn_link** %4, align 8
  %23 = getelementptr inbounds %struct.dn_link, %struct.dn_link* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp sle i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %21
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @DN_MAX_ID, align 4
  %30 = icmp sge i32 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %27, %21
  %32 = load i32, i32* @EINVAL, align 4
  store i32 %32, i32* %3, align 4
  br label %129

33:                                               ; preds = %27
  %34 = load %struct.dn_link*, %struct.dn_link** %4, align 8
  %35 = getelementptr inbounds %struct.dn_link, %struct.dn_link* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @hz, align 4
  %38 = mul nsw i32 %36, %37
  %39 = sdiv i32 %38, 1000
  %40 = load %struct.dn_link*, %struct.dn_link** %4, align 8
  %41 = getelementptr inbounds %struct.dn_link, %struct.dn_link* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* @hz, align 4
  %43 = mul nsw i32 8, %42
  %44 = load %struct.dn_link*, %struct.dn_link** %4, align 8
  %45 = getelementptr inbounds %struct.dn_link, %struct.dn_link* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = mul nsw i32 %46, %43
  store i32 %47, i32* %45, align 8
  %48 = call i32 (...) @DN_BH_WLOCK()
  br label %49

49:                                               ; preds = %121, %33
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* @DN_MAX_ID, align 4
  %52 = mul nsw i32 2, %51
  %53 = icmp slt i32 %50, %52
  br i1 %53, label %54, label %125

54:                                               ; preds = %49
  %55 = load i32, i32* %6, align 4
  %56 = call %struct.dn_schk* @locate_scheduler(i32 %55)
  store %struct.dn_schk* %56, %struct.dn_schk** %7, align 8
  %57 = load %struct.dn_schk*, %struct.dn_schk** %7, align 8
  %58 = icmp eq %struct.dn_schk* %57, null
  br i1 %58, label %59, label %64

59:                                               ; preds = %54
  %60 = call i32 (...) @DN_BH_WUNLOCK()
  %61 = load i32, i32* %6, align 4
  %62 = call i32 @D(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %61)
  %63 = load i32, i32* @EINVAL, align 4
  store i32 %63, i32* %3, align 4
  br label %129

64:                                               ; preds = %54
  %65 = load %struct.dn_schk*, %struct.dn_schk** %7, align 8
  %66 = getelementptr inbounds %struct.dn_schk, %struct.dn_schk* %65, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  %68 = icmp ne i32* %67, null
  br i1 %68, label %69, label %77

69:                                               ; preds = %64
  %70 = load %struct.dn_schk*, %struct.dn_schk** %7, align 8
  %71 = getelementptr inbounds %struct.dn_schk, %struct.dn_schk* %70, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = load i32, i32* @M_DUMMYNET, align 4
  %74 = call i32 @free(i32* %72, i32 %73)
  %75 = load %struct.dn_schk*, %struct.dn_schk** %7, align 8
  %76 = getelementptr inbounds %struct.dn_schk, %struct.dn_schk* %75, i32 0, i32 1
  store i32* null, i32** %76, align 8
  br label %77

77:                                               ; preds = %69, %64
  %78 = load %struct.dn_schk*, %struct.dn_schk** %7, align 8
  %79 = getelementptr inbounds %struct.dn_schk, %struct.dn_schk* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 4
  %81 = load %struct.dn_link*, %struct.dn_link** %4, align 8
  %82 = getelementptr inbounds %struct.dn_link, %struct.dn_link* %81, i32 0, i32 4
  %83 = bitcast %struct.TYPE_4__* %80 to i8*
  %84 = bitcast %struct.TYPE_4__* %82 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %83, i8* align 8 %84, i64 4, i1 false)
  %85 = load i32, i32* %6, align 4
  %86 = load %struct.dn_schk*, %struct.dn_schk** %7, align 8
  %87 = getelementptr inbounds %struct.dn_schk, %struct.dn_schk* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 0
  store i32 %85, i32* %88, align 8
  %89 = load %struct.dn_link*, %struct.dn_link** %4, align 8
  %90 = getelementptr inbounds %struct.dn_link, %struct.dn_link* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.dn_schk*, %struct.dn_schk** %7, align 8
  %93 = getelementptr inbounds %struct.dn_schk, %struct.dn_schk* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 1
  store i32 %91, i32* %94, align 4
  %95 = load %struct.dn_schk*, %struct.dn_schk** %7, align 8
  %96 = getelementptr inbounds %struct.dn_schk, %struct.dn_schk* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 2
  %98 = load i64, i64* %97, align 8
  %99 = load %struct.dn_link*, %struct.dn_link** %4, align 8
  %100 = getelementptr inbounds %struct.dn_link, %struct.dn_link* %99, i32 0, i32 3
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %98, %101
  br i1 %102, label %103, label %112

103:                                              ; preds = %77
  %104 = load %struct.dn_link*, %struct.dn_link** %4, align 8
  %105 = getelementptr inbounds %struct.dn_link, %struct.dn_link* %104, i32 0, i32 3
  %106 = load i64, i64* %105, align 8
  %107 = load %struct.dn_schk*, %struct.dn_schk** %7, align 8
  %108 = getelementptr inbounds %struct.dn_schk, %struct.dn_schk* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 2
  store i64 %106, i64* %109, align 8
  %110 = load %struct.dn_schk*, %struct.dn_schk** %7, align 8
  %111 = call i32 @update_red(%struct.dn_schk* %110)
  br label %112

112:                                              ; preds = %103, %77
  %113 = load %struct.dn_link*, %struct.dn_link** %4, align 8
  %114 = getelementptr inbounds %struct.dn_link, %struct.dn_link* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.dn_schk*, %struct.dn_schk** %7, align 8
  %117 = getelementptr inbounds %struct.dn_schk, %struct.dn_schk* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 3
  store i32 %115, i32* %118, align 8
  %119 = load %struct.dn_schk*, %struct.dn_schk** %7, align 8
  %120 = call i32 @schk_reset_credit(%struct.dn_schk* %119)
  br label %121

121:                                              ; preds = %112
  %122 = load i32, i32* @DN_MAX_ID, align 4
  %123 = load i32, i32* %6, align 4
  %124 = add nsw i32 %123, %122
  store i32 %124, i32* %6, align 4
  br label %49

125:                                              ; preds = %49
  %126 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @dn_cfg, i32 0, i32 0), align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @dn_cfg, i32 0, i32 0), align 4
  %128 = call i32 (...) @DN_BH_WUNLOCK()
  store i32 0, i32* %3, align 4
  br label %129

129:                                              ; preds = %125, %59, %31, %14
  %130 = load i32, i32* %3, align 4
  ret i32 %130
}

declare dso_local i32 @D(i8*, i32) #1

declare dso_local i32 @DN_BH_WLOCK(...) #1

declare dso_local %struct.dn_schk* @locate_scheduler(i32) #1

declare dso_local i32 @DN_BH_WUNLOCK(...) #1

declare dso_local i32 @free(i32*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @update_red(%struct.dn_schk*) #1

declare dso_local i32 @schk_reset_credit(%struct.dn_schk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
