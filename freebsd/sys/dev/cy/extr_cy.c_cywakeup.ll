; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cy/extr_cy.c_cywakeup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cy/extr_cy.c_cywakeup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.com_s = type { i32*, i32* }

@cy_timeout = common dso_local global i64 0, align 8
@cy_timeout_handle = common dso_local global i32 0, align 4
@cy_timeouts_until_log = common dso_local global i64 0, align 8
@hz = common dso_local global i64 0, align 8
@NPORTS = common dso_local global i32 0, align 4
@CE_NTYPES = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"cy%d: %u more %s%s (total %lu)\0A\00", align 1
@error_desc = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @cywakeup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cywakeup(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.com_s*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %8 = load i64, i64* @cy_timeout, align 8
  %9 = call i32 @timeout(void (i8*)* @cywakeup, i8* null, i64 %8)
  store i32 %9, i32* @cy_timeout_handle, align 4
  %10 = load i64, i64* @cy_timeouts_until_log, align 8
  %11 = add nsw i64 %10, -1
  store i64 %11, i64* @cy_timeouts_until_log, align 8
  %12 = icmp sgt i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %85

14:                                               ; preds = %1
  %15 = load i64, i64* @hz, align 8
  %16 = load i64, i64* @cy_timeout, align 8
  %17 = sdiv i64 %15, %16
  store i64 %17, i64* @cy_timeouts_until_log, align 8
  store i32 0, i32* %4, align 4
  br label %18

18:                                               ; preds = %82, %14
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @NPORTS, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %85

22:                                               ; preds = %18
  %23 = load i32, i32* %4, align 4
  %24 = call %struct.com_s* @cy_addr(i32 %23)
  store %struct.com_s* %24, %struct.com_s** %3, align 8
  %25 = load %struct.com_s*, %struct.com_s** %3, align 8
  %26 = icmp eq %struct.com_s* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  br label %82

28:                                               ; preds = %22
  store i32 0, i32* %5, align 4
  br label %29

29:                                               ; preds = %78, %28
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @CE_NTYPES, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %81

33:                                               ; preds = %29
  %34 = call i32 (...) @critical_enter()
  %35 = call i32 (...) @COM_LOCK()
  %36 = load %struct.com_s*, %struct.com_s** %3, align 8
  %37 = getelementptr inbounds %struct.com_s, %struct.com_s* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %5, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %6, align 4
  %43 = load %struct.com_s*, %struct.com_s** %3, align 8
  %44 = getelementptr inbounds %struct.com_s, %struct.com_s* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %5, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  store i32 0, i32* %48, align 4
  %49 = call i32 (...) @COM_UNLOCK()
  %50 = call i32 (...) @critical_exit()
  %51 = load i32, i32* %6, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %33
  br label %78

54:                                               ; preds = %33
  %55 = load i32, i32* %6, align 4
  %56 = load %struct.com_s*, %struct.com_s** %3, align 8
  %57 = getelementptr inbounds %struct.com_s, %struct.com_s* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* %5, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = add nsw i32 %62, %55
  store i32 %63, i32* %61, align 4
  store i32 %63, i32* %7, align 4
  %64 = load i32, i32* @LOG_ERR, align 4
  %65 = load i32, i32* %4, align 4
  %66 = load i32, i32* %6, align 4
  %67 = load i32*, i32** @error_desc, align 8
  %68 = load i32, i32* %5, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %6, align 4
  %73 = icmp eq i32 %72, 1
  %74 = zext i1 %73 to i64
  %75 = select i1 %73, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)
  %76 = load i32, i32* %7, align 4
  %77 = call i32 @log(i32 %64, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %65, i32 %66, i32 %71, i8* %75, i32 %76)
  br label %78

78:                                               ; preds = %54, %53
  %79 = load i32, i32* %5, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %5, align 4
  br label %29

81:                                               ; preds = %29
  br label %82

82:                                               ; preds = %81, %27
  %83 = load i32, i32* %4, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %4, align 4
  br label %18

85:                                               ; preds = %13, %18
  ret void
}

declare dso_local i32 @timeout(void (i8*)*, i8*, i64) #1

declare dso_local %struct.com_s* @cy_addr(i32) #1

declare dso_local i32 @critical_enter(...) #1

declare dso_local i32 @COM_LOCK(...) #1

declare dso_local i32 @COM_UNLOCK(...) #1

declare dso_local i32 @critical_exit(...) #1

declare dso_local i32 @log(i32, i8*, i32, i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
