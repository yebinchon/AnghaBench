; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_proc.c_pgadjustjobc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_proc.c_pgadjustjobc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pgrp = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pgrp*, i32)* @pgadjustjobc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pgadjustjobc(%struct.pgrp* %0, i32 %1) #0 {
  %3 = alloca %struct.pgrp*, align 8
  %4 = alloca i32, align 4
  store %struct.pgrp* %0, %struct.pgrp** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.pgrp*, %struct.pgrp** %3, align 8
  %6 = call i32 @PGRP_LOCK(%struct.pgrp* %5)
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %2
  %10 = load %struct.pgrp*, %struct.pgrp** %3, align 8
  %11 = getelementptr inbounds %struct.pgrp, %struct.pgrp* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = add nsw i64 %12, 1
  store i64 %13, i64* %11, align 8
  br label %27

14:                                               ; preds = %2
  %15 = load %struct.pgrp*, %struct.pgrp** %3, align 8
  %16 = getelementptr inbounds %struct.pgrp, %struct.pgrp* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = add nsw i64 %17, -1
  store i64 %18, i64* %16, align 8
  %19 = load %struct.pgrp*, %struct.pgrp** %3, align 8
  %20 = getelementptr inbounds %struct.pgrp, %struct.pgrp* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %14
  %24 = load %struct.pgrp*, %struct.pgrp** %3, align 8
  %25 = call i32 @orphanpg(%struct.pgrp* %24)
  br label %26

26:                                               ; preds = %23, %14
  br label %27

27:                                               ; preds = %26, %9
  %28 = load %struct.pgrp*, %struct.pgrp** %3, align 8
  %29 = call i32 @PGRP_UNLOCK(%struct.pgrp* %28)
  ret void
}

declare dso_local i32 @PGRP_LOCK(%struct.pgrp*) #1

declare dso_local i32 @orphanpg(%struct.pgrp*) #1

declare dso_local i32 @PGRP_UNLOCK(%struct.pgrp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
