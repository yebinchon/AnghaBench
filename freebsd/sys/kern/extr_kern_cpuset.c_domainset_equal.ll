; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_cpuset.c_domainset_equal.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_cpuset.c_domainset_equal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.domainset = type { i64, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.domainset*, %struct.domainset*)* @domainset_equal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @domainset_equal(%struct.domainset* %0, %struct.domainset* %1) #0 {
  %3 = alloca %struct.domainset*, align 8
  %4 = alloca %struct.domainset*, align 8
  store %struct.domainset* %0, %struct.domainset** %3, align 8
  store %struct.domainset* %1, %struct.domainset** %4, align 8
  %5 = load %struct.domainset*, %struct.domainset** %3, align 8
  %6 = getelementptr inbounds %struct.domainset, %struct.domainset* %5, i32 0, i32 2
  %7 = load %struct.domainset*, %struct.domainset** %4, align 8
  %8 = getelementptr inbounds %struct.domainset, %struct.domainset* %7, i32 0, i32 2
  %9 = call i64 @DOMAINSET_CMP(i32* %6, i32* %8)
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %27

11:                                               ; preds = %2
  %12 = load %struct.domainset*, %struct.domainset** %3, align 8
  %13 = getelementptr inbounds %struct.domainset, %struct.domainset* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.domainset*, %struct.domainset** %4, align 8
  %16 = getelementptr inbounds %struct.domainset, %struct.domainset* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %14, %17
  br i1 %18, label %19, label %27

19:                                               ; preds = %11
  %20 = load %struct.domainset*, %struct.domainset** %3, align 8
  %21 = getelementptr inbounds %struct.domainset, %struct.domainset* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.domainset*, %struct.domainset** %4, align 8
  %24 = getelementptr inbounds %struct.domainset, %struct.domainset* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 %22, %25
  br label %27

27:                                               ; preds = %19, %11, %2
  %28 = phi i1 [ false, %11 ], [ false, %2 ], [ %26, %19 ]
  %29 = zext i1 %28 to i32
  ret i32 %29
}

declare dso_local i64 @DOMAINSET_CMP(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
