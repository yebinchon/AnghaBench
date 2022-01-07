; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_bio.c_bufspace_daemon_wait.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_bio.c_bufspace_daemon_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bufdomain = type { i64, i64, i64, i64, i32 }

@PRIBIO = common dso_local global i32 0, align 4
@PDROP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"-\00", align 1
@hz = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bufdomain*)* @bufspace_daemon_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bufspace_daemon_wait(%struct.bufdomain* %0) #0 {
  %2 = alloca %struct.bufdomain*, align 8
  store %struct.bufdomain* %0, %struct.bufdomain** %2, align 8
  %3 = load %struct.bufdomain*, %struct.bufdomain** %2, align 8
  %4 = call i32 @BD_RUN_LOCK(%struct.bufdomain* %3)
  %5 = load %struct.bufdomain*, %struct.bufdomain** %2, align 8
  %6 = getelementptr inbounds %struct.bufdomain, %struct.bufdomain* %5, i32 0, i32 4
  %7 = call i32 @atomic_store_int(i32* %6, i32 0)
  %8 = load %struct.bufdomain*, %struct.bufdomain** %2, align 8
  %9 = getelementptr inbounds %struct.bufdomain, %struct.bufdomain* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.bufdomain*, %struct.bufdomain** %2, align 8
  %12 = getelementptr inbounds %struct.bufdomain, %struct.bufdomain* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp slt i64 %10, %13
  br i1 %14, label %15, label %33

15:                                               ; preds = %1
  %16 = load %struct.bufdomain*, %struct.bufdomain** %2, align 8
  %17 = getelementptr inbounds %struct.bufdomain, %struct.bufdomain* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.bufdomain*, %struct.bufdomain** %2, align 8
  %20 = getelementptr inbounds %struct.bufdomain, %struct.bufdomain* %19, i32 0, i32 3
  %21 = load i64, i64* %20, align 8
  %22 = icmp sgt i64 %18, %21
  br i1 %22, label %23, label %33

23:                                               ; preds = %15
  %24 = load %struct.bufdomain*, %struct.bufdomain** %2, align 8
  %25 = getelementptr inbounds %struct.bufdomain, %struct.bufdomain* %24, i32 0, i32 4
  %26 = load %struct.bufdomain*, %struct.bufdomain** %2, align 8
  %27 = call i32 @BD_RUN_LOCKPTR(%struct.bufdomain* %26)
  %28 = load i32, i32* @PRIBIO, align 4
  %29 = load i32, i32* @PDROP, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @hz, align 4
  %32 = call i32 @msleep(i32* %25, i32 %27, i32 %30, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 %31)
  br label %39

33:                                               ; preds = %15, %1
  %34 = load %struct.bufdomain*, %struct.bufdomain** %2, align 8
  %35 = getelementptr inbounds %struct.bufdomain, %struct.bufdomain* %34, i32 0, i32 4
  %36 = call i32 @atomic_store_int(i32* %35, i32 1)
  %37 = load %struct.bufdomain*, %struct.bufdomain** %2, align 8
  %38 = call i32 @BD_RUN_UNLOCK(%struct.bufdomain* %37)
  br label %39

39:                                               ; preds = %33, %23
  ret void
}

declare dso_local i32 @BD_RUN_LOCK(%struct.bufdomain*) #1

declare dso_local i32 @atomic_store_int(i32*, i32) #1

declare dso_local i32 @msleep(i32*, i32, i32, i8*, i32) #1

declare dso_local i32 @BD_RUN_LOCKPTR(%struct.bufdomain*) #1

declare dso_local i32 @BD_RUN_UNLOCK(%struct.bufdomain*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
