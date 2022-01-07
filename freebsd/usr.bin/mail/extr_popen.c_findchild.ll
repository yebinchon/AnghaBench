; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/mail/extr_popen.c_findchild.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/mail/extr_popen.c_findchild.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.child = type { i64, %struct.child*, i64, i64 }

@child = common dso_local global %struct.child* null, align 8
@child_freelist = common dso_local global %struct.child* null, align 8
@.str = private unnamed_addr constant [7 x i8] c"malloc\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.child* (i64, i32)* @findchild to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.child* @findchild(i64 %0, i32 %1) #0 {
  %3 = alloca %struct.child*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.child**, align 8
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.child** @child, %struct.child*** %6, align 8
  br label %7

7:                                                ; preds = %21, %2
  %8 = load %struct.child**, %struct.child*** %6, align 8
  %9 = load %struct.child*, %struct.child** %8, align 8
  %10 = icmp ne %struct.child* %9, null
  br i1 %10, label %11, label %18

11:                                               ; preds = %7
  %12 = load %struct.child**, %struct.child*** %6, align 8
  %13 = load %struct.child*, %struct.child** %12, align 8
  %14 = getelementptr inbounds %struct.child, %struct.child* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* %4, align 8
  %17 = icmp ne i64 %15, %16
  br label %18

18:                                               ; preds = %11, %7
  %19 = phi i1 [ false, %7 ], [ %17, %11 ]
  br i1 %19, label %20, label %25

20:                                               ; preds = %18
  br label %21

21:                                               ; preds = %20
  %22 = load %struct.child**, %struct.child*** %6, align 8
  %23 = load %struct.child*, %struct.child** %22, align 8
  %24 = getelementptr inbounds %struct.child, %struct.child* %23, i32 0, i32 1
  store %struct.child** %24, %struct.child*** %6, align 8
  br label %7

25:                                               ; preds = %18
  %26 = load %struct.child**, %struct.child*** %6, align 8
  %27 = load %struct.child*, %struct.child** %26, align 8
  %28 = icmp eq %struct.child* %27, null
  br i1 %28, label %29, label %66

29:                                               ; preds = %25
  %30 = load i32, i32* %5, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  store %struct.child* null, %struct.child** %3, align 8
  br label %69

33:                                               ; preds = %29
  %34 = load %struct.child*, %struct.child** @child_freelist, align 8
  %35 = icmp ne %struct.child* %34, null
  br i1 %35, label %36, label %43

36:                                               ; preds = %33
  %37 = load %struct.child*, %struct.child** @child_freelist, align 8
  %38 = load %struct.child**, %struct.child*** %6, align 8
  store %struct.child* %37, %struct.child** %38, align 8
  %39 = load %struct.child**, %struct.child*** %6, align 8
  %40 = load %struct.child*, %struct.child** %39, align 8
  %41 = getelementptr inbounds %struct.child, %struct.child* %40, i32 0, i32 1
  %42 = load %struct.child*, %struct.child** %41, align 8
  store %struct.child* %42, %struct.child** @child_freelist, align 8
  br label %52

43:                                               ; preds = %33
  %44 = call %struct.child* @malloc(i32 32)
  %45 = load %struct.child**, %struct.child*** %6, align 8
  store %struct.child* %44, %struct.child** %45, align 8
  %46 = load %struct.child**, %struct.child*** %6, align 8
  %47 = load %struct.child*, %struct.child** %46, align 8
  %48 = icmp eq %struct.child* %47, null
  br i1 %48, label %49, label %51

49:                                               ; preds = %43
  %50 = call i32 @err(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %51

51:                                               ; preds = %49, %43
  br label %52

52:                                               ; preds = %51, %36
  %53 = load i64, i64* %4, align 8
  %54 = load %struct.child**, %struct.child*** %6, align 8
  %55 = load %struct.child*, %struct.child** %54, align 8
  %56 = getelementptr inbounds %struct.child, %struct.child* %55, i32 0, i32 0
  store i64 %53, i64* %56, align 8
  %57 = load %struct.child**, %struct.child*** %6, align 8
  %58 = load %struct.child*, %struct.child** %57, align 8
  %59 = getelementptr inbounds %struct.child, %struct.child* %58, i32 0, i32 2
  store i64 0, i64* %59, align 8
  %60 = load %struct.child**, %struct.child*** %6, align 8
  %61 = load %struct.child*, %struct.child** %60, align 8
  %62 = getelementptr inbounds %struct.child, %struct.child* %61, i32 0, i32 3
  store i64 0, i64* %62, align 8
  %63 = load %struct.child**, %struct.child*** %6, align 8
  %64 = load %struct.child*, %struct.child** %63, align 8
  %65 = getelementptr inbounds %struct.child, %struct.child* %64, i32 0, i32 1
  store %struct.child* null, %struct.child** %65, align 8
  br label %66

66:                                               ; preds = %52, %25
  %67 = load %struct.child**, %struct.child*** %6, align 8
  %68 = load %struct.child*, %struct.child** %67, align 8
  store %struct.child* %68, %struct.child** %3, align 8
  br label %69

69:                                               ; preds = %66, %32
  %70 = load %struct.child*, %struct.child** %3, align 8
  ret %struct.child* %70
}

declare dso_local %struct.child* @malloc(i32) #1

declare dso_local i32 @err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
