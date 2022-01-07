; ModuleID = '/home/carl/AnghaBench/git/compat/extr_mingw.c_waitpid.c'
source_filename = "/home/carl/AnghaBench/git/compat/extr_mingw.c_waitpid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinfo_t = type { i32, %struct.pinfo_t*, i32 }

@SYNCHRONIZE = common dso_local global i32 0, align 4
@PROCESS_QUERY_INFORMATION = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@ECHILD = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@WNOHANG = common dso_local global i32 0, align 4
@WAIT_OBJECT_0 = common dso_local global i64 0, align 8
@INFINITE = common dso_local global i32 0, align 4
@pinfo_cs = common dso_local global i32 0, align 4
@pinfo = common dso_local global %struct.pinfo_t* null, align 8
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @waitpid(i32 %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.pinfo_t**, align 8
  %10 = alloca %struct.pinfo_t*, align 8
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* @SYNCHRONIZE, align 4
  %12 = load i32, i32* @PROCESS_QUERY_INFORMATION, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @FALSE, align 4
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @OpenProcess(i32 %13, i32 %14, i32 %15)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %3
  %20 = load i32, i32* @ECHILD, align 4
  store i32 %20, i32* @errno, align 4
  store i32 -1, i32* %4, align 4
  br label %99

21:                                               ; preds = %3
  %22 = load i32, i32* %5, align 4
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %24, label %42

24:                                               ; preds = %21
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @WNOHANG, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %42

29:                                               ; preds = %24
  %30 = load i64, i64* @WAIT_OBJECT_0, align 8
  %31 = load i32, i32* %8, align 4
  %32 = call i64 @WaitForSingleObject(i32 %31, i32 0)
  %33 = icmp ne i64 %30, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @CloseHandle(i32 %35)
  store i32 0, i32* %4, align 4
  br label %99

37:                                               ; preds = %29
  %38 = load i32, i32* @WNOHANG, align 4
  %39 = xor i32 %38, -1
  %40 = load i32, i32* %7, align 4
  %41 = and i32 %40, %39
  store i32 %41, i32* %7, align 4
  br label %42

42:                                               ; preds = %37, %24, %21
  %43 = load i32, i32* %7, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %95

45:                                               ; preds = %42
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* @INFINITE, align 4
  %48 = call i64 @WaitForSingleObject(i32 %46, i32 %47)
  %49 = load i64, i64* @WAIT_OBJECT_0, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %45
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @CloseHandle(i32 %52)
  store i32 0, i32* %4, align 4
  br label %99

54:                                               ; preds = %45
  %55 = load i32*, i32** %6, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %57, label %62

57:                                               ; preds = %54
  %58 = load i32, i32* %8, align 4
  %59 = load i32*, i32** %6, align 8
  %60 = ptrtoint i32* %59 to i32
  %61 = call i32 @GetExitCodeProcess(i32 %58, i32 %60)
  br label %62

62:                                               ; preds = %57, %54
  %63 = call i32 @EnterCriticalSection(i32* @pinfo_cs)
  store %struct.pinfo_t** @pinfo, %struct.pinfo_t*** %9, align 8
  br label %64

64:                                               ; preds = %87, %62
  %65 = load %struct.pinfo_t**, %struct.pinfo_t*** %9, align 8
  %66 = load %struct.pinfo_t*, %struct.pinfo_t** %65, align 8
  %67 = icmp ne %struct.pinfo_t* %66, null
  br i1 %67, label %68, label %90

68:                                               ; preds = %64
  %69 = load %struct.pinfo_t**, %struct.pinfo_t*** %9, align 8
  %70 = load %struct.pinfo_t*, %struct.pinfo_t** %69, align 8
  store %struct.pinfo_t* %70, %struct.pinfo_t** %10, align 8
  %71 = load %struct.pinfo_t*, %struct.pinfo_t** %10, align 8
  %72 = getelementptr inbounds %struct.pinfo_t, %struct.pinfo_t* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* %5, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %87

76:                                               ; preds = %68
  %77 = load %struct.pinfo_t*, %struct.pinfo_t** %10, align 8
  %78 = getelementptr inbounds %struct.pinfo_t, %struct.pinfo_t* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @CloseHandle(i32 %79)
  %81 = load %struct.pinfo_t*, %struct.pinfo_t** %10, align 8
  %82 = getelementptr inbounds %struct.pinfo_t, %struct.pinfo_t* %81, i32 0, i32 1
  %83 = load %struct.pinfo_t*, %struct.pinfo_t** %82, align 8
  %84 = load %struct.pinfo_t**, %struct.pinfo_t*** %9, align 8
  store %struct.pinfo_t* %83, %struct.pinfo_t** %84, align 8
  %85 = load %struct.pinfo_t*, %struct.pinfo_t** %10, align 8
  %86 = call i32 @free(%struct.pinfo_t* %85)
  br label %90

87:                                               ; preds = %68
  %88 = load %struct.pinfo_t*, %struct.pinfo_t** %10, align 8
  %89 = getelementptr inbounds %struct.pinfo_t, %struct.pinfo_t* %88, i32 0, i32 1
  store %struct.pinfo_t** %89, %struct.pinfo_t*** %9, align 8
  br label %64

90:                                               ; preds = %76, %64
  %91 = call i32 @LeaveCriticalSection(i32* @pinfo_cs)
  %92 = load i32, i32* %8, align 4
  %93 = call i32 @CloseHandle(i32 %92)
  %94 = load i32, i32* %5, align 4
  store i32 %94, i32* %4, align 4
  br label %99

95:                                               ; preds = %42
  %96 = load i32, i32* %8, align 4
  %97 = call i32 @CloseHandle(i32 %96)
  %98 = load i32, i32* @EINVAL, align 4
  store i32 %98, i32* @errno, align 4
  store i32 -1, i32* %4, align 4
  br label %99

99:                                               ; preds = %95, %90, %51, %34, %19
  %100 = load i32, i32* %4, align 4
  ret i32 %100
}

declare dso_local i32 @OpenProcess(i32, i32, i32) #1

declare dso_local i64 @WaitForSingleObject(i32, i32) #1

declare dso_local i32 @CloseHandle(i32) #1

declare dso_local i32 @GetExitCodeProcess(i32, i32) #1

declare dso_local i32 @EnterCriticalSection(i32*) #1

declare dso_local i32 @free(%struct.pinfo_t*) #1

declare dso_local i32 @LeaveCriticalSection(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
