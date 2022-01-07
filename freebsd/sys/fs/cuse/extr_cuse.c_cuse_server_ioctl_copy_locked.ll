; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/cuse/extr_cuse.c_cuse_server_ioctl_copy_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/cuse/extr_cuse.c_cuse_server_ioctl_copy_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cuse_client_command = type { i64, i32, %struct.proc*, %struct.TYPE_2__* }
%struct.proc = type { i32 }
%struct.TYPE_2__ = type { i64 }
%struct.cuse_data_chunk = type { i64, i64, i64 }

@CUSE_BUF_MIN_PTR = common dso_local global i64 0, align 8
@CUSE_BUFFER_MAX = common dso_local global i64 0, align 8
@EFAULT = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cuse_client_command*, %struct.cuse_data_chunk*, i32)* @cuse_server_ioctl_copy_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cuse_server_ioctl_copy_locked(%struct.cuse_client_command* %0, %struct.cuse_data_chunk* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cuse_client_command*, align 8
  %6 = alloca %struct.cuse_data_chunk*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.proc*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.cuse_client_command* %0, %struct.cuse_client_command** %5, align 8
  store %struct.cuse_data_chunk* %1, %struct.cuse_data_chunk** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.cuse_data_chunk*, %struct.cuse_data_chunk** %6, align 8
  %12 = getelementptr inbounds %struct.cuse_data_chunk, %struct.cuse_data_chunk* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @CUSE_BUF_MIN_PTR, align 8
  %15 = sub nsw i64 %13, %14
  store i64 %15, i64* %9, align 8
  %16 = load %struct.cuse_data_chunk*, %struct.cuse_data_chunk** %6, align 8
  %17 = getelementptr inbounds %struct.cuse_data_chunk, %struct.cuse_data_chunk* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @CUSE_BUFFER_MAX, align 8
  %20 = icmp sgt i64 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %3
  %22 = load i32, i32* @EFAULT, align 4
  store i32 %22, i32* %4, align 4
  br label %110

23:                                               ; preds = %3
  %24 = load i64, i64* %9, align 8
  %25 = load i64, i64* @CUSE_BUFFER_MAX, align 8
  %26 = icmp sge i64 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = load i32, i32* @EFAULT, align 4
  store i32 %28, i32* %4, align 4
  br label %110

29:                                               ; preds = %23
  %30 = load i64, i64* %9, align 8
  %31 = load %struct.cuse_data_chunk*, %struct.cuse_data_chunk** %6, align 8
  %32 = getelementptr inbounds %struct.cuse_data_chunk, %struct.cuse_data_chunk* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = add nsw i64 %30, %33
  %35 = load i64, i64* @CUSE_BUFFER_MAX, align 8
  %36 = icmp sgt i64 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %29
  %38 = load i32, i32* @EFAULT, align 4
  store i32 %38, i32* %4, align 4
  br label %110

39:                                               ; preds = %29
  %40 = load %struct.cuse_client_command*, %struct.cuse_client_command** %5, align 8
  %41 = getelementptr inbounds %struct.cuse_client_command, %struct.cuse_client_command* %40, i32 0, i32 2
  %42 = load %struct.proc*, %struct.proc** %41, align 8
  store %struct.proc* %42, %struct.proc** %8, align 8
  %43 = load %struct.proc*, %struct.proc** %8, align 8
  %44 = icmp eq %struct.proc* %43, null
  br i1 %44, label %45, label %47

45:                                               ; preds = %39
  %46 = load i32, i32* @ENXIO, align 4
  store i32 %46, i32* %4, align 4
  br label %110

47:                                               ; preds = %39
  %48 = load %struct.cuse_client_command*, %struct.cuse_client_command** %5, align 8
  %49 = getelementptr inbounds %struct.cuse_client_command, %struct.cuse_client_command* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp slt i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %47
  %53 = load i32, i32* @ENOMEM, align 4
  store i32 %53, i32* %4, align 4
  br label %110

54:                                               ; preds = %47
  %55 = load %struct.cuse_client_command*, %struct.cuse_client_command** %5, align 8
  %56 = getelementptr inbounds %struct.cuse_client_command, %struct.cuse_client_command* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = add nsw i64 %57, 1
  store i64 %58, i64* %56, align 8
  %59 = call i32 (...) @cuse_unlock()
  %60 = load i32, i32* %7, align 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %78

62:                                               ; preds = %54
  %63 = load %struct.cuse_data_chunk*, %struct.cuse_data_chunk** %6, align 8
  %64 = getelementptr inbounds %struct.cuse_data_chunk, %struct.cuse_data_chunk* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = inttoptr i64 %65 to i8*
  %67 = load %struct.cuse_client_command*, %struct.cuse_client_command** %5, align 8
  %68 = getelementptr inbounds %struct.cuse_client_command, %struct.cuse_client_command* %67, i32 0, i32 3
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* %9, align 8
  %73 = add nsw i64 %71, %72
  %74 = load %struct.cuse_data_chunk*, %struct.cuse_data_chunk** %6, align 8
  %75 = getelementptr inbounds %struct.cuse_data_chunk, %struct.cuse_data_chunk* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = call i32 @copyin(i8* %66, i64 %73, i64 %76)
  store i32 %77, i32* %10, align 4
  br label %94

78:                                               ; preds = %54
  %79 = load %struct.cuse_client_command*, %struct.cuse_client_command** %5, align 8
  %80 = getelementptr inbounds %struct.cuse_client_command, %struct.cuse_client_command* %79, i32 0, i32 3
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* %9, align 8
  %85 = add nsw i64 %83, %84
  %86 = load %struct.cuse_data_chunk*, %struct.cuse_data_chunk** %6, align 8
  %87 = getelementptr inbounds %struct.cuse_data_chunk, %struct.cuse_data_chunk* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = inttoptr i64 %88 to i8*
  %90 = load %struct.cuse_data_chunk*, %struct.cuse_data_chunk** %6, align 8
  %91 = getelementptr inbounds %struct.cuse_data_chunk, %struct.cuse_data_chunk* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = call i32 @copyout(i64 %85, i8* %89, i64 %92)
  store i32 %93, i32* %10, align 4
  br label %94

94:                                               ; preds = %78, %62
  %95 = call i32 (...) @cuse_lock()
  %96 = load %struct.cuse_client_command*, %struct.cuse_client_command** %5, align 8
  %97 = getelementptr inbounds %struct.cuse_client_command, %struct.cuse_client_command* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = add nsw i64 %98, -1
  store i64 %99, i64* %97, align 8
  %100 = load %struct.cuse_client_command*, %struct.cuse_client_command** %5, align 8
  %101 = getelementptr inbounds %struct.cuse_client_command, %struct.cuse_client_command* %100, i32 0, i32 2
  %102 = load %struct.proc*, %struct.proc** %101, align 8
  %103 = icmp eq %struct.proc* %102, null
  br i1 %103, label %104, label %108

104:                                              ; preds = %94
  %105 = load %struct.cuse_client_command*, %struct.cuse_client_command** %5, align 8
  %106 = getelementptr inbounds %struct.cuse_client_command, %struct.cuse_client_command* %105, i32 0, i32 1
  %107 = call i32 @cv_signal(i32* %106)
  br label %108

108:                                              ; preds = %104, %94
  %109 = load i32, i32* %10, align 4
  store i32 %109, i32* %4, align 4
  br label %110

110:                                              ; preds = %108, %52, %45, %37, %27, %21
  %111 = load i32, i32* %4, align 4
  ret i32 %111
}

declare dso_local i32 @cuse_unlock(...) #1

declare dso_local i32 @copyin(i8*, i64, i64) #1

declare dso_local i32 @copyout(i64, i8*, i64) #1

declare dso_local i32 @cuse_lock(...) #1

declare dso_local i32 @cv_signal(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
