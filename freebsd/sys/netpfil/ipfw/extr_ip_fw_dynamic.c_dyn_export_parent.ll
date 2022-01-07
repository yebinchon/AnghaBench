; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_dynamic.c_dyn_export_parent.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_dynamic.c_dyn_export_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dyn_parent = type { i32, i32, i64 }
%struct.TYPE_3__ = type { i8, %struct.TYPE_3__*, i32, i64, i64, i64, i32*, i64, i64, i64, i8*, i8*, i32 }

@O_LIMIT_PARENT = common dso_local global i32 0, align 4
@time_uptime = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dyn_parent*, i8*, i32, %struct.TYPE_3__*)* @dyn_export_parent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dyn_export_parent(%struct.dyn_parent* %0, i8* %1, i32 %2, %struct.TYPE_3__* %3) #0 {
  %5 = alloca %struct.dyn_parent*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_3__*, align 8
  store %struct.dyn_parent* %0, %struct.dyn_parent** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.TYPE_3__* %3, %struct.TYPE_3__** %8, align 8
  %9 = load i32, i32* @O_LIMIT_PARENT, align 4
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 12
  store i32 %9, i32* %11, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 11
  store i8* %12, i8** %14, align 8
  %15 = load %struct.dyn_parent*, %struct.dyn_parent** %5, align 8
  %16 = call i64 @DPARENT_COUNT(%struct.dyn_parent* %15)
  %17 = inttoptr i64 %16 to i8*
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 10
  store i8* %17, i8** %19, align 8
  %20 = load %struct.dyn_parent*, %struct.dyn_parent** %5, align 8
  %21 = getelementptr inbounds %struct.dyn_parent, %struct.dyn_parent* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @time_uptime, align 8
  %24 = call i64 @TIME_LEQ(i64 %22, i64 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %4
  br label %33

27:                                               ; preds = %4
  %28 = load %struct.dyn_parent*, %struct.dyn_parent** %5, align 8
  %29 = getelementptr inbounds %struct.dyn_parent, %struct.dyn_parent* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @time_uptime, align 8
  %32 = sub nsw i64 %30, %31
  br label %33

33:                                               ; preds = %27, %26
  %34 = phi i64 [ 0, %26 ], [ %32, %27 ]
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 9
  store i64 %34, i64* %36, align 8
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load %struct.dyn_parent*, %struct.dyn_parent** %5, align 8
  %40 = getelementptr inbounds %struct.dyn_parent, %struct.dyn_parent* %39, i32 0, i32 1
  %41 = call i32 @memcpy(i8* %38, i32* %40, i32 4)
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = getelementptr inbounds i8, i8* %43, i64 4
  %45 = call i32 @memcpy(i8* %44, i32* %7, i32 4)
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 8
  store i64 0, i64* %47, align 8
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 7
  store i64 0, i64* %49, align 8
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 6
  store i32* null, i32** %51, align 8
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 5
  store i64 0, i64* %53, align 8
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 4
  store i64 0, i64* %55, align 8
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 3
  store i64 0, i64* %57, align 8
  %58 = load %struct.dyn_parent*, %struct.dyn_parent** %5, align 8
  %59 = getelementptr inbounds %struct.dyn_parent, %struct.dyn_parent* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 2
  store i32 %60, i32* %62, align 8
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 1
  store %struct.TYPE_3__* inttoptr (i64 1 to %struct.TYPE_3__*), %struct.TYPE_3__** %64, align 8
  ret void
}

declare dso_local i64 @DPARENT_COUNT(%struct.dyn_parent*) #1

declare dso_local i64 @TIME_LEQ(i64, i64) #1

declare dso_local i32 @memcpy(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
