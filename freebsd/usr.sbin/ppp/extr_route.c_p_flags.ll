; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_route.c_p_flags.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_route.c_p_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bits = type { i32, i32 }
%struct.prompt = type { i32 }

@bits = common dso_local global %struct.bits* null, align 8
@.str = private unnamed_addr constant [7 x i8] c"%-*.*s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.prompt*, i32, i32)* @p_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @p_flags(%struct.prompt* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.prompt*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [33 x i8], align 16
  %8 = alloca i8*, align 8
  %9 = alloca %struct.bits*, align 8
  store %struct.prompt* %0, %struct.prompt** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.bits*, %struct.bits** @bits, align 8
  store %struct.bits* %10, %struct.bits** %9, align 8
  %11 = load i32, i32* %6, align 4
  %12 = zext i32 %11 to i64
  %13 = icmp ugt i64 %12, 32
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  store i32 32, i32* %6, align 4
  br label %15

15:                                               ; preds = %14, %3
  %16 = getelementptr inbounds [33 x i8], [33 x i8]* %7, i64 0, i64 0
  store i8* %16, i8** %8, align 8
  br label %17

17:                                               ; preds = %48, %15
  %18 = load %struct.bits*, %struct.bits** %9, align 8
  %19 = getelementptr inbounds %struct.bits, %struct.bits* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %17
  %23 = load i8*, i8** %8, align 8
  %24 = getelementptr inbounds [33 x i8], [33 x i8]* %7, i64 0, i64 0
  %25 = ptrtoint i8* %23 to i64
  %26 = ptrtoint i8* %24 to i64
  %27 = sub i64 %25, %26
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = icmp slt i64 %27, %29
  br label %31

31:                                               ; preds = %22, %17
  %32 = phi i1 [ false, %17 ], [ %30, %22 ]
  br i1 %32, label %33, label %51

33:                                               ; preds = %31
  %34 = load %struct.bits*, %struct.bits** %9, align 8
  %35 = getelementptr inbounds %struct.bits, %struct.bits* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %5, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %33
  %41 = load %struct.bits*, %struct.bits** %9, align 8
  %42 = getelementptr inbounds %struct.bits, %struct.bits* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = trunc i32 %43 to i8
  %45 = load i8*, i8** %8, align 8
  %46 = getelementptr inbounds i8, i8* %45, i32 1
  store i8* %46, i8** %8, align 8
  store i8 %44, i8* %45, align 1
  br label %47

47:                                               ; preds = %40, %33
  br label %48

48:                                               ; preds = %47
  %49 = load %struct.bits*, %struct.bits** %9, align 8
  %50 = getelementptr inbounds %struct.bits, %struct.bits* %49, i32 1
  store %struct.bits* %50, %struct.bits** %9, align 8
  br label %17

51:                                               ; preds = %31
  %52 = load i8*, i8** %8, align 8
  store i8 0, i8* %52, align 1
  %53 = load %struct.prompt*, %struct.prompt** %4, align 8
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* %6, align 4
  %56 = getelementptr inbounds [33 x i8], [33 x i8]* %7, i64 0, i64 0
  %57 = call i32 @prompt_Printf(%struct.prompt* %53, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %54, i32 %55, i8* %56)
  ret void
}

declare dso_local i32 @prompt_Printf(%struct.prompt*, i8*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
