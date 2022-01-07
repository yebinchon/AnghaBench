; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/nat64/extr_nat64_translate.c_nat64_getlasthdr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/nat64/extr_nat64_translate.c_nat64_getlasthdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { i32 }
%struct.ip6_hdr = type { i32, i64 }
%struct.ip6_hbh = type { i32, i32 }

@IPPROTO_HOPOPTS = common dso_local global i32 0, align 4
@IPPROTO_ROUTING = common dso_local global i32 0, align 4
@IPPROTO_DSTOPTS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nat64_getlasthdr(%struct.mbuf* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mbuf*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.ip6_hdr*, align 8
  %7 = alloca %struct.ip6_hbh*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.mbuf* %0, %struct.mbuf** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i32*, i32** %5, align 8
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %9, align 4
  br label %16

15:                                               ; preds = %2
  store i32 0, i32* %9, align 4
  br label %16

16:                                               ; preds = %15, %12
  %17 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %18 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = sext i32 %19 to i64
  %21 = load i32, i32* %9, align 4
  %22 = sext i32 %21 to i64
  %23 = add i64 %22, 16
  %24 = icmp ult i64 %20, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %16
  store i32 -1, i32* %3, align 4
  br label %92

26:                                               ; preds = %16
  %27 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %28 = load i32, i32* %9, align 4
  %29 = call i8* @mtodo(%struct.mbuf* %27, i32 %28)
  %30 = bitcast i8* %29 to %struct.ip6_hdr*
  store %struct.ip6_hdr* %30, %struct.ip6_hdr** %6, align 8
  %31 = load i32, i32* %9, align 4
  %32 = sext i32 %31 to i64
  %33 = add i64 %32, 16
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %9, align 4
  %35 = load %struct.ip6_hdr*, %struct.ip6_hdr** %6, align 8
  %36 = getelementptr inbounds %struct.ip6_hdr, %struct.ip6_hdr* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  store i32 %37, i32* %8, align 4
  br label %38

38:                                               ; preds = %73, %26
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* @IPPROTO_HOPOPTS, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %50, label %42

42:                                               ; preds = %38
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* @IPPROTO_ROUTING, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %50, label %46

46:                                               ; preds = %42
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* @IPPROTO_DSTOPTS, align 4
  %49 = icmp eq i32 %47, %48
  br label %50

50:                                               ; preds = %46, %42, %38
  %51 = phi i1 [ true, %42 ], [ true, %38 ], [ %49, %46 ]
  br i1 %51, label %52, label %84

52:                                               ; preds = %50
  %53 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %54 = load i32, i32* %9, align 4
  %55 = call i8* @mtodo(%struct.mbuf* %53, i32 %54)
  %56 = bitcast i8* %55 to %struct.ip6_hbh*
  store %struct.ip6_hbh* %56, %struct.ip6_hbh** %7, align 8
  %57 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %58 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %9, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %52
  store i32 -1, i32* %3, align 4
  br label %92

63:                                               ; preds = %52
  %64 = load i32, i32* %8, align 4
  %65 = load i32, i32* @IPPROTO_HOPOPTS, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %73

67:                                               ; preds = %63
  %68 = load %struct.ip6_hdr*, %struct.ip6_hdr** %6, align 8
  %69 = getelementptr inbounds %struct.ip6_hdr, %struct.ip6_hdr* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %67
  store i32 -1, i32* %3, align 4
  br label %92

73:                                               ; preds = %67, %63
  %74 = load %struct.ip6_hbh*, %struct.ip6_hbh** %7, align 8
  %75 = getelementptr inbounds %struct.ip6_hbh, %struct.ip6_hbh* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  store i32 %76, i32* %8, align 4
  %77 = load %struct.ip6_hbh*, %struct.ip6_hbh** %7, align 8
  %78 = getelementptr inbounds %struct.ip6_hbh, %struct.ip6_hbh* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = add nsw i32 %79, 1
  %81 = shl i32 %80, 3
  %82 = load i32, i32* %9, align 4
  %83 = add nsw i32 %82, %81
  store i32 %83, i32* %9, align 4
  br label %38

84:                                               ; preds = %50
  %85 = load i32*, i32** %5, align 8
  %86 = icmp ne i32* %85, null
  br i1 %86, label %87, label %90

87:                                               ; preds = %84
  %88 = load i32, i32* %9, align 4
  %89 = load i32*, i32** %5, align 8
  store i32 %88, i32* %89, align 4
  br label %90

90:                                               ; preds = %87, %84
  %91 = load i32, i32* %8, align 4
  store i32 %91, i32* %3, align 4
  br label %92

92:                                               ; preds = %90, %72, %62, %25
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

declare dso_local i8* @mtodo(%struct.mbuf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
