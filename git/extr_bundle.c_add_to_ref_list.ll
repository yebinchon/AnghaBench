; ModuleID = '/home/carl/AnghaBench/git/extr_bundle.c_add_to_ref_list.c'
source_filename = "/home/carl/AnghaBench/git/extr_bundle.c_add_to_ref_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object_id = type { i32 }
%struct.ref_list = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.object_id*, i8*, %struct.ref_list*)* @add_to_ref_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_to_ref_list(%struct.object_id* %0, i8* %1, %struct.ref_list* %2) #0 {
  %4 = alloca %struct.object_id*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ref_list*, align 8
  store %struct.object_id* %0, %struct.object_id** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.ref_list* %2, %struct.ref_list** %6, align 8
  %7 = load %struct.ref_list*, %struct.ref_list** %6, align 8
  %8 = getelementptr inbounds %struct.ref_list, %struct.ref_list* %7, i32 0, i32 1
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = load %struct.ref_list*, %struct.ref_list** %6, align 8
  %11 = getelementptr inbounds %struct.ref_list, %struct.ref_list* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = add nsw i32 %12, 1
  %14 = load %struct.ref_list*, %struct.ref_list** %6, align 8
  %15 = getelementptr inbounds %struct.ref_list, %struct.ref_list* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @ALLOC_GROW(%struct.TYPE_2__* %9, i32 %13, i32 %16)
  %18 = load %struct.ref_list*, %struct.ref_list** %6, align 8
  %19 = getelementptr inbounds %struct.ref_list, %struct.ref_list* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = load %struct.ref_list*, %struct.ref_list** %6, align 8
  %22 = getelementptr inbounds %struct.ref_list, %struct.ref_list* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load %struct.object_id*, %struct.object_id** %4, align 8
  %28 = call i32 @oidcpy(i32* %26, %struct.object_id* %27)
  %29 = load i8*, i8** %5, align 8
  %30 = call i32 @xstrdup(i8* %29)
  %31 = load %struct.ref_list*, %struct.ref_list** %6, align 8
  %32 = getelementptr inbounds %struct.ref_list, %struct.ref_list* %31, i32 0, i32 1
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = load %struct.ref_list*, %struct.ref_list** %6, align 8
  %35 = getelementptr inbounds %struct.ref_list, %struct.ref_list* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  store i32 %30, i32* %39, align 4
  %40 = load %struct.ref_list*, %struct.ref_list** %6, align 8
  %41 = getelementptr inbounds %struct.ref_list, %struct.ref_list* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %41, align 8
  ret void
}

declare dso_local i32 @ALLOC_GROW(%struct.TYPE_2__*, i32, i32) #1

declare dso_local i32 @oidcpy(i32*, %struct.object_id*) #1

declare dso_local i32 @xstrdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
