; ModuleID = '/home/carl/AnghaBench/git/extr_attr.c_attr_check_dup.c'
source_filename = "/home/carl/AnghaBench/git/extr_attr.c_attr_check_dup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.attr_check = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.attr_check* @attr_check_dup(%struct.attr_check* %0) #0 {
  %2 = alloca %struct.attr_check*, align 8
  %3 = alloca %struct.attr_check*, align 8
  %4 = alloca %struct.attr_check*, align 8
  store %struct.attr_check* %0, %struct.attr_check** %3, align 8
  %5 = load %struct.attr_check*, %struct.attr_check** %3, align 8
  %6 = icmp ne %struct.attr_check* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  store %struct.attr_check* null, %struct.attr_check** %2, align 8
  br label %38

8:                                                ; preds = %1
  %9 = call %struct.attr_check* (...) @attr_check_alloc()
  store %struct.attr_check* %9, %struct.attr_check** %4, align 8
  %10 = load %struct.attr_check*, %struct.attr_check** %3, align 8
  %11 = getelementptr inbounds %struct.attr_check, %struct.attr_check* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.attr_check*, %struct.attr_check** %4, align 8
  %14 = getelementptr inbounds %struct.attr_check, %struct.attr_check* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 4
  %15 = load %struct.attr_check*, %struct.attr_check** %3, align 8
  %16 = getelementptr inbounds %struct.attr_check, %struct.attr_check* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.attr_check*, %struct.attr_check** %4, align 8
  %19 = getelementptr inbounds %struct.attr_check, %struct.attr_check* %18, i32 0, i32 2
  store i32 %17, i32* %19, align 4
  %20 = load %struct.attr_check*, %struct.attr_check** %4, align 8
  %21 = getelementptr inbounds %struct.attr_check, %struct.attr_check* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.attr_check*, %struct.attr_check** %4, align 8
  %24 = getelementptr inbounds %struct.attr_check, %struct.attr_check* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @ALLOC_ARRAY(i32 %22, i32 %25)
  %27 = load %struct.attr_check*, %struct.attr_check** %4, align 8
  %28 = getelementptr inbounds %struct.attr_check, %struct.attr_check* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.attr_check*, %struct.attr_check** %3, align 8
  %31 = getelementptr inbounds %struct.attr_check, %struct.attr_check* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.attr_check*, %struct.attr_check** %4, align 8
  %34 = getelementptr inbounds %struct.attr_check, %struct.attr_check* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @COPY_ARRAY(i32 %29, i32 %32, i32 %35)
  %37 = load %struct.attr_check*, %struct.attr_check** %4, align 8
  store %struct.attr_check* %37, %struct.attr_check** %2, align 8
  br label %38

38:                                               ; preds = %8, %7
  %39 = load %struct.attr_check*, %struct.attr_check** %2, align 8
  ret %struct.attr_check* %39
}

declare dso_local %struct.attr_check* @attr_check_alloc(...) #1

declare dso_local i32 @ALLOC_ARRAY(i32, i32) #1

declare dso_local i32 @COPY_ARRAY(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
