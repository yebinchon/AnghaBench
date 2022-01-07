; ModuleID = '/home/carl/AnghaBench/freebsd/sys/xen/xenbus/extr_xenbus.c_xenbus_grant_ring.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/xen/xenbus/extr_xenbus.c_xenbus_grant_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [29 x i8] c"granting access to ring page\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xenbus_grant_ring(i32 %0, i64 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load i32, i32* %5, align 4
  %10 = call i32 @xenbus_get_otherend_id(i32 %9)
  %11 = load i64, i64* %6, align 8
  %12 = load i32*, i32** %7, align 8
  %13 = call i32 @gnttab_grant_foreign_access(i32 %10, i64 %11, i32 0, i32* %12)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %3
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* %8, align 4
  %19 = call i32 @xenbus_dev_fatal(i32 %17, i32 %18, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* %8, align 4
  store i32 %20, i32* %4, align 4
  br label %22

21:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %22

22:                                               ; preds = %21, %16
  %23 = load i32, i32* %4, align 4
  ret i32 %23
}

declare dso_local i32 @gnttab_grant_foreign_access(i32, i64, i32, i32*) #1

declare dso_local i32 @xenbus_get_otherend_id(i32) #1

declare dso_local i32 @xenbus_dev_fatal(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
