; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_bbr.c_bbr_clone_rsm.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_bbr.c_bbr_clone_rsm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcp_bbr = type { %struct.TYPE_4__, i64, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i64 }
%struct.bbr_sendmap = type { i32, i32, i32, i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32 }

@BBR_HAS_SYN = common dso_local global i32 0, align 4
@BBR_HAS_FIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tcp_bbr*, %struct.bbr_sendmap*, %struct.bbr_sendmap*, i32)* @bbr_clone_rsm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bbr_clone_rsm(%struct.tcp_bbr* %0, %struct.bbr_sendmap* %1, %struct.bbr_sendmap* %2, i32 %3) #0 {
  %5 = alloca %struct.tcp_bbr*, align 8
  %6 = alloca %struct.bbr_sendmap*, align 8
  %7 = alloca %struct.bbr_sendmap*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.tcp_bbr* %0, %struct.tcp_bbr** %5, align 8
  store %struct.bbr_sendmap* %1, %struct.bbr_sendmap** %6, align 8
  store %struct.bbr_sendmap* %2, %struct.bbr_sendmap** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* %8, align 4
  %11 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %6, align 8
  %12 = getelementptr inbounds %struct.bbr_sendmap, %struct.bbr_sendmap* %11, i32 0, i32 0
  store i32 %10, i32* %12, align 8
  %13 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %7, align 8
  %14 = getelementptr inbounds %struct.bbr_sendmap, %struct.bbr_sendmap* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %6, align 8
  %17 = getelementptr inbounds %struct.bbr_sendmap, %struct.bbr_sendmap* %16, i32 0, i32 1
  store i32 %15, i32* %17, align 4
  %18 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %7, align 8
  %19 = getelementptr inbounds %struct.bbr_sendmap, %struct.bbr_sendmap* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %6, align 8
  %22 = getelementptr inbounds %struct.bbr_sendmap, %struct.bbr_sendmap* %21, i32 0, i32 2
  store i32 %20, i32* %22, align 8
  %23 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %7, align 8
  %24 = getelementptr inbounds %struct.bbr_sendmap, %struct.bbr_sendmap* %23, i32 0, i32 17
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %6, align 8
  %27 = getelementptr inbounds %struct.bbr_sendmap, %struct.bbr_sendmap* %26, i32 0, i32 17
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* @BBR_HAS_SYN, align 4
  %29 = xor i32 %28, -1
  %30 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %6, align 8
  %31 = getelementptr inbounds %struct.bbr_sendmap, %struct.bbr_sendmap* %30, i32 0, i32 17
  %32 = load i32, i32* %31, align 4
  %33 = and i32 %32, %29
  store i32 %33, i32* %31, align 4
  %34 = load i32, i32* @BBR_HAS_FIN, align 4
  %35 = xor i32 %34, -1
  %36 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %7, align 8
  %37 = getelementptr inbounds %struct.bbr_sendmap, %struct.bbr_sendmap* %36, i32 0, i32 17
  %38 = load i32, i32* %37, align 4
  %39 = and i32 %38, %35
  store i32 %39, i32* %37, align 4
  %40 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %7, align 8
  %41 = getelementptr inbounds %struct.bbr_sendmap, %struct.bbr_sendmap* %40, i32 0, i32 16
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %6, align 8
  %44 = getelementptr inbounds %struct.bbr_sendmap, %struct.bbr_sendmap* %43, i32 0, i32 16
  store i32 %42, i32* %44, align 8
  %45 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %6, align 8
  %46 = getelementptr inbounds %struct.bbr_sendmap, %struct.bbr_sendmap* %45, i32 0, i32 15
  store i64 0, i64* %46, align 8
  %47 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %7, align 8
  %48 = getelementptr inbounds %struct.bbr_sendmap, %struct.bbr_sendmap* %47, i32 0, i32 14
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %6, align 8
  %51 = getelementptr inbounds %struct.bbr_sendmap, %struct.bbr_sendmap* %50, i32 0, i32 14
  store i32 %49, i32* %51, align 4
  %52 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %7, align 8
  %53 = getelementptr inbounds %struct.bbr_sendmap, %struct.bbr_sendmap* %52, i32 0, i32 13
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %6, align 8
  %56 = getelementptr inbounds %struct.bbr_sendmap, %struct.bbr_sendmap* %55, i32 0, i32 13
  store i32 %54, i32* %56, align 8
  %57 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %7, align 8
  %58 = getelementptr inbounds %struct.bbr_sendmap, %struct.bbr_sendmap* %57, i32 0, i32 12
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %6, align 8
  %61 = getelementptr inbounds %struct.bbr_sendmap, %struct.bbr_sendmap* %60, i32 0, i32 12
  store i32 %59, i32* %61, align 4
  %62 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %7, align 8
  %63 = getelementptr inbounds %struct.bbr_sendmap, %struct.bbr_sendmap* %62, i32 0, i32 11
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %6, align 8
  %66 = getelementptr inbounds %struct.bbr_sendmap, %struct.bbr_sendmap* %65, i32 0, i32 11
  store i32 %64, i32* %66, align 8
  %67 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %7, align 8
  %68 = getelementptr inbounds %struct.bbr_sendmap, %struct.bbr_sendmap* %67, i32 0, i32 10
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %6, align 8
  %71 = getelementptr inbounds %struct.bbr_sendmap, %struct.bbr_sendmap* %70, i32 0, i32 10
  store i32 %69, i32* %71, align 4
  %72 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %7, align 8
  %73 = getelementptr inbounds %struct.bbr_sendmap, %struct.bbr_sendmap* %72, i32 0, i32 9
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %6, align 8
  %76 = getelementptr inbounds %struct.bbr_sendmap, %struct.bbr_sendmap* %75, i32 0, i32 9
  store i32 %74, i32* %76, align 8
  %77 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %7, align 8
  %78 = getelementptr inbounds %struct.bbr_sendmap, %struct.bbr_sendmap* %77, i32 0, i32 8
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %6, align 8
  %81 = getelementptr inbounds %struct.bbr_sendmap, %struct.bbr_sendmap* %80, i32 0, i32 8
  store i32 %79, i32* %81, align 4
  %82 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %7, align 8
  %83 = getelementptr inbounds %struct.bbr_sendmap, %struct.bbr_sendmap* %82, i32 0, i32 7
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %6, align 8
  %86 = getelementptr inbounds %struct.bbr_sendmap, %struct.bbr_sendmap* %85, i32 0, i32 7
  store i32 %84, i32* %86, align 8
  %87 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %7, align 8
  %88 = getelementptr inbounds %struct.bbr_sendmap, %struct.bbr_sendmap* %87, i32 0, i32 6
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %6, align 8
  %91 = getelementptr inbounds %struct.bbr_sendmap, %struct.bbr_sendmap* %90, i32 0, i32 6
  store i32 %89, i32* %91, align 4
  %92 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %7, align 8
  %93 = getelementptr inbounds %struct.bbr_sendmap, %struct.bbr_sendmap* %92, i32 0, i32 5
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %6, align 8
  %96 = getelementptr inbounds %struct.bbr_sendmap, %struct.bbr_sendmap* %95, i32 0, i32 5
  store i32 %94, i32* %96, align 8
  store i32 0, i32* %9, align 4
  br label %97

