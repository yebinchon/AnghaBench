; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_bio.c_bd_flushall.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_bio.c_bd_flushall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bufdomain = type { i64, %struct.bufqueue* }
%struct.bufqueue = type { i64 }

@mp_maxid = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bufdomain*)* @bd_flushall to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bd_flushall(%struct.bufdomain* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bufdomain*, align 8
  %4 = alloca %struct.bufqueue*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.bufdomain* %0, %struct.bufdomain** %3, align 8
  %7 = load %struct.bufdomain*, %struct.bufdomain** %3, align 8
  %8 = getelementptr inbounds %struct.bufdomain, %struct.bufdomain* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %44

12:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %13

13:                                               ; preds = %39, %12
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @mp_maxid, align 4
  %16 = icmp sle i32 %14, %15
  br i1 %16, label %17, label %42

17:                                               ; preds = %13
  %18 = load %struct.bufdomain*, %struct.bufdomain** %3, align 8
  %19 = getelementptr inbounds %struct.bufdomain, %struct.bufdomain* %18, i32 0, i32 1
  %20 = load %struct.bufqueue*, %struct.bufqueue** %19, align 8
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.bufqueue, %struct.bufqueue* %20, i64 %22
  store %struct.bufqueue* %23, %struct.bufqueue** %4, align 8
  %24 = load %struct.bufqueue*, %struct.bufqueue** %4, align 8
  %25 = getelementptr inbounds %struct.bufqueue, %struct.bufqueue* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %17
  br label %39

29:                                               ; preds = %17
  %30 = load %struct.bufqueue*, %struct.bufqueue** %4, align 8
  %31 = call i32 @BQ_LOCK(%struct.bufqueue* %30)
  %32 = load %struct.bufdomain*, %struct.bufdomain** %3, align 8
  %33 = load %struct.bufqueue*, %struct.bufqueue** %4, align 8
  %34 = call i32 @bd_flush(%struct.bufdomain* %32, %struct.bufqueue* %33)
  %35 = load %struct.bufqueue*, %struct.bufqueue** %4, align 8
  %36 = call i32 @BQ_UNLOCK(%struct.bufqueue* %35)
  %37 = load i32, i32* %5, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %5, align 4
  br label %39

39:                                               ; preds = %29, %28
  %40 = load i32, i32* %6, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %6, align 4
  br label %13

42:                                               ; preds = %13
  %43 = load i32, i32* %5, align 4
  store i32 %43, i32* %2, align 4
  br label %44

44:                                               ; preds = %42, %11
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local i32 @BQ_LOCK(%struct.bufqueue*) #1

declare dso_local i32 @bd_flush(%struct.bufdomain*, %struct.bufqueue*) #1

declare dso_local i32 @BQ_UNLOCK(%struct.bufqueue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
