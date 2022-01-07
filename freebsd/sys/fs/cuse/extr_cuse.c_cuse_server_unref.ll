; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/cuse/extr_cuse.c_cuse_server_unref.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/cuse/extr_cuse.c_cuse_server_unref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cuse_server = type { i64, i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.cuse_server_dev = type { i64, i32, %struct.TYPE_2__, i32, i32 }
%struct.cuse_memory = type { i64, i32, %struct.TYPE_2__, i32, i32 }

@cuse_server_head = common dso_local global i32 0, align 4
@entry = common dso_local global i32 0, align 4
@M_CUSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cuse_server*)* @cuse_server_unref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cuse_server_unref(%struct.cuse_server* %0) #0 {
  %2 = alloca %struct.cuse_server*, align 8
  %3 = alloca %struct.cuse_server_dev*, align 8
  %4 = alloca %struct.cuse_memory*, align 8
  store %struct.cuse_server* %0, %struct.cuse_server** %2, align 8
  %5 = call i32 (...) @cuse_lock()
  %6 = load %struct.cuse_server*, %struct.cuse_server** %2, align 8
  %7 = getelementptr inbounds %struct.cuse_server, %struct.cuse_server* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = add nsw i64 %8, -1
  store i64 %9, i64* %7, align 8
  %10 = load %struct.cuse_server*, %struct.cuse_server** %2, align 8
  %11 = getelementptr inbounds %struct.cuse_server, %struct.cuse_server* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = call i32 (...) @cuse_unlock()
  br label %84

16:                                               ; preds = %1
  %17 = load %struct.cuse_server*, %struct.cuse_server** %2, align 8
  %18 = bitcast %struct.cuse_server* %17 to %struct.cuse_server_dev*
  %19 = call i32 @cuse_server_is_closing(%struct.cuse_server_dev* %18)
  %20 = load %struct.cuse_server*, %struct.cuse_server** %2, align 8
  %21 = bitcast %struct.cuse_server* %20 to %struct.cuse_server_dev*
  %22 = call i32 @cuse_server_wakeup_all_client_locked(%struct.cuse_server_dev* %21)
  %23 = load %struct.cuse_server*, %struct.cuse_server** %2, align 8
  %24 = bitcast %struct.cuse_server* %23 to %struct.cuse_server_dev*
  %25 = load i32, i32* @entry, align 4
  %26 = call i32 @TAILQ_REMOVE(i32* @cuse_server_head, %struct.cuse_server_dev* %24, i32 %25)
  br label %27

27:                                               ; preds = %32, %16
  %28 = load %struct.cuse_server*, %struct.cuse_server** %2, align 8
  %29 = getelementptr inbounds %struct.cuse_server, %struct.cuse_server* %28, i32 0, i32 4
  %30 = call %struct.cuse_server_dev* @TAILQ_FIRST(i32* %29)
  store %struct.cuse_server_dev* %30, %struct.cuse_server_dev** %3, align 8
  %31 = icmp ne %struct.cuse_server_dev* %30, null
  br i1 %31, label %32, label %42

32:                                               ; preds = %27
  %33 = load %struct.cuse_server*, %struct.cuse_server** %2, align 8
  %34 = getelementptr inbounds %struct.cuse_server, %struct.cuse_server* %33, i32 0, i32 4
  %35 = load %struct.cuse_server_dev*, %struct.cuse_server_dev** %3, align 8
  %36 = load i32, i32* @entry, align 4
  %37 = call i32 @TAILQ_REMOVE(i32* %34, %struct.cuse_server_dev* %35, i32 %36)
  %38 = call i32 (...) @cuse_unlock()
  %39 = load %struct.cuse_server_dev*, %struct.cuse_server_dev** %3, align 8
  %40 = call i32 @cuse_server_free_dev(%struct.cuse_server_dev* %39)
  %41 = call i32 (...) @cuse_lock()
  br label %27

42:                                               ; preds = %27
  %43 = load %struct.cuse_server*, %struct.cuse_server** %2, align 8
  %44 = bitcast %struct.cuse_server* %43 to %struct.cuse_server_dev*
  %45 = call i32 @cuse_free_unit_by_id_locked(%struct.cuse_server_dev* %44, i32 -1)
  br label %46

