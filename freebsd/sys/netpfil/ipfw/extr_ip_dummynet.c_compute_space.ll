; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_dummynet.c_compute_space.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_dummynet.c_compute_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.dn_id = type { i32 }
%struct.copy_args = type { i32 }

@ED_MAX_SAMPLES_NO = common dso_local global i32 0, align 4
@DN_C_LINK = common dso_local global i32 0, align 4
@DN_C_SCH = common dso_local global i32 0, align 4
@DN_C_FLOW = common dso_local global i32 0, align 4
@dn_cfg = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@DN_C_FS = common dso_local global i32 0, align 4
@DN_C_QUEUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dn_id*, %struct.copy_args*)* @compute_space to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @compute_space(%struct.dn_id* %0, %struct.copy_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dn_id*, align 8
  %5 = alloca %struct.copy_args*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.dn_id* %0, %struct.dn_id** %4, align 8
  store %struct.copy_args* %1, %struct.copy_args** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %9 = load i32, i32* @ED_MAX_SAMPLES_NO, align 4
  %10 = sext i32 %9 to i64
  %11 = mul i64 %10, 4
  %12 = sub i64 4, %11
  %13 = trunc i64 %12 to i32
  store i32 %13, i32* %8, align 4
  %14 = load %struct.dn_id*, %struct.dn_id** %4, align 8
  %15 = getelementptr inbounds %struct.dn_id, %struct.dn_id* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  switch i32 %16, label %17 [
    i32 129, label %18
    i32 128, label %42
    i32 131, label %66
    i32 130, label %70
  ]

17:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %152

18:                                               ; preds = %2
  %19 = load i32, i32* @DN_C_LINK, align 4
  %20 = load i32, i32* @DN_C_SCH, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @DN_C_FLOW, align 4
  %23 = or i32 %21, %22
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dn_cfg, i32 0, i32 0), align 4
  %25 = sext i32 %24 to i64
  %26 = load i32, i32* %8, align 4
  %27 = sext i32 %26 to i64
  %28 = add i64 4, %27
  %29 = mul i64 %25, %28
  %30 = udiv i64 %29, 2
  %31 = load i32, i32* %7, align 4
  %32 = sext i32 %31 to i64
  %33 = add i64 %32, %30
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dn_cfg, i32 0, i32 1), align 4
  %36 = sext i32 %35 to i64
  %37 = mul i64 %36, 4
  %38 = load i32, i32* %7, align 4
  %39 = sext i32 %38 to i64
  %40 = add i64 %39, %37
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %7, align 4
  br label %72

42:                                               ; preds = %2
  %43 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dn_cfg, i32 0, i32 0), align 4
  %44 = sext i32 %43 to i64
  %45 = load i32, i32* %8, align 4
  %46 = sext i32 %45 to i64
  %47 = add i64 4, %46
  %48 = mul i64 %44, %47
  %49 = udiv i64 %48, 2
  %50 = load i32, i32* %7, align 4
  %51 = sext i32 %50 to i64
  %52 = add i64 %51, %49
  %53 = trunc i64 %52 to i32
  store i32 %53, i32* %7, align 4
  %54 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dn_cfg, i32 0, i32 1), align 4
  %55 = sext i32 %54 to i64
  %56 = mul i64 %55, 4
  %57 = load i32, i32* %7, align 4
  %58 = sext i32 %57 to i64
  %59 = add i64 %58, %56
  %60 = trunc i64 %59 to i32
  store i32 %60, i32* %7, align 4
  %61 = load i32, i32* @DN_C_SCH, align 4
  %62 = load i32, i32* @DN_C_LINK, align 4
  %63 = or i32 %61, %62
  %64 = load i32, i32* @DN_C_FLOW, align 4
  %65 = or i32 %63, %64
  store i32 %65, i32* %6, align 4
  br label %72

66:                                               ; preds = %2
  %67 = load i32, i32* @DN_C_FS, align 4
  %68 = load i32, i32* @DN_C_QUEUE, align 4
  %69 = or i32 %67, %68
  store i32 %69, i32* %6, align 4
  br label %72

