; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/netmap/extr_pkt_hash.c_decode_ip_n_hash.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/netmap/extr_pkt_hash.c_decode_ip_n_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip = type { i32, i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.tcphdr = type { i32, i32 }
%struct.udphdr = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ip*, i32, i32)* @decode_ip_n_hash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_ip_n_hash(%struct.ip* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.tcphdr*, align 8
  %9 = alloca %struct.udphdr*, align 8
  store %struct.ip* %0, %struct.ip** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp eq i32 %10, 2
  br i1 %11, label %12, label %30

12:                                               ; preds = %3
  %13 = load %struct.ip*, %struct.ip** %4, align 8
  %14 = getelementptr inbounds %struct.ip, %struct.ip* %13, i32 0, i32 3
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @ntohl(i32 %16)
  %18 = load %struct.ip*, %struct.ip** %4, align 8
  %19 = getelementptr inbounds %struct.ip, %struct.ip* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @ntohl(i32 %21)
  %23 = call i32 @ntohs(i32 65533)
  %24 = load i32, i32* %6, align 4
  %25 = add nsw i32 %23, %24
  %26 = call i32 @ntohs(i32 65534)
  %27 = load i32, i32* %6, align 4
  %28 = add nsw i32 %26, %27
  %29 = call i32 @sym_hash_fn(i32 %17, i32 %22, i32 %25, i32 %28)
  store i32 %29, i32* %7, align 4
  br label %145

30:                                               ; preds = %3
  store %struct.tcphdr* null, %struct.tcphdr** %8, align 8
  store %struct.udphdr* null, %struct.udphdr** %9, align 8
  %31 = load %struct.ip*, %struct.ip** %4, align 8
  %32 = getelementptr inbounds %struct.ip, %struct.ip* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  switch i32 %33, label %126 [
    i32 129, label %34
    i32 128, label %67
    i32 131, label %100
    i32 134, label %113
    i32 133, label %125
    i32 135, label %125
    i32 130, label %125
    i32 132, label %125
  ]

34:                                               ; preds = %30
  %35 = load %struct.ip*, %struct.ip** %4, align 8
  %36 = bitcast %struct.ip* %35 to i32*
  %37 = load %struct.ip*, %struct.ip** %4, align 8
  %38 = getelementptr inbounds %struct.ip, %struct.ip* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = shl i32 %39, 2
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %36, i64 %41
  %43 = bitcast i32* %42 to %struct.tcphdr*
  store %struct.tcphdr* %43, %struct.tcphdr** %8, align 8
  %44 = load %struct.ip*, %struct.ip** %4, align 8
  %45 = getelementptr inbounds %struct.ip, %struct.ip* %44, i32 0, i32 3
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @ntohl(i32 %47)
  %49 = load %struct.ip*, %struct.ip** %4, align 8
  %50 = getelementptr inbounds %struct.ip, %struct.ip* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @ntohl(i32 %52)
  %54 = load %struct.tcphdr*, %struct.tcphdr** %8, align 8
  %55 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @ntohs(i32 %56)
  %58 = load i32, i32* %6, align 4
  %59 = add nsw i32 %57, %58
  %60 = load %struct.tcphdr*, %struct.tcphdr** %8, align 8
  %61 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @ntohs(i32 %62)
  %64 = load i32, i32* %6, align 4
  %65 = add nsw i32 %63, %64
  %66 = call i32 @sym_hash_fn(i32 %48, i32 %53, i32 %59, i32 %65)
  store i32 %66, i32* %7, align 4
  br label %144

67:                                               ; preds = %30
  %68 = load %struct.ip*, %struct.ip** %4, align 8
  %69 = bitcast %struct.ip* %68 to i32*
  %70 = load %struct.ip*, %struct.ip** %4, align 8
  %71 = getelementptr inbounds %struct.ip, %struct.ip* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = shl i32 %72, 2
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %69, i64 %74
  %76 = bitcast i32* %75 to %struct.udphdr*
  store %struct.udphdr* %76, %struct.udphdr** %9, align 8
  %77 = load %struct.ip*, %struct.ip** %4, align 8
  %78 = getelementptr inbounds %struct.ip, %struct.ip* %77, i32 0, i32 3
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @ntohl(i32 %80)
  %82 = load %struct.ip*, %struct.ip** %4, align 8
  %83 = getelementptr inbounds %struct.ip, %struct.ip* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @ntohl(i32 %85)
  %87 = load %struct.udphdr*, %struct.udphdr** %9, align 8
  %88 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @ntohs(i32 %89)
  %91 = load i32, i32* %6, align 4
  %92 = add nsw i32 %90, %91
  %93 = load %struct.udphdr*, %struct.udphdr** %9, align 8
  %94 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @ntohs(i32 %95)
  %97 = load i32, i32* %6, align 4
  %98 = add nsw i32 %96, %97
  %99 = call i32 @sym_hash_fn(i32 %81, i32 %86, i32 %92, i32 %98)
  store i32 %99, i32* %7, align 4
  br label %144

100:                                              ; preds = %30
  %101 = load %struct.ip*, %struct.ip** %4, align 8
  %102 = bitcast %struct.ip* %101 to i32*
  %103 = load %struct.ip*, %struct.ip** %4, align 8
  %104 = getelementptr inbounds %struct.ip, %struct.ip* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = shl i32 %105, 2
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %102, i64 %107
  %109 = bitcast i32* %108 to %struct.ip*
  %110 = load i32, i32* %5, align 4
  %111 = load i32, i32* %6, align 4
  %112 = call i32 @decode_ip_n_hash(%struct.ip* %109, i32 %110, i32 %111)
  store i32 %112, i32* %7, align 4
  br label %144

113:                                              ; preds = %30
  %114 = load %struct.ip*, %struct.ip** %4, align 8
  %115 = bitcast %struct.ip* %114 to i32*
  %116 = load %struct.ip*, %struct.ip** %4, align 8
  %117 = getelementptr inbounds %struct.ip, %struct.ip* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = shl i32 %118, 2
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %115, i64 %120
  %122 = load i32, i32* %5, align 4
  %123 = load i32, i32* %6, align 4
  %124 = call i32 @decode_gre_hash(i32* %121, i32 %122, i32 %123)
  store i32 %124, i32* %7, align 4
  br label %144

125:                                              ; preds = %30, %30, %30, %30
  br label %126

126:                                              ; preds = %30, %125
  %127 = load %struct.ip*, %struct.ip** %4, align 8
  %128 = getelementptr inbounds %struct.ip, %struct.ip* %127, i32 0, i32 3
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @ntohl(i32 %130)
  %132 = load %struct.ip*, %struct.ip** %4, align 8
  %133 = getelementptr inbounds %struct.ip, %struct.ip* %132, i32 0, i32 2
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @ntohl(i32 %135)
  %137 = call i32 @ntohs(i32 65533)
  %138 = load i32, i32* %6, align 4
  %139 = add nsw i32 %137, %138
  %140 = call i32 @ntohs(i32 65534)
  %141 = load i32, i32* %6, align 4
  %142 = add nsw i32 %140, %141
  %143 = call i32 @sym_hash_fn(i32 %131, i32 %136, i32 %139, i32 %142)
  store i32 %143, i32* %7, align 4
  br label %144

144:                                              ; preds = %126, %113, %100, %67, %34
  br label %145

145:                                              ; preds = %144, %12
  %146 = load i32, i32* %7, align 4
  ret i32 %146
}

declare dso_local i32 @sym_hash_fn(i32, i32, i32, i32) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @decode_gre_hash(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
