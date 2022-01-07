; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_bbr.c_bbr_merge_rsm.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_bbr.c_bbr_merge_rsm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcp_bbr = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.bbr_sendmap = type { i64, i32, i64, i64, i64, i64, i64, i64 }

@r_tnext = common dso_local global i32 0, align 4
@BBR_HAS_FIN = common dso_local global i32 0, align 4
@BBR_TLP = common dso_local global i32 0, align 4
@BBR_RWND_COLLAPSED = common dso_local global i32 0, align 4
@BBR_MARKED_LOST = common dso_local global i32 0, align 4
@r_next = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.bbr_sendmap* (%struct.tcp_bbr*, %struct.bbr_sendmap*, %struct.bbr_sendmap*)* @bbr_merge_rsm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.bbr_sendmap* @bbr_merge_rsm(%struct.tcp_bbr* %0, %struct.bbr_sendmap* %1, %struct.bbr_sendmap* %2) #0 {
  %4 = alloca %struct.tcp_bbr*, align 8
  %5 = alloca %struct.bbr_sendmap*, align 8
  %6 = alloca %struct.bbr_sendmap*, align 8
  store %struct.tcp_bbr* %0, %struct.tcp_bbr** %4, align 8
  store %struct.bbr_sendmap* %1, %struct.bbr_sendmap** %5, align 8
  store %struct.bbr_sendmap* %2, %struct.bbr_sendmap** %6, align 8
  %7 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %6, align 8
  %8 = getelementptr inbounds %struct.bbr_sendmap, %struct.bbr_sendmap* %7, i32 0, i32 4
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %5, align 8
  %11 = getelementptr inbounds %struct.bbr_sendmap, %struct.bbr_sendmap* %10, i32 0, i32 4
  store i64 %9, i64* %11, align 8
  %12 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %5, align 8
  %13 = getelementptr inbounds %struct.bbr_sendmap, %struct.bbr_sendmap* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %6, align 8
  %16 = getelementptr inbounds %struct.bbr_sendmap, %struct.bbr_sendmap* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp slt i64 %14, %17
  br i1 %18, label %19, label %25

19:                                               ; preds = %3
  %20 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %6, align 8
  %21 = getelementptr inbounds %struct.bbr_sendmap, %struct.bbr_sendmap* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %5, align 8
  %24 = getelementptr inbounds %struct.bbr_sendmap, %struct.bbr_sendmap* %23, i32 0, i32 0
  store i64 %22, i64* %24, align 8
  br label %25

25:                                               ; preds = %19, %3
  %26 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %6, align 8
  %27 = getelementptr inbounds %struct.bbr_sendmap, %struct.bbr_sendmap* %26, i32 0, i32 7
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %25
  %31 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %6, align 8
  %32 = getelementptr inbounds %struct.bbr_sendmap, %struct.bbr_sendmap* %31, i32 0, i32 7
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %5, align 8
  %35 = getelementptr inbounds %struct.bbr_sendmap, %struct.bbr_sendmap* %34, i32 0, i32 7
  %36 = load i64, i64* %35, align 8
  %37 = add nsw i64 %36, %33
  store i64 %37, i64* %35, align 8
  br label %38

38:                                               ; preds = %30, %25
  %39 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %6, align 8
  %40 = getelementptr inbounds %struct.bbr_sendmap, %struct.bbr_sendmap* %39, i32 0, i32 6
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %38
  %44 = load %struct.tcp_bbr*, %struct.tcp_bbr** %4, align 8
  %45 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 2
  %47 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %6, align 8
  %48 = load i32, i32* @r_tnext, align 4
  %49 = call i32 @TAILQ_REMOVE(i32* %46, %struct.bbr_sendmap* %47, i32 %48)
  br label %50

50:                                               ; preds = %43, %38
  %51 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %6, align 8
  %52 = getelementptr inbounds %struct.bbr_sendmap, %struct.bbr_sendmap* %51, i32 0, i32 5
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %50
  %56 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %6, align 8
  %57 = getelementptr inbounds %struct.bbr_sendmap, %struct.bbr_sendmap* %56, i32 0, i32 5
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %5, align 8
  %60 = getelementptr inbounds %struct.bbr_sendmap, %struct.bbr_sendmap* %59, i32 0, i32 5
  store i64 %58, i64* %60, align 8
  br label %61

