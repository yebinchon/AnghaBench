; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/crunch/crunchide/extr_crunchide.c_in_keep_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/crunch/crunchide/extr_crunchide.c_in_keep_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.keep = type { i32, %struct.keep* }

@keep_list = common dso_local global %struct.keep* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @in_keep_list(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.keep*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.keep*, %struct.keep** @keep_list, align 8
  store %struct.keep* %5, %struct.keep** %3, align 8
  br label %6

6:                                                ; preds = %18, %1
  %7 = load %struct.keep*, %struct.keep** %3, align 8
  %8 = icmp ne %struct.keep* %7, null
  br i1 %8, label %9, label %22

9:                                                ; preds = %6
  %10 = load i8*, i8** %2, align 8
  %11 = load %struct.keep*, %struct.keep** %3, align 8
  %12 = getelementptr inbounds %struct.keep, %struct.keep* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @strcmp(i8* %10, i32 %13)
  store i32 %14, i32* %4, align 4
  %15 = icmp sle i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %9
  br label %22

17:                                               ; preds = %9
  br label %18

18:                                               ; preds = %17
  %19 = load %struct.keep*, %struct.keep** %3, align 8
  %20 = getelementptr inbounds %struct.keep, %struct.keep* %19, i32 0, i32 1
  %21 = load %struct.keep*, %struct.keep** %20, align 8
  store %struct.keep* %21, %struct.keep** %3, align 8
  br label %6

22:                                               ; preds = %16, %6
  %23 = load %struct.keep*, %struct.keep** %3, align 8
  %24 = icmp ne %struct.keep* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = load i32, i32* %4, align 4
  %27 = icmp eq i32 %26, 0
  br label %28

28:                                               ; preds = %25, %22
  %29 = phi i1 [ false, %22 ], [ %27, %25 ]
  %30 = zext i1 %29 to i32
  ret i32 %30
}

declare dso_local i32 @strcmp(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
