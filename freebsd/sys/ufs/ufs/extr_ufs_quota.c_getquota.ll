; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ufs/ufs/extr_ufs_quota.c_getquota.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ufs/ufs/extr_ufs_quota.c_getquota.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.mount = type { i32 }
%struct.dqblk64 = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @getquota(%struct.thread* %0, %struct.mount* %1, i32 %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.thread*, align 8
  %8 = alloca %struct.mount*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.dqblk64, align 4
  %13 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %7, align 8
  store %struct.mount* %1, %struct.mount** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  %14 = load %struct.thread*, %struct.thread** %7, align 8
  %15 = load %struct.mount*, %struct.mount** %8, align 8
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* %10, align 4
  %18 = call i32 @_getquota(%struct.thread* %14, %struct.mount* %15, i32 %16, i32 %17, %struct.dqblk64* %12)
  store i32 %18, i32* %13, align 4
  %19 = load i32, i32* %13, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %5
  %22 = load i32, i32* %13, align 4
  store i32 %22, i32* %6, align 4
  br label %27

23:                                               ; preds = %5
  %24 = load i8*, i8** %11, align 8
  %25 = call i32 @copyout(%struct.dqblk64* %12, i8* %24, i32 4)
  store i32 %25, i32* %13, align 4
  %26 = load i32, i32* %13, align 4
  store i32 %26, i32* %6, align 4
  br label %27

27:                                               ; preds = %23, %21
  %28 = load i32, i32* %6, align 4
  ret i32 %28
}

declare dso_local i32 @_getquota(%struct.thread*, %struct.mount*, i32, i32, %struct.dqblk64*) #1

declare dso_local i32 @copyout(%struct.dqblk64*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
