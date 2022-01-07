; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/kbdmap/extr_kbdmap.c_check_vt.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/kbdmap/extr_kbdmap.c_check_vt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"kern.vty\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"vt\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @check_vt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_vt() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca [3 x i8], align 1
  store i64 3, i64* %2, align 8
  %4 = bitcast [3 x i8]* %3 to i8**
  %5 = call i64 @sysctlbyname(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8** %4, i64* %2, i32* null, i32 0)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %0
  %8 = getelementptr inbounds [3 x i8], [3 x i8]* %3, i64 0, i64 0
  %9 = call i64 @strcmp(i8* %8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %7, %0
  store i32 0, i32* %1, align 4
  br label %13

12:                                               ; preds = %7
  store i32 1, i32* %1, align 4
  br label %13

13:                                               ; preds = %12, %11
  %14 = load i32, i32* %1, align 4
  ret i32 %14
}

declare dso_local i64 @sysctlbyname(i8*, i8**, i64*, i32*, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
