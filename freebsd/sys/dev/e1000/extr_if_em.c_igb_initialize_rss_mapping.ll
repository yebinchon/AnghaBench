; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_if_em.c_igb_initialize_rss_mapping.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_if_em.c_igb_initialize_rss_mapping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32, %struct.e1000_hw }
%struct.e1000_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@e1000_82575 = common dso_local global i64 0, align 8
@E1000_MRQC_ENABLE_RSS_8Q = common dso_local global i32 0, align 4
@E1000_MRQC_RSS_FIELD_IPV4 = common dso_local global i32 0, align 4
@E1000_MRQC_RSS_FIELD_IPV4_TCP = common dso_local global i32 0, align 4
@E1000_MRQC_RSS_FIELD_IPV6 = common dso_local global i32 0, align 4
@E1000_MRQC_RSS_FIELD_IPV6_TCP = common dso_local global i32 0, align 4
@E1000_MRQC_RSS_FIELD_IPV4_UDP = common dso_local global i32 0, align 4
@E1000_MRQC_RSS_FIELD_IPV6_UDP = common dso_local global i32 0, align 4
@E1000_MRQC_RSS_FIELD_IPV6_UDP_EX = common dso_local global i32 0, align 4
@E1000_MRQC_RSS_FIELD_IPV6_TCP_EX = common dso_local global i32 0, align 4
@E1000_MRQC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adapter*)* @igb_initialize_rss_mapping to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @igb_initialize_rss_mapping(%struct.adapter* %0) #0 {
  %2 = alloca %struct.adapter*, align 8
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [10 x i32], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %2, align 8
  %10 = load %struct.adapter*, %struct.adapter** %2, align 8
  %11 = getelementptr inbounds %struct.adapter, %struct.adapter* %10, i32 0, i32 1
  store %struct.e1000_hw* %11, %struct.e1000_hw** %3, align 8
  store i32 0, i32* %9, align 4
  %12 = load %struct.adapter*, %struct.adapter** %2, align 8
  %13 = getelementptr inbounds %struct.adapter, %struct.adapter* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @e1000_82575, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  store i32 6, i32* %9, align 4
  br label %20

20:                                               ; preds = %19, %1
  store i32 0, i32* %6, align 4
  store i32 0, i32* %4, align 4
  br label %21

21:                                               ; preds = %50, %20
  %22 = load i32, i32* %4, align 4
  %23 = icmp slt i32 %22, 128
  br i1 %23, label %24, label %53

24:                                               ; preds = %21
  %25 = load i32, i32* %4, align 4
  %26 = load %struct.adapter*, %struct.adapter** %2, align 8
  %27 = getelementptr inbounds %struct.adapter, %struct.adapter* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = srem i32 %25, %28
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* %9, align 4
  %32 = shl i32 %30, %31
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %6, align 4
  %34 = ashr i32 %33, 8
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* %5, align 4
  %37 = shl i32 %36, 24
  %38 = or i32 %35, %37
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %4, align 4
  %40 = and i32 %39, 3
  %41 = icmp eq i32 %40, 3
  br i1 %41, label %42, label %49

42:                                               ; preds = %24
  %43 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %44 = load i32, i32* %4, align 4
  %45 = ashr i32 %44, 2
  %46 = call i32 @E1000_RETA(i32 %45)
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %43, i32 %46, i32 %47)
  store i32 0, i32* %6, align 4
  br label %49

49:                                               ; preds = %42, %24
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %4, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %4, align 4
  br label %21

53:                                               ; preds = %21
  %54 = load i32, i32* @E1000_MRQC_ENABLE_RSS_8Q, align 4
  store i32 %54, i32* %8, align 4
  %55 = bitcast [10 x i32]* %7 to i32**
  %56 = call i32 @arc4rand(i32** %55, i32 40, i32 0)
  store i32 0, i32* %4, align 4
  br label %57

57:                                               ; preds = %69, %53
  %58 = load i32, i32* %4, align 4
  %59 = icmp slt i32 %58, 10
  br i1 %59, label %60, label %72

60:                                               ; preds = %57
  %61 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %62 = call i32 @E1000_RSSRK(i32 0)
  %63 = load i32, i32* %4, align 4
  %64 = load i32, i32* %4, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i64 0, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @E1000_WRITE_REG_ARRAY(%struct.e1000_hw* %61, i32 %62, i32 %63, i32 %67)
  br label %69

69:                                               ; preds = %60
  %70 = load i32, i32* %4, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %4, align 4
  br label %57

72:                                               ; preds = %57
  %73 = load i32, i32* @E1000_MRQC_RSS_FIELD_IPV4, align 4
  %74 = load i32, i32* @E1000_MRQC_RSS_FIELD_IPV4_TCP, align 4
  %75 = or i32 %73, %74
  %76 = load i32, i32* %8, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %8, align 4
  %78 = load i32, i32* @E1000_MRQC_RSS_FIELD_IPV6, align 4
  %79 = load i32, i32* @E1000_MRQC_RSS_FIELD_IPV6_TCP, align 4
  %80 = or i32 %78, %79
  %81 = load i32, i32* %8, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %8, align 4
  %83 = load i32, i32* @E1000_MRQC_RSS_FIELD_IPV4_UDP, align 4
  %84 = load i32, i32* @E1000_MRQC_RSS_FIELD_IPV6_UDP, align 4
  %85 = or i32 %83, %84
  %86 = load i32, i32* %8, align 4
  %87 = or i32 %86, %85
  store i32 %87, i32* %8, align 4
  %88 = load i32, i32* @E1000_MRQC_RSS_FIELD_IPV6_UDP_EX, align 4
  %89 = load i32, i32* @E1000_MRQC_RSS_FIELD_IPV6_TCP_EX, align 4
  %90 = or i32 %88, %89
  %91 = load i32, i32* %8, align 4
  %92 = or i32 %91, %90
  store i32 %92, i32* %8, align 4
  %93 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %94 = load i32, i32* @E1000_MRQC, align 4
  %95 = load i32, i32* %8, align 4
  %96 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %93, i32 %94, i32 %95)
  ret void
}

declare dso_local i32 @E1000_WRITE_REG(%struct.e1000_hw*, i32, i32) #1

declare dso_local i32 @E1000_RETA(i32) #1

declare dso_local i32 @arc4rand(i32**, i32, i32) #1

declare dso_local i32 @E1000_WRITE_REG_ARRAY(%struct.e1000_hw*, i32, i32, i32) #1

declare dso_local i32 @E1000_RSSRK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
