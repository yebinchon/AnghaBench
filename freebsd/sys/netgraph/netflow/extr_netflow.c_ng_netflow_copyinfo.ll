; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/netflow/extr_netflow.c_ng_netflow_copyinfo.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/netflow/extr_netflow.c_ng_netflow_copyinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ng_netflow_info = type { i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ng_netflow_copyinfo(%struct.TYPE_3__* %0, %struct.ng_netflow_info* %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca %struct.ng_netflow_info*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store %struct.ng_netflow_info* %1, %struct.ng_netflow_info** %4, align 8
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 18
  %7 = load i32, i32* %6, align 4
  %8 = call i8* @counter_u64_fetch(i32 %7)
  %9 = load %struct.ng_netflow_info*, %struct.ng_netflow_info** %4, align 8
  %10 = getelementptr inbounds %struct.ng_netflow_info, %struct.ng_netflow_info* %9, i32 0, i32 18
  store i8* %8, i8** %10, align 8
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 17
  %13 = load i32, i32* %12, align 4
  %14 = call i8* @counter_u64_fetch(i32 %13)
  %15 = load %struct.ng_netflow_info*, %struct.ng_netflow_info** %4, align 8
  %16 = getelementptr inbounds %struct.ng_netflow_info, %struct.ng_netflow_info* %15, i32 0, i32 17
  store i8* %14, i8** %16, align 8
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 16
  %19 = load i32, i32* %18, align 4
  %20 = call i8* @counter_u64_fetch(i32 %19)
  %21 = load %struct.ng_netflow_info*, %struct.ng_netflow_info** %4, align 8
  %22 = getelementptr inbounds %struct.ng_netflow_info, %struct.ng_netflow_info* %21, i32 0, i32 16
  store i8* %20, i8** %22, align 8
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 15
  %25 = load i32, i32* %24, align 4
  %26 = call i8* @counter_u64_fetch(i32 %25)
  %27 = load %struct.ng_netflow_info*, %struct.ng_netflow_info** %4, align 8
  %28 = getelementptr inbounds %struct.ng_netflow_info, %struct.ng_netflow_info* %27, i32 0, i32 15
  store i8* %26, i8** %28, align 8
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 14
  %31 = load i32, i32* %30, align 4
  %32 = call i8* @counter_u64_fetch(i32 %31)
  %33 = load %struct.ng_netflow_info*, %struct.ng_netflow_info** %4, align 8
  %34 = getelementptr inbounds %struct.ng_netflow_info, %struct.ng_netflow_info* %33, i32 0, i32 14
  store i8* %32, i8** %34, align 8
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 13
  %37 = load i32, i32* %36, align 4
  %38 = call i8* @counter_u64_fetch(i32 %37)
  %39 = load %struct.ng_netflow_info*, %struct.ng_netflow_info** %4, align 8
  %40 = getelementptr inbounds %struct.ng_netflow_info, %struct.ng_netflow_info* %39, i32 0, i32 13
  store i8* %38, i8** %40, align 8
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 12
  %43 = load i32, i32* %42, align 4
  %44 = call i8* @counter_u64_fetch(i32 %43)
  %45 = load %struct.ng_netflow_info*, %struct.ng_netflow_info** %4, align 8
  %46 = getelementptr inbounds %struct.ng_netflow_info, %struct.ng_netflow_info* %45, i32 0, i32 12
  store i8* %44, i8** %46, align 8
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 11
  %49 = load i32, i32* %48, align 4
  %50 = call i8* @counter_u64_fetch(i32 %49)
  %51 = load %struct.ng_netflow_info*, %struct.ng_netflow_info** %4, align 8
  %52 = getelementptr inbounds %struct.ng_netflow_info, %struct.ng_netflow_info* %51, i32 0, i32 11
  store i8* %50, i8** %52, align 8
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 10
  %55 = load i32, i32* %54, align 4
  %56 = call i8* @counter_u64_fetch(i32 %55)
  %57 = load %struct.ng_netflow_info*, %struct.ng_netflow_info** %4, align 8
  %58 = getelementptr inbounds %struct.ng_netflow_info, %struct.ng_netflow_info* %57, i32 0, i32 10
  store i8* %56, i8** %58, align 8
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 9
  %61 = load i32, i32* %60, align 4
  %62 = call i8* @counter_u64_fetch(i32 %61)
  %63 = load %struct.ng_netflow_info*, %struct.ng_netflow_info** %4, align 8
  %64 = getelementptr inbounds %struct.ng_netflow_info, %struct.ng_netflow_info* %63, i32 0, i32 9
  store i8* %62, i8** %64, align 8
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 8
  %67 = load i32, i32* %66, align 4
  %68 = call i8* @uma_zone_get_cur(i32 %67)
  %69 = load %struct.ng_netflow_info*, %struct.ng_netflow_info** %4, align 8
  %70 = getelementptr inbounds %struct.ng_netflow_info, %struct.ng_netflow_info* %69, i32 0, i32 8
  store i8* %68, i8** %70, align 8
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 6
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.ng_netflow_info*, %struct.ng_netflow_info** %4, align 8
  %75 = getelementptr inbounds %struct.ng_netflow_info, %struct.ng_netflow_info* %74, i32 0, i32 6
  store i32 %73, i32* %75, align 8
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 5
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.ng_netflow_info*, %struct.ng_netflow_info** %4, align 8
  %80 = getelementptr inbounds %struct.ng_netflow_info, %struct.ng_netflow_info* %79, i32 0, i32 5
  store i32 %78, i32* %80, align 4
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 4
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.ng_netflow_info*, %struct.ng_netflow_info** %4, align 8
  %85 = getelementptr inbounds %struct.ng_netflow_info, %struct.ng_netflow_info* %84, i32 0, i32 4
  store i32 %83, i32* %85, align 8
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.ng_netflow_info*, %struct.ng_netflow_info** %4, align 8
  %90 = getelementptr inbounds %struct.ng_netflow_info, %struct.ng_netflow_info* %89, i32 0, i32 3
  store i32 %88, i32* %90, align 4
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.ng_netflow_info*, %struct.ng_netflow_info** %4, align 8
  %95 = getelementptr inbounds %struct.ng_netflow_info, %struct.ng_netflow_info* %94, i32 0, i32 2
  store i32 %93, i32* %95, align 8
  %96 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.ng_netflow_info*, %struct.ng_netflow_info** %4, align 8
  %100 = getelementptr inbounds %struct.ng_netflow_info, %struct.ng_netflow_info* %99, i32 0, i32 1
  store i32 %98, i32* %100, align 4
  %101 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.ng_netflow_info*, %struct.ng_netflow_info** %4, align 8
  %105 = getelementptr inbounds %struct.ng_netflow_info, %struct.ng_netflow_info* %104, i32 0, i32 0
  store i32 %103, i32* %105, align 8
  ret void
}

declare dso_local i8* @counter_u64_fetch(i32) #1

declare dso_local i8* @uma_zone_get_cur(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
