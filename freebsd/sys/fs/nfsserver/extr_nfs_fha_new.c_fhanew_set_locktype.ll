; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/nfsserver/extr_nfs_fha_new.c_fhanew_set_locktype.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/nfsserver/extr_nfs_fha_new.c_fhanew_set_locktype.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fha_info = type { i32 }

@LK_SHARED = common dso_local global i32 0, align 4
@LK_EXCLUSIVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fhanew_set_locktype(i32 %0, %struct.fha_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fha_info*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.fha_info* %1, %struct.fha_info** %4, align 8
  %5 = load i32, i32* %3, align 4
  switch i32 %5, label %14 [
    i32 139, label %6
    i32 145, label %6
    i32 143, label %6
    i32 150, label %6
    i32 134, label %6
    i32 137, label %6
    i32 136, label %6
    i32 135, label %6
    i32 128, label %6
    i32 130, label %10
    i32 148, label %10
    i32 142, label %10
    i32 129, label %10
    i32 141, label %10
    i32 133, label %10
    i32 131, label %10
    i32 132, label %10
    i32 144, label %10
    i32 146, label %10
    i32 147, label %10
    i32 138, label %10
    i32 149, label %10
    i32 140, label %10
  ]

6:                                                ; preds = %2, %2, %2, %2, %2, %2, %2, %2, %2
  %7 = load i32, i32* @LK_SHARED, align 4
  %8 = load %struct.fha_info*, %struct.fha_info** %4, align 8
  %9 = getelementptr inbounds %struct.fha_info, %struct.fha_info* %8, i32 0, i32 0
  store i32 %7, i32* %9, align 4
  br label %14

10:                                               ; preds = %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2
  %11 = load i32, i32* @LK_EXCLUSIVE, align 4
  %12 = load %struct.fha_info*, %struct.fha_info** %4, align 8
  %13 = getelementptr inbounds %struct.fha_info, %struct.fha_info* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 4
  br label %14

14:                                               ; preds = %2, %10, %6
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
