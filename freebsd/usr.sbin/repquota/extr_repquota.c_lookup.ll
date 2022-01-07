; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/repquota/extr_repquota.c_lookup.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/repquota/extr_repquota.c_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fileusage = type { i32, %struct.fileusage* }

@fuhead = common dso_local global %struct.fileusage*** null, align 8
@FUHASH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.fileusage* @lookup(i32 %0, i32 %1) #0 {
  %3 = alloca %struct.fileusage*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.fileusage*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = load %struct.fileusage***, %struct.fileusage**** @fuhead, align 8
  %8 = load i32, i32* %5, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds %struct.fileusage**, %struct.fileusage*** %7, i64 %9
  %11 = load %struct.fileusage**, %struct.fileusage*** %10, align 8
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @FUHASH, align 4
  %14 = sub nsw i32 %13, 1
  %15 = and i32 %12, %14
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.fileusage*, %struct.fileusage** %11, i64 %16
  %18 = load %struct.fileusage*, %struct.fileusage** %17, align 8
  store %struct.fileusage* %18, %struct.fileusage** %6, align 8
  br label %19

19:                                               ; preds = %31, %2
  %20 = load %struct.fileusage*, %struct.fileusage** %6, align 8
  %21 = icmp ne %struct.fileusage* %20, null
  br i1 %21, label %22, label %35

22:                                               ; preds = %19
  %23 = load %struct.fileusage*, %struct.fileusage** %6, align 8
  %24 = getelementptr inbounds %struct.fileusage, %struct.fileusage* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* %4, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = load %struct.fileusage*, %struct.fileusage** %6, align 8
  store %struct.fileusage* %29, %struct.fileusage** %3, align 8
  br label %36

30:                                               ; preds = %22
  br label %31

31:                                               ; preds = %30
  %32 = load %struct.fileusage*, %struct.fileusage** %6, align 8
  %33 = getelementptr inbounds %struct.fileusage, %struct.fileusage* %32, i32 0, i32 1
  %34 = load %struct.fileusage*, %struct.fileusage** %33, align 8
  store %struct.fileusage* %34, %struct.fileusage** %6, align 8
  br label %19

35:                                               ; preds = %19
  store %struct.fileusage* null, %struct.fileusage** %3, align 8
  br label %36

36:                                               ; preds = %35, %28
  %37 = load %struct.fileusage*, %struct.fileusage** %3, align 8
  ret %struct.fileusage* %37
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