46:                                               ; preds = %52, %42
  %47 = load %struct.cuse_server*, %struct.cuse_server** %2, align 8
  %48 = getelementptr inbounds %struct.cuse_server, %struct.cuse_server* %47, i32 0, i32 3
  %49 = call %struct.cuse_server_dev* @TAILQ_FIRST(i32* %48)
  %50 = bitcast %struct.cuse_server_dev* %49 to %struct.cuse_memory*
  store %struct.cuse_memory* %50, %struct.cuse_memory** %4, align 8
  %51 = icmp ne %struct.cuse_memory* %50, null
  br i1 %51, label %52, label %64

52:                                               ; preds = %46
  %53 = load %struct.cuse_server*, %struct.cuse_server** %2, align 8
  %54 = getelementptr inbounds %struct.cuse_server, %struct.cuse_server* %53, i32 0, i32 3
  %55 = load %struct.cuse_memory*, %struct.cuse_memory** %4, align 8
  %56 = bitcast %struct.cuse_memory* %55 to %struct.cuse_server_dev*
  %57 = load i32, i32* @entry, align 4
  %58 = call i32 @TAILQ_REMOVE(i32* %54, %struct.cuse_server_dev* %56, i32 %57)
  %59 = call i32 (...) @cuse_unlock()
  %60 = load %struct.cuse_memory*, %struct.cuse_memory** %4, align 8
  %61 = bitcast %struct.cuse_memory* %60 to %struct.cuse_server_dev*
  %62 = call i32 @cuse_vm_memory_free(%struct.cuse_server_dev* %61)
  %63 = call i32 (...) @cuse_lock()
  br label %46

64:                                               ; preds = %46
  %65 = load %struct.cuse_server*, %struct.cuse_server** %2, align 8
  %66 = getelementptr inbounds %struct.cuse_server, %struct.cuse_server* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = call i32 @knlist_clear(i32* %67, i32 1)
  %69 = load %struct.cuse_server*, %struct.cuse_server** %2, align 8
  %70 = getelementptr inbounds %struct.cuse_server, %struct.cuse_server* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = call i32 @knlist_destroy(i32* %71)
  %73 = call i32 (...) @cuse_unlock()
  %74 = load %struct.cuse_server*, %struct.cuse_server** %2, align 8
  %75 = getelementptr inbounds %struct.cuse_server, %struct.cuse_server* %74, i32 0, i32 2
  %76 = call i32 @seldrain(%struct.TYPE_2__* %75)
  %77 = load %struct.cuse_server*, %struct.cuse_server** %2, align 8
  %78 = getelementptr inbounds %struct.cuse_server, %struct.cuse_server* %77, i32 0, i32 1
  %79 = call i32 @cv_destroy(i32* %78)
  %80 = load %struct.cuse_server*, %struct.cuse_server** %2, align 8
  %81 = bitcast %struct.cuse_server* %80 to %struct.cuse_server_dev*
  %82 = load i32, i32* @M_CUSE, align 4
  %83 = call i32 @free(%struct.cuse_server_dev* %81, i32 %82)
  br label %84

84:                                               ; preds = %64, %14
  ret void
}

declare dso_local i32 @cuse_lock(...) #1

declare dso_local i32 @cuse_unlock(...) #1

declare dso_local i32 @cuse_server_is_closing(%struct.cuse_server_dev*) #1

declare dso_local i32 @cuse_server_wakeup_all_client_locked(%struct.cuse_server_dev*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.cuse_server_dev*, i32) #1

declare dso_local %struct.cuse_server_dev* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @cuse_server_free_dev(%struct.cuse_server_dev*) #1

declare dso_local i32 @cuse_free_unit_by_id_locked(%struct.cuse_server_dev*, i32) #1

declare dso_local i32 @cuse_vm_memory_free(%struct.cuse_server_dev*) #1

declare dso_local i32 @knlist_clear(i32*, i32) #1

declare dso_local i32 @knlist_destroy(i32*) #1

declare dso_local i32 @seldrain(%struct.TYPE_2__*) #1

declare dso_local i32 @cv_destroy(i32*) #1

declare dso_local i32 @free(%struct.cuse_server_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
