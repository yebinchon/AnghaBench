; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/cuse/extr_cuse.c_cuse_server_data_copy_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/cuse/extr_cuse.c_cuse_server_data_copy_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.proc* }
%struct.proc = type { i32 }
%struct.cuse_client_command = type { i64, i32, %struct.proc* }
%struct.cuse_data_chunk = type { i32, i32, i32 }

@ENXIO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@curthread = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cuse_client_command*, %struct.cuse_data_chunk*, i32)* @cuse_server_data_copy_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cuse_server_data_copy_locked(%struct.cuse_client_command* %0, %struct.cuse_data_chunk* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cuse_client_command*, align 8
  %6 = alloca %struct.cuse_data_chunk*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.proc*, align 8
  %9 = alloca i32, align 4
  store %struct.cuse_client_command* %0, %struct.cuse_client_command** %5, align 8
  store %struct.cuse_data_chunk* %1, %struct.cuse_data_chunk** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.cuse_client_command*, %struct.cuse_client_command** %5, align 8
  %11 = getelementptr inbounds %struct.cuse_client_command, %struct.cuse_client_command* %10, i32 0, i32 2
  %12 = load %struct.proc*, %struct.proc** %11, align 8
  store %struct.proc* %12, %struct.proc** %8, align 8
  %13 = load %struct.proc*, %struct.proc** %8, align 8
  %14 = icmp eq %struct.proc* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i32, i32* @ENXIO, align 4
  store i32 %16, i32* %4, align 4
  br label %78

17:                                               ; preds = %3
  %18 = load %struct.cuse_client_command*, %struct.cuse_client_command** %5, align 8
  %19 = getelementptr inbounds %struct.cuse_client_command, %struct.cuse_client_command* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp slt i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = load i32, i32* @ENOMEM, align 4
  store i32 %23, i32* %4, align 4
  br label %78

24:                                               ; preds = %17
  %25 = load %struct.cuse_client_command*, %struct.cuse_client_command** %5, align 8
  %26 = getelementptr inbounds %struct.cuse_client_command, %struct.cuse_client_command* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = add nsw i64 %27, 1
  store i64 %28, i64* %26, align 8
  %29 = call i32 (...) @cuse_unlock()
  %30 = load i32, i32* %7, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %47

32:                                               ; preds = %24
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** @curthread, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load %struct.proc*, %struct.proc** %34, align 8
  %36 = load %struct.cuse_data_chunk*, %struct.cuse_data_chunk** %6, align 8
  %37 = getelementptr inbounds %struct.cuse_data_chunk, %struct.cuse_data_chunk* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.proc*, %struct.proc** %8, align 8
  %40 = load %struct.cuse_data_chunk*, %struct.cuse_data_chunk** %6, align 8
  %41 = getelementptr inbounds %struct.cuse_data_chunk, %struct.cuse_data_chunk* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.cuse_data_chunk*, %struct.cuse_data_chunk** %6, align 8
  %44 = getelementptr inbounds %struct.cuse_data_chunk, %struct.cuse_data_chunk* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @cuse_proc2proc_copy(%struct.proc* %35, i32 %38, %struct.proc* %39, i32 %42, i32 %45)
  store i32 %46, i32* %9, align 4
  br label %62

47:                                               ; preds = %24
  %48 = load %struct.proc*, %struct.proc** %8, align 8
  %49 = load %struct.cuse_data_chunk*, %struct.cuse_data_chunk** %6, align 8
  %50 = getelementptr inbounds %struct.cuse_data_chunk, %struct.cuse_data_chunk* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** @curthread, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load %struct.proc*, %struct.proc** %53, align 8
  %55 = load %struct.cuse_data_chunk*, %struct.cuse_data_chunk** %6, align 8
  %56 = getelementptr inbounds %struct.cuse_data_chunk, %struct.cuse_data_chunk* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.cuse_data_chunk*, %struct.cuse_data_chunk** %6, align 8
  %59 = getelementptr inbounds %struct.cuse_data_chunk, %struct.cuse_data_chunk* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @cuse_proc2proc_copy(%struct.proc* %48, i32 %51, %struct.proc* %54, i32 %57, i32 %60)
  store i32 %61, i32* %9, align 4
  br label %62

62:                                               ; preds = %47, %32
  %63 = call i32 (...) @cuse_lock()
  %64 = load %struct.cuse_client_command*, %struct.cuse_client_command** %5, align 8
  %65 = getelementptr inbounds %struct.cuse_client_command, %struct.cuse_client_command* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = add nsw i64 %66, -1
  store i64 %67, i64* %65, align 8
  %68 = load %struct.cuse_client_command*, %struct.cuse_client_command** %5, align 8
  %69 = getelementptr inbounds %struct.cuse_client_command, %struct.cuse_client_command* %68, i32 0, i32 2
  %70 = load %struct.proc*, %struct.proc** %69, align 8
  %71 = icmp eq %struct.proc* %70, null
  br i1 %71, label %72, label %76

72:                                               ; preds = %62
  %73 = load %struct.cuse_client_command*, %struct.cuse_client_command** %5, align 8
  %74 = getelementptr inbounds %struct.cuse_client_command, %struct.cuse_client_command* %73, i32 0, i32 1
  %75 = call i32 @cv_signal(i32* %74)
  br label %76

76:                                               ; preds = %72, %62
  %77 = load i32, i32* %9, align 4
  store i32 %77, i32* %4, align 4
  br label %78

78:                                               ; preds = %76, %22, %15
  %79 = load i32, i32* %4, align 4
  ret i32 %79
}

declare dso_local i32 @cuse_unlock(...) #1

declare dso_local i32 @cuse_proc2proc_copy(%struct.proc*, i32, %struct.proc*, i32, i32) #1

declare dso_local i32 @cuse_lock(...) #1

declare dso_local i32 @cv_signal(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
