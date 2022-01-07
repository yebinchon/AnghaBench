; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_environment.c_tunable_str_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_environment.c_tunable_str_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tunable_str = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tunable_str_init(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.tunable_str*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.tunable_str*
  store %struct.tunable_str* %5, %struct.tunable_str** %3, align 8
  %6 = load %struct.tunable_str*, %struct.tunable_str** %3, align 8
  %7 = getelementptr inbounds %struct.tunable_str, %struct.tunable_str* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.tunable_str*, %struct.tunable_str** %3, align 8
  %10 = getelementptr inbounds %struct.tunable_str, %struct.tunable_str* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.tunable_str*, %struct.tunable_str** %3, align 8
  %13 = getelementptr inbounds %struct.tunable_str, %struct.tunable_str* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @TUNABLE_STR_FETCH(i32 %8, i32 %11, i32 %14)
  ret void
}

declare dso_local i32 @TUNABLE_STR_FETCH(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
