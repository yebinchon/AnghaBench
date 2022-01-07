; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_descrip.c_filecaps_copy_prep.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_descrip.c_filecaps_copy_prep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.filecaps = type { i32, i32* }

@.str = private unnamed_addr constant [38 x i8] c"fc_ioctls != NULL, but fc_nioctls=%hd\00", align 1
@M_FILECAPS = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.filecaps*)* @filecaps_copy_prep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @filecaps_copy_prep(%struct.filecaps* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.filecaps*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  store %struct.filecaps* %0, %struct.filecaps** %3, align 8
  %6 = load %struct.filecaps*, %struct.filecaps** %3, align 8
  %7 = getelementptr inbounds %struct.filecaps, %struct.filecaps* %6, i32 0, i32 1
  %8 = load i32*, i32** %7, align 8
  %9 = icmp eq i32* %8, null
  %10 = zext i1 %9 to i32
  %11 = call i64 @__predict_true(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i32* null, i32** %2, align 8
  br label %36

14:                                               ; preds = %1
  %15 = load %struct.filecaps*, %struct.filecaps** %3, align 8
  %16 = getelementptr inbounds %struct.filecaps, %struct.filecaps* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp sgt i32 %17, 0
  %19 = zext i1 %18 to i32
  %20 = load %struct.filecaps*, %struct.filecaps** %3, align 8
  %21 = getelementptr inbounds %struct.filecaps, %struct.filecaps* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = sext i32 %22 to i64
  %24 = inttoptr i64 %23 to i8*
  %25 = call i32 @KASSERT(i32 %19, i8* %24)
  %26 = load %struct.filecaps*, %struct.filecaps** %3, align 8
  %27 = getelementptr inbounds %struct.filecaps, %struct.filecaps* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = sext i32 %28 to i64
  %30 = mul i64 4, %29
  store i64 %30, i64* %5, align 8
  %31 = load i64, i64* %5, align 8
  %32 = load i32, i32* @M_FILECAPS, align 4
  %33 = load i32, i32* @M_WAITOK, align 4
  %34 = call i32* @malloc(i64 %31, i32 %32, i32 %33)
  store i32* %34, i32** %4, align 8
  %35 = load i32*, i32** %4, align 8
  store i32* %35, i32** %2, align 8
  br label %36

36:                                               ; preds = %14, %13
  %37 = load i32*, i32** %2, align 8
  ret i32* %37
}

declare dso_local i64 @__predict_true(i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32* @malloc(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
