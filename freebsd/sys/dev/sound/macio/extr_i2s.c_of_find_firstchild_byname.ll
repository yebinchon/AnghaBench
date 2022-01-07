; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/macio/extr_i2s.c_of_find_firstchild_byname.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/macio/extr_i2s.c_of_find_firstchild_byname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"name\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @of_find_firstchild_byname to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @of_find_firstchild_byname(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca [32 x i8], align 16
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @OF_child(i32 %8)
  store i32 %9, i32* %7, align 4
  br label %10

10:                                               ; preds = %26, %2
  %11 = load i32, i32* %7, align 4
  %12 = icmp ne i32 %11, -1
  br i1 %12, label %13, label %29

13:                                               ; preds = %10
  %14 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %15 = call i32 @bzero(i8* %14, i32 32)
  %16 = load i32, i32* %7, align 4
  %17 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %18 = call i32 @OF_getprop(i32 %16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %17, i32 32)
  %19 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %20 = load i8*, i8** %5, align 8
  %21 = call i64 @strcmp(i8* %19, i8* %20)
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %13
  %24 = load i32, i32* %7, align 4
  store i32 %24, i32* %3, align 4
  br label %30

25:                                               ; preds = %13
  br label %26

26:                                               ; preds = %25
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @OF_peer(i32 %27)
  store i32 %28, i32* %7, align 4
  br label %10

29:                                               ; preds = %10
  store i32 -1, i32* %3, align 4
  br label %30

30:                                               ; preds = %29, %23
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local i32 @OF_child(i32) #1

declare dso_local i32 @bzero(i8*, i32) #1

declare dso_local i32 @OF_getprop(i32, i8*, i8*, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @OF_peer(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
