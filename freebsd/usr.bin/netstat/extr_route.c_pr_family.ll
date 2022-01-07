; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/netstat/extr_route.c_pr_family.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/netstat/extr_route.c_pr_family.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"Internet\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"ISO\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"X.25\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"Netgraph\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"\0A{k:address-family/%s}:\0A\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"\0A{L:Protocol Family} {k:address-family/%d}:\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pr_family(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  switch i32 %4, label %9 [
    i32 131, label %5
    i32 129, label %6
    i32 132, label %7
    i32 128, label %8
  ]

5:                                                ; preds = %1
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  br label %10

6:                                                ; preds = %1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8** %3, align 8
  br label %10

7:                                                ; preds = %1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8** %3, align 8
  br label %10

8:                                                ; preds = %1
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8** %3, align 8
  br label %10

9:                                                ; preds = %1
  store i8* null, i8** %3, align 8
  br label %10

10:                                               ; preds = %9, %8, %7, %6, %5
  %11 = load i8*, i8** %3, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %10
  %14 = load i8*, i8** %3, align 8
  %15 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i8* %14)
  br label %19

16:                                               ; preds = %10
  %17 = load i32, i32* %2, align 4
  %18 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0), i32 %17)
  br label %19

19:                                               ; preds = %16, %13
  ret void
}

declare dso_local i32 @xo_emit(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
