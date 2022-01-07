; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_bio.c_bufspace_adjust.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_bio.c_bufspace_adjust.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buf = type { i32, i32 }
%struct.bufdomain = type { i64, i32 }

@B_MALLOC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"bufspace_adjust: malloc buf %p\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.buf*, i32)* @bufspace_adjust to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bufspace_adjust(%struct.buf* %0, i32 %1) #0 {
  %3 = alloca %struct.buf*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bufdomain*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.buf* %0, %struct.buf** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.buf*, %struct.buf** %3, align 8
  %9 = getelementptr inbounds %struct.buf, %struct.buf* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @B_MALLOC, align 4
  %12 = and i32 %10, %11
  %13 = icmp eq i32 %12, 0
  %14 = zext i1 %13 to i32
  %15 = load %struct.buf*, %struct.buf** %3, align 8
  %16 = bitcast %struct.buf* %15 to i8*
  %17 = call i32 @KASSERT(i32 %14, i8* %16)
  %18 = load %struct.buf*, %struct.buf** %3, align 8
  %19 = call %struct.bufdomain* @bufdomain(%struct.buf* %18)
  store %struct.bufdomain* %19, %struct.bufdomain** %5, align 8
  %20 = load i32, i32* %4, align 4
  %21 = load %struct.buf*, %struct.buf** %3, align 8
  %22 = getelementptr inbounds %struct.buf, %struct.buf* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = sub nsw i32 %20, %23
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %2
  %28 = load %struct.bufdomain*, %struct.bufdomain** %5, align 8
  %29 = getelementptr inbounds %struct.bufdomain, %struct.bufdomain* %28, i32 0, i32 1
  %30 = load i32, i32* %7, align 4
  %31 = sub nsw i32 0, %30
  %32 = call i32 @atomic_subtract_long(i32* %29, i32 %31)
  br label %60

33:                                               ; preds = %2
  %34 = load i32, i32* %7, align 4
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %36, label %59

36:                                               ; preds = %33
  %37 = load %struct.bufdomain*, %struct.bufdomain** %5, align 8
  %38 = getelementptr inbounds %struct.bufdomain, %struct.bufdomain* %37, i32 0, i32 1
  %39 = load i32, i32* %7, align 4
  %40 = call i64 @atomic_fetchadd_long(i32* %38, i32 %39)
  store i64 %40, i64* %6, align 8
  %41 = load i64, i64* %6, align 8
  %42 = load %struct.bufdomain*, %struct.bufdomain** %5, align 8
  %43 = getelementptr inbounds %struct.bufdomain, %struct.bufdomain* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp slt i64 %41, %44
  br i1 %45, label %46, label %58

46:                                               ; preds = %36
  %47 = load i64, i64* %6, align 8
  %48 = load i32, i32* %7, align 4
  %49 = sext i32 %48 to i64
  %50 = add nsw i64 %47, %49
  %51 = load %struct.bufdomain*, %struct.bufdomain** %5, align 8
  %52 = getelementptr inbounds %struct.bufdomain, %struct.bufdomain* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp sge i64 %50, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %46
  %56 = load %struct.bufdomain*, %struct.bufdomain** %5, align 8
  %57 = call i32 @bufspace_daemon_wakeup(%struct.bufdomain* %56)
  br label %58

58:                                               ; preds = %55, %46, %36
  br label %59

59:                                               ; preds = %58, %33
  br label %60

60:                                               ; preds = %59, %27
  %61 = load i32, i32* %4, align 4
  %62 = load %struct.buf*, %struct.buf** %3, align 8
  %63 = getelementptr inbounds %struct.buf, %struct.buf* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 4
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local %struct.bufdomain* @bufdomain(%struct.buf*) #1

declare dso_local i32 @atomic_subtract_long(i32*, i32) #1

declare dso_local i64 @atomic_fetchadd_long(i32*, i32) #1

declare dso_local i32 @bufspace_daemon_wakeup(%struct.bufdomain*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
