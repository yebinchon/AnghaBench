; ModuleID = '/home/carl/AnghaBench/freebsd/tools/bus_space/extr_busdma.c_bd_md_del_segs.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/bus_space/extr_busdma.c_bd_md_del_segs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.obj = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { %struct.obj*, i32, i64 }
%struct.TYPE_4__ = type { %struct.obj** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.obj*, i32, i32)* @bd_md_del_segs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bd_md_del_segs(%struct.obj* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.obj*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.obj*, align 8
  %8 = alloca %struct.obj*, align 8
  store %struct.obj* %0, %struct.obj** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.obj*, %struct.obj** %4, align 8
  %10 = getelementptr inbounds %struct.obj, %struct.obj* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load %struct.obj**, %struct.obj*** %12, align 8
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.obj*, %struct.obj** %13, i64 %15
  %17 = load %struct.obj*, %struct.obj** %16, align 8
  store %struct.obj* %17, %struct.obj** %7, align 8
  br label %18

18:                                               ; preds = %45, %3
  %19 = load %struct.obj*, %struct.obj** %7, align 8
  %20 = icmp ne %struct.obj* %19, null
  br i1 %20, label %21, label %47

21:                                               ; preds = %18
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %37

24:                                               ; preds = %21
  %25 = load %struct.obj*, %struct.obj** %7, align 8
  %26 = getelementptr inbounds %struct.obj, %struct.obj* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = inttoptr i64 %29 to i8*
  %31 = load %struct.obj*, %struct.obj** %7, align 8
  %32 = getelementptr inbounds %struct.obj, %struct.obj* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @munmap(i8* %30, i32 %35)
  br label %37

37:                                               ; preds = %24, %21
  %38 = load %struct.obj*, %struct.obj** %7, align 8
  %39 = getelementptr inbounds %struct.obj, %struct.obj* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load %struct.obj*, %struct.obj** %41, align 8
  store %struct.obj* %42, %struct.obj** %8, align 8
  %43 = load %struct.obj*, %struct.obj** %7, align 8
  %44 = call i32 @obj_free(%struct.obj* %43)
  br label %45

45:                                               ; preds = %37
  %46 = load %struct.obj*, %struct.obj** %8, align 8
  store %struct.obj* %46, %struct.obj** %7, align 8
  br label %18

47:                                               ; preds = %18
  ret i32 0
}

declare dso_local i32 @munmap(i8*, i32) #1

declare dso_local i32 @obj_free(%struct.obj*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
