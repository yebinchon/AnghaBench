; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_descrip.c_filedesc_to_leader_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_descrip.c_filedesc_to_leader_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.filedesc_to_leader = type { i32, %struct.filedesc_to_leader*, %struct.filedesc_to_leader*, %struct.proc*, i64, i64 }
%struct.filedesc = type { i32 }
%struct.proc = type { i32 }

@M_FILEDESC_TO_LEADER = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.filedesc_to_leader* @filedesc_to_leader_alloc(%struct.filedesc_to_leader* %0, %struct.filedesc* %1, %struct.proc* %2) #0 {
  %4 = alloca %struct.filedesc_to_leader*, align 8
  %5 = alloca %struct.filedesc*, align 8
  %6 = alloca %struct.proc*, align 8
  %7 = alloca %struct.filedesc_to_leader*, align 8
  store %struct.filedesc_to_leader* %0, %struct.filedesc_to_leader** %4, align 8
  store %struct.filedesc* %1, %struct.filedesc** %5, align 8
  store %struct.proc* %2, %struct.proc** %6, align 8
  %8 = load i32, i32* @M_FILEDESC_TO_LEADER, align 4
  %9 = load i32, i32* @M_WAITOK, align 4
  %10 = call %struct.filedesc_to_leader* @malloc(i32 48, i32 %8, i32 %9)
  store %struct.filedesc_to_leader* %10, %struct.filedesc_to_leader** %7, align 8
  %11 = load %struct.filedesc_to_leader*, %struct.filedesc_to_leader** %7, align 8
  %12 = getelementptr inbounds %struct.filedesc_to_leader, %struct.filedesc_to_leader* %11, i32 0, i32 0
  store i32 1, i32* %12, align 8
  %13 = load %struct.filedesc_to_leader*, %struct.filedesc_to_leader** %7, align 8
  %14 = getelementptr inbounds %struct.filedesc_to_leader, %struct.filedesc_to_leader* %13, i32 0, i32 5
  store i64 0, i64* %14, align 8
  %15 = load %struct.filedesc_to_leader*, %struct.filedesc_to_leader** %7, align 8
  %16 = getelementptr inbounds %struct.filedesc_to_leader, %struct.filedesc_to_leader* %15, i32 0, i32 4
  store i64 0, i64* %16, align 8
  %17 = load %struct.proc*, %struct.proc** %6, align 8
  %18 = load %struct.filedesc_to_leader*, %struct.filedesc_to_leader** %7, align 8
  %19 = getelementptr inbounds %struct.filedesc_to_leader, %struct.filedesc_to_leader* %18, i32 0, i32 3
  store %struct.proc* %17, %struct.proc** %19, align 8
  %20 = load %struct.filedesc_to_leader*, %struct.filedesc_to_leader** %4, align 8
  %21 = icmp ne %struct.filedesc_to_leader* %20, null
  br i1 %21, label %22, label %43

22:                                               ; preds = %3
  %23 = load %struct.filedesc*, %struct.filedesc** %5, align 8
  %24 = call i32 @FILEDESC_XLOCK(%struct.filedesc* %23)
  %25 = load %struct.filedesc_to_leader*, %struct.filedesc_to_leader** %4, align 8
  %26 = getelementptr inbounds %struct.filedesc_to_leader, %struct.filedesc_to_leader* %25, i32 0, i32 2
  %27 = load %struct.filedesc_to_leader*, %struct.filedesc_to_leader** %26, align 8
  %28 = load %struct.filedesc_to_leader*, %struct.filedesc_to_leader** %7, align 8
  %29 = getelementptr inbounds %struct.filedesc_to_leader, %struct.filedesc_to_leader* %28, i32 0, i32 2
  store %struct.filedesc_to_leader* %27, %struct.filedesc_to_leader** %29, align 8
  %30 = load %struct.filedesc_to_leader*, %struct.filedesc_to_leader** %4, align 8
  %31 = load %struct.filedesc_to_leader*, %struct.filedesc_to_leader** %7, align 8
  %32 = getelementptr inbounds %struct.filedesc_to_leader, %struct.filedesc_to_leader* %31, i32 0, i32 1
  store %struct.filedesc_to_leader* %30, %struct.filedesc_to_leader** %32, align 8
  %33 = load %struct.filedesc_to_leader*, %struct.filedesc_to_leader** %7, align 8
  %34 = load %struct.filedesc_to_leader*, %struct.filedesc_to_leader** %4, align 8
  %35 = getelementptr inbounds %struct.filedesc_to_leader, %struct.filedesc_to_leader* %34, i32 0, i32 2
  store %struct.filedesc_to_leader* %33, %struct.filedesc_to_leader** %35, align 8
  %36 = load %struct.filedesc_to_leader*, %struct.filedesc_to_leader** %7, align 8
  %37 = load %struct.filedesc_to_leader*, %struct.filedesc_to_leader** %7, align 8
  %38 = getelementptr inbounds %struct.filedesc_to_leader, %struct.filedesc_to_leader* %37, i32 0, i32 2
  %39 = load %struct.filedesc_to_leader*, %struct.filedesc_to_leader** %38, align 8
  %40 = getelementptr inbounds %struct.filedesc_to_leader, %struct.filedesc_to_leader* %39, i32 0, i32 1
  store %struct.filedesc_to_leader* %36, %struct.filedesc_to_leader** %40, align 8
  %41 = load %struct.filedesc*, %struct.filedesc** %5, align 8
  %42 = call i32 @FILEDESC_XUNLOCK(%struct.filedesc* %41)
  br label %50

43:                                               ; preds = %3
  %44 = load %struct.filedesc_to_leader*, %struct.filedesc_to_leader** %7, align 8
  %45 = load %struct.filedesc_to_leader*, %struct.filedesc_to_leader** %7, align 8
  %46 = getelementptr inbounds %struct.filedesc_to_leader, %struct.filedesc_to_leader* %45, i32 0, i32 2
  store %struct.filedesc_to_leader* %44, %struct.filedesc_to_leader** %46, align 8
  %47 = load %struct.filedesc_to_leader*, %struct.filedesc_to_leader** %7, align 8
  %48 = load %struct.filedesc_to_leader*, %struct.filedesc_to_leader** %7, align 8
  %49 = getelementptr inbounds %struct.filedesc_to_leader, %struct.filedesc_to_leader* %48, i32 0, i32 1
  store %struct.filedesc_to_leader* %47, %struct.filedesc_to_leader** %49, align 8
  br label %50

50:                                               ; preds = %43, %22
  %51 = load %struct.filedesc_to_leader*, %struct.filedesc_to_leader** %7, align 8
  ret %struct.filedesc_to_leader* %51
}

declare dso_local %struct.filedesc_to_leader* @malloc(i32, i32, i32) #1

declare dso_local i32 @FILEDESC_XLOCK(%struct.filedesc*) #1

declare dso_local i32 @FILEDESC_XUNLOCK(%struct.filedesc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
