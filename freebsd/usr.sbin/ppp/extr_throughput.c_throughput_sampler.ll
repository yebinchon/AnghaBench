; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_throughput.c_throughput_sampler.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_throughput.c_throughput_sampler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pppThroughput = type { i32, i64, i64, i64, i64, i32, %struct.TYPE_6__, i32, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32, i32 (i32)* }
%struct.TYPE_5__ = type { i64*, i64 }
%struct.TYPE_4__ = type { i64*, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @throughput_sampler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @throughput_sampler(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.pppThroughput*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = bitcast i8* %8 to %struct.pppThroughput*
  store %struct.pppThroughput* %9, %struct.pppThroughput** %3, align 8
  %10 = load %struct.pppThroughput*, %struct.pppThroughput** %3, align 8
  %11 = getelementptr inbounds %struct.pppThroughput, %struct.pppThroughput* %10, i32 0, i32 5
  %12 = call i32 @timer_Stop(i32* %11)
  %13 = load %struct.pppThroughput*, %struct.pppThroughput** %3, align 8
  %14 = call i32 @throughput_uptime(%struct.pppThroughput* %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = load %struct.pppThroughput*, %struct.pppThroughput** %3, align 8
  %17 = getelementptr inbounds %struct.pppThroughput, %struct.pppThroughput* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 %15, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %1
  %21 = load i32, i32* %5, align 4
  %22 = add nsw i32 %21, 1
  br label %27

23:                                               ; preds = %1
  %24 = load %struct.pppThroughput*, %struct.pppThroughput** %3, align 8
  %25 = getelementptr inbounds %struct.pppThroughput, %struct.pppThroughput* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  br label %27

27:                                               ; preds = %23, %20
  %28 = phi i32 [ %22, %20 ], [ %26, %23 ]
  store i32 %28, i32* %6, align 4
  %29 = load %struct.pppThroughput*, %struct.pppThroughput** %3, align 8
  %30 = getelementptr inbounds %struct.pppThroughput, %struct.pppThroughput* %29, i32 0, i32 9
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i64*, i64** %31, align 8
  %33 = load %struct.pppThroughput*, %struct.pppThroughput** %3, align 8
  %34 = getelementptr inbounds %struct.pppThroughput, %struct.pppThroughput* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds i64, i64* %32, i64 %35
  %37 = load i64, i64* %36, align 8
  store i64 %37, i64* %4, align 8
  %38 = load %struct.pppThroughput*, %struct.pppThroughput** %3, align 8
  %39 = getelementptr inbounds %struct.pppThroughput, %struct.pppThroughput* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.pppThroughput*, %struct.pppThroughput** %3, align 8
  %42 = getelementptr inbounds %struct.pppThroughput, %struct.pppThroughput* %41, i32 0, i32 9
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i64*, i64** %43, align 8
  %45 = load %struct.pppThroughput*, %struct.pppThroughput** %3, align 8
  %46 = getelementptr inbounds %struct.pppThroughput, %struct.pppThroughput* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = getelementptr inbounds i64, i64* %44, i64 %47
  store i64 %40, i64* %48, align 8
  %49 = load %struct.pppThroughput*, %struct.pppThroughput** %3, align 8
  %50 = getelementptr inbounds %struct.pppThroughput, %struct.pppThroughput* %49, i32 0, i32 9
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i64*, i64** %51, align 8
  %53 = load %struct.pppThroughput*, %struct.pppThroughput** %3, align 8
  %54 = getelementptr inbounds %struct.pppThroughput, %struct.pppThroughput* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = getelementptr inbounds i64, i64* %52, i64 %55
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* %4, align 8
  %59 = sub i64 %57, %58
  %60 = load i32, i32* %6, align 4
  %61 = sext i32 %60 to i64
  %62 = udiv i64 %59, %61
  %63 = load %struct.pppThroughput*, %struct.pppThroughput** %3, align 8
  %64 = getelementptr inbounds %struct.pppThroughput, %struct.pppThroughput* %63, i32 0, i32 9
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 1
  store i64 %62, i64* %65, align 8
  %66 = load %struct.pppThroughput*, %struct.pppThroughput** %3, align 8
  %67 = getelementptr inbounds %struct.pppThroughput, %struct.pppThroughput* %66, i32 0, i32 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = load i64*, i64** %68, align 8
  %70 = load %struct.pppThroughput*, %struct.pppThroughput** %3, align 8
  %71 = getelementptr inbounds %struct.pppThroughput, %struct.pppThroughput* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = getelementptr inbounds i64, i64* %69, i64 %72
  %74 = load i64, i64* %73, align 8
  store i64 %74, i64* %4, align 8
  %75 = load %struct.pppThroughput*, %struct.pppThroughput** %3, align 8
  %76 = getelementptr inbounds %struct.pppThroughput, %struct.pppThroughput* %75, i32 0, i32 3
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.pppThroughput*, %struct.pppThroughput** %3, align 8
  %79 = getelementptr inbounds %struct.pppThroughput, %struct.pppThroughput* %78, i32 0, i32 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  %81 = load i64*, i64** %80, align 8
  %82 = load %struct.pppThroughput*, %struct.pppThroughput** %3, align 8
  %83 = getelementptr inbounds %struct.pppThroughput, %struct.pppThroughput* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = getelementptr inbounds i64, i64* %81, i64 %84
  store i64 %77, i64* %85, align 8
  %86 = load %struct.pppThroughput*, %struct.pppThroughput** %3, align 8
  %87 = getelementptr inbounds %struct.pppThroughput, %struct.pppThroughput* %86, i32 0, i32 8
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 0
  %89 = load i64*, i64** %88, align 8
  %90 = load %struct.pppThroughput*, %struct.pppThroughput** %3, align 8
  %91 = getelementptr inbounds %struct.pppThroughput, %struct.pppThroughput* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = getelementptr inbounds i64, i64* %89, i64 %92
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* %4, align 8
  %96 = sub i64 %94, %95
  %97 = load i32, i32* %6, align 4
  %98 = sext i32 %97 to i64
  %99 = udiv i64 %96, %98
  %100 = load %struct.pppThroughput*, %struct.pppThroughput** %3, align 8
  %101 = getelementptr inbounds %struct.pppThroughput, %struct.pppThroughput* %100, i32 0, i32 8
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 1
  store i64 %99, i64* %102, align 8
  %103 = load %struct.pppThroughput*, %struct.pppThroughput** %3, align 8
  %104 = getelementptr inbounds %struct.pppThroughput, %struct.pppThroughput* %103, i32 0, i32 9
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = load %struct.pppThroughput*, %struct.pppThroughput** %3, align 8
  %108 = getelementptr inbounds %struct.pppThroughput, %struct.pppThroughput* %107, i32 0, i32 8
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = add i64 %106, %110
  store i64 %111, i64* %7, align 8
  %112 = load %struct.pppThroughput*, %struct.pppThroughput** %3, align 8
  %113 = getelementptr inbounds %struct.pppThroughput, %struct.pppThroughput* %112, i32 0, i32 4
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* %7, align 8
  %116 = icmp ult i64 %114, %115
  br i1 %116, label %117, label %124

117:                                              ; preds = %27
  %118 = load i64, i64* %7, align 8
  %119 = load %struct.pppThroughput*, %struct.pppThroughput** %3, align 8
  %120 = getelementptr inbounds %struct.pppThroughput, %struct.pppThroughput* %119, i32 0, i32 4
  store i64 %118, i64* %120, align 8
  %121 = load %struct.pppThroughput*, %struct.pppThroughput** %3, align 8
  %122 = getelementptr inbounds %struct.pppThroughput, %struct.pppThroughput* %121, i32 0, i32 7
  %123 = call i32 @time(i32* %122)
  br label %124

124:                                              ; preds = %117, %27
  %125 = load %struct.pppThroughput*, %struct.pppThroughput** %3, align 8
  %126 = getelementptr inbounds %struct.pppThroughput, %struct.pppThroughput* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = add i64 %127, 1
  store i64 %128, i64* %126, align 8
  %129 = load %struct.pppThroughput*, %struct.pppThroughput** %3, align 8
  %130 = getelementptr inbounds %struct.pppThroughput, %struct.pppThroughput* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = sext i32 %131 to i64
  %133 = icmp eq i64 %128, %132
  br i1 %133, label %134, label %137

134:                                              ; preds = %124
  %135 = load %struct.pppThroughput*, %struct.pppThroughput** %3, align 8
  %136 = getelementptr inbounds %struct.pppThroughput, %struct.pppThroughput* %135, i32 0, i32 1
  store i64 0, i64* %136, align 8
  br label %137

137:                                              ; preds = %134, %124
  %138 = load %struct.pppThroughput*, %struct.pppThroughput** %3, align 8
  %139 = getelementptr inbounds %struct.pppThroughput, %struct.pppThroughput* %138, i32 0, i32 6
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 1
  %141 = load i32 (i32)*, i32 (i32)** %140, align 8
  %142 = icmp ne i32 (i32)* %141, null
  br i1 %142, label %143, label %159

143:                                              ; preds = %137
  %144 = load i32, i32* %5, align 4
  %145 = load %struct.pppThroughput*, %struct.pppThroughput** %3, align 8
  %146 = getelementptr inbounds %struct.pppThroughput, %struct.pppThroughput* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = icmp sge i32 %144, %147
  br i1 %148, label %149, label %159

149:                                              ; preds = %143
  %150 = load %struct.pppThroughput*, %struct.pppThroughput** %3, align 8
  %151 = getelementptr inbounds %struct.pppThroughput, %struct.pppThroughput* %150, i32 0, i32 6
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 1
  %153 = load i32 (i32)*, i32 (i32)** %152, align 8
  %154 = load %struct.pppThroughput*, %struct.pppThroughput** %3, align 8
  %155 = getelementptr inbounds %struct.pppThroughput, %struct.pppThroughput* %154, i32 0, i32 6
  %156 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = call i32 %153(i32 %157)
  br label %159

159:                                              ; preds = %149, %143, %137
  %160 = load %struct.pppThroughput*, %struct.pppThroughput** %3, align 8
  %161 = getelementptr inbounds %struct.pppThroughput, %struct.pppThroughput* %160, i32 0, i32 5
  %162 = call i32 @timer_Start(i32* %161)
  ret void
}

declare dso_local i32 @timer_Stop(i32*) #1

declare dso_local i32 @throughput_uptime(%struct.pppThroughput*) #1

declare dso_local i32 @time(i32*) #1

declare dso_local i32 @timer_Start(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