70:                                               ; preds = %2
  %71 = call i32 (...) @dn_compat_calc_size()
  store i32 %71, i32* %7, align 4
  br label %72

72:                                               ; preds = %70, %66, %42, %18
  %73 = load i32, i32* %6, align 4
  %74 = load %struct.copy_args*, %struct.copy_args** %5, align 8
  %75 = getelementptr inbounds %struct.copy_args, %struct.copy_args* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 4
  %76 = load i32, i32* %6, align 4
  %77 = load i32, i32* @DN_C_SCH, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %97

80:                                               ; preds = %72
  %81 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dn_cfg, i32 0, i32 0), align 4
  %82 = sext i32 %81 to i64
  %83 = mul i64 %82, 4
  %84 = udiv i64 %83, 2
  %85 = load i32, i32* %7, align 4
  %86 = sext i32 %85 to i64
  %87 = add i64 %86, %84
  %88 = trunc i64 %87 to i32
  store i32 %88, i32* %7, align 4
  %89 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dn_cfg, i32 0, i32 0), align 4
  %90 = sext i32 %89 to i64
  %91 = mul i64 %90, 4
  %92 = udiv i64 %91, 2
  %93 = load i32, i32* %7, align 4
  %94 = sext i32 %93 to i64
  %95 = add i64 %94, %92
  %96 = trunc i64 %95 to i32
  store i32 %96, i32* %7, align 4
  br label %97

97:                                               ; preds = %80, %72
  %98 = load i32, i32* %6, align 4
  %99 = load i32, i32* @DN_C_FS, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %110

102:                                              ; preds = %97
  %103 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dn_cfg, i32 0, i32 1), align 4
  %104 = sext i32 %103 to i64
  %105 = mul i64 %104, 4
  %106 = load i32, i32* %7, align 4
  %107 = sext i32 %106 to i64
  %108 = add i64 %107, %105
  %109 = trunc i64 %108 to i32
  store i32 %109, i32* %7, align 4
  br label %110

110:                                              ; preds = %102, %97
  %111 = load i32, i32* %6, align 4
  %112 = load i32, i32* @DN_C_LINK, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %124

115:                                              ; preds = %110
  %116 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dn_cfg, i32 0, i32 0), align 4
  %117 = sext i32 %116 to i64
  %118 = mul i64 %117, 4
  %119 = udiv i64 %118, 2
  %120 = load i32, i32* %7, align 4
  %121 = sext i32 %120 to i64
  %122 = add i64 %121, %119
  %123 = trunc i64 %122 to i32
  store i32 %123, i32* %7, align 4
  br label %124

124:                                              ; preds = %115, %110
  %125 = load i32, i32* %6, align 4
  %126 = load i32, i32* @DN_C_QUEUE, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %137

129:                                              ; preds = %124
  %130 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dn_cfg, i32 0, i32 2), align 4
  %131 = sext i32 %130 to i64
  %132 = mul i64 %131, 4
  %133 = load i32, i32* %7, align 4
  %134 = sext i32 %133 to i64
  %135 = add i64 %134, %132
  %136 = trunc i64 %135 to i32
  store i32 %136, i32* %7, align 4
  br label %137

137:                                              ; preds = %129, %124
  %138 = load i32, i32* %6, align 4
  %139 = load i32, i32* @DN_C_FLOW, align 4
  %140 = and i32 %138, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %150

142:                                              ; preds = %137
  %143 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dn_cfg, i32 0, i32 3), align 4
  %144 = sext i32 %143 to i64
  %145 = mul i64 %144, 4
  %146 = load i32, i32* %7, align 4
  %147 = sext i32 %146 to i64
  %148 = add i64 %147, %145
  %149 = trunc i64 %148 to i32
  store i32 %149, i32* %7, align 4
  br label %150

150:                                              ; preds = %142, %137
  %151 = load i32, i32* %7, align 4
  store i32 %151, i32* %3, align 4
  br label %152

152:                                              ; preds = %150, %17
  %153 = load i32, i32* %3, align 4
  ret i32 %153
}

declare dso_local i32 @dn_compat_calc_size(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
