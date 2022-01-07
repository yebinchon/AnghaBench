; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/atkbdc/extr_psm.c_elantech_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/atkbdc/extr_psm.c_elantech_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [28 x i8] c"couldn't set absolute mode\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_3__*)* @elantech_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @elantech_init(i32 %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %8, align 4
  store i32 -1, i32* %9, align 4
  %13 = load i32, i32* %8, align 4
  switch i32 %13, label %41 [
    i32 2, label %14
    i32 3, label %32
    i32 4, label %37
  ]

14:                                               ; preds = %2
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = icmp eq i32 %17, 131120
  %19 = zext i1 %18 to i64
  %20 = select i1 %18, i32 84, i32 196
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* %9, align 4
  %24 = call i32 @elantech_write_1(i32 %21, i32 %22, i32 16, i32 %23)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %14
  br label %42

28:                                               ; preds = %14
  %29 = load i32, i32* %3, align 4
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @elantech_write_1(i32 %29, i32 %30, i32 17, i32 138)
  store i32 %31, i32* %7, align 4
  br label %42

32:                                               ; preds = %2
  store i32 11, i32* %9, align 4
  %33 = load i32, i32* %3, align 4
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* %9, align 4
  %36 = call i32 @elantech_write_1(i32 %33, i32 %34, i32 16, i32 %35)
  store i32 %36, i32* %7, align 4
  br label %42

37:                                               ; preds = %2
  %38 = load i32, i32* %3, align 4
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @elantech_write_1(i32 %38, i32 %39, i32 7, i32 1)
  store i32 %40, i32* %7, align 4
  br label %42

41:                                               ; preds = %2
  store i32 1, i32* %7, align 4
  br label %42

42:                                               ; preds = %41, %37, %32, %28, %27
  %43 = load i32, i32* %7, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %68

45:                                               ; preds = %42
  %46 = load i32, i32* %9, align 4
  %47 = icmp sge i32 %46, 0
  br i1 %47, label %48, label %68

48:                                               ; preds = %45
  store i32 0, i32* %5, align 4
  br label %49

49:                                               ; preds = %60, %48
  %50 = load i32, i32* %5, align 4
  %51 = icmp slt i32 %50, 5
  br i1 %51, label %52, label %63

52:                                               ; preds = %49
  %53 = load i32, i32* %3, align 4
  %54 = load i32, i32* %8, align 4
  %55 = call i64 @elantech_read_1(i32 %53, i32 %54, i32 16, i32* %6)
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %52
  br label %63

58:                                               ; preds = %52
  %59 = call i32 @DELAY(i32 2000)
  br label %60

60:                                               ; preds = %58
  %61 = load i32, i32* %5, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %5, align 4
  br label %49

63:                                               ; preds = %57, %49
  %64 = load i32, i32* %5, align 4
  %65 = icmp eq i32 %64, 5
  br i1 %65, label %66, label %67

66:                                               ; preds = %63
  store i32 1, i32* %7, align 4
  br label %67

67:                                               ; preds = %66, %63
  br label %68

68:                                               ; preds = %67, %45, %42
  %69 = load i32, i32* %7, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %68
  %72 = call i32 @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %73

73:                                               ; preds = %71, %68
  %74 = load i32, i32* %7, align 4
  ret i32 %74
}

declare dso_local i32 @elantech_write_1(i32, i32, i32, i32) #1

declare dso_local i64 @elantech_read_1(i32, i32, i32, i32*) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @printf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
