; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_resource.c_lim_copy.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_resource.c_lim_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.plimit = type { i32, i32 }

@.str = private unnamed_addr constant [25 x i8] c"lim_copy to shared limit\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lim_copy(%struct.plimit* %0, %struct.plimit* %1) #0 {
  %3 = alloca %struct.plimit*, align 8
  %4 = alloca %struct.plimit*, align 8
  store %struct.plimit* %0, %struct.plimit** %3, align 8
  store %struct.plimit* %1, %struct.plimit** %4, align 8
  %5 = load %struct.plimit*, %struct.plimit** %3, align 8
  %6 = getelementptr inbounds %struct.plimit, %struct.plimit* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = icmp sle i32 %7, 1
  %9 = zext i1 %8 to i32
  %10 = call i32 @KASSERT(i32 %9, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.plimit*, %struct.plimit** %4, align 8
  %12 = getelementptr inbounds %struct.plimit, %struct.plimit* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.plimit*, %struct.plimit** %3, align 8
  %15 = getelementptr inbounds %struct.plimit, %struct.plimit* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @bcopy(i32 %13, i32 %16, i32 4)
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @bcopy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
