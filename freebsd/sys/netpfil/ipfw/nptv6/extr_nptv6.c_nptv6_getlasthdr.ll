; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/nptv6/extr_nptv6.c_nptv6_getlasthdr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/nptv6/extr_nptv6.c_nptv6_getlasthdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nptv6_cfg = type { i32 }
%struct.mbuf = type { i32 }
%struct.ip6_hdr = type { i32 }
%struct.ip6_hbh = type { i32, i32 }

@IPPROTO_HOPOPTS = common dso_local global i32 0, align 4
@IPPROTO_ROUTING = common dso_local global i32 0, align 4
@IPPROTO_DSTOPTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nptv6_cfg*, %struct.mbuf*, i32*)* @nptv6_getlasthdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nptv6_getlasthdr(%struct.nptv6_cfg* %0, %struct.mbuf* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nptv6_cfg*, align 8
  %6 = alloca %struct.mbuf*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.ip6_hdr*, align 8
  %9 = alloca %struct.ip6_hbh*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.nptv6_cfg* %0, %struct.nptv6_cfg** %5, align 8
  store %struct.mbuf* %1, %struct.mbuf** %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load i32*, i32** %7, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  br label %18

15:                                               ; preds = %3
  %16 = load i32*, i32** %7, align 8
  %17 = load i32, i32* %16, align 4
  br label %18

18:                                               ; preds = %15, %14
  %19 = phi i32 [ 0, %14 ], [ %17, %15 ]
  store i32 %19, i32* %11, align 4
  %20 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %21 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %11, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %18
  store i32 -1, i32* %4, align 4
  br label %82

26:                                               ; preds = %18
  %27 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %28 = load i32, i32* %11, align 4
  %29 = call i8* @mtodo(%struct.mbuf* %27, i32 %28)
  %30 = bitcast i8* %29 to %struct.ip6_hdr*
  store %struct.ip6_hdr* %30, %struct.ip6_hdr** %8, align 8
  %31 = load i32, i32* %11, align 4
  %32 = sext i32 %31 to i64
  %33 = add i64 %32, 4
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %11, align 4
  %35 = load %struct.ip6_hdr*, %struct.ip6_hdr** %8, align 8
  %36 = getelementptr inbounds %struct.ip6_hdr, %struct.ip6_hdr* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %10, align 4
  br label %38

38:                                               ; preds = %63, %26
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* @IPPROTO_HOPOPTS, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %50, label %42

42:                                               ; preds = %38
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* @IPPROTO_ROUTING, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %50, label %46

46:                                               ; preds = %42
  %47 = load i32, i32* %10, align 4
  %48 = load i32, i32* @IPPROTO_DSTOPTS, align 4
  %49 = icmp eq i32 %47, %48
  br label %50

50:                                               ; preds = %46, %42, %38
  %51 = phi i1 [ true, %42 ], [ true, %38 ], [ %49, %46 ]
  br i1 %51, label %52, label %74

52:                                               ; preds = %50
  %53 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %54 = load i32, i32* %11, align 4
  %55 = call i8* @mtodo(%struct.mbuf* %53, i32 %54)
  %56 = bitcast i8* %55 to %struct.ip6_hbh*
  store %struct.ip6_hbh* %56, %struct.ip6_hbh** %9, align 8
  %57 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %58 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %11, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %52
  store i32 -1, i32* %4, align 4
  br label %82

63:                                               ; preds = %52
  %64 = load %struct.ip6_hbh*, %struct.ip6_hbh** %9, align 8
  %65 = getelementptr inbounds %struct.ip6_hbh, %struct.ip6_hbh* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  store i32 %66, i32* %10, align 4
  %67 = load %struct.ip6_hbh*, %struct.ip6_hbh** %9, align 8
  %68 = getelementptr inbounds %struct.ip6_hbh, %struct.ip6_hbh* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = add nsw i32 %69, 1
  %71 = shl i32 %70, 3
  %72 = load i32, i32* %11, align 4
  %73 = add nsw i32 %72, %71
  store i32 %73, i32* %11, align 4
  br label %38

74:                                               ; preds = %50
  %75 = load i32*, i32** %7, align 8
  %76 = icmp ne i32* %75, null
  br i1 %76, label %77, label %80

77:                                               ; preds = %74
  %78 = load i32, i32* %11, align 4
  %79 = load i32*, i32** %7, align 8
  store i32 %78, i32* %79, align 4
  br label %80

80:                                               ; preds = %77, %74
  %81 = load i32, i32* %10, align 4
  store i32 %81, i32* %4, align 4
  br label %82

82:                                               ; preds = %80, %62, %25
  %83 = load i32, i32* %4, align 4
  ret i32 %83
}

declare dso_local i8* @mtodo(%struct.mbuf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
