; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_rangeset.c_rangeset_insert.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_rangeset.c_rangeset_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rangeset = type { i32 }
%struct.rs_el = type { i8*, i8* }

@rs_node_alloc = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rangeset_insert(%struct.rangeset* %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.rangeset*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.rs_el*, align 8
  %11 = alloca i32, align 4
  store %struct.rangeset* %0, %struct.rangeset** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %12 = load %struct.rangeset*, %struct.rangeset** %6, align 8
  %13 = call i32 @rangeset_check(%struct.rangeset* %12)
  %14 = load %struct.rangeset*, %struct.rangeset** %6, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = load i8*, i8** %8, align 8
  %17 = call i32 @rangeset_remove(%struct.rangeset* %14, i8* %15, i8* %16)
  store i32 %17, i32* %11, align 4
  %18 = load i32, i32* %11, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %4
  %21 = load i32, i32* %11, align 4
  store i32 %21, i32* %5, align 4
  br label %40

22:                                               ; preds = %4
  %23 = load i8*, i8** %9, align 8
  %24 = bitcast i8* %23 to %struct.rs_el*
  store %struct.rs_el* %24, %struct.rs_el** %10, align 8
  %25 = load i8*, i8** %7, align 8
  %26 = load %struct.rs_el*, %struct.rs_el** %10, align 8
  %27 = getelementptr inbounds %struct.rs_el, %struct.rs_el* %26, i32 0, i32 0
  store i8* %25, i8** %27, align 8
  %28 = load i8*, i8** %8, align 8
  %29 = load %struct.rs_el*, %struct.rs_el** %10, align 8
  %30 = getelementptr inbounds %struct.rs_el, %struct.rs_el* %29, i32 0, i32 1
  store i8* %28, i8** %30, align 8
  %31 = load %struct.rangeset*, %struct.rangeset** %6, align 8
  %32 = getelementptr inbounds %struct.rangeset, %struct.rangeset* %31, i32 0, i32 0
  %33 = load %struct.rs_el*, %struct.rs_el** %10, align 8
  %34 = getelementptr inbounds %struct.rs_el, %struct.rs_el* %33, i32 0, i32 0
  %35 = load i32, i32* @rs_node_alloc, align 4
  %36 = call i32 @pctrie_insert(i32* %32, i8** %34, i32 %35)
  store i32 %36, i32* %11, align 4
  %37 = load %struct.rangeset*, %struct.rangeset** %6, align 8
  %38 = call i32 @rangeset_check(%struct.rangeset* %37)
  %39 = load i32, i32* %11, align 4
  store i32 %39, i32* %5, align 4
  br label %40

40:                                               ; preds = %22, %20
  %41 = load i32, i32* %5, align 4
  ret i32 %41
}

declare dso_local i32 @rangeset_check(%struct.rangeset*) #1

declare dso_local i32 @rangeset_remove(%struct.rangeset*, i8*, i8*) #1

declare dso_local i32 @pctrie_insert(i32*, i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
