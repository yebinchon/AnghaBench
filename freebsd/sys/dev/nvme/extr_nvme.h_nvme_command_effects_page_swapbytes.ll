; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/nvme/extr_nvme.h_nvme_command_effects_page_swapbytes.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/nvme/extr_nvme.h_nvme_command_effects_page_swapbytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_command_effects_page = type { i8**, i8** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvme_command_effects_page*)* @nvme_command_effects_page_swapbytes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvme_command_effects_page_swapbytes(%struct.nvme_command_effects_page* %0) #0 {
  %2 = alloca %struct.nvme_command_effects_page*, align 8
  %3 = alloca i32, align 4
  store %struct.nvme_command_effects_page* %0, %struct.nvme_command_effects_page** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %22, %1
  %5 = load i32, i32* %3, align 4
  %6 = icmp slt i32 %5, 256
  br i1 %6, label %7, label %25

7:                                                ; preds = %4
  %8 = load %struct.nvme_command_effects_page*, %struct.nvme_command_effects_page** %2, align 8
  %9 = getelementptr inbounds %struct.nvme_command_effects_page, %struct.nvme_command_effects_page* %8, i32 0, i32 1
  %10 = load i8**, i8*** %9, align 8
  %11 = load i32, i32* %3, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i8*, i8** %10, i64 %12
  %14 = load i8*, i8** %13, align 8
  %15 = call i8* @le32toh(i8* %14)
  %16 = load %struct.nvme_command_effects_page*, %struct.nvme_command_effects_page** %2, align 8
  %17 = getelementptr inbounds %struct.nvme_command_effects_page, %struct.nvme_command_effects_page* %16, i32 0, i32 1
  %18 = load i8**, i8*** %17, align 8
  %19 = load i32, i32* %3, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i8*, i8** %18, i64 %20
  store i8* %15, i8** %21, align 8
  br label %22

22:                                               ; preds = %7
  %23 = load i32, i32* %3, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %3, align 4
  br label %4

25:                                               ; preds = %4
  store i32 0, i32* %3, align 4
  br label %26

26:                                               ; preds = %44, %25
  %27 = load i32, i32* %3, align 4
  %28 = icmp slt i32 %27, 256
  br i1 %28, label %29, label %47

29:                                               ; preds = %26
  %30 = load %struct.nvme_command_effects_page*, %struct.nvme_command_effects_page** %2, align 8
  %31 = getelementptr inbounds %struct.nvme_command_effects_page, %struct.nvme_command_effects_page* %30, i32 0, i32 0
  %32 = load i8**, i8*** %31, align 8
  %33 = load i32, i32* %3, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8*, i8** %32, i64 %34
  %36 = load i8*, i8** %35, align 8
  %37 = call i8* @le32toh(i8* %36)
  %38 = load %struct.nvme_command_effects_page*, %struct.nvme_command_effects_page** %2, align 8
  %39 = getelementptr inbounds %struct.nvme_command_effects_page, %struct.nvme_command_effects_page* %38, i32 0, i32 0
  %40 = load i8**, i8*** %39, align 8
  %41 = load i32, i32* %3, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8*, i8** %40, i64 %42
  store i8* %37, i8** %43, align 8
  br label %44

44:                                               ; preds = %29
  %45 = load i32, i32* %3, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %3, align 4
  br label %26

47:                                               ; preds = %26
  ret void
}

declare dso_local i8* @le32toh(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
