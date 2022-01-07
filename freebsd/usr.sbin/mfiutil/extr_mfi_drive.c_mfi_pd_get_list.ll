; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/mfiutil/extr_mfi_drive.c_mfi_pd_get_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/mfiutil/extr_mfi_drive.c_mfi_pd_get_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mfi_pd_list = type { i32 }

@MFI_DCMD_PD_GET_LIST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mfi_pd_get_list(i32 %0, %struct.mfi_pd_list** %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.mfi_pd_list**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.mfi_pd_list*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.mfi_pd_list** %1, %struct.mfi_pd_list*** %6, align 8
  store i32* %2, i32** %7, align 8
  store %struct.mfi_pd_list* null, %struct.mfi_pd_list** %8, align 8
  store i32 1024, i32* %9, align 4
  br label %10

10:                                               ; preds = %34, %3
  %11 = load %struct.mfi_pd_list*, %struct.mfi_pd_list** %8, align 8
  %12 = load i32, i32* %9, align 4
  %13 = call %struct.mfi_pd_list* @reallocf(%struct.mfi_pd_list* %11, i32 %12)
  store %struct.mfi_pd_list* %13, %struct.mfi_pd_list** %8, align 8
  %14 = load %struct.mfi_pd_list*, %struct.mfi_pd_list** %8, align 8
  %15 = icmp eq %struct.mfi_pd_list* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %10
  store i32 -1, i32* %4, align 4
  br label %41

17:                                               ; preds = %10
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @MFI_DCMD_PD_GET_LIST, align 4
  %20 = load %struct.mfi_pd_list*, %struct.mfi_pd_list** %8, align 8
  %21 = load i32, i32* %9, align 4
  %22 = load i32*, i32** %7, align 8
  %23 = call i64 @mfi_dcmd_command(i32 %18, i32 %19, %struct.mfi_pd_list* %20, i32 %21, i32* null, i32 0, i32* %22)
  %24 = icmp slt i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %17
  %26 = load %struct.mfi_pd_list*, %struct.mfi_pd_list** %8, align 8
  %27 = call i32 @free(%struct.mfi_pd_list* %26)
  store i32 -1, i32* %4, align 4
  br label %41

28:                                               ; preds = %17
  %29 = load %struct.mfi_pd_list*, %struct.mfi_pd_list** %8, align 8
  %30 = getelementptr inbounds %struct.mfi_pd_list, %struct.mfi_pd_list* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %9, align 4
  %33 = icmp sgt i32 %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %28
  %35 = load %struct.mfi_pd_list*, %struct.mfi_pd_list** %8, align 8
  %36 = getelementptr inbounds %struct.mfi_pd_list, %struct.mfi_pd_list* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %9, align 4
  br label %10

38:                                               ; preds = %28
  %39 = load %struct.mfi_pd_list*, %struct.mfi_pd_list** %8, align 8
  %40 = load %struct.mfi_pd_list**, %struct.mfi_pd_list*** %6, align 8
  store %struct.mfi_pd_list* %39, %struct.mfi_pd_list** %40, align 8
  store i32 0, i32* %4, align 4
  br label %41

41:                                               ; preds = %38, %25, %16
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local %struct.mfi_pd_list* @reallocf(%struct.mfi_pd_list*, i32) #1

declare dso_local i64 @mfi_dcmd_command(i32, i32, %struct.mfi_pd_list*, i32, i32*, i32, i32*) #1

declare dso_local i32 @free(%struct.mfi_pd_list*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
