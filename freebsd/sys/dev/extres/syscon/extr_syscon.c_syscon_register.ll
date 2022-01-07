; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/extres/syscon/extr_syscon.c_syscon_register.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/extres/syscon/extr_syscon.c_syscon_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.syscon = type { i64, i32 }

@.str = private unnamed_addr constant [24 x i8] c"SYSCON_INIT failed: %d\0A\00", align 1
@syscon_list = common dso_local global i32 0, align 4
@syscon_link = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.syscon* @syscon_register(%struct.syscon* %0) #0 {
  %2 = alloca %struct.syscon*, align 8
  %3 = alloca %struct.syscon*, align 8
  %4 = alloca i32, align 4
  store %struct.syscon* %0, %struct.syscon** %3, align 8
  %5 = load %struct.syscon*, %struct.syscon** %3, align 8
  %6 = call i32 @SYSCON_INIT(%struct.syscon* %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %10)
  store %struct.syscon* null, %struct.syscon** %2, align 8
  br label %19

12:                                               ; preds = %1
  %13 = call i32 (...) @SYSCON_TOPO_XLOCK()
  %14 = load %struct.syscon*, %struct.syscon** %3, align 8
  %15 = load i32, i32* @syscon_link, align 4
  %16 = call i32 @TAILQ_INSERT_TAIL(i32* @syscon_list, %struct.syscon* %14, i32 %15)
  %17 = call i32 (...) @SYSCON_TOPO_UNLOCK()
  %18 = load %struct.syscon*, %struct.syscon** %3, align 8
  store %struct.syscon* %18, %struct.syscon** %2, align 8
  br label %19

19:                                               ; preds = %12, %9
  %20 = load %struct.syscon*, %struct.syscon** %2, align 8
  ret %struct.syscon* %20
}

declare dso_local i32 @SYSCON_INIT(%struct.syscon*) #1

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i32 @SYSCON_TOPO_XLOCK(...) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.syscon*, i32) #1

declare dso_local i32 @SYSCON_TOPO_UNLOCK(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
