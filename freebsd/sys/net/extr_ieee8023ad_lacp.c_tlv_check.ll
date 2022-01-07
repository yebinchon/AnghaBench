; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_ieee8023ad_lacp.c_tlv_check.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_ieee8023ad_lacp.c_tlv_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tlvhdr = type { i64, i64 }
%struct.tlv_template = type { i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, %struct.tlvhdr*, %struct.tlv_template*, i64)* @tlv_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tlv_check(i8* %0, i64 %1, %struct.tlvhdr* %2, %struct.tlv_template* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.tlvhdr*, align 8
  %10 = alloca %struct.tlv_template*, align 8
  %11 = alloca i64, align 8
  store i8* %0, i8** %7, align 8
  store i64 %1, i64* %8, align 8
  store %struct.tlvhdr* %2, %struct.tlvhdr** %9, align 8
  store %struct.tlv_template* %3, %struct.tlv_template** %10, align 8
  store i64 %4, i64* %11, align 8
  br label %12

12:                                               ; preds = %5, %51
  %13 = load %struct.tlvhdr*, %struct.tlvhdr** %9, align 8
  %14 = bitcast %struct.tlvhdr* %13 to i8*
  %15 = load i8*, i8** %7, align 8
  %16 = ptrtoint i8* %14 to i64
  %17 = ptrtoint i8* %15 to i64
  %18 = sub i64 %16, %17
  %19 = add i64 %18, 16
  %20 = load i64, i64* %8, align 8
  %21 = icmp ugt i64 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %12
  %23 = load i32, i32* @EINVAL, align 4
  store i32 %23, i32* %6, align 4
  br label %62

24:                                               ; preds = %12
  %25 = load i64, i64* %11, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %24
  %28 = load %struct.tlvhdr*, %struct.tlvhdr** %9, align 8
  %29 = getelementptr inbounds %struct.tlvhdr, %struct.tlvhdr* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.tlv_template*, %struct.tlv_template** %10, align 8
  %32 = getelementptr inbounds %struct.tlv_template, %struct.tlv_template* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %30, %33
  br i1 %34, label %43, label %35

35:                                               ; preds = %27, %24
  %36 = load %struct.tlvhdr*, %struct.tlvhdr** %9, align 8
  %37 = getelementptr inbounds %struct.tlvhdr, %struct.tlvhdr* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.tlv_template*, %struct.tlv_template** %10, align 8
  %40 = getelementptr inbounds %struct.tlv_template, %struct.tlv_template* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %38, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %35, %27
  %44 = load i32, i32* @EINVAL, align 4
  store i32 %44, i32* %6, align 4
  br label %62

45:                                               ; preds = %35
  %46 = load %struct.tlv_template*, %struct.tlv_template** %10, align 8
  %47 = getelementptr inbounds %struct.tlv_template, %struct.tlv_template* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %45
  br label %61

51:                                               ; preds = %45
  %52 = load %struct.tlvhdr*, %struct.tlvhdr** %9, align 8
  %53 = bitcast %struct.tlvhdr* %52 to i8*
  %54 = load %struct.tlvhdr*, %struct.tlvhdr** %9, align 8
  %55 = getelementptr inbounds %struct.tlvhdr, %struct.tlvhdr* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = getelementptr inbounds i8, i8* %53, i64 %56
  %58 = bitcast i8* %57 to %struct.tlvhdr*
  store %struct.tlvhdr* %58, %struct.tlvhdr** %9, align 8
  %59 = load %struct.tlv_template*, %struct.tlv_template** %10, align 8
  %60 = getelementptr inbounds %struct.tlv_template, %struct.tlv_template* %59, i32 1
  store %struct.tlv_template* %60, %struct.tlv_template** %10, align 8
  br label %12

61:                                               ; preds = %50
  store i32 0, i32* %6, align 4
  br label %62

62:                                               ; preds = %61, %43, %22
  %63 = load i32, i32* %6, align 4
  ret i32 %63
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
