; ModuleID = '/home/carl/AnghaBench/git/extr_attr.c_attr_check_clear.c'
source_filename = "/home/carl/AnghaBench/git/extr_attr.c_attr_check_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.attr_check = type { i32, i64, i32, i64, i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @attr_check_clear(%struct.attr_check* %0) #0 {
  %2 = alloca %struct.attr_check*, align 8
  store %struct.attr_check* %0, %struct.attr_check** %2, align 8
  %3 = load %struct.attr_check*, %struct.attr_check** %2, align 8
  %4 = getelementptr inbounds %struct.attr_check, %struct.attr_check* %3, i32 0, i32 5
  %5 = load i32, i32* %4, align 8
  %6 = call i32 @FREE_AND_NULL(i32 %5)
  %7 = load %struct.attr_check*, %struct.attr_check** %2, align 8
  %8 = getelementptr inbounds %struct.attr_check, %struct.attr_check* %7, i32 0, i32 4
  store i64 0, i64* %8, align 8
  %9 = load %struct.attr_check*, %struct.attr_check** %2, align 8
  %10 = getelementptr inbounds %struct.attr_check, %struct.attr_check* %9, i32 0, i32 3
  store i64 0, i64* %10, align 8
  %11 = load %struct.attr_check*, %struct.attr_check** %2, align 8
  %12 = getelementptr inbounds %struct.attr_check, %struct.attr_check* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @FREE_AND_NULL(i32 %13)
  %15 = load %struct.attr_check*, %struct.attr_check** %2, align 8
  %16 = getelementptr inbounds %struct.attr_check, %struct.attr_check* %15, i32 0, i32 1
  store i64 0, i64* %16, align 8
  %17 = load %struct.attr_check*, %struct.attr_check** %2, align 8
  %18 = getelementptr inbounds %struct.attr_check, %struct.attr_check* %17, i32 0, i32 0
  %19 = call i32 @drop_attr_stack(i32* %18)
  ret void
}

declare dso_local i32 @FREE_AND_NULL(i32) #1

declare dso_local i32 @drop_attr_stack(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
