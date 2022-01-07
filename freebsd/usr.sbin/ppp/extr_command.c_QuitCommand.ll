; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_command.c_QuitCommand.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_command.c_QuitCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmdargs = type { i64, i64, %struct.TYPE_3__*, i32* }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"all\00", align 1
@LOCAL_AUTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cmdargs*)* @QuitCommand to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @QuitCommand(%struct.cmdargs* %0) #0 {
  %2 = alloca %struct.cmdargs*, align 8
  store %struct.cmdargs* %0, %struct.cmdargs** %2, align 8
  %3 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %4 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %3, i32 0, i32 2
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %6 = icmp ne %struct.TYPE_3__* %5, null
  br i1 %6, label %7, label %41

7:                                                ; preds = %1
  %8 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %9 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %8, i32 0, i32 2
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = call i64 @prompt_IsController(%struct.TYPE_3__* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %41, label %13

13:                                               ; preds = %7
  %14 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %15 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %18 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ugt i64 %16, %19
  br i1 %20, label %21, label %43

21:                                               ; preds = %13
  %22 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %23 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %22, i32 0, i32 3
  %24 = load i32*, i32** %23, align 8
  %25 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %26 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds i32, i32* %24, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @strcasecmp(i32 %29, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %43, label %32

32:                                               ; preds = %21
  %33 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %34 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %33, i32 0, i32 2
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @LOCAL_AUTH, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %32, %7, %1
  %42 = call i32 (...) @Cleanup()
  br label %43

43:                                               ; preds = %41, %32, %21, %13
  %44 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %45 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %44, i32 0, i32 2
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = icmp ne %struct.TYPE_3__* %46, null
  br i1 %47, label %48, label %53

48:                                               ; preds = %43
  %49 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %50 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %49, i32 0, i32 2
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %50, align 8
  %52 = call i32 @prompt_Destroy(%struct.TYPE_3__* %51, i32 1)
  br label %53

53:                                               ; preds = %48, %43
  ret i32 0
}

declare dso_local i64 @prompt_IsController(%struct.TYPE_3__*) #1

declare dso_local i32 @strcasecmp(i32, i8*) #1

declare dso_local i32 @Cleanup(...) #1

declare dso_local i32 @prompt_Destroy(%struct.TYPE_3__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
