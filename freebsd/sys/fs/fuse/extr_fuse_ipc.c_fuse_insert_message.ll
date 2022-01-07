; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/fuse/extr_fuse_ipc.c_fuse_insert_message.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/fuse/extr_fuse_ipc.c_fuse_insert_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fuse_ticket = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@FT_DIRTY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"FUSE: ticket reused without being refreshed\00", align 1
@PZERO = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fuse_insert_message(%struct.fuse_ticket* %0, i32 %1) #0 {
  %3 = alloca %struct.fuse_ticket*, align 8
  %4 = alloca i32, align 4
  store %struct.fuse_ticket* %0, %struct.fuse_ticket** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.fuse_ticket*, %struct.fuse_ticket** %3, align 8
  %6 = getelementptr inbounds %struct.fuse_ticket, %struct.fuse_ticket* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @FT_DIRTY, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = call i32 @panic(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  br label %13

13:                                               ; preds = %11, %2
  %14 = load i32, i32* @FT_DIRTY, align 4
  %15 = load %struct.fuse_ticket*, %struct.fuse_ticket** %3, align 8
  %16 = getelementptr inbounds %struct.fuse_ticket, %struct.fuse_ticket* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = or i32 %17, %14
  store i32 %18, i32* %16, align 8
  %19 = load %struct.fuse_ticket*, %struct.fuse_ticket** %3, align 8
  %20 = getelementptr inbounds %struct.fuse_ticket, %struct.fuse_ticket* %19, i32 0, i32 1
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = call i64 @fdata_get_dead(%struct.TYPE_4__* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %13
  br label %64

25:                                               ; preds = %13
  %26 = load %struct.fuse_ticket*, %struct.fuse_ticket** %3, align 8
  %27 = getelementptr inbounds %struct.fuse_ticket, %struct.fuse_ticket* %26, i32 0, i32 1
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @fuse_lck_mtx_lock(i32 %30)
  %32 = load i32, i32* %4, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %25
  %35 = load %struct.fuse_ticket*, %struct.fuse_ticket** %3, align 8
  %36 = call i32 @fuse_ms_push_head(%struct.fuse_ticket* %35)
  br label %40

37:                                               ; preds = %25
  %38 = load %struct.fuse_ticket*, %struct.fuse_ticket** %3, align 8
  %39 = call i32 @fuse_ms_push(%struct.fuse_ticket* %38)
  br label %40

40:                                               ; preds = %37, %34
  %41 = load %struct.fuse_ticket*, %struct.fuse_ticket** %3, align 8
  %42 = getelementptr inbounds %struct.fuse_ticket, %struct.fuse_ticket* %41, i32 0, i32 1
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = call i32 @wakeup_one(%struct.TYPE_4__* %43)
  %45 = load %struct.fuse_ticket*, %struct.fuse_ticket** %3, align 8
  %46 = getelementptr inbounds %struct.fuse_ticket, %struct.fuse_ticket* %45, i32 0, i32 1
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  %49 = load i64, i64* @PZERO, align 8
  %50 = add nsw i64 %49, 1
  %51 = call i32 @selwakeuppri(%struct.TYPE_5__* %48, i64 %50)
  %52 = load %struct.fuse_ticket*, %struct.fuse_ticket** %3, align 8
  %53 = getelementptr inbounds %struct.fuse_ticket, %struct.fuse_ticket* %52, i32 0, i32 1
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = call i32 @KNOTE_LOCKED(i32* %56, i32 0)
  %58 = load %struct.fuse_ticket*, %struct.fuse_ticket** %3, align 8
  %59 = getelementptr inbounds %struct.fuse_ticket, %struct.fuse_ticket* %58, i32 0, i32 1
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @fuse_lck_mtx_unlock(i32 %62)
  br label %64

64:                                               ; preds = %40, %24
  ret void
}

declare dso_local i32 @panic(i8*) #1

declare dso_local i64 @fdata_get_dead(%struct.TYPE_4__*) #1

declare dso_local i32 @fuse_lck_mtx_lock(i32) #1

declare dso_local i32 @fuse_ms_push_head(%struct.fuse_ticket*) #1

declare dso_local i32 @fuse_ms_push(%struct.fuse_ticket*) #1

declare dso_local i32 @wakeup_one(%struct.TYPE_4__*) #1

declare dso_local i32 @selwakeuppri(%struct.TYPE_5__*, i64) #1

declare dso_local i32 @KNOTE_LOCKED(i32*, i32) #1

declare dso_local i32 @fuse_lck_mtx_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
