; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/lpr/chkprintcap/extr_chkprintcap.c_equal.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/lpr/chkprintcap/extr_chkprintcap.c_equal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dirlist = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dirlist*, %struct.dirlist*)* @equal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @equal(%struct.dirlist* %0, %struct.dirlist* %1) #0 {
  %3 = alloca %struct.dirlist*, align 8
  %4 = alloca %struct.dirlist*, align 8
  store %struct.dirlist* %0, %struct.dirlist** %3, align 8
  store %struct.dirlist* %1, %struct.dirlist** %4, align 8
  %5 = load %struct.dirlist*, %struct.dirlist** %3, align 8
  %6 = getelementptr inbounds %struct.dirlist, %struct.dirlist* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load %struct.dirlist*, %struct.dirlist** %4, align 8
  %10 = getelementptr inbounds %struct.dirlist, %struct.dirlist* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp eq i64 %8, %12
  br i1 %13, label %14, label %24

14:                                               ; preds = %2
  %15 = load %struct.dirlist*, %struct.dirlist** %3, align 8
  %16 = getelementptr inbounds %struct.dirlist, %struct.dirlist* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.dirlist*, %struct.dirlist** %4, align 8
  %20 = getelementptr inbounds %struct.dirlist, %struct.dirlist* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %18, %22
  br label %24

24:                                               ; preds = %14, %2
  %25 = phi i1 [ false, %2 ], [ %23, %14 ]
  %26 = zext i1 %25 to i32
  ret i32 %26
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
