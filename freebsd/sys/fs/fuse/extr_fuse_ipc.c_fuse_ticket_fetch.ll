; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/fuse/extr_fuse_ipc.c_fuse_ticket_fetch.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/fuse/extr_fuse_ipc.c_fuse_ticket_fetch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fuse_ticket = type { i32 }
%struct.fuse_data = type { i32, i32 }

@FSESS_INITED = common dso_local global i32 0, align 4
@fuse_mtx = common dso_local global i32 0, align 4
@PCATCH = common dso_local global i32 0, align 4
@PDROP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"fu_ini\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.fuse_ticket* @fuse_ticket_fetch(%struct.fuse_data* %0) #0 {
  %2 = alloca %struct.fuse_data*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.fuse_ticket*, align 8
  store %struct.fuse_data* %0, %struct.fuse_data** %2, align 8
  store i32 0, i32* %3, align 4
  %5 = load %struct.fuse_data*, %struct.fuse_data** %2, align 8
  %6 = call %struct.fuse_ticket* @fticket_alloc(%struct.fuse_data* %5)
  store %struct.fuse_ticket* %6, %struct.fuse_ticket** %4, align 8
  %7 = load %struct.fuse_data*, %struct.fuse_data** %2, align 8
  %8 = getelementptr inbounds %struct.fuse_data, %struct.fuse_data* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @FSESS_INITED, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %42, label %13

13:                                               ; preds = %1
  %14 = call i32 (...) @FUSE_LOCK()
  %15 = load %struct.fuse_data*, %struct.fuse_data** %2, align 8
  %16 = getelementptr inbounds %struct.fuse_data, %struct.fuse_data* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @FSESS_INITED, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %39, label %21

21:                                               ; preds = %13
  %22 = load %struct.fuse_data*, %struct.fuse_data** %2, align 8
  %23 = getelementptr inbounds %struct.fuse_data, %struct.fuse_data* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = icmp sgt i32 %24, 2
  br i1 %25, label %26, label %39

26:                                               ; preds = %21
  %27 = load %struct.fuse_data*, %struct.fuse_data** %2, align 8
  %28 = getelementptr inbounds %struct.fuse_data, %struct.fuse_data* %27, i32 0, i32 1
  %29 = load i32, i32* @PCATCH, align 4
  %30 = load i32, i32* @PDROP, align 4
  %31 = or i32 %29, %30
  %32 = call i32 @msleep(i32* %28, i32* @fuse_mtx, i32 %31, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 0)
  store i32 %32, i32* %3, align 4
  %33 = load i32, i32* %3, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %26
  %36 = load %struct.fuse_data*, %struct.fuse_data** %2, align 8
  %37 = call i32 @fdata_set_dead(%struct.fuse_data* %36)
  br label %38

38:                                               ; preds = %35, %26
  br label %41

39:                                               ; preds = %21, %13
  %40 = call i32 (...) @FUSE_UNLOCK()
  br label %41

41:                                               ; preds = %39, %38
  br label %42

42:                                               ; preds = %41, %1
  %43 = load %struct.fuse_ticket*, %struct.fuse_ticket** %4, align 8
  ret %struct.fuse_ticket* %43
}

declare dso_local %struct.fuse_ticket* @fticket_alloc(%struct.fuse_data*) #1

declare dso_local i32 @FUSE_LOCK(...) #1

declare dso_local i32 @msleep(i32*, i32*, i32, i8*, i32) #1

declare dso_local i32 @fdata_set_dead(%struct.fuse_data*) #1

declare dso_local i32 @FUSE_UNLOCK(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
