; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/geom/ConfCmp/extr_ConfCmp.c_compare_node2.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/geom/ConfCmp/extr_ConfCmp.c_compare_node2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.node = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"1>\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"2>\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.node*, %struct.node*, i32)* @compare_node2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @compare_node2(%struct.node* %0, %struct.node* %1, i32 %2) #0 {
  %4 = alloca %struct.node*, align 8
  %5 = alloca %struct.node*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.node* %0, %struct.node** %4, align 8
  store %struct.node* %1, %struct.node** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.node*, %struct.node** %4, align 8
  %9 = load %struct.node*, %struct.node** %5, align 8
  %10 = load i32, i32* %6, align 4
  %11 = call i32 @compare_node(%struct.node* %8, %struct.node* %9, i32 %10)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %25

14:                                               ; preds = %3
  %15 = call i32 @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @indent(i32 %16)
  %18 = load %struct.node*, %struct.node** %4, align 8
  %19 = call i32 @print_node(%struct.node* %18)
  %20 = call i32 @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @indent(i32 %21)
  %23 = load %struct.node*, %struct.node** %5, align 8
  %24 = call i32 @print_node(%struct.node* %23)
  br label %25

25:                                               ; preds = %14, %3
  %26 = load i32, i32* %7, align 4
  ret i32 %26
}

declare dso_local i32 @compare_node(%struct.node*, %struct.node*, i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @indent(i32) #1

declare dso_local i32 @print_node(%struct.node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
