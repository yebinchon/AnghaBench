; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cy/extr_cy.c_cysetwater.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cy/extr_cy.c_cysetwater.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.com_s = type { i32, i64, i64, i64, i32, i32*, i32*, %struct.tty* }
%struct.tty = type { i32, i32, i32 }

@hz = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.com_s*, i32)* @cysetwater to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cysetwater(%struct.com_s* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.com_s*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.tty*, align 8
  store %struct.com_s* %0, %struct.com_s** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = sdiv i32 %10, 10
  %12 = load i32, i32* @hz, align 4
  %13 = sdiv i32 %11, %12
  %14 = mul nsw i32 %13, 4
  store i32 %14, i32* %6, align 4
  store i32 128, i32* %8, align 4
  br label %15

15:                                               ; preds = %19, %2
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = load i32, i32* %8, align 4
  %21 = shl i32 %20, 1
  store i32 %21, i32* %8, align 4
  br label %15

22:                                               ; preds = %15
  %23 = load i32, i32* %8, align 4
  %24 = load %struct.com_s*, %struct.com_s** %4, align 8
  %25 = getelementptr inbounds %struct.com_s, %struct.com_s* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp eq i32 %23, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  store i32 0, i32* %3, align 4
  br label %101

29:                                               ; preds = %22
  %30 = load i32, i32* %8, align 4
  %31 = mul nsw i32 2, %30
  %32 = load i32, i32* @M_DEVBUF, align 4
  %33 = load i32, i32* @M_NOWAIT, align 4
  %34 = call i32* @malloc(i32 %31, i32 %32, i32 %33)
  store i32* %34, i32** %7, align 8
  %35 = load i32*, i32** %7, align 8
  %36 = icmp eq i32* %35, null
  br i1 %36, label %37, label %39

37:                                               ; preds = %29
  %38 = load i32, i32* @ENOMEM, align 4
  store i32 %38, i32* %3, align 4
  br label %101

39:                                               ; preds = %29
  %40 = load %struct.com_s*, %struct.com_s** %4, align 8
  %41 = getelementptr inbounds %struct.com_s, %struct.com_s* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.com_s*, %struct.com_s** %4, align 8
  %44 = getelementptr inbounds %struct.com_s, %struct.com_s* %43, i32 0, i32 1
  store i64 %42, i64* %44, align 8
  %45 = load i32, i32* %8, align 4
  %46 = load %struct.com_s*, %struct.com_s** %4, align 8
  %47 = getelementptr inbounds %struct.com_s, %struct.com_s* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 8
  %48 = load %struct.com_s*, %struct.com_s** %4, align 8
  %49 = getelementptr inbounds %struct.com_s, %struct.com_s* %48, i32 0, i32 7
  %50 = load %struct.tty*, %struct.tty** %49, align 8
  store %struct.tty* %50, %struct.tty** %9, align 8
  %51 = load %struct.tty*, %struct.tty** %9, align 8
  %52 = icmp ne %struct.tty* %51, null
  br i1 %52, label %53, label %62

53:                                               ; preds = %39
  %54 = load i32, i32* %8, align 4
  %55 = mul nsw i32 2, %54
  %56 = load %struct.tty*, %struct.tty** %9, align 8
  %57 = getelementptr inbounds %struct.tty, %struct.tty* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 4
  %58 = load %struct.tty*, %struct.tty** %9, align 8
  %59 = getelementptr inbounds %struct.tty, %struct.tty* %58, i32 0, i32 1
  store i32 -1, i32* %59, align 4
  %60 = load %struct.tty*, %struct.tty** %9, align 8
  %61 = getelementptr inbounds %struct.tty, %struct.tty* %60, i32 0, i32 2
  store i32 -1, i32* %61, align 4
  br label %62

62:                                               ; preds = %53, %39
  %63 = call i32 (...) @critical_enter()
  %64 = call i32 (...) @COM_LOCK()
  %65 = load %struct.com_s*, %struct.com_s** %4, align 8
  %66 = getelementptr inbounds %struct.com_s, %struct.com_s* %65, i32 0, i32 3
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.com_s*, %struct.com_s** %4, align 8
  %69 = getelementptr inbounds %struct.com_s, %struct.com_s* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %67, %70
  br i1 %71, label %72, label %75

72:                                               ; preds = %62
  %73 = load %struct.com_s*, %struct.com_s** %4, align 8
  %74 = call i32 @cyinput(%struct.com_s* %73)
  br label %75

75:                                               ; preds = %72, %62
  %76 = load i32*, i32** %7, align 8
  %77 = ptrtoint i32* %76 to i64
  %78 = load %struct.com_s*, %struct.com_s** %4, align 8
  %79 = getelementptr inbounds %struct.com_s, %struct.com_s* %78, i32 0, i32 2
  store i64 %77, i64* %79, align 8
  %80 = load %struct.com_s*, %struct.com_s** %4, align 8
  %81 = getelementptr inbounds %struct.com_s, %struct.com_s* %80, i32 0, i32 3
  store i64 %77, i64* %81, align 8
  %82 = load i32*, i32** %7, align 8
  %83 = load i32, i32* %8, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  %86 = load %struct.com_s*, %struct.com_s** %4, align 8
  %87 = getelementptr inbounds %struct.com_s, %struct.com_s* %86, i32 0, i32 6
  store i32* %85, i32** %87, align 8
  %88 = load i32, i32* %8, align 4
  %89 = load %struct.com_s*, %struct.com_s** %4, align 8
  %90 = getelementptr inbounds %struct.com_s, %struct.com_s* %89, i32 0, i32 4
  store i32 %88, i32* %90, align 8
  %91 = load i32*, i32** %7, align 8
  %92 = load i32, i32* %8, align 4
  %93 = mul nsw i32 3, %92
  %94 = sdiv i32 %93, 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %91, i64 %95
  %97 = load %struct.com_s*, %struct.com_s** %4, align 8
  %98 = getelementptr inbounds %struct.com_s, %struct.com_s* %97, i32 0, i32 5
  store i32* %96, i32** %98, align 8
  %99 = call i32 (...) @COM_UNLOCK()
  %100 = call i32 (...) @critical_exit()
  store i32 0, i32* %3, align 4
  br label %101

101:                                              ; preds = %75, %37, %28
  %102 = load i32, i32* %3, align 4
  ret i32 %102
}

declare dso_local i32* @malloc(i32, i32, i32) #1

declare dso_local i32 @critical_enter(...) #1

declare dso_local i32 @COM_LOCK(...) #1

declare dso_local i32 @cyinput(%struct.com_s*) #1

declare dso_local i32 @COM_UNLOCK(...) #1

declare dso_local i32 @critical_exit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
