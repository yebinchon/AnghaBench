; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlxfw/extr_mlxfw_mfa2_tlv.h_mlxfw_mfa2_tlv_payload_get.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlxfw/extr_mlxfw_mfa2_tlv.h_mlxfw_mfa2_tlv_payload_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxfw_mfa2_file = type { i32 }
%struct.mlxfw_mfa2_tlv = type { i64, i8*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.mlxfw_mfa2_file*, %struct.mlxfw_mfa2_tlv*, i64, i64, i32)* @mlxfw_mfa2_tlv_payload_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @mlxfw_mfa2_tlv_payload_get(%struct.mlxfw_mfa2_file* %0, %struct.mlxfw_mfa2_tlv* %1, i64 %2, i64 %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca %struct.mlxfw_mfa2_file*, align 8
  %8 = alloca %struct.mlxfw_mfa2_tlv*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64*, align 8
  store %struct.mlxfw_mfa2_file* %0, %struct.mlxfw_mfa2_file** %7, align 8
  store %struct.mlxfw_mfa2_tlv* %1, %struct.mlxfw_mfa2_tlv** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %13 = load %struct.mlxfw_mfa2_tlv*, %struct.mlxfw_mfa2_tlv** %8, align 8
  %14 = bitcast %struct.mlxfw_mfa2_tlv* %13 to i64*
  %15 = load %struct.mlxfw_mfa2_tlv*, %struct.mlxfw_mfa2_tlv** %8, align 8
  %16 = getelementptr inbounds %struct.mlxfw_mfa2_tlv, %struct.mlxfw_mfa2_tlv* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = call i64 @be16_to_cpu(i32 %17)
  %19 = getelementptr inbounds i64, i64* %14, i64 %18
  %20 = getelementptr inbounds i64, i64* %19, i64 -1
  store i64* %20, i64** %12, align 8
  %21 = load %struct.mlxfw_mfa2_file*, %struct.mlxfw_mfa2_file** %7, align 8
  %22 = load %struct.mlxfw_mfa2_tlv*, %struct.mlxfw_mfa2_tlv** %8, align 8
  %23 = bitcast %struct.mlxfw_mfa2_tlv* %22 to i64*
  %24 = call i32 @mlxfw_mfa2_valid_ptr(%struct.mlxfw_mfa2_file* %21, i64* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %5
  %27 = load %struct.mlxfw_mfa2_file*, %struct.mlxfw_mfa2_file** %7, align 8
  %28 = load i64*, i64** %12, align 8
  %29 = call i32 @mlxfw_mfa2_valid_ptr(%struct.mlxfw_mfa2_file* %27, i64* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %26, %5
  store i8* null, i8** %6, align 8
  br label %65

32:                                               ; preds = %26
  %33 = load %struct.mlxfw_mfa2_tlv*, %struct.mlxfw_mfa2_tlv** %8, align 8
  %34 = getelementptr inbounds %struct.mlxfw_mfa2_tlv, %struct.mlxfw_mfa2_tlv* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* %9, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  store i8* null, i8** %6, align 8
  br label %65

39:                                               ; preds = %32
  %40 = load i32, i32* %11, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %39
  %43 = load %struct.mlxfw_mfa2_tlv*, %struct.mlxfw_mfa2_tlv** %8, align 8
  %44 = getelementptr inbounds %struct.mlxfw_mfa2_tlv, %struct.mlxfw_mfa2_tlv* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = call i64 @be16_to_cpu(i32 %45)
  %47 = load i64, i64* %10, align 8
  %48 = icmp ult i64 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %42
  store i8* null, i8** %6, align 8
  br label %65

50:                                               ; preds = %42, %39
  %51 = load i32, i32* %11, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %61, label %53

53:                                               ; preds = %50
  %54 = load %struct.mlxfw_mfa2_tlv*, %struct.mlxfw_mfa2_tlv** %8, align 8
  %55 = getelementptr inbounds %struct.mlxfw_mfa2_tlv, %struct.mlxfw_mfa2_tlv* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = call i64 @be16_to_cpu(i32 %56)
  %58 = load i64, i64* %10, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %53
  store i8* null, i8** %6, align 8
  br label %65

61:                                               ; preds = %53, %50
  %62 = load %struct.mlxfw_mfa2_tlv*, %struct.mlxfw_mfa2_tlv** %8, align 8
  %63 = getelementptr inbounds %struct.mlxfw_mfa2_tlv, %struct.mlxfw_mfa2_tlv* %62, i32 0, i32 1
  %64 = load i8*, i8** %63, align 8
  store i8* %64, i8** %6, align 8
  br label %65

65:                                               ; preds = %61, %60, %49, %38, %31
  %66 = load i8*, i8** %6, align 8
  ret i8* %66
}

declare dso_local i64 @be16_to_cpu(i32) #1

declare dso_local i32 @mlxfw_mfa2_valid_ptr(%struct.mlxfw_mfa2_file*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
