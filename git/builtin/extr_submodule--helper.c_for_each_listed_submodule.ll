; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_submodule--helper.c_for_each_listed_submodule.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_submodule--helper.c_for_each_listed_submodule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module_list = type { i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.module_list*, i32 (i32, i8*)*, i8*)* @for_each_listed_submodule to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @for_each_listed_submodule(%struct.module_list* %0, i32 (i32, i8*)* %1, i8* %2) #0 {
  %4 = alloca %struct.module_list*, align 8
  %5 = alloca i32 (i32, i8*)*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.module_list* %0, %struct.module_list** %4, align 8
  store i32 (i32, i8*)* %1, i32 (i32, i8*)** %5, align 8
  store i8* %2, i8** %6, align 8
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %25, %3
  %9 = load i32, i32* %7, align 4
  %10 = load %struct.module_list*, %struct.module_list** %4, align 8
  %11 = getelementptr inbounds %struct.module_list, %struct.module_list* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp slt i32 %9, %12
  br i1 %13, label %14, label %28

14:                                               ; preds = %8
  %15 = load i32 (i32, i8*)*, i32 (i32, i8*)** %5, align 8
  %16 = load %struct.module_list*, %struct.module_list** %4, align 8
  %17 = getelementptr inbounds %struct.module_list, %struct.module_list* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = load i32, i32* %7, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = load i8*, i8** %6, align 8
  %24 = call i32 %15(i32 %22, i8* %23)
  br label %25

25:                                               ; preds = %14
  %26 = load i32, i32* %7, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %7, align 4
  br label %8

28:                                               ; preds = %8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
