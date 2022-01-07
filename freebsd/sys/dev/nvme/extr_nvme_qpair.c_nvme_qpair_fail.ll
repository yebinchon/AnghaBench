; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/nvme/extr_nvme_qpair.c_nvme_qpair_fail.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/nvme/extr_nvme_qpair.c_nvme_qpair_fail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_qpair = type { i32, i32, i32, i32 }
%struct.nvme_tracker = type { i32 }
%struct.nvme_request = type { i32 }

@stailq = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"failing queued i/o\0A\00", align 1
@NVME_SCT_GENERIC = common dso_local global i32 0, align 4
@NVME_SC_ABORTED_BY_REQUEST = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"failing outstanding i/o\0A\00", align 1
@DO_NOT_RETRY = common dso_local global i32 0, align 4
@ERROR_PRINT_ALL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nvme_qpair_fail(%struct.nvme_qpair* %0) #0 {
  %2 = alloca %struct.nvme_qpair*, align 8
  %3 = alloca %struct.nvme_tracker*, align 8
  %4 = alloca %struct.nvme_request*, align 8
  store %struct.nvme_qpair* %0, %struct.nvme_qpair** %2, align 8
  %5 = load %struct.nvme_qpair*, %struct.nvme_qpair** %2, align 8
  %6 = getelementptr inbounds %struct.nvme_qpair, %struct.nvme_qpair* %5, i32 0, i32 0
  %7 = call i32 @mtx_initialized(i32* %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %75

10:                                               ; preds = %1
  %11 = load %struct.nvme_qpair*, %struct.nvme_qpair** %2, align 8
  %12 = getelementptr inbounds %struct.nvme_qpair, %struct.nvme_qpair* %11, i32 0, i32 0
  %13 = call i32 @mtx_lock(i32* %12)
  br label %14

14:                                               ; preds = %20, %10
  %15 = load %struct.nvme_qpair*, %struct.nvme_qpair** %2, align 8
  %16 = getelementptr inbounds %struct.nvme_qpair, %struct.nvme_qpair* %15, i32 0, i32 3
  %17 = call i32 @STAILQ_EMPTY(i32* %16)
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  br i1 %19, label %20, label %43

20:                                               ; preds = %14
  %21 = load %struct.nvme_qpair*, %struct.nvme_qpair** %2, align 8
  %22 = getelementptr inbounds %struct.nvme_qpair, %struct.nvme_qpair* %21, i32 0, i32 3
  %23 = call %struct.nvme_request* @STAILQ_FIRST(i32* %22)
  store %struct.nvme_request* %23, %struct.nvme_request** %4, align 8
  %24 = load %struct.nvme_qpair*, %struct.nvme_qpair** %2, align 8
  %25 = getelementptr inbounds %struct.nvme_qpair, %struct.nvme_qpair* %24, i32 0, i32 3
  %26 = load i32, i32* @stailq, align 4
  %27 = call i32 @STAILQ_REMOVE_HEAD(i32* %25, i32 %26)
  %28 = load %struct.nvme_qpair*, %struct.nvme_qpair** %2, align 8
  %29 = getelementptr inbounds %struct.nvme_qpair, %struct.nvme_qpair* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @nvme_printf(i32 %30, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %32 = load %struct.nvme_qpair*, %struct.nvme_qpair** %2, align 8
  %33 = getelementptr inbounds %struct.nvme_qpair, %struct.nvme_qpair* %32, i32 0, i32 0
  %34 = call i32 @mtx_unlock(i32* %33)
  %35 = load %struct.nvme_qpair*, %struct.nvme_qpair** %2, align 8
  %36 = load %struct.nvme_request*, %struct.nvme_request** %4, align 8
  %37 = load i32, i32* @NVME_SCT_GENERIC, align 4
  %38 = load i32, i32* @NVME_SC_ABORTED_BY_REQUEST, align 4
  %39 = call i32 @nvme_qpair_manual_complete_request(%struct.nvme_qpair* %35, %struct.nvme_request* %36, i32 %37, i32 %38)
  %40 = load %struct.nvme_qpair*, %struct.nvme_qpair** %2, align 8
  %41 = getelementptr inbounds %struct.nvme_qpair, %struct.nvme_qpair* %40, i32 0, i32 0
  %42 = call i32 @mtx_lock(i32* %41)
  br label %14

43:                                               ; preds = %14
  br label %44

44:                                               ; preds = %50, %43
  %45 = load %struct.nvme_qpair*, %struct.nvme_qpair** %2, align 8
  %46 = getelementptr inbounds %struct.nvme_qpair, %struct.nvme_qpair* %45, i32 0, i32 2
  %47 = call i32 @TAILQ_EMPTY(i32* %46)
  %48 = icmp ne i32 %47, 0
  %49 = xor i1 %48, true
  br i1 %49, label %50, label %71

50:                                               ; preds = %44
  %51 = load %struct.nvme_qpair*, %struct.nvme_qpair** %2, align 8
  %52 = getelementptr inbounds %struct.nvme_qpair, %struct.nvme_qpair* %51, i32 0, i32 2
  %53 = call %struct.nvme_tracker* @TAILQ_FIRST(i32* %52)
  store %struct.nvme_tracker* %53, %struct.nvme_tracker** %3, align 8
  %54 = load %struct.nvme_qpair*, %struct.nvme_qpair** %2, align 8
  %55 = getelementptr inbounds %struct.nvme_qpair, %struct.nvme_qpair* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @nvme_printf(i32 %56, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %58 = load %struct.nvme_qpair*, %struct.nvme_qpair** %2, align 8
  %59 = getelementptr inbounds %struct.nvme_qpair, %struct.nvme_qpair* %58, i32 0, i32 0
  %60 = call i32 @mtx_unlock(i32* %59)
  %61 = load %struct.nvme_qpair*, %struct.nvme_qpair** %2, align 8
  %62 = load %struct.nvme_tracker*, %struct.nvme_tracker** %3, align 8
  %63 = load i32, i32* @NVME_SCT_GENERIC, align 4
  %64 = load i32, i32* @NVME_SC_ABORTED_BY_REQUEST, align 4
  %65 = load i32, i32* @DO_NOT_RETRY, align 4
  %66 = load i32, i32* @ERROR_PRINT_ALL, align 4
  %67 = call i32 @nvme_qpair_manual_complete_tracker(%struct.nvme_qpair* %61, %struct.nvme_tracker* %62, i32 %63, i32 %64, i32 %65, i32 %66)
  %68 = load %struct.nvme_qpair*, %struct.nvme_qpair** %2, align 8
  %69 = getelementptr inbounds %struct.nvme_qpair, %struct.nvme_qpair* %68, i32 0, i32 0
  %70 = call i32 @mtx_lock(i32* %69)
  br label %44

71:                                               ; preds = %44
  %72 = load %struct.nvme_qpair*, %struct.nvme_qpair** %2, align 8
  %73 = getelementptr inbounds %struct.nvme_qpair, %struct.nvme_qpair* %72, i32 0, i32 0
  %74 = call i32 @mtx_unlock(i32* %73)
  br label %75

75:                                               ; preds = %71, %9
  ret void
}

declare dso_local i32 @mtx_initialized(i32*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @STAILQ_EMPTY(i32*) #1

declare dso_local %struct.nvme_request* @STAILQ_FIRST(i32*) #1

declare dso_local i32 @STAILQ_REMOVE_HEAD(i32*, i32) #1

declare dso_local i32 @nvme_printf(i32, i8*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @nvme_qpair_manual_complete_request(%struct.nvme_qpair*, %struct.nvme_request*, i32, i32) #1

declare dso_local i32 @TAILQ_EMPTY(i32*) #1

declare dso_local %struct.nvme_tracker* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @nvme_qpair_manual_complete_tracker(%struct.nvme_qpair*, %struct.nvme_tracker*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
