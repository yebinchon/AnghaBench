; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/nscd/extr_agent.c_agent_cmp_func.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/nscd/extr_agent.c_agent_cmp_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.agent = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @agent_cmp_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @agent_cmp_func(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.agent*, align 8
  %6 = alloca %struct.agent*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = bitcast i8* %8 to %struct.agent**
  %10 = load %struct.agent*, %struct.agent** %9, align 8
  store %struct.agent* %10, %struct.agent** %5, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct.agent**
  %13 = load %struct.agent*, %struct.agent** %12, align 8
  store %struct.agent* %13, %struct.agent** %6, align 8
  %14 = load %struct.agent*, %struct.agent** %5, align 8
  %15 = getelementptr inbounds %struct.agent, %struct.agent* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.agent*, %struct.agent** %6, align 8
  %18 = getelementptr inbounds %struct.agent, %struct.agent* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @strcmp(i32 %16, i32 %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %44

23:                                               ; preds = %2
  %24 = load %struct.agent*, %struct.agent** %5, align 8
  %25 = getelementptr inbounds %struct.agent, %struct.agent* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.agent*, %struct.agent** %6, align 8
  %28 = getelementptr inbounds %struct.agent, %struct.agent* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp eq i64 %26, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %23
  store i32 0, i32* %7, align 4
  br label %43

32:                                               ; preds = %23
  %33 = load %struct.agent*, %struct.agent** %5, align 8
  %34 = getelementptr inbounds %struct.agent, %struct.agent* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.agent*, %struct.agent** %6, align 8
  %37 = getelementptr inbounds %struct.agent, %struct.agent* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp slt i64 %35, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %32
  store i32 -1, i32* %7, align 4
  br label %42

41:                                               ; preds = %32
  store i32 1, i32* %7, align 4
  br label %42

42:                                               ; preds = %41, %40
  br label %43

43:                                               ; preds = %42, %31
  br label %44

44:                                               ; preds = %43, %2
  %45 = load i32, i32* %7, align 4
  ret i32 %45
}

declare dso_local i32 @strcmp(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
