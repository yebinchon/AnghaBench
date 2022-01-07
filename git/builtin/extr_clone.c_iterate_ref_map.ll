; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_clone.c_iterate_ref_map.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_clone.c_iterate_ref_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object_id = type { i32 }
%struct.ref = type { %struct.ref*, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.object_id*)* @iterate_ref_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iterate_ref_map(i8* %0, %struct.object_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.object_id*, align 8
  %6 = alloca %struct.ref**, align 8
  %7 = alloca %struct.ref*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.object_id* %1, %struct.object_id** %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.ref**
  store %struct.ref** %9, %struct.ref*** %6, align 8
  %10 = load %struct.ref**, %struct.ref*** %6, align 8
  %11 = load %struct.ref*, %struct.ref** %10, align 8
  store %struct.ref* %11, %struct.ref** %7, align 8
  br label %12

12:                                               ; preds = %23, %2
  %13 = load %struct.ref*, %struct.ref** %7, align 8
  %14 = icmp ne %struct.ref* %13, null
  br i1 %14, label %15, label %21

15:                                               ; preds = %12
  %16 = load %struct.ref*, %struct.ref** %7, align 8
  %17 = getelementptr inbounds %struct.ref, %struct.ref* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  br label %21

21:                                               ; preds = %15, %12
  %22 = phi i1 [ false, %12 ], [ %20, %15 ]
  br i1 %22, label %23, label %27

23:                                               ; preds = %21
  %24 = load %struct.ref*, %struct.ref** %7, align 8
  %25 = getelementptr inbounds %struct.ref, %struct.ref* %24, i32 0, i32 0
  %26 = load %struct.ref*, %struct.ref** %25, align 8
  store %struct.ref* %26, %struct.ref** %7, align 8
  br label %12

27:                                               ; preds = %21
  %28 = load %struct.ref*, %struct.ref** %7, align 8
  %29 = icmp ne %struct.ref* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %27
  store i32 -1, i32* %3, align 4
  br label %40

31:                                               ; preds = %27
  %32 = load %struct.object_id*, %struct.object_id** %5, align 8
  %33 = load %struct.ref*, %struct.ref** %7, align 8
  %34 = getelementptr inbounds %struct.ref, %struct.ref* %33, i32 0, i32 1
  %35 = call i32 @oidcpy(%struct.object_id* %32, i32* %34)
  %36 = load %struct.ref*, %struct.ref** %7, align 8
  %37 = getelementptr inbounds %struct.ref, %struct.ref* %36, i32 0, i32 0
  %38 = load %struct.ref*, %struct.ref** %37, align 8
  %39 = load %struct.ref**, %struct.ref*** %6, align 8
  store %struct.ref* %38, %struct.ref** %39, align 8
  store i32 0, i32* %3, align 4
  br label %40

40:                                               ; preds = %31, %30
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i32 @oidcpy(%struct.object_id*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
