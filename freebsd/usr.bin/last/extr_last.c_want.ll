; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/last/extr_last.c_want.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/last/extr_last.c_want.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, %struct.TYPE_3__* }
%struct.utmpx = type { i32, i32, i32, i32 }

@snaptime = common dso_local global i64 0, align 8
@NO = common dso_local global i32 0, align 4
@arglist = common dso_local global %struct.TYPE_3__* null, align 8
@YES = common dso_local global i32 0, align 4
@BOOT_TIME = common dso_local global i32 0, align 4
@SHUTDOWN_TIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.utmpx*)* @want to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @want(%struct.utmpx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.utmpx*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  store %struct.utmpx* %0, %struct.utmpx** %3, align 8
  %5 = load i64, i64* @snaptime, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = load i32, i32* @NO, align 4
  store i32 %8, i32* %2, align 4
  br label %81

9:                                                ; preds = %1
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** @arglist, align 8
  %11 = icmp ne %struct.TYPE_3__* %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %9
  %13 = load i32, i32* @YES, align 4
  store i32 %13, i32* %2, align 4
  br label %81

14:                                               ; preds = %9
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** @arglist, align 8
  store %struct.TYPE_3__* %15, %struct.TYPE_3__** %4, align 8
  br label %16

16:                                               ; preds = %75, %14
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %18 = icmp ne %struct.TYPE_3__* %17, null
  br i1 %18, label %19, label %79

19:                                               ; preds = %16
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  switch i32 %22, label %74 [
    i32 130, label %23
    i32 131, label %38
    i32 129, label %50
    i32 128, label %62
  ]

23:                                               ; preds = %19
  %24 = load %struct.utmpx*, %struct.utmpx** %3, align 8
  %25 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @BOOT_TIME, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %35, label %29

29:                                               ; preds = %23
  %30 = load %struct.utmpx*, %struct.utmpx** %3, align 8
  %31 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @SHUTDOWN_TIME, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %29, %23
  %36 = load i32, i32* @YES, align 4
  store i32 %36, i32* %2, align 4
  br label %81

37:                                               ; preds = %29
  br label %74

38:                                               ; preds = %19
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.utmpx*, %struct.utmpx** %3, align 8
  %43 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @strcasecmp(i32 %41, i32 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %38
  %48 = load i32, i32* @YES, align 4
  store i32 %48, i32* %2, align 4
  br label %81

49:                                               ; preds = %38
  br label %74

50:                                               ; preds = %19
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.utmpx*, %struct.utmpx** %3, align 8
  %55 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @strcmp(i32 %53, i32 %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %61, label %59

59:                                               ; preds = %50
  %60 = load i32, i32* @YES, align 4
  store i32 %60, i32* %2, align 4
  br label %81

61:                                               ; preds = %50
  br label %74

62:                                               ; preds = %19
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.utmpx*, %struct.utmpx** %3, align 8
  %67 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @strcmp(i32 %65, i32 %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %73, label %71

71:                                               ; preds = %62
  %72 = load i32, i32* @YES, align 4
  store i32 %72, i32* %2, align 4
  br label %81

73:                                               ; preds = %62
  br label %74

74:                                               ; preds = %19, %73, %61, %49, %37
  br label %75

75:                                               ; preds = %74
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 2
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %77, align 8
  store %struct.TYPE_3__* %78, %struct.TYPE_3__** %4, align 8
  br label %16

79:                                               ; preds = %16
  %80 = load i32, i32* @NO, align 4
  store i32 %80, i32* %2, align 4
  br label %81

81:                                               ; preds = %79, %71, %59, %47, %35, %12, %7
  %82 = load i32, i32* %2, align 4
  ret i32 %82
}

declare dso_local i32 @strcasecmp(i32, i32) #1

declare dso_local i32 @strcmp(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
