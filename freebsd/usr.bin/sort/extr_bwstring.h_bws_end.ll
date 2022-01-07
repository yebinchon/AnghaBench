; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/sort/extr_bwstring.h_bws_end.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/sort/extr_bwstring.h_bws_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwstring = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }

@MB_CUR_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bwstring*)* @bws_end to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bws_end(%struct.bwstring* %0) #0 {
  %2 = alloca %struct.bwstring*, align 8
  store %struct.bwstring* %0, %struct.bwstring** %2, align 8
  %3 = load i32, i32* @MB_CUR_MAX, align 4
  %4 = icmp eq i32 %3, 1
  br i1 %4, label %5, label %15

5:                                                ; preds = %1
  %6 = load %struct.bwstring*, %struct.bwstring** %2, align 8
  %7 = getelementptr inbounds %struct.bwstring, %struct.bwstring* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.bwstring*, %struct.bwstring** %2, align 8
  %11 = getelementptr inbounds %struct.bwstring, %struct.bwstring* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = add nsw i64 %9, %12
  %14 = trunc i64 %13 to i32
  br label %25

15:                                               ; preds = %1
  %16 = load %struct.bwstring*, %struct.bwstring** %2, align 8
  %17 = getelementptr inbounds %struct.bwstring, %struct.bwstring* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.bwstring*, %struct.bwstring** %2, align 8
  %21 = getelementptr inbounds %struct.bwstring, %struct.bwstring* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = add nsw i64 %19, %22
  %24 = trunc i64 %23 to i32
  br label %25

25:                                               ; preds = %15, %5
  %26 = phi i32 [ %14, %5 ], [ %24, %15 ]
  ret i32 %26
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
