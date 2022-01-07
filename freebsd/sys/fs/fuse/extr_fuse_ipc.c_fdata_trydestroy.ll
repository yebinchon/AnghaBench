; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/fuse/extr_fuse_ipc.c_fdata_trydestroy.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/fuse/extr_fuse_ipc.c_fdata_trydestroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fuse_data = type { i64, i32, %struct.TYPE_2__, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@curthread = common dso_local global i32 0, align 4
@M_FUSEMSG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fdata_trydestroy(%struct.fuse_data* %0) #0 {
  %2 = alloca %struct.fuse_data*, align 8
  store %struct.fuse_data* %0, %struct.fuse_data** %2, align 8
  %3 = load %struct.fuse_data*, %struct.fuse_data** %2, align 8
  %4 = getelementptr inbounds %struct.fuse_data, %struct.fuse_data* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = add nsw i64 %5, -1
  store i64 %6, i64* %4, align 8
  %7 = load %struct.fuse_data*, %struct.fuse_data** %2, align 8
  %8 = getelementptr inbounds %struct.fuse_data, %struct.fuse_data* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp sge i64 %9, 0
  %11 = zext i1 %10 to i32
  %12 = call i32 @MPASS(i32 %11)
  %13 = load %struct.fuse_data*, %struct.fuse_data** %2, align 8
  %14 = getelementptr inbounds %struct.fuse_data, %struct.fuse_data* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  br label %44

18:                                               ; preds = %1
  %19 = load %struct.fuse_data*, %struct.fuse_data** %2, align 8
  %20 = getelementptr inbounds %struct.fuse_data, %struct.fuse_data* %19, i32 0, i32 5
  %21 = call i32 @sx_destroy(i32* %20)
  %22 = load %struct.fuse_data*, %struct.fuse_data** %2, align 8
  %23 = getelementptr inbounds %struct.fuse_data, %struct.fuse_data* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @crfree(i32 %24)
  %26 = load %struct.fuse_data*, %struct.fuse_data** %2, align 8
  %27 = getelementptr inbounds %struct.fuse_data, %struct.fuse_data* %26, i32 0, i32 3
  %28 = call i32 @mtx_destroy(i32* %27)
  %29 = load %struct.fuse_data*, %struct.fuse_data** %2, align 8
  %30 = getelementptr inbounds %struct.fuse_data, %struct.fuse_data* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* @curthread, align 4
  %33 = call i32 @knlist_delete(i32* %31, i32 %32, i32 0)
  %34 = load %struct.fuse_data*, %struct.fuse_data** %2, align 8
  %35 = getelementptr inbounds %struct.fuse_data, %struct.fuse_data* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = call i32 @knlist_destroy(i32* %36)
  %38 = load %struct.fuse_data*, %struct.fuse_data** %2, align 8
  %39 = getelementptr inbounds %struct.fuse_data, %struct.fuse_data* %38, i32 0, i32 1
  %40 = call i32 @mtx_destroy(i32* %39)
  %41 = load %struct.fuse_data*, %struct.fuse_data** %2, align 8
  %42 = load i32, i32* @M_FUSEMSG, align 4
  %43 = call i32 @free(%struct.fuse_data* %41, i32 %42)
  br label %44

44:                                               ; preds = %18, %17
  ret void
}

declare dso_local i32 @MPASS(i32) #1

declare dso_local i32 @sx_destroy(i32*) #1

declare dso_local i32 @crfree(i32) #1

declare dso_local i32 @mtx_destroy(i32*) #1

declare dso_local i32 @knlist_delete(i32*, i32, i32) #1

declare dso_local i32 @knlist_destroy(i32*) #1

declare dso_local i32 @free(%struct.fuse_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
