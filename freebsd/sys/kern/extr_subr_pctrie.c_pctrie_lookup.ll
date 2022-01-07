; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_pctrie.c_pctrie_lookup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_pctrie.c_pctrie_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pctrie = type { i32 }
%struct.pctrie_node = type { %struct.pctrie_node**, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @pctrie_lookup(%struct.pctrie* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.pctrie*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.pctrie_node*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.pctrie* %0, %struct.pctrie** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.pctrie*, %struct.pctrie** %4, align 8
  %10 = call %struct.pctrie_node* @pctrie_getroot(%struct.pctrie* %9)
  store %struct.pctrie_node* %10, %struct.pctrie_node** %6, align 8
  br label %11

11:                                               ; preds = %35, %2
  %12 = load %struct.pctrie_node*, %struct.pctrie_node** %6, align 8
  %13 = icmp ne %struct.pctrie_node* %12, null
  br i1 %13, label %14, label %48

14:                                               ; preds = %11
  %15 = load %struct.pctrie_node*, %struct.pctrie_node** %6, align 8
  %16 = call i64 @pctrie_isleaf(%struct.pctrie_node* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %28

18:                                               ; preds = %14
  %19 = load %struct.pctrie_node*, %struct.pctrie_node** %6, align 8
  %20 = call i32* @pctrie_toval(%struct.pctrie_node* %19)
  store i32* %20, i32** %7, align 8
  %21 = load i32*, i32** %7, align 8
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %18
  %26 = load i32*, i32** %7, align 8
  store i32* %26, i32** %3, align 8
  br label %49

27:                                               ; preds = %18
  br label %48

28:                                               ; preds = %14
  %29 = load %struct.pctrie_node*, %struct.pctrie_node** %6, align 8
  %30 = load i32, i32* %5, align 4
  %31 = call i64 @pctrie_keybarr(%struct.pctrie_node* %29, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  br label %48

34:                                               ; preds = %28
  br label %35

35:                                               ; preds = %34
  %36 = load i32, i32* %5, align 4
  %37 = load %struct.pctrie_node*, %struct.pctrie_node** %6, align 8
  %38 = getelementptr inbounds %struct.pctrie_node, %struct.pctrie_node* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @pctrie_slot(i32 %36, i32 %39)
  store i32 %40, i32* %8, align 4
  %41 = load %struct.pctrie_node*, %struct.pctrie_node** %6, align 8
  %42 = getelementptr inbounds %struct.pctrie_node, %struct.pctrie_node* %41, i32 0, i32 0
  %43 = load %struct.pctrie_node**, %struct.pctrie_node*** %42, align 8
  %44 = load i32, i32* %8, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.pctrie_node*, %struct.pctrie_node** %43, i64 %45
  %47 = load %struct.pctrie_node*, %struct.pctrie_node** %46, align 8
  store %struct.pctrie_node* %47, %struct.pctrie_node** %6, align 8
  br label %11

48:                                               ; preds = %33, %27, %11
  store i32* null, i32** %3, align 8
  br label %49

49:                                               ; preds = %48, %25
  %50 = load i32*, i32** %3, align 8
  ret i32* %50
}

declare dso_local %struct.pctrie_node* @pctrie_getroot(%struct.pctrie*) #1

declare dso_local i64 @pctrie_isleaf(%struct.pctrie_node*) #1

declare dso_local i32* @pctrie_toval(%struct.pctrie_node*) #1

declare dso_local i64 @pctrie_keybarr(%struct.pctrie_node*, i32) #1

declare dso_local i32 @pctrie_slot(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
