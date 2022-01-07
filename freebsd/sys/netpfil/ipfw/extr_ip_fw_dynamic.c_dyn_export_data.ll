; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_dynamic.c_dyn_export_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_dynamic.c_dyn_export_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dyn_data = type { i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64 }
%struct.TYPE_3__ = type { i8, %struct.TYPE_3__*, i32, i64, i32, i32, i32*, i32, i64, i64, i64, i32, i32 }

@time_uptime = common dso_local global i64 0, align 8
@DYN_REFERENCED = common dso_local global i32 0, align 4
@IPFW_DYN_ORPHANED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dyn_data*, i32, i32, i32, %struct.TYPE_3__*)* @dyn_export_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dyn_export_data(%struct.dyn_data* %0, i32 %1, i32 %2, i32 %3, %struct.TYPE_3__* %4) #0 {
  %6 = alloca %struct.dyn_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_3__*, align 8
  store %struct.dyn_data* %0, %struct.dyn_data** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.TYPE_3__* %4, %struct.TYPE_3__** %10, align 8
  %11 = load i32, i32* %8, align 4
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 12
  store i32 %11, i32* %13, align 4
  %14 = load i32, i32* %7, align 4
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 11
  store i32 %14, i32* %16, align 8
  %17 = load %struct.dyn_data*, %struct.dyn_data** %6, align 8
  %18 = getelementptr inbounds %struct.dyn_data, %struct.dyn_data* %17, i32 0, i32 10
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.dyn_data*, %struct.dyn_data** %6, align 8
  %21 = getelementptr inbounds %struct.dyn_data, %struct.dyn_data* %20, i32 0, i32 9
  %22 = load i64, i64* %21, align 8
  %23 = add nsw i64 %19, %22
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 10
  store i64 %23, i64* %25, align 8
  %26 = load %struct.dyn_data*, %struct.dyn_data** %6, align 8
  %27 = getelementptr inbounds %struct.dyn_data, %struct.dyn_data* %26, i32 0, i32 8
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.dyn_data*, %struct.dyn_data** %6, align 8
  %30 = getelementptr inbounds %struct.dyn_data, %struct.dyn_data* %29, i32 0, i32 7
  %31 = load i64, i64* %30, align 8
  %32 = add nsw i64 %28, %31
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 9
  store i64 %32, i64* %34, align 8
  %35 = load %struct.dyn_data*, %struct.dyn_data** %6, align 8
  %36 = getelementptr inbounds %struct.dyn_data, %struct.dyn_data* %35, i32 0, i32 6
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @time_uptime, align 8
  %39 = call i64 @TIME_LEQ(i64 %37, i64 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %5
  br label %48

42:                                               ; preds = %5
  %43 = load %struct.dyn_data*, %struct.dyn_data** %6, align 8
  %44 = getelementptr inbounds %struct.dyn_data, %struct.dyn_data* %43, i32 0, i32 6
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @time_uptime, align 8
  %47 = sub nsw i64 %45, %46
  br label %48

48:                                               ; preds = %42, %41
  %49 = phi i64 [ 0, %41 ], [ %47, %42 ]
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 8
  store i64 %49, i64* %51, align 8
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load %struct.dyn_data*, %struct.dyn_data** %6, align 8
  %55 = getelementptr inbounds %struct.dyn_data, %struct.dyn_data* %54, i32 0, i32 5
  %56 = call i32 @memcpy(i8* %53, i32* %55, i32 4)
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = getelementptr inbounds i8, i8* %58, i64 4
  %60 = call i32 @memcpy(i8* %59, i32* %9, i32 4)
  %61 = load %struct.dyn_data*, %struct.dyn_data** %6, align 8
  %62 = getelementptr inbounds %struct.dyn_data, %struct.dyn_data* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 7
  store i32 %63, i32* %65, align 8
  %66 = load %struct.dyn_data*, %struct.dyn_data** %6, align 8
  %67 = getelementptr inbounds %struct.dyn_data, %struct.dyn_data* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @DYN_REFERENCED, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %48
  %73 = load i32, i32* @IPFW_DYN_ORPHANED, align 4
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 7
  %76 = load i32, i32* %75, align 8
  %77 = or i32 %76, %73
  store i32 %77, i32* %75, align 8
  br label %78

78:                                               ; preds = %72, %48
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 6
  store i32* null, i32** %80, align 8
  %81 = load %struct.dyn_data*, %struct.dyn_data** %6, align 8
  %82 = getelementptr inbounds %struct.dyn_data, %struct.dyn_data* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 5
  store i32 %83, i32* %85, align 4
  %86 = load %struct.dyn_data*, %struct.dyn_data** %6, align 8
  %87 = getelementptr inbounds %struct.dyn_data, %struct.dyn_data* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 4
  store i32 %88, i32* %90, align 8
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 3
  store i64 0, i64* %92, align 8
  %93 = load %struct.dyn_data*, %struct.dyn_data** %6, align 8
  %94 = getelementptr inbounds %struct.dyn_data, %struct.dyn_data* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 2
  store i32 %95, i32* %97, align 8
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 1
  store %struct.TYPE_3__* inttoptr (i64 1 to %struct.TYPE_3__*), %struct.TYPE_3__** %99, align 8
  ret void
}

declare dso_local i64 @TIME_LEQ(i64, i64) #1

declare dso_local i32 @memcpy(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
