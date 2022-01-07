; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_bio.c_bufspace_reserve.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_bio.c_bufspace_reserve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bufdomain = type { i64, i64, i64, i32 }

@ENOSPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bufdomain*, i32, i32)* @bufspace_reserve to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bufspace_reserve(%struct.bufdomain* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bufdomain*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.bufdomain* %0, %struct.bufdomain** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %3
  %14 = load %struct.bufdomain*, %struct.bufdomain** %5, align 8
  %15 = getelementptr inbounds %struct.bufdomain, %struct.bufdomain* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %8, align 8
  br label %21

17:                                               ; preds = %3
  %18 = load %struct.bufdomain*, %struct.bufdomain** %5, align 8
  %19 = getelementptr inbounds %struct.bufdomain, %struct.bufdomain* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %8, align 8
  br label %21

21:                                               ; preds = %17, %13
  %22 = load %struct.bufdomain*, %struct.bufdomain** %5, align 8
  %23 = getelementptr inbounds %struct.bufdomain, %struct.bufdomain* %22, i32 0, i32 3
  %24 = load i32, i32* %6, align 4
  %25 = call i64 @atomic_fetchadd_long(i32* %23, i32 %24)
  store i64 %25, i64* %10, align 8
  %26 = load i64, i64* %10, align 8
  %27 = load i32, i32* %6, align 4
  %28 = sext i32 %27 to i64
  %29 = add nsw i64 %26, %28
  store i64 %29, i64* %9, align 8
  %30 = load i64, i64* %9, align 8
  %31 = load i64, i64* %8, align 8
  %32 = icmp sgt i64 %30, %31
  br i1 %32, label %33, label %39

33:                                               ; preds = %21
  %34 = load %struct.bufdomain*, %struct.bufdomain** %5, align 8
  %35 = getelementptr inbounds %struct.bufdomain, %struct.bufdomain* %34, i32 0, i32 3
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @atomic_subtract_long(i32* %35, i32 %36)
  %38 = load i32, i32* @ENOSPC, align 4
  store i32 %38, i32* %4, align 4
  br label %55

39:                                               ; preds = %21
  %40 = load i64, i64* %10, align 8
  %41 = load %struct.bufdomain*, %struct.bufdomain** %5, align 8
  %42 = getelementptr inbounds %struct.bufdomain, %struct.bufdomain* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = icmp slt i64 %40, %43
  br i1 %44, label %45, label %54

45:                                               ; preds = %39
  %46 = load i64, i64* %9, align 8
  %47 = load %struct.bufdomain*, %struct.bufdomain** %5, align 8
  %48 = getelementptr inbounds %struct.bufdomain, %struct.bufdomain* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = icmp sge i64 %46, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %45
  %52 = load %struct.bufdomain*, %struct.bufdomain** %5, align 8
  %53 = call i32 @bufspace_daemon_wakeup(%struct.bufdomain* %52)
  br label %54

54:                                               ; preds = %51, %45, %39
  store i32 0, i32* %4, align 4
  br label %55

55:                                               ; preds = %54, %33
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local i64 @atomic_fetchadd_long(i32*, i32) #1

declare dso_local i32 @atomic_subtract_long(i32*, i32) #1

declare dso_local i32 @bufspace_daemon_wakeup(%struct.bufdomain*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