61:                                               ; preds = %55, %50
  %62 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %6, align 8
  %63 = getelementptr inbounds %struct.bbr_sendmap, %struct.bbr_sendmap* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @BBR_HAS_FIN, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %61
  %69 = load i32, i32* @BBR_HAS_FIN, align 4
  %70 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %5, align 8
  %71 = getelementptr inbounds %struct.bbr_sendmap, %struct.bbr_sendmap* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = or i32 %72, %69
  store i32 %73, i32* %71, align 8
  br label %74

74:                                               ; preds = %68, %61
  %75 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %6, align 8
  %76 = getelementptr inbounds %struct.bbr_sendmap, %struct.bbr_sendmap* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @BBR_TLP, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %74
  %82 = load i32, i32* @BBR_TLP, align 4
  %83 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %5, align 8
  %84 = getelementptr inbounds %struct.bbr_sendmap, %struct.bbr_sendmap* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = or i32 %85, %82
  store i32 %86, i32* %84, align 8
  br label %87

87:                                               ; preds = %81, %74
  %88 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %6, align 8
  %89 = getelementptr inbounds %struct.bbr_sendmap, %struct.bbr_sendmap* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @BBR_RWND_COLLAPSED, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %100

94:                                               ; preds = %87
  %95 = load i32, i32* @BBR_RWND_COLLAPSED, align 4
  %96 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %5, align 8
  %97 = getelementptr inbounds %struct.bbr_sendmap, %struct.bbr_sendmap* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = or i32 %98, %95
  store i32 %99, i32* %97, align 8
  br label %100

100:                                              ; preds = %94, %87
  %101 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %6, align 8
  %102 = getelementptr inbounds %struct.bbr_sendmap, %struct.bbr_sendmap* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @BBR_MARKED_LOST, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %122

107:                                              ; preds = %100
  %108 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %6, align 8
  %109 = getelementptr inbounds %struct.bbr_sendmap, %struct.bbr_sendmap* %108, i32 0, i32 4
  %110 = load i64, i64* %109, align 8
  %111 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %6, align 8
  %112 = getelementptr inbounds %struct.bbr_sendmap, %struct.bbr_sendmap* %111, i32 0, i32 3
  %113 = load i64, i64* %112, align 8
  %114 = sub nsw i64 %110, %113
  %115 = load %struct.tcp_bbr*, %struct.tcp_bbr** %4, align 8
  %116 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = sext i32 %118 to i64
  %120 = sub nsw i64 %119, %114
  %121 = trunc i64 %120 to i32
  store i32 %121, i32* %117, align 4
  br label %122

122:                                              ; preds = %107, %100
  %123 = load %struct.tcp_bbr*, %struct.tcp_bbr** %4, align 8
  %124 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 0
  %126 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %6, align 8
  %127 = load i32, i32* @r_next, align 4
  %128 = call i32 @TAILQ_REMOVE(i32* %125, %struct.bbr_sendmap* %126, i32 %127)
  %129 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %6, align 8
  %130 = getelementptr inbounds %struct.bbr_sendmap, %struct.bbr_sendmap* %129, i32 0, i32 2
  %131 = load i64, i64* %130, align 8
  %132 = icmp eq i64 %131, 0
  br i1 %132, label %133, label %146

133:                                              ; preds = %122
  %134 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %5, align 8
  %135 = getelementptr inbounds %struct.bbr_sendmap, %struct.bbr_sendmap* %134, i32 0, i32 2
  %136 = load i64, i64* %135, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %146

138:                                              ; preds = %133
  %139 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %5, align 8
  %140 = getelementptr inbounds %struct.bbr_sendmap, %struct.bbr_sendmap* %139, i32 0, i32 2
  %141 = load i64, i64* %140, align 8
  %142 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %6, align 8
  %143 = getelementptr inbounds %struct.bbr_sendmap, %struct.bbr_sendmap* %142, i32 0, i32 2
  store i64 %141, i64* %143, align 8
  %144 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %5, align 8
  %145 = getelementptr inbounds %struct.bbr_sendmap, %struct.bbr_sendmap* %144, i32 0, i32 2
  store i64 0, i64* %145, align 8
  br label %146

146:                                              ; preds = %138, %133, %122
  %147 = load %struct.tcp_bbr*, %struct.tcp_bbr** %4, align 8
  %148 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %6, align 8
  %149 = call i32 @bbr_free(%struct.tcp_bbr* %147, %struct.bbr_sendmap* %148)
  %150 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %5, align 8
  ret %struct.bbr_sendmap* %150
}

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.bbr_sendmap*, i32) #1

declare dso_local i32 @bbr_free(%struct.tcp_bbr*, %struct.bbr_sendmap*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
