; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/nvme/extr_nvme_ns.c_nvme_allocate_child_bios.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/nvme/extr_nvme_ns.c_nvme_allocate_child_bios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { i32 }

@M_NVME = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.bio** (i32)* @nvme_allocate_child_bios to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.bio** @nvme_allocate_child_bios(i32 %0) #0 {
  %2 = alloca %struct.bio**, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.bio**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 0, i32* %5, align 4
  %7 = load i32, i32* %3, align 4
  %8 = sext i32 %7 to i64
  %9 = mul i64 %8, 8
  %10 = trunc i64 %9 to i32
  %11 = load i32, i32* @M_NVME, align 4
  %12 = load i32, i32* @M_NOWAIT, align 4
  %13 = call %struct.bio** @malloc(i32 %10, i32 %11, i32 %12)
  store %struct.bio** %13, %struct.bio*** %4, align 8
  %14 = load %struct.bio**, %struct.bio*** %4, align 8
  %15 = icmp eq %struct.bio** %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  store %struct.bio** null, %struct.bio*** %2, align 8
  br label %50

17:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  br label %18

18:                                               ; preds = %37, %17
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* %3, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %40

22:                                               ; preds = %18
  %23 = call %struct.bio* (...) @g_new_bio()
  %24 = load %struct.bio**, %struct.bio*** %4, align 8
  %25 = load i32, i32* %6, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.bio*, %struct.bio** %24, i64 %26
  store %struct.bio* %23, %struct.bio** %27, align 8
  %28 = load %struct.bio**, %struct.bio*** %4, align 8
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.bio*, %struct.bio** %28, i64 %30
  %32 = load %struct.bio*, %struct.bio** %31, align 8
  %33 = icmp eq %struct.bio* %32, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %22
  %35 = load i32, i32* @ENOMEM, align 4
  store i32 %35, i32* %5, align 4
  br label %36

36:                                               ; preds = %34, %22
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %6, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %6, align 4
  br label %18

40:                                               ; preds = %18
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %40
  %45 = load i32, i32* %3, align 4
  %46 = load %struct.bio**, %struct.bio*** %4, align 8
  %47 = call i32 @nvme_free_child_bios(i32 %45, %struct.bio** %46)
  store %struct.bio** null, %struct.bio*** %2, align 8
  br label %50

48:                                               ; preds = %40
  %49 = load %struct.bio**, %struct.bio*** %4, align 8
  store %struct.bio** %49, %struct.bio*** %2, align 8
  br label %50

50:                                               ; preds = %48, %44, %16
  %51 = load %struct.bio**, %struct.bio*** %2, align 8
  ret %struct.bio** %51
}

declare dso_local %struct.bio** @malloc(i32, i32, i32) #1

declare dso_local %struct.bio* @g_new_bio(...) #1

declare dso_local i32 @nvme_free_child_bios(i32, %struct.bio**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