97:                                               ; preds = %117, %4
  %98 = load i32, i32* %9, align 4
  %99 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %6, align 8
  %100 = getelementptr inbounds %struct.bbr_sendmap, %struct.bbr_sendmap* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = icmp slt i32 %98, %101
  br i1 %102, label %103, label %120

103:                                              ; preds = %97
  %104 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %7, align 8
  %105 = getelementptr inbounds %struct.bbr_sendmap, %struct.bbr_sendmap* %104, i32 0, i32 4
  %106 = load i32*, i32** %105, align 8
  %107 = load i32, i32* %9, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %106, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %6, align 8
  %112 = getelementptr inbounds %struct.bbr_sendmap, %struct.bbr_sendmap* %111, i32 0, i32 4
  %113 = load i32*, i32** %112, align 8
  %114 = load i32, i32* %9, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %113, i64 %115
  store i32 %110, i32* %116, align 4
  br label %117

117:                                              ; preds = %103
  %118 = load i32, i32* %9, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %9, align 4
  br label %97

120:                                              ; preds = %97
  %121 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %6, align 8
  %122 = getelementptr inbounds %struct.bbr_sendmap, %struct.bbr_sendmap* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %7, align 8
  %125 = getelementptr inbounds %struct.bbr_sendmap, %struct.bbr_sendmap* %124, i32 0, i32 1
  store i32 %123, i32* %125, align 4
  %126 = load %struct.tcp_bbr*, %struct.tcp_bbr** %5, align 8
  %127 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %126, i32 0, i32 2
  %128 = load %struct.TYPE_3__*, %struct.TYPE_3__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = load %struct.tcp_bbr*, %struct.tcp_bbr** %5, align 8
  %132 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = sub nsw i64 %130, %133
  %135 = load %struct.tcp_bbr*, %struct.tcp_bbr** %5, align 8
  %136 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @min(i64 %134, i32 %138)
  store i32 %139, i32* %9, align 4
  %140 = load i32, i32* %9, align 4
  %141 = sdiv i32 %140, 8
  store i32 %141, i32* %9, align 4
  %142 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %7, align 8
  %143 = getelementptr inbounds %struct.bbr_sendmap, %struct.bbr_sendmap* %142, i32 0, i32 3
  %144 = load i32, i32* %143, align 4
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %146, label %164

146:                                              ; preds = %120
  %147 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %7, align 8
  %148 = getelementptr inbounds %struct.bbr_sendmap, %struct.bbr_sendmap* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %7, align 8
  %151 = getelementptr inbounds %struct.bbr_sendmap, %struct.bbr_sendmap* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = sub nsw i32 %149, %152
  %154 = load i32, i32* %9, align 4
  %155 = icmp sle i32 %153, %154
  br i1 %155, label %156, label %164

156:                                              ; preds = %146
  %157 = load %struct.tcp_bbr*, %struct.tcp_bbr** %5, align 8
  %158 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %159, align 8
  %162 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %7, align 8
  %163 = getelementptr inbounds %struct.bbr_sendmap, %struct.bbr_sendmap* %162, i32 0, i32 3
  store i32 1, i32* %163, align 4
  br label %164

164:                                              ; preds = %156, %146, %120
  %165 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %6, align 8
  %166 = getelementptr inbounds %struct.bbr_sendmap, %struct.bbr_sendmap* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %6, align 8
  %169 = getelementptr inbounds %struct.bbr_sendmap, %struct.bbr_sendmap* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = sub nsw i32 %167, %170
  %172 = load i32, i32* %9, align 4
  %173 = icmp sle i32 %171, %172
  br i1 %173, label %174, label %182

174:                                              ; preds = %164
  %175 = load %struct.tcp_bbr*, %struct.tcp_bbr** %5, align 8
  %176 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %177, align 8
  %180 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %6, align 8
  %181 = getelementptr inbounds %struct.bbr_sendmap, %struct.bbr_sendmap* %180, i32 0, i32 3
  store i32 1, i32* %181, align 4
  br label %182

182:                                              ; preds = %174, %164
  ret void
}

declare dso_local i32 @min(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
