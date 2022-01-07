; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/dc/extr_bcode.c_compare.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/dc/extr_bcode.c_compare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32* }
%struct.number = type { i32 }
%struct.value = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@NO_ELSE = common dso_local global i32 0, align 4
@bmachine = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@.str = private unnamed_addr constant [29 x i8] c"register '%c' (0%o) is empty\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"eval called with non-string argument\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @compare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @compare(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.number*, align 8
  %4 = alloca %struct.number*, align 8
  %5 = alloca %struct.value*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %9 = load i32, i32* @NO_ELSE, align 4
  store i32 %9, i32* %7, align 4
  %10 = call i32 (...) @readreg()
  store i32 %10, i32* %6, align 4
  %11 = call signext i8 (...) @readch()
  %12 = sext i8 %11 to i32
  %13 = icmp eq i32 %12, 101
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = call i32 (...) @readreg()
  store i32 %15, i32* %7, align 4
  br label %18

16:                                               ; preds = %1
  %17 = call i32 (...) @unreadch()
  br label %18

18:                                               ; preds = %16, %14
  %19 = call %struct.number* (...) @pop_number()
  store %struct.number* %19, %struct.number** %3, align 8
  %20 = load %struct.number*, %struct.number** %3, align 8
  %21 = icmp eq %struct.number* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  br label %87

23:                                               ; preds = %18
  %24 = call %struct.number* (...) @pop_number()
  store %struct.number* %24, %struct.number** %4, align 8
  %25 = load %struct.number*, %struct.number** %4, align 8
  %26 = icmp eq %struct.number* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = load %struct.number*, %struct.number** %3, align 8
  %29 = call i32 @push_number(%struct.number* %28)
  br label %87

30:                                               ; preds = %23
  %31 = load i32, i32* %2, align 4
  %32 = load %struct.number*, %struct.number** %3, align 8
  %33 = load %struct.number*, %struct.number** %4, align 8
  %34 = call i32 @compare_numbers(i32 %31, %struct.number* %32, %struct.number* %33)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %43, label %37

37:                                               ; preds = %30
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @NO_ELSE, align 4
  %40 = icmp ne i32 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %37
  %42 = load i32, i32* %7, align 4
  store i32 %42, i32* %6, align 4
  br label %43

43:                                               ; preds = %41, %37, %30
  %44 = load i32, i32* %6, align 4
  %45 = icmp sge i32 %44, 0
  br i1 %45, label %46, label %87

46:                                               ; preds = %43
  %47 = load i32, i32* %8, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %56, label %49

49:                                               ; preds = %46
  %50 = load i32, i32* %8, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %87, label %52

52:                                               ; preds = %49
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* @NO_ELSE, align 4
  %55 = icmp ne i32 %53, %54
  br i1 %55, label %56, label %87

56:                                               ; preds = %52, %46
  %57 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @bmachine, i32 0, i32 0), align 8
  %58 = load i32, i32* %6, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = call %struct.value* @stack_tos(i32* %60)
  store %struct.value* %61, %struct.value** %5, align 8
  %62 = load %struct.value*, %struct.value** %5, align 8
  %63 = icmp eq %struct.value* %62, null
  br i1 %63, label %64, label %68

64:                                               ; preds = %56
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* %6, align 4
  %67 = call i32 @warnx(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %65, i32 %66)
  br label %86

68:                                               ; preds = %56
  %69 = load %struct.value*, %struct.value** %5, align 8
  %70 = getelementptr inbounds %struct.value, %struct.value* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  switch i32 %71, label %85 [
    i32 130, label %72
    i32 129, label %76
    i32 128, label %78
  ]

72:                                               ; preds = %68
  %73 = load i32, i32* %6, align 4
  %74 = load i32, i32* %6, align 4
  %75 = call i32 @warnx(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %73, i32 %74)
  br label %85

76:                                               ; preds = %68
  %77 = call i32 @warn(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  br label %85

78:                                               ; preds = %68
  %79 = load %struct.value*, %struct.value** %5, align 8
  %80 = getelementptr inbounds %struct.value, %struct.value* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @bstrdup(i32 %82)
  %84 = call i32 @eval_string(i32 %83)
  br label %85

85:                                               ; preds = %68, %78, %76, %72
  br label %86

86:                                               ; preds = %85, %64
  br label %87

87:                                               ; preds = %22, %27, %86, %52, %49, %43
  ret void
}

declare dso_local i32 @readreg(...) #1

declare dso_local signext i8 @readch(...) #1

declare dso_local i32 @unreadch(...) #1

declare dso_local %struct.number* @pop_number(...) #1

declare dso_local i32 @push_number(%struct.number*) #1

declare dso_local i32 @compare_numbers(i32, %struct.number*, %struct.number*) #1

declare dso_local %struct.value* @stack_tos(i32*) #1

declare dso_local i32 @warnx(i8*, i32, i32) #1

declare dso_local i32 @warn(i8*) #1

declare dso_local i32 @eval_string(i32) #1

declare dso_local i32 @bstrdup(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
