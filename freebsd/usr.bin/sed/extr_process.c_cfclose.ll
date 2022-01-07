; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/sed/extr_process.c_cfclose.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/sed/extr_process.c_cfclose.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s_command = type { i32, %struct.s_command*, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, %struct.s_command*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cfclose(%struct.s_command* %0, %struct.s_command* %1) #0 {
  %3 = alloca %struct.s_command*, align 8
  %4 = alloca %struct.s_command*, align 8
  store %struct.s_command* %0, %struct.s_command** %3, align 8
  store %struct.s_command* %1, %struct.s_command** %4, align 8
  br label %5

5:                                                ; preds = %75, %2
  %6 = load %struct.s_command*, %struct.s_command** %3, align 8
  %7 = load %struct.s_command*, %struct.s_command** %4, align 8
  %8 = icmp ne %struct.s_command* %6, %7
  br i1 %8, label %9, label %79

9:                                                ; preds = %5
  %10 = load %struct.s_command*, %struct.s_command** %3, align 8
  %11 = getelementptr inbounds %struct.s_command, %struct.s_command* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  switch i32 %12, label %74 [
    i32 115, label %13
    i32 119, label %44
    i32 123, label %66
  ]

13:                                               ; preds = %9
  %14 = load %struct.s_command*, %struct.s_command** %3, align 8
  %15 = getelementptr inbounds %struct.s_command, %struct.s_command* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 2
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, -1
  br i1 %20, label %21, label %38

21:                                               ; preds = %13
  %22 = load %struct.s_command*, %struct.s_command** %3, align 8
  %23 = getelementptr inbounds %struct.s_command, %struct.s_command* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 2
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @close(i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %21
  %31 = load %struct.s_command*, %struct.s_command** %3, align 8
  %32 = getelementptr inbounds %struct.s_command, %struct.s_command* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 2
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @err(i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %36)
  br label %38

38:                                               ; preds = %30, %21, %13
  %39 = load %struct.s_command*, %struct.s_command** %3, align 8
  %40 = getelementptr inbounds %struct.s_command, %struct.s_command* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 2
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  store i32 -1, i32* %43, align 4
  br label %74

44:                                               ; preds = %9
  %45 = load %struct.s_command*, %struct.s_command** %3, align 8
  %46 = getelementptr inbounds %struct.s_command, %struct.s_command* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp ne i32 %48, -1
  br i1 %49, label %50, label %62

50:                                               ; preds = %44
  %51 = load %struct.s_command*, %struct.s_command** %3, align 8
  %52 = getelementptr inbounds %struct.s_command, %struct.s_command* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @close(i32 %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %50
  %58 = load %struct.s_command*, %struct.s_command** %3, align 8
  %59 = getelementptr inbounds %struct.s_command, %struct.s_command* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @err(i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %60)
  br label %62

62:                                               ; preds = %57, %50, %44
  %63 = load %struct.s_command*, %struct.s_command** %3, align 8
  %64 = getelementptr inbounds %struct.s_command, %struct.s_command* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  store i32 -1, i32* %65, align 8
  br label %74

66:                                               ; preds = %9
  %67 = load %struct.s_command*, %struct.s_command** %3, align 8
  %68 = getelementptr inbounds %struct.s_command, %struct.s_command* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 1
  %70 = load %struct.s_command*, %struct.s_command** %69, align 8
  %71 = load %struct.s_command*, %struct.s_command** %3, align 8
  %72 = getelementptr inbounds %struct.s_command, %struct.s_command* %71, i32 0, i32 1
  %73 = load %struct.s_command*, %struct.s_command** %72, align 8
  call void @cfclose(%struct.s_command* %70, %struct.s_command* %73)
  br label %74

74:                                               ; preds = %9, %66, %62, %38
  br label %75

75:                                               ; preds = %74
  %76 = load %struct.s_command*, %struct.s_command** %3, align 8
  %77 = getelementptr inbounds %struct.s_command, %struct.s_command* %76, i32 0, i32 1
  %78 = load %struct.s_command*, %struct.s_command** %77, align 8
  store %struct.s_command* %78, %struct.s_command** %3, align 8
  br label %5

79:                                               ; preds = %5
  ret void
}

declare dso_local i32 @close(i32) #1

declare dso_local i32 @err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
