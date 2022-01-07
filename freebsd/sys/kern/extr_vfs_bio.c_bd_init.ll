; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_bio.c_bd_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_bio.c_bd_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bufdomain = type { i32, i32*, i32, i32* }

@mp_maxid = common dso_local global i32 0, align 4
@QUEUE_CLEAN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"bufq clean lock\00", align 1
@QUEUE_DIRTY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"bufq dirty lock\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"bufq clean subqueue lock\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"bufspace daemon run lock\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bufdomain*)* @bd_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bd_init(%struct.bufdomain* %0) #0 {
  %2 = alloca %struct.bufdomain*, align 8
  %3 = alloca i32, align 4
  store %struct.bufdomain* %0, %struct.bufdomain** %2, align 8
  %4 = load %struct.bufdomain*, %struct.bufdomain** %2, align 8
  %5 = getelementptr inbounds %struct.bufdomain, %struct.bufdomain* %4, i32 0, i32 1
  %6 = load i32*, i32** %5, align 8
  %7 = load i32, i32* @mp_maxid, align 4
  %8 = add nsw i32 %7, 1
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds i32, i32* %6, i64 %9
  %11 = load %struct.bufdomain*, %struct.bufdomain** %2, align 8
  %12 = getelementptr inbounds %struct.bufdomain, %struct.bufdomain* %11, i32 0, i32 3
  store i32* %10, i32** %12, align 8
  %13 = load %struct.bufdomain*, %struct.bufdomain** %2, align 8
  %14 = getelementptr inbounds %struct.bufdomain, %struct.bufdomain* %13, i32 0, i32 3
  %15 = load i32*, i32** %14, align 8
  %16 = load i32, i32* @QUEUE_CLEAN, align 4
  %17 = load i32, i32* @mp_maxid, align 4
  %18 = add nsw i32 %17, 1
  %19 = call i32 @bq_init(i32* %15, i32 %16, i32 %18, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.bufdomain*, %struct.bufdomain** %2, align 8
  %21 = getelementptr inbounds %struct.bufdomain, %struct.bufdomain* %20, i32 0, i32 2
  %22 = load i32, i32* @QUEUE_DIRTY, align 4
  %23 = call i32 @bq_init(i32* %21, i32 %22, i32 -1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %24

24:                                               ; preds = %38, %1
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* @mp_maxid, align 4
  %27 = icmp sle i32 %25, %26
  br i1 %27, label %28, label %41

28:                                               ; preds = %24
  %29 = load %struct.bufdomain*, %struct.bufdomain** %2, align 8
  %30 = getelementptr inbounds %struct.bufdomain, %struct.bufdomain* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* %3, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* @QUEUE_CLEAN, align 4
  %36 = load i32, i32* %3, align 4
  %37 = call i32 @bq_init(i32* %34, i32 %35, i32 %36, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  br label %38

38:                                               ; preds = %28
  %39 = load i32, i32* %3, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %3, align 4
  br label %24

41:                                               ; preds = %24
  %42 = load %struct.bufdomain*, %struct.bufdomain** %2, align 8
  %43 = getelementptr inbounds %struct.bufdomain, %struct.bufdomain* %42, i32 0, i32 0
  %44 = load i32, i32* @MTX_DEF, align 4
  %45 = call i32 @mtx_init(i32* %43, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32* null, i32 %44)
  ret void
}

declare dso_local i32 @bq_init(i32*, i32, i32, i8*) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
