; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_descrip.c_filecaps_copy.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_descrip.c_filecaps_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.filecaps = type { i32, %struct.filecaps* }

@.str = private unnamed_addr constant [38 x i8] c"fc_ioctls != NULL, but fc_nioctls=%hd\00", align 1
@M_FILECAPS = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @filecaps_copy(%struct.filecaps* %0, %struct.filecaps* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.filecaps*, align 8
  %6 = alloca %struct.filecaps*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.filecaps* %0, %struct.filecaps** %5, align 8
  store %struct.filecaps* %1, %struct.filecaps** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.filecaps*, %struct.filecaps** %5, align 8
  %10 = getelementptr inbounds %struct.filecaps, %struct.filecaps* %9, i32 0, i32 1
  %11 = load %struct.filecaps*, %struct.filecaps** %10, align 8
  %12 = icmp ne %struct.filecaps* %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %3
  %14 = load i32, i32* %7, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %13
  store i32 0, i32* %4, align 4
  br label %57

17:                                               ; preds = %13, %3
  %18 = load %struct.filecaps*, %struct.filecaps** %6, align 8
  %19 = load %struct.filecaps*, %struct.filecaps** %5, align 8
  %20 = call i32 @memcpy(%struct.filecaps* %18, %struct.filecaps* %19, i64 16)
  %21 = load %struct.filecaps*, %struct.filecaps** %5, align 8
  %22 = getelementptr inbounds %struct.filecaps, %struct.filecaps* %21, i32 0, i32 1
  %23 = load %struct.filecaps*, %struct.filecaps** %22, align 8
  %24 = icmp eq %struct.filecaps* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %17
  store i32 1, i32* %4, align 4
  br label %57

26:                                               ; preds = %17
  %27 = load %struct.filecaps*, %struct.filecaps** %5, align 8
  %28 = getelementptr inbounds %struct.filecaps, %struct.filecaps* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp sgt i32 %29, 0
  %31 = zext i1 %30 to i32
  %32 = load %struct.filecaps*, %struct.filecaps** %5, align 8
  %33 = getelementptr inbounds %struct.filecaps, %struct.filecaps* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = sext i32 %34 to i64
  %36 = inttoptr i64 %35 to i8*
  %37 = call i32 @KASSERT(i32 %31, i8* %36)
  %38 = load %struct.filecaps*, %struct.filecaps** %5, align 8
  %39 = getelementptr inbounds %struct.filecaps, %struct.filecaps* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = sext i32 %40 to i64
  %42 = mul i64 16, %41
  store i64 %42, i64* %8, align 8
  %43 = load i64, i64* %8, align 8
  %44 = load i32, i32* @M_FILECAPS, align 4
  %45 = load i32, i32* @M_WAITOK, align 4
  %46 = call %struct.filecaps* @malloc(i64 %43, i32 %44, i32 %45)
  %47 = load %struct.filecaps*, %struct.filecaps** %6, align 8
  %48 = getelementptr inbounds %struct.filecaps, %struct.filecaps* %47, i32 0, i32 1
  store %struct.filecaps* %46, %struct.filecaps** %48, align 8
  %49 = load %struct.filecaps*, %struct.filecaps** %6, align 8
  %50 = getelementptr inbounds %struct.filecaps, %struct.filecaps* %49, i32 0, i32 1
  %51 = load %struct.filecaps*, %struct.filecaps** %50, align 8
  %52 = load %struct.filecaps*, %struct.filecaps** %5, align 8
  %53 = getelementptr inbounds %struct.filecaps, %struct.filecaps* %52, i32 0, i32 1
  %54 = load %struct.filecaps*, %struct.filecaps** %53, align 8
  %55 = load i64, i64* %8, align 8
  %56 = call i32 @memcpy(%struct.filecaps* %51, %struct.filecaps* %54, i64 %55)
  store i32 1, i32* %4, align 4
  br label %57

57:                                               ; preds = %26, %25, %16
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

declare dso_local i32 @memcpy(%struct.filecaps*, %struct.filecaps*, i64) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local %struct.filecaps* @malloc(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
