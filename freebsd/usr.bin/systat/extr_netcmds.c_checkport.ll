; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/systat/extr_netcmds.c_checkport.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/systat/extr_netcmds.c_checkport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pitem = type { i64, i32 }
%struct.in_conninfo = type { i64, i64 }

@ports = common dso_local global %struct.pitem* null, align 8
@nports = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @checkport(%struct.in_conninfo* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.in_conninfo*, align 8
  %4 = alloca %struct.pitem*, align 8
  store %struct.in_conninfo* %0, %struct.in_conninfo** %3, align 8
  %5 = load %struct.pitem*, %struct.pitem** @ports, align 8
  %6 = icmp ne %struct.pitem* %5, null
  br i1 %6, label %7, label %41

7:                                                ; preds = %1
  %8 = load %struct.pitem*, %struct.pitem** @ports, align 8
  store %struct.pitem* %8, %struct.pitem** %4, align 8
  br label %9

9:                                                ; preds = %37, %7
  %10 = load %struct.pitem*, %struct.pitem** %4, align 8
  %11 = load %struct.pitem*, %struct.pitem** @ports, align 8
  %12 = load i32, i32* @nports, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.pitem, %struct.pitem* %11, i64 %13
  %15 = icmp ult %struct.pitem* %10, %14
  br i1 %15, label %16, label %40

16:                                               ; preds = %9
  %17 = load %struct.pitem*, %struct.pitem** %4, align 8
  %18 = getelementptr inbounds %struct.pitem, %struct.pitem* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.in_conninfo*, %struct.in_conninfo** %3, align 8
  %21 = getelementptr inbounds %struct.in_conninfo, %struct.in_conninfo* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %19, %22
  br i1 %23, label %32, label %24

24:                                               ; preds = %16
  %25 = load %struct.pitem*, %struct.pitem** %4, align 8
  %26 = getelementptr inbounds %struct.pitem, %struct.pitem* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.in_conninfo*, %struct.in_conninfo** %3, align 8
  %29 = getelementptr inbounds %struct.in_conninfo, %struct.in_conninfo* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp eq i64 %27, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %24, %16
  %33 = load %struct.pitem*, %struct.pitem** %4, align 8
  %34 = getelementptr inbounds %struct.pitem, %struct.pitem* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  store i32 %35, i32* %2, align 4
  br label %42

36:                                               ; preds = %24
  br label %37

37:                                               ; preds = %36
  %38 = load %struct.pitem*, %struct.pitem** %4, align 8
  %39 = getelementptr inbounds %struct.pitem, %struct.pitem* %38, i32 1
  store %struct.pitem* %39, %struct.pitem** %4, align 8
  br label %9

40:                                               ; preds = %9
  br label %41

41:                                               ; preds = %40, %1
  store i32 1, i32* %2, align 4
  br label %42

42:                                               ; preds = %41, %32
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
