; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/ath/athratestats/extr_main.c_rate_node_stats.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/ath/athratestats/extr_main.c_rate_node_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_ratestats = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.ether_addr = type { i32 }
%struct.ath_rateioctl_tlv = type { i32, i32 }
%struct.sample_node = type { i32 }
%struct.ath_rateioctl_rt = type { i32 }

@ATH_RATE_TLV_RATETABLE = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"unexpected rate control TLV (got 0x%x, expected 0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"unexpected TLV len (got %d bytes, expected %d bytes\0A\00", align 1
@ATH_RATE_TLV_SAMPLENODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath_ratestats*, %struct.ether_addr*)* @rate_node_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rate_node_stats(%struct.ath_ratestats* %0, %struct.ether_addr* %1) #0 {
  %3 = alloca %struct.ath_ratestats*, align 8
  %4 = alloca %struct.ether_addr*, align 8
  %5 = alloca %struct.ath_rateioctl_tlv*, align 8
  %6 = alloca %struct.sample_node*, align 8
  %7 = alloca %struct.ath_rateioctl_rt*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store %struct.ath_ratestats* %0, %struct.ath_ratestats** %3, align 8
  store %struct.ether_addr* %1, %struct.ether_addr** %4, align 8
  store %struct.sample_node* null, %struct.sample_node** %6, align 8
  store %struct.ath_rateioctl_rt* null, %struct.ath_rateioctl_rt** %7, align 8
  store i32 0, i32* %8, align 4
  %10 = load %struct.ath_ratestats*, %struct.ath_ratestats** %3, align 8
  %11 = getelementptr inbounds %struct.ath_ratestats, %struct.ath_ratestats* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to i32*
  store i32* %14, i32** %9, align 8
  %15 = load i32*, i32** %9, align 8
  %16 = bitcast i32* %15 to %struct.ath_rateioctl_tlv*
  store %struct.ath_rateioctl_tlv* %16, %struct.ath_rateioctl_tlv** %5, align 8
  %17 = load %struct.ath_rateioctl_tlv*, %struct.ath_rateioctl_tlv** %5, align 8
  %18 = getelementptr inbounds %struct.ath_rateioctl_tlv, %struct.ath_rateioctl_tlv* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @ATH_RATE_TLV_RATETABLE, align 4
  %21 = icmp ne i32 %19, %20
  br i1 %21, label %22, label %30

22:                                               ; preds = %2
  %23 = load i32, i32* @stderr, align 4
  %24 = load %struct.ath_rateioctl_tlv*, %struct.ath_rateioctl_tlv** %5, align 8
  %25 = getelementptr inbounds %struct.ath_rateioctl_tlv, %struct.ath_rateioctl_tlv* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @ATH_RATE_TLV_RATETABLE, align 4
  %28 = call i32 @fprintf(i32 %23, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %26, i32 %27)
  %29 = call i32 @exit(i32 127) #3
  unreachable

30:                                               ; preds = %2
  %31 = load %struct.ath_rateioctl_tlv*, %struct.ath_rateioctl_tlv** %5, align 8
  %32 = getelementptr inbounds %struct.ath_rateioctl_tlv, %struct.ath_rateioctl_tlv* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = sext i32 %33 to i64
  %35 = icmp ne i64 %34, 4
  br i1 %35, label %36, label %43

36:                                               ; preds = %30
  %37 = load i32, i32* @stderr, align 4
  %38 = load %struct.ath_rateioctl_tlv*, %struct.ath_rateioctl_tlv** %5, align 8
  %39 = getelementptr inbounds %struct.ath_rateioctl_tlv, %struct.ath_rateioctl_tlv* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @fprintf(i32 %37, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i32 %40, i32 4)
  %42 = call i32 @exit(i32 127) #3
  unreachable

43:                                               ; preds = %30
  %44 = load i32*, i32** %9, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 8
  %46 = bitcast i32* %45 to i8*
  %47 = bitcast i8* %46 to %struct.ath_rateioctl_rt*
  store %struct.ath_rateioctl_rt* %47, %struct.ath_rateioctl_rt** %7, align 8
  %48 = load i32*, i32** %9, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 8
  %50 = getelementptr inbounds i32, i32* %49, i64 4
  %51 = bitcast i32* %50 to i8*
  %52 = bitcast i8* %51 to %struct.ath_rateioctl_tlv*
  store %struct.ath_rateioctl_tlv* %52, %struct.ath_rateioctl_tlv** %5, align 8
  %53 = load %struct.ath_rateioctl_tlv*, %struct.ath_rateioctl_tlv** %5, align 8
  %54 = getelementptr inbounds %struct.ath_rateioctl_tlv, %struct.ath_rateioctl_tlv* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @ATH_RATE_TLV_SAMPLENODE, align 4
  %57 = icmp ne i32 %55, %56
  br i1 %57, label %58, label %66

58:                                               ; preds = %43
  %59 = load i32, i32* @stderr, align 4
  %60 = load %struct.ath_rateioctl_tlv*, %struct.ath_rateioctl_tlv** %5, align 8
  %61 = getelementptr inbounds %struct.ath_rateioctl_tlv, %struct.ath_rateioctl_tlv* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @ATH_RATE_TLV_SAMPLENODE, align 4
  %64 = call i32 @fprintf(i32 %59, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %62, i32 %63)
  %65 = call i32 @exit(i32 127) #3
  unreachable

66:                                               ; preds = %43
  %67 = load %struct.ath_rateioctl_tlv*, %struct.ath_rateioctl_tlv** %5, align 8
  %68 = getelementptr inbounds %struct.ath_rateioctl_tlv, %struct.ath_rateioctl_tlv* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = sext i32 %69 to i64
  %71 = icmp ne i64 %70, 4
  br i1 %71, label %72, label %79

72:                                               ; preds = %66
  %73 = load i32, i32* @stderr, align 4
  %74 = load %struct.ath_rateioctl_tlv*, %struct.ath_rateioctl_tlv** %5, align 8
  %75 = getelementptr inbounds %struct.ath_rateioctl_tlv, %struct.ath_rateioctl_tlv* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @fprintf(i32 %73, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i32 %76, i32 4)
  %78 = call i32 @exit(i32 127) #3
  unreachable

79:                                               ; preds = %66
  %80 = load i32*, i32** %9, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 8
  %82 = getelementptr inbounds i32, i32* %81, i64 4
  %83 = getelementptr inbounds i32, i32* %82, i64 8
  %84 = bitcast i32* %83 to i8*
  %85 = bitcast i8* %84 to %struct.sample_node*
  store %struct.sample_node* %85, %struct.sample_node** %6, align 8
  %86 = load %struct.ath_ratestats*, %struct.ath_ratestats** %3, align 8
  %87 = load %struct.ath_rateioctl_rt*, %struct.ath_rateioctl_rt** %7, align 8
  %88 = load %struct.sample_node*, %struct.sample_node** %6, align 8
  %89 = call i32 @ath_sample_stats(%struct.ath_ratestats* %86, %struct.ath_rateioctl_rt* %87, %struct.sample_node* %88)
  ret i32 0
}

declare dso_local i32 @fprintf(i32, i8*, i32, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @ath_sample_stats(%struct.ath_ratestats*, %struct.ath_rateioctl_rt*, %struct.sample_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
