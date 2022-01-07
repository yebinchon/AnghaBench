; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_iplist.c_iplist_ip2pos.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_iplist.c_iplist_ip2pos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iplist = type { %struct.iplist_cur }
%struct.iplist_cur = type { i32 }
%struct.in_addr = type { i64 }
%struct.TYPE_4__ = type { %struct.iplist_cur, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iplist_ip2pos(%struct.iplist* %0, i64 %1) #0 {
  %3 = alloca %struct.in_addr, align 8
  %4 = alloca %struct.iplist*, align 8
  %5 = alloca %struct.iplist_cur, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca %struct.TYPE_4__*, align 8
  %10 = alloca %struct.TYPE_5__, align 8
  %11 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %3, i32 0, i32 0
  store i64 %1, i64* %11, align 8
  store %struct.iplist* %0, %struct.iplist** %4, align 8
  store i32 -1, i32* %7, align 4
  %12 = load %struct.iplist*, %struct.iplist** %4, align 8
  %13 = getelementptr inbounds %struct.iplist, %struct.iplist* %12, i32 0, i32 0
  %14 = call i32 @memcpy(%struct.iplist_cur* %5, %struct.iplist_cur* %13, i32 4)
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %9, align 8
  br label %15

15:                                               ; preds = %36, %2
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = icmp ult %struct.TYPE_4__* %16, %19
  br i1 %20, label %21, label %39

21:                                               ; preds = %15
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %23 = call i64 @iplist_next(%struct.TYPE_4__* %22)
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  store i64 %23, i64* %24, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %3, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %26, %28
  br i1 %29, label %30, label %35

30:                                               ; preds = %21
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.iplist_cur, %struct.iplist_cur* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %7, align 4
  br label %39

35:                                               ; preds = %21
  br label %36

36:                                               ; preds = %35
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 1
  store %struct.TYPE_4__* %38, %struct.TYPE_4__** %9, align 8
  br label %15

39:                                               ; preds = %30, %15
  %40 = load %struct.iplist*, %struct.iplist** %4, align 8
  %41 = getelementptr inbounds %struct.iplist, %struct.iplist* %40, i32 0, i32 0
  %42 = call i32 @memcpy(%struct.iplist_cur* %41, %struct.iplist_cur* %5, i32 4)
  %43 = load i32, i32* %7, align 4
  ret i32 %43
}

declare dso_local i32 @memcpy(%struct.iplist_cur*, %struct.iplist_cur*, i32) #1

declare dso_local i64 @iplist_next(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
