; ModuleID = '/home/carl/AnghaBench/freebsd/sys/sparc64/sparc64/extr_db_hwwatch.c_db_md_list_watchpoints.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/sparc64/sparc64/extr_db_hwwatch.c_db_md_list_watchpoints.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [30 x i8] c"Physical address watchpoint:\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"\09not active.\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"Virtual address watchpoint:\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @db_md_list_watchpoints() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = call i32 @db_printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %5 = call i64 (...) @watch_phys_active()
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %0
  %8 = call i32 @watch_phys_get(i32* %3)
  store i32 %8, i32* %2, align 4
  %9 = load i32, i32* %2, align 4
  %10 = load i32, i32* %3, align 4
  %11 = call i32 @db_watch_print(i32 %9, i32 %10)
  br label %14

12:                                               ; preds = %0
  %13 = call i32 @db_printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  br label %14

14:                                               ; preds = %12, %7
  %15 = call i32 @db_printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %16 = call i64 (...) @watch_virt_active()
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %14
  %19 = call i32 @watch_virt_get(i32* %3)
  store i32 %19, i32* %1, align 4
  %20 = load i32, i32* %1, align 4
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @db_watch_print(i32 %20, i32 %21)
  br label %25

23:                                               ; preds = %14
  %24 = call i32 @db_printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  br label %25

25:                                               ; preds = %23, %18
  ret void
}

declare dso_local i32 @db_printf(i8*) #1

declare dso_local i64 @watch_phys_active(...) #1

declare dso_local i32 @watch_phys_get(i32*) #1

declare dso_local i32 @db_watch_print(i32, i32) #1

declare dso_local i64 @watch_virt_active(...) #1

declare dso_local i32 @watch_virt_get(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
