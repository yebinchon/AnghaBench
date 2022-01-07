; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bge/extr_if_bge.c_bge_cksum_pad.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bge/extr_if_bge.c_bge_cksum_pad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { i64, %struct.TYPE_2__, %struct.mbuf* }
%struct.TYPE_2__ = type { i32 }

@ETHER_MIN_NOPAD = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@MT_DATA = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@caddr_t = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mbuf*)* @bge_cksum_pad to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bge_cksum_pad(%struct.mbuf* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mbuf*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mbuf*, align 8
  %6 = alloca %struct.mbuf*, align 8
  store %struct.mbuf* %0, %struct.mbuf** %3, align 8
  %7 = load i32, i32* @ETHER_MIN_NOPAD, align 4
  %8 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %9 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = sub nsw i32 %7, %11
  store i32 %12, i32* %4, align 4
  %13 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %14 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = sext i32 %16 to i64
  %18 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %19 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %17, %20
  br i1 %21, label %22, label %33

22:                                               ; preds = %1
  %23 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %24 = call i64 @M_WRITABLE(%struct.mbuf* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %22
  %27 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %28 = call i32 @M_TRAILINGSPACE(%struct.mbuf* %27)
  %29 = load i32, i32* %4, align 4
  %30 = icmp sge i32 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  store %struct.mbuf* %32, %struct.mbuf** %5, align 8
  br label %71

33:                                               ; preds = %26, %22, %1
  %34 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  store %struct.mbuf* %34, %struct.mbuf** %5, align 8
  br label %35

35:                                               ; preds = %41, %33
  %36 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %37 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %36, i32 0, i32 2
  %38 = load %struct.mbuf*, %struct.mbuf** %37, align 8
  %39 = icmp ne %struct.mbuf* %38, null
  br i1 %39, label %40, label %45

40:                                               ; preds = %35
  br label %41

41:                                               ; preds = %40
  %42 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %43 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %42, i32 0, i32 2
  %44 = load %struct.mbuf*, %struct.mbuf** %43, align 8
  store %struct.mbuf* %44, %struct.mbuf** %5, align 8
  br label %35

45:                                               ; preds = %35
  %46 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %47 = call i64 @M_WRITABLE(%struct.mbuf* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %45
  %50 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %51 = call i32 @M_TRAILINGSPACE(%struct.mbuf* %50)
  %52 = load i32, i32* %4, align 4
  %53 = icmp sge i32 %51, %52
  br i1 %53, label %70, label %54

54:                                               ; preds = %49, %45
  %55 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %56 = load i32, i32* @M_NOWAIT, align 4
  %57 = load i32, i32* @MT_DATA, align 4
  %58 = call i32 @MGET(%struct.mbuf* %55, i32 %56, i32 %57)
  %59 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %60 = icmp eq %struct.mbuf* %59, null
  br i1 %60, label %61, label %63

61:                                               ; preds = %54
  %62 = load i32, i32* @ENOBUFS, align 4
  store i32 %62, i32* %2, align 4
  br label %93

63:                                               ; preds = %54
  %64 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %65 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %64, i32 0, i32 0
  store i64 0, i64* %65, align 8
  %66 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %67 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %68 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %67, i32 0, i32 2
  store %struct.mbuf* %66, %struct.mbuf** %68, align 8
  %69 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  store %struct.mbuf* %69, %struct.mbuf** %5, align 8
  br label %70

70:                                               ; preds = %63, %49
  br label %71

71:                                               ; preds = %70, %31
  %72 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %73 = load i32, i32* @caddr_t, align 4
  %74 = call i64 @mtod(%struct.mbuf* %72, i32 %73)
  %75 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %76 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = add nsw i64 %74, %77
  %79 = load i32, i32* %4, align 4
  %80 = call i32 @memset(i64 %78, i32 0, i32 %79)
  %81 = load i32, i32* %4, align 4
  %82 = sext i32 %81 to i64
  %83 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %84 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = add nsw i64 %85, %82
  store i64 %86, i64* %84, align 8
  %87 = load i32, i32* %4, align 4
  %88 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %89 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = add nsw i32 %91, %87
  store i32 %92, i32* %90, align 8
  store i32 0, i32* %2, align 4
  br label %93

93:                                               ; preds = %71, %61
  %94 = load i32, i32* %2, align 4
  ret i32 %94
}

declare dso_local i64 @M_WRITABLE(%struct.mbuf*) #1

declare dso_local i32 @M_TRAILINGSPACE(%struct.mbuf*) #1

declare dso_local i32 @MGET(%struct.mbuf*, i32, i32) #1

declare dso_local i32 @memset(i64, i32, i32) #1

declare dso_local i64 @mtod(%struct.mbuf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
