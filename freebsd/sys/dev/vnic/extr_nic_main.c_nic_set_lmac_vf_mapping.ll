; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vnic/extr_nic_main.c_nic_set_lmac_vf_mapping.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vnic/extr_nic_main.c_nic_set_lmac_vf_mapping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nicpf = type { i32, i64, i32*, i32 }

@NIC_TNS_ENABLED = common dso_local global i32 0, align 4
@DEFAULT_NUM_VF_ENABLED = common dso_local global i64 0, align 8
@NIC_MAX_BGX = common dso_local global i32 0, align 4
@NIC_HW_MAX_FRS = common dso_local global i32 0, align 4
@MAX_LMAC_PER_BGX = common dso_local global i32 0, align 4
@NIC_PF_LMAC_0_7_CREDIT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nicpf*)* @nic_set_lmac_vf_mapping to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nic_set_lmac_vf_mapping(%struct.nicpf* %0) #0 {
  %2 = alloca %struct.nicpf*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.nicpf* %0, %struct.nicpf** %2, align 8
  %9 = load %struct.nicpf*, %struct.nicpf** %2, align 8
  %10 = getelementptr inbounds %struct.nicpf, %struct.nicpf* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @bgx_get_map(i32 %11)
  store i32 %12, i32* %3, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %7, align 4
  %13 = load %struct.nicpf*, %struct.nicpf** %2, align 8
  %14 = getelementptr inbounds %struct.nicpf, %struct.nicpf* %13, i32 0, i32 1
  store i64 0, i64* %14, align 8
  %15 = load %struct.nicpf*, %struct.nicpf** %2, align 8
  %16 = getelementptr inbounds %struct.nicpf, %struct.nicpf* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @NIC_TNS_ENABLED, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %1
  %22 = load i64, i64* @DEFAULT_NUM_VF_ENABLED, align 8
  %23 = load %struct.nicpf*, %struct.nicpf** %2, align 8
  %24 = getelementptr inbounds %struct.nicpf, %struct.nicpf* %23, i32 0, i32 1
  store i64 %22, i64* %24, align 8
  br label %105

25:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %26

26:                                               ; preds = %102, %25
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @NIC_MAX_BGX, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %105

30:                                               ; preds = %26
  %31 = load i32, i32* %3, align 4
  %32 = load i32, i32* %4, align 4
  %33 = shl i32 1, %32
  %34 = and i32 %31, %33
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  br label %102

37:                                               ; preds = %30
  %38 = load %struct.nicpf*, %struct.nicpf** %2, align 8
  %39 = getelementptr inbounds %struct.nicpf, %struct.nicpf* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @bgx_get_lmac_count(i32 %40, i32 %41)
  store i32 %42, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %43

43:                                               ; preds = %58, %37
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* %7, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %61

47:                                               ; preds = %43
  %48 = load i32, i32* %4, align 4
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @NIC_SET_VF_LMAC_MAP(i32 %48, i32 %49)
  %51 = load %struct.nicpf*, %struct.nicpf** %2, align 8
  %52 = getelementptr inbounds %struct.nicpf, %struct.nicpf* %51, i32 0, i32 2
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* %5, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %5, align 4
  %56 = sext i32 %54 to i64
  %57 = getelementptr inbounds i32, i32* %53, i64 %56
  store i32 %50, i32* %57, align 4
  br label %58

58:                                               ; preds = %47
  %59 = load i32, i32* %6, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %6, align 4
  br label %43

61:                                               ; preds = %43
  %62 = load i32, i32* %7, align 4
  %63 = sext i32 %62 to i64
  %64 = load %struct.nicpf*, %struct.nicpf** %2, align 8
  %65 = getelementptr inbounds %struct.nicpf, %struct.nicpf* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = add nsw i64 %66, %63
  store i64 %67, i64* %65, align 8
  store i32 2, i32* %8, align 4
  %68 = load i32, i32* %8, align 4
  %69 = or i32 %68, 2044
  store i32 %69, i32* %8, align 4
  %70 = load i32, i32* %7, align 4
  %71 = sdiv i32 49152, %70
  %72 = load i32, i32* @NIC_HW_MAX_FRS, align 4
  %73 = sub nsw i32 %71, %72
  %74 = sdiv i32 %73, 16
  %75 = shl i32 %74, 12
  %76 = load i32, i32* %8, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %8, align 4
  %78 = load i32, i32* %4, align 4
  %79 = load i32, i32* @MAX_LMAC_PER_BGX, align 4
  %80 = mul nsw i32 %78, %79
  store i32 %80, i32* %6, align 4
  br label %81

81:                                               ; preds = %98, %61
  %82 = load i32, i32* %6, align 4
  %83 = load i32, i32* %7, align 4
  %84 = load i32, i32* %4, align 4
  %85 = load i32, i32* @MAX_LMAC_PER_BGX, align 4
  %86 = mul nsw i32 %84, %85
  %87 = add nsw i32 %83, %86
  %88 = icmp slt i32 %82, %87
  br i1 %88, label %89, label %101

89:                                               ; preds = %81
  %90 = load %struct.nicpf*, %struct.nicpf** %2, align 8
  %91 = load i64, i64* @NIC_PF_LMAC_0_7_CREDIT, align 8
  %92 = load i32, i32* %6, align 4
  %93 = mul nsw i32 %92, 8
  %94 = sext i32 %93 to i64
  %95 = add nsw i64 %91, %94
  %96 = load i32, i32* %8, align 4
  %97 = call i32 @nic_reg_write(%struct.nicpf* %90, i64 %95, i32 %96)
  br label %98

98:                                               ; preds = %89
  %99 = load i32, i32* %6, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %6, align 4
  br label %81

101:                                              ; preds = %81
  br label %102

102:                                              ; preds = %101, %36
  %103 = load i32, i32* %4, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %4, align 4
  br label %26

105:                                              ; preds = %21, %26
  ret void
}

declare dso_local i32 @bgx_get_map(i32) #1

declare dso_local i32 @bgx_get_lmac_count(i32, i32) #1

declare dso_local i32 @NIC_SET_VF_LMAC_MAP(i32, i32) #1

declare dso_local i32 @nic_reg_write(%struct.nicpf*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
