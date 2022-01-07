; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_tty.c_tty_drain.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_tty.c_tty_drain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty = type { i32, i32, i32 }

@getc_inject = common dso_local global i32 0, align 4
@SBT_1S = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@EWOULDBLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty*, i32)* @tty_drain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tty_drain(%struct.tty* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tty*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.tty* %0, %struct.tty** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.tty*, %struct.tty** %4, align 8
  %10 = load i32, i32* @getc_inject, align 4
  %11 = call i64 @ttyhook_hashook(%struct.tty* %9, i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %102

14:                                               ; preds = %2
  %15 = load i32, i32* %5, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %14
  %18 = call i64 (...) @getsbinuptime()
  %19 = load i32, i32* @SBT_1S, align 4
  %20 = sext i32 %19 to i64
  %21 = add nsw i64 %18, %20
  store i64 %21, i64* %6, align 8
  br label %38

22:                                               ; preds = %14
  %23 = load %struct.tty*, %struct.tty** %4, align 8
  %24 = getelementptr inbounds %struct.tty, %struct.tty* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %22
  %28 = call i64 (...) @getsbinuptime()
  %29 = load i32, i32* @SBT_1S, align 4
  %30 = load %struct.tty*, %struct.tty** %4, align 8
  %31 = getelementptr inbounds %struct.tty, %struct.tty* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = mul nsw i32 %29, %32
  %34 = sext i32 %33 to i64
  %35 = add nsw i64 %28, %34
  store i64 %35, i64* %6, align 8
  br label %37

36:                                               ; preds = %22
  store i64 0, i64* %6, align 8
  br label %37

37:                                               ; preds = %36, %27
  br label %38

38:                                               ; preds = %37, %17
  store i32 0, i32* %8, align 4
  %39 = load %struct.tty*, %struct.tty** %4, align 8
  %40 = getelementptr inbounds %struct.tty, %struct.tty* %39, i32 0, i32 1
  %41 = call i64 @ttyoutq_bytesused(i32* %40)
  store i64 %41, i64* %7, align 8
  br label %42

42:                                               ; preds = %101, %38
  %43 = load %struct.tty*, %struct.tty** %4, align 8
  %44 = getelementptr inbounds %struct.tty, %struct.tty* %43, i32 0, i32 1
  %45 = call i64 @ttyoutq_bytesused(i32* %44)
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %42
  %48 = load %struct.tty*, %struct.tty** %4, align 8
  %49 = call i32 @ttydevsw_busy(%struct.tty* %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %47
  store i32 0, i32* %3, align 4
  br label %102

52:                                               ; preds = %47, %42
  %53 = load i32, i32* %8, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %52
  %56 = load i32, i32* %8, align 4
  store i32 %56, i32* %3, align 4
  br label %102

57:                                               ; preds = %52
  %58 = load %struct.tty*, %struct.tty** %4, align 8
  %59 = call i32 @ttydevsw_outwakeup(%struct.tty* %58)
  %60 = load %struct.tty*, %struct.tty** %4, align 8
  %61 = load %struct.tty*, %struct.tty** %4, align 8
  %62 = getelementptr inbounds %struct.tty, %struct.tty* %61, i32 0, i32 2
  %63 = load i32, i32* @hz, align 4
  %64 = sdiv i32 %63, 10
  %65 = call i32 @tty_timedwait(%struct.tty* %60, i32* %62, i32 %64)
  store i32 %65, i32* %8, align 4
  %66 = load i32, i32* %8, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %57
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* @EWOULDBLOCK, align 4
  %71 = icmp ne i32 %69, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %68
  %73 = load i32, i32* %8, align 4
  store i32 %73, i32* %3, align 4
  br label %102

74:                                               ; preds = %68, %57
  %75 = load i64, i64* %6, align 8
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %81, label %77

77:                                               ; preds = %74
  %78 = call i64 (...) @getsbinuptime()
  %79 = load i64, i64* %6, align 8
  %80 = icmp slt i64 %78, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %77, %74
  store i32 0, i32* %8, align 4
  br label %100

82:                                               ; preds = %77
  %83 = load i32, i32* %5, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %99

85:                                               ; preds = %82
  %86 = load %struct.tty*, %struct.tty** %4, align 8
  %87 = getelementptr inbounds %struct.tty, %struct.tty* %86, i32 0, i32 1
  %88 = call i64 @ttyoutq_bytesused(i32* %87)
  %89 = load i64, i64* %7, align 8
  %90 = icmp ult i64 %88, %89
  br i1 %90, label %91, label %99

91:                                               ; preds = %85
  store i32 0, i32* %8, align 4
  %92 = load i32, i32* @SBT_1S, align 4
  %93 = sext i32 %92 to i64
  %94 = load i64, i64* %6, align 8
  %95 = add nsw i64 %94, %93
  store i64 %95, i64* %6, align 8
  %96 = load %struct.tty*, %struct.tty** %4, align 8
  %97 = getelementptr inbounds %struct.tty, %struct.tty* %96, i32 0, i32 1
  %98 = call i64 @ttyoutq_bytesused(i32* %97)
  store i64 %98, i64* %7, align 8
  br label %99

99:                                               ; preds = %91, %85, %82
  br label %100

100:                                              ; preds = %99, %81
  br label %101

101:                                              ; preds = %100
  br label %42

102:                                              ; preds = %72, %55, %51, %13
  %103 = load i32, i32* %3, align 4
  ret i32 %103
}

declare dso_local i64 @ttyhook_hashook(%struct.tty*, i32) #1

declare dso_local i64 @getsbinuptime(...) #1

declare dso_local i64 @ttyoutq_bytesused(i32*) #1

declare dso_local i32 @ttydevsw_busy(%struct.tty*) #1

declare dso_local i32 @ttydevsw_outwakeup(%struct.tty*) #1

declare dso_local i32 @tty_timedwait(%struct.tty*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
