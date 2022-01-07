; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet6/extr_in6.c_in6_if2idlen.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet6/extr_in6.c_in6_if2idlen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32 }

@.str = private unnamed_addr constant [38 x i8] c"in6_if2idlen: unknown link type (%d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @in6_if2idlen(%struct.ifnet* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ifnet*, align 8
  store %struct.ifnet* %0, %struct.ifnet** %3, align 8
  %4 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %5 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %13 [
    i32 136, label %7
    i32 128, label %7
    i32 131, label %7
    i32 137, label %7
    i32 132, label %7
    i32 129, label %8
    i32 135, label %9
    i32 133, label %10
    i32 134, label %11
    i32 130, label %12
  ]

7:                                                ; preds = %1, %1, %1, %1, %1
  store i32 64, i32* %2, align 4
  br label %18

8:                                                ; preds = %1
  store i32 64, i32* %2, align 4
  br label %18

9:                                                ; preds = %1
  store i32 64, i32* %2, align 4
  br label %18

10:                                               ; preds = %1
  store i32 64, i32* %2, align 4
  br label %18

11:                                               ; preds = %1
  store i32 64, i32* %2, align 4
  br label %18

12:                                               ; preds = %1
  store i32 64, i32* %2, align 4
  br label %18

13:                                               ; preds = %1
  %14 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %15 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %16)
  store i32 64, i32* %2, align 4
  br label %18

18:                                               ; preds = %13, %12, %11, %10, %9, %8, %7
  %19 = load i32, i32* %2, align 4
  ret i32 %19
}

declare dso_local i32 @printf(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
