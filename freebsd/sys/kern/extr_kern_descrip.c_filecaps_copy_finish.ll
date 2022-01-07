; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_descrip.c_filecaps_copy_finish.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_descrip.c_filecaps_copy_finish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.filecaps = type { i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.filecaps*, %struct.filecaps*, i32*)* @filecaps_copy_finish to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @filecaps_copy_finish(%struct.filecaps* %0, %struct.filecaps* %1, i32* %2) #0 {
  %4 = alloca %struct.filecaps*, align 8
  %5 = alloca %struct.filecaps*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  store %struct.filecaps* %0, %struct.filecaps** %4, align 8
  store %struct.filecaps* %1, %struct.filecaps** %5, align 8
  store i32* %2, i32** %6, align 8
  %8 = load %struct.filecaps*, %struct.filecaps** %5, align 8
  %9 = load %struct.filecaps*, %struct.filecaps** %4, align 8
  %10 = bitcast %struct.filecaps* %8 to i8*
  %11 = bitcast %struct.filecaps* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %10, i8* align 8 %11, i64 16, i1 false)
  %12 = load %struct.filecaps*, %struct.filecaps** %4, align 8
  %13 = getelementptr inbounds %struct.filecaps, %struct.filecaps* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  %15 = icmp eq i32* %14, null
  %16 = zext i1 %15 to i32
  %17 = call i64 @__predict_true(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %3
  %20 = load i32*, i32** %6, align 8
  %21 = icmp eq i32* %20, null
  %22 = zext i1 %21 to i32
  %23 = call i32 @MPASS(i32 %22)
  br label %41

24:                                               ; preds = %3
  %25 = load %struct.filecaps*, %struct.filecaps** %4, align 8
  %26 = getelementptr inbounds %struct.filecaps, %struct.filecaps* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = sext i32 %27 to i64
  %29 = mul i64 4, %28
  store i64 %29, i64* %7, align 8
  %30 = load i32*, i32** %6, align 8
  %31 = load %struct.filecaps*, %struct.filecaps** %5, align 8
  %32 = getelementptr inbounds %struct.filecaps, %struct.filecaps* %31, i32 0, i32 1
  store i32* %30, i32** %32, align 8
  %33 = load %struct.filecaps*, %struct.filecaps** %4, align 8
  %34 = getelementptr inbounds %struct.filecaps, %struct.filecaps* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = load %struct.filecaps*, %struct.filecaps** %5, align 8
  %37 = getelementptr inbounds %struct.filecaps, %struct.filecaps* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = load i64, i64* %7, align 8
  %40 = call i32 @bcopy(i32* %35, i32* %38, i64 %39)
  br label %41

41:                                               ; preds = %24, %19
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @__predict_true(i32) #2

declare dso_local i32 @MPASS(i32) #2

declare dso_local i32 @bcopy(i32*, i32*, i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
