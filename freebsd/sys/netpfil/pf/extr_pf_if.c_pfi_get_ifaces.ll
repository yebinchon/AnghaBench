; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/pf/extr_pf_if.c_pfi_get_ifaces.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/pf/extr_pf_if.c_pfi_get_ifaces.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pfi_kif = type { i64 }
%struct.epoch_tracker = type { i32 }

@pfi_ifhead = common dso_local global i32 0, align 4
@V_pfi_ifs = common dso_local global i32 0, align 4
@time_second = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pfi_get_ifaces(i8* %0, %struct.pfi_kif* %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.pfi_kif*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.epoch_tracker, align 4
  %8 = alloca %struct.pfi_kif*, align 8
  %9 = alloca %struct.pfi_kif*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.pfi_kif* %1, %struct.pfi_kif** %5, align 8
  store i32* %2, i32** %6, align 8
  store i32 0, i32* %10, align 4
  %11 = getelementptr inbounds %struct.epoch_tracker, %struct.epoch_tracker* %7, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @NET_EPOCH_ENTER(i32 %12)
  %14 = load i32, i32* @pfi_ifhead, align 4
  %15 = call %struct.pfi_kif* @RB_MIN(i32 %14, i32* @V_pfi_ifs)
  store %struct.pfi_kif* %15, %struct.pfi_kif** %8, align 8
  br label %16

16:                                               ; preds = %53, %3
  %17 = load %struct.pfi_kif*, %struct.pfi_kif** %8, align 8
  %18 = icmp ne %struct.pfi_kif* %17, null
  br i1 %18, label %19, label %55

19:                                               ; preds = %16
  %20 = load i32, i32* @pfi_ifhead, align 4
  %21 = load %struct.pfi_kif*, %struct.pfi_kif** %8, align 8
  %22 = call %struct.pfi_kif* @RB_NEXT(i32 %20, i32* @V_pfi_ifs, %struct.pfi_kif* %21)
  store %struct.pfi_kif* %22, %struct.pfi_kif** %9, align 8
  %23 = load i8*, i8** %4, align 8
  %24 = load %struct.pfi_kif*, %struct.pfi_kif** %8, align 8
  %25 = call i64 @pfi_skip_if(i8* %23, %struct.pfi_kif* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %19
  br label %53

28:                                               ; preds = %19
  %29 = load i32*, i32** %6, align 8
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %10, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %10, align 4
  %33 = icmp sle i32 %30, %31
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  br label %55

35:                                               ; preds = %28
  %36 = load %struct.pfi_kif*, %struct.pfi_kif** %8, align 8
  %37 = getelementptr inbounds %struct.pfi_kif, %struct.pfi_kif* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %35
  %41 = load i64, i64* @time_second, align 8
  %42 = load %struct.pfi_kif*, %struct.pfi_kif** %8, align 8
  %43 = getelementptr inbounds %struct.pfi_kif, %struct.pfi_kif* %42, i32 0, i32 0
  store i64 %41, i64* %43, align 8
  br label %44

44:                                               ; preds = %40, %35
  %45 = load %struct.pfi_kif*, %struct.pfi_kif** %8, align 8
  %46 = load %struct.pfi_kif*, %struct.pfi_kif** %5, align 8
  %47 = getelementptr inbounds %struct.pfi_kif, %struct.pfi_kif* %46, i32 1
  store %struct.pfi_kif* %47, %struct.pfi_kif** %5, align 8
  %48 = ptrtoint %struct.pfi_kif* %46 to i32
  %49 = call i32 @bcopy(%struct.pfi_kif* %45, i32 %48, i32 8)
  %50 = load i32, i32* @pfi_ifhead, align 4
  %51 = load %struct.pfi_kif*, %struct.pfi_kif** %8, align 8
  %52 = call %struct.pfi_kif* @RB_NEXT(i32 %50, i32* @V_pfi_ifs, %struct.pfi_kif* %51)
  store %struct.pfi_kif* %52, %struct.pfi_kif** %9, align 8
  br label %53

53:                                               ; preds = %44, %27
  %54 = load %struct.pfi_kif*, %struct.pfi_kif** %9, align 8
  store %struct.pfi_kif* %54, %struct.pfi_kif** %8, align 8
  br label %16

55:                                               ; preds = %34, %16
  %56 = load i32, i32* %10, align 4
  %57 = load i32*, i32** %6, align 8
  store i32 %56, i32* %57, align 4
  %58 = getelementptr inbounds %struct.epoch_tracker, %struct.epoch_tracker* %7, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @NET_EPOCH_EXIT(i32 %59)
  ret void
}

declare dso_local i32 @NET_EPOCH_ENTER(i32) #1

declare dso_local %struct.pfi_kif* @RB_MIN(i32, i32*) #1

declare dso_local %struct.pfi_kif* @RB_NEXT(i32, i32*, %struct.pfi_kif*) #1

declare dso_local i64 @pfi_skip_if(i8*, %struct.pfi_kif*) #1

declare dso_local i32 @bcopy(%struct.pfi_kif*, i32, i32) #1

declare dso_local i32 @NET_EPOCH_EXIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
