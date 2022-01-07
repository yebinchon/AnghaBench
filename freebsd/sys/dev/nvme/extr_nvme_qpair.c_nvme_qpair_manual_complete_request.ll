; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/nvme/extr_nvme_qpair.c_nvme_qpair_manual_complete_request.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/nvme/extr_nvme_qpair.c_nvme_qpair_manual_complete_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_qpair = type { i32 }
%struct.nvme_request = type { i32, i32 (i32, %struct.nvme_completion*)*, i32 }
%struct.nvme_completion = type opaque
%struct.nvme_completion.0 = type { i32, i32 }

@NVME_STATUS_SCT_MASK = common dso_local global i32 0, align 4
@NVME_STATUS_SCT_SHIFT = common dso_local global i32 0, align 4
@NVME_STATUS_SC_MASK = common dso_local global i32 0, align 4
@NVME_STATUS_SC_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nvme_qpair_manual_complete_request(%struct.nvme_qpair* %0, %struct.nvme_request* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.nvme_qpair*, align 8
  %6 = alloca %struct.nvme_request*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.nvme_completion.0, align 4
  %10 = alloca i64, align 8
  store %struct.nvme_qpair* %0, %struct.nvme_qpair** %5, align 8
  store %struct.nvme_request* %1, %struct.nvme_request** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = call i32 @memset(%struct.nvme_completion.0* %9, i32 0, i32 8)
  %12 = load %struct.nvme_qpair*, %struct.nvme_qpair** %5, align 8
  %13 = getelementptr inbounds %struct.nvme_qpair, %struct.nvme_qpair* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = getelementptr inbounds %struct.nvme_completion.0, %struct.nvme_completion.0* %9, i32 0, i32 1
  store i32 %14, i32* %15, align 4
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @NVME_STATUS_SCT_MASK, align 4
  %18 = and i32 %16, %17
  %19 = load i32, i32* @NVME_STATUS_SCT_SHIFT, align 4
  %20 = shl i32 %18, %19
  %21 = getelementptr inbounds %struct.nvme_completion.0, %struct.nvme_completion.0* %9, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = or i32 %22, %20
  store i32 %23, i32* %21, align 4
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* @NVME_STATUS_SC_MASK, align 4
  %26 = and i32 %24, %25
  %27 = load i32, i32* @NVME_STATUS_SC_SHIFT, align 4
  %28 = shl i32 %26, %27
  %29 = getelementptr inbounds %struct.nvme_completion.0, %struct.nvme_completion.0* %9, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = or i32 %30, %28
  store i32 %31, i32* %29, align 4
  %32 = call i64 @nvme_completion_is_error(%struct.nvme_completion.0* %9)
  store i64 %32, i64* %10, align 8
  %33 = load i64, i64* %10, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %4
  %36 = load %struct.nvme_qpair*, %struct.nvme_qpair** %5, align 8
  %37 = load %struct.nvme_request*, %struct.nvme_request** %6, align 8
  %38 = getelementptr inbounds %struct.nvme_request, %struct.nvme_request* %37, i32 0, i32 2
  %39 = call i32 @nvme_qpair_print_command(%struct.nvme_qpair* %36, i32* %38)
  %40 = load %struct.nvme_qpair*, %struct.nvme_qpair** %5, align 8
  %41 = call i32 @nvme_qpair_print_completion(%struct.nvme_qpair* %40, %struct.nvme_completion.0* %9)
  br label %42

42:                                               ; preds = %35, %4
  %43 = load %struct.nvme_request*, %struct.nvme_request** %6, align 8
  %44 = getelementptr inbounds %struct.nvme_request, %struct.nvme_request* %43, i32 0, i32 1
  %45 = load i32 (i32, %struct.nvme_completion*)*, i32 (i32, %struct.nvme_completion*)** %44, align 8
  %46 = icmp ne i32 (i32, %struct.nvme_completion*)* %45, null
  br i1 %46, label %47, label %56

47:                                               ; preds = %42
  %48 = load %struct.nvme_request*, %struct.nvme_request** %6, align 8
  %49 = getelementptr inbounds %struct.nvme_request, %struct.nvme_request* %48, i32 0, i32 1
  %50 = load i32 (i32, %struct.nvme_completion*)*, i32 (i32, %struct.nvme_completion*)** %49, align 8
  %51 = load %struct.nvme_request*, %struct.nvme_request** %6, align 8
  %52 = getelementptr inbounds %struct.nvme_request, %struct.nvme_request* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = bitcast %struct.nvme_completion.0* %9 to %struct.nvme_completion*
  %55 = call i32 %50(i32 %53, %struct.nvme_completion* %54)
  br label %56

56:                                               ; preds = %47, %42
  %57 = load %struct.nvme_request*, %struct.nvme_request** %6, align 8
  %58 = call i32 @nvme_free_request(%struct.nvme_request* %57)
  ret void
}

declare dso_local i32 @memset(%struct.nvme_completion.0*, i32, i32) #1

declare dso_local i64 @nvme_completion_is_error(%struct.nvme_completion.0*) #1

declare dso_local i32 @nvme_qpair_print_command(%struct.nvme_qpair*, i32*) #1

declare dso_local i32 @nvme_qpair_print_completion(%struct.nvme_qpair*, %struct.nvme_completion.0*) #1

declare dso_local i32 @nvme_free_request(%struct.nvme_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
