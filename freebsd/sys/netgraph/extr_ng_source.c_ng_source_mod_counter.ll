; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_source.c_ng_source_mod_counter.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_source.c_ng_source_mod_counter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ng_source_embed_cnt_info = type { i32, i32, i32, i32, i64, i32 }
%struct.mbuf = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.ng_source_embed_cnt_info*, %struct.mbuf*, i32)* @ng_source_mod_counter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ng_source_mod_counter(i32 %0, %struct.ng_source_embed_cnt_info* %1, %struct.mbuf* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ng_source_embed_cnt_info*, align 8
  %7 = alloca %struct.mbuf*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.ng_source_embed_cnt_info* %1, %struct.ng_source_embed_cnt_info** %6, align 8
  store %struct.mbuf* %2, %struct.mbuf** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load %struct.ng_source_embed_cnt_info*, %struct.ng_source_embed_cnt_info** %6, align 8
  %12 = getelementptr inbounds %struct.ng_source_embed_cnt_info, %struct.ng_source_embed_cnt_info* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @htonl(i32 %13)
  store i32 %14, i32* %10, align 4
  %15 = ptrtoint i32* %10 to i64
  %16 = add i64 %15, 4
  %17 = load %struct.ng_source_embed_cnt_info*, %struct.ng_source_embed_cnt_info** %6, align 8
  %18 = getelementptr inbounds %struct.ng_source_embed_cnt_info, %struct.ng_source_embed_cnt_info* %17, i32 0, i32 4
  %19 = load i64, i64* %18, align 8
  %20 = sub i64 %16, %19
  store i64 %20, i64* %9, align 8
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %23 = load %struct.ng_source_embed_cnt_info*, %struct.ng_source_embed_cnt_info** %6, align 8
  %24 = getelementptr inbounds %struct.ng_source_embed_cnt_info, %struct.ng_source_embed_cnt_info* %23, i32 0, i32 5
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.ng_source_embed_cnt_info*, %struct.ng_source_embed_cnt_info** %6, align 8
  %27 = getelementptr inbounds %struct.ng_source_embed_cnt_info, %struct.ng_source_embed_cnt_info* %26, i32 0, i32 4
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* %9, align 8
  %30 = load %struct.ng_source_embed_cnt_info*, %struct.ng_source_embed_cnt_info** %6, align 8
  %31 = getelementptr inbounds %struct.ng_source_embed_cnt_info, %struct.ng_source_embed_cnt_info* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @ng_source_packet_mod(i32 %21, %struct.mbuf* %22, i32 %25, i64 %28, i64 %29, i32 %32)
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %123

36:                                               ; preds = %4
  %37 = load i32, i32* %8, align 4
  %38 = load %struct.ng_source_embed_cnt_info*, %struct.ng_source_embed_cnt_info** %6, align 8
  %39 = getelementptr inbounds %struct.ng_source_embed_cnt_info, %struct.ng_source_embed_cnt_info* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = add nsw i32 %40, %37
  store i32 %41, i32* %39, align 8
  %42 = load i32, i32* %8, align 4
  %43 = icmp sgt i32 %42, 0
  br i1 %43, label %44, label %81

44:                                               ; preds = %36
  %45 = load %struct.ng_source_embed_cnt_info*, %struct.ng_source_embed_cnt_info** %6, align 8
  %46 = getelementptr inbounds %struct.ng_source_embed_cnt_info, %struct.ng_source_embed_cnt_info* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.ng_source_embed_cnt_info*, %struct.ng_source_embed_cnt_info** %6, align 8
  %49 = getelementptr inbounds %struct.ng_source_embed_cnt_info, %struct.ng_source_embed_cnt_info* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = icmp sgt i32 %47, %50
  br i1 %51, label %52, label %81

52:                                               ; preds = %44
  %53 = load %struct.ng_source_embed_cnt_info*, %struct.ng_source_embed_cnt_info** %6, align 8
  %54 = getelementptr inbounds %struct.ng_source_embed_cnt_info, %struct.ng_source_embed_cnt_info* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = sub nsw i32 %55, 1
  %57 = load %struct.ng_source_embed_cnt_info*, %struct.ng_source_embed_cnt_info** %6, align 8
  %58 = getelementptr inbounds %struct.ng_source_embed_cnt_info, %struct.ng_source_embed_cnt_info* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.ng_source_embed_cnt_info*, %struct.ng_source_embed_cnt_info** %6, align 8
  %61 = getelementptr inbounds %struct.ng_source_embed_cnt_info, %struct.ng_source_embed_cnt_info* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = sub nsw i32 %59, %62
  %64 = add nsw i32 %56, %63
  %65 = load %struct.ng_source_embed_cnt_info*, %struct.ng_source_embed_cnt_info** %6, align 8
  %66 = getelementptr inbounds %struct.ng_source_embed_cnt_info, %struct.ng_source_embed_cnt_info* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 8
  %67 = load %struct.ng_source_embed_cnt_info*, %struct.ng_source_embed_cnt_info** %6, align 8
  %68 = getelementptr inbounds %struct.ng_source_embed_cnt_info, %struct.ng_source_embed_cnt_info* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.ng_source_embed_cnt_info*, %struct.ng_source_embed_cnt_info** %6, align 8
  %71 = getelementptr inbounds %struct.ng_source_embed_cnt_info, %struct.ng_source_embed_cnt_info* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = icmp sgt i32 %69, %72
  br i1 %73, label %74, label %80

74:                                               ; preds = %52
  %75 = load %struct.ng_source_embed_cnt_info*, %struct.ng_source_embed_cnt_info** %6, align 8
  %76 = getelementptr inbounds %struct.ng_source_embed_cnt_info, %struct.ng_source_embed_cnt_info* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.ng_source_embed_cnt_info*, %struct.ng_source_embed_cnt_info** %6, align 8
  %79 = getelementptr inbounds %struct.ng_source_embed_cnt_info, %struct.ng_source_embed_cnt_info* %78, i32 0, i32 0
  store i32 %77, i32* %79, align 8
  br label %80

80:                                               ; preds = %74, %52
  br label %122

81:                                               ; preds = %44, %36
  %82 = load i32, i32* %8, align 4
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %121

84:                                               ; preds = %81
  %85 = load %struct.ng_source_embed_cnt_info*, %struct.ng_source_embed_cnt_info** %6, align 8
  %86 = getelementptr inbounds %struct.ng_source_embed_cnt_info, %struct.ng_source_embed_cnt_info* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.ng_source_embed_cnt_info*, %struct.ng_source_embed_cnt_info** %6, align 8
  %89 = getelementptr inbounds %struct.ng_source_embed_cnt_info, %struct.ng_source_embed_cnt_info* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = icmp slt i32 %87, %90
  br i1 %91, label %92, label %121

92:                                               ; preds = %84
  %93 = load %struct.ng_source_embed_cnt_info*, %struct.ng_source_embed_cnt_info** %6, align 8
  %94 = getelementptr inbounds %struct.ng_source_embed_cnt_info, %struct.ng_source_embed_cnt_info* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = add nsw i32 %95, 1
  %97 = load %struct.ng_source_embed_cnt_info*, %struct.ng_source_embed_cnt_info** %6, align 8
  %98 = getelementptr inbounds %struct.ng_source_embed_cnt_info, %struct.ng_source_embed_cnt_info* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.ng_source_embed_cnt_info*, %struct.ng_source_embed_cnt_info** %6, align 8
  %101 = getelementptr inbounds %struct.ng_source_embed_cnt_info, %struct.ng_source_embed_cnt_info* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = sub nsw i32 %99, %102
  %104 = add nsw i32 %96, %103
  %105 = load %struct.ng_source_embed_cnt_info*, %struct.ng_source_embed_cnt_info** %6, align 8
  %106 = getelementptr inbounds %struct.ng_source_embed_cnt_info, %struct.ng_source_embed_cnt_info* %105, i32 0, i32 0
  store i32 %104, i32* %106, align 8
  %107 = load %struct.ng_source_embed_cnt_info*, %struct.ng_source_embed_cnt_info** %6, align 8
  %108 = getelementptr inbounds %struct.ng_source_embed_cnt_info, %struct.ng_source_embed_cnt_info* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.ng_source_embed_cnt_info*, %struct.ng_source_embed_cnt_info** %6, align 8
  %111 = getelementptr inbounds %struct.ng_source_embed_cnt_info, %struct.ng_source_embed_cnt_info* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = icmp slt i32 %109, %112
  br i1 %113, label %114, label %120

114:                                              ; preds = %92
  %115 = load %struct.ng_source_embed_cnt_info*, %struct.ng_source_embed_cnt_info** %6, align 8
  %116 = getelementptr inbounds %struct.ng_source_embed_cnt_info, %struct.ng_source_embed_cnt_info* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.ng_source_embed_cnt_info*, %struct.ng_source_embed_cnt_info** %6, align 8
  %119 = getelementptr inbounds %struct.ng_source_embed_cnt_info, %struct.ng_source_embed_cnt_info* %118, i32 0, i32 0
  store i32 %117, i32* %119, align 8
  br label %120

120:                                              ; preds = %114, %92
  br label %121

121:                                              ; preds = %120, %84, %81
  br label %122

122:                                              ; preds = %121, %80
  br label %123

123:                                              ; preds = %122, %4
  ret void
}

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @ng_source_packet_mod(i32, %struct.mbuf*, i32, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
