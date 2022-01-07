; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_proc.c_pget.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_proc.c_pget.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc = type { i64, i32 }

@curproc = common dso_local global %struct.proc* null, align 8
@PID_MAX = common dso_local global i64 0, align 8
@PGET_NOTWEXIT = common dso_local global i32 0, align 4
@PGET_NOTID = common dso_local global i32 0, align 4
@ESRCH = common dso_local global i32 0, align 4
@PGET_CANSEE = common dso_local global i32 0, align 4
@curthread = common dso_local global i32 0, align 4
@PGET_CANDEBUG = common dso_local global i32 0, align 4
@PGET_ISCURRENT = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@P_WEXIT = common dso_local global i32 0, align 4
@PGET_NOTINEXEC = common dso_local global i32 0, align 4
@P_INEXEC = common dso_local global i32 0, align 4
@PGET_HOLD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pget(i64 %0, i32 %1, %struct.proc** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.proc**, align 8
  %8 = alloca %struct.proc*, align 8
  %9 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.proc** %2, %struct.proc*** %7, align 8
  %10 = load %struct.proc*, %struct.proc** @curproc, align 8
  store %struct.proc* %10, %struct.proc** %8, align 8
  %11 = load %struct.proc*, %struct.proc** %8, align 8
  %12 = getelementptr inbounds %struct.proc, %struct.proc* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* %5, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load %struct.proc*, %struct.proc** %8, align 8
  %18 = call i32 @PROC_LOCK(%struct.proc* %17)
  br label %63

19:                                               ; preds = %3
  store %struct.proc* null, %struct.proc** %8, align 8
  %20 = load i64, i64* %5, align 8
  %21 = load i64, i64* @PID_MAX, align 8
  %22 = icmp sle i64 %20, %21
  br i1 %22, label %23, label %35

23:                                               ; preds = %19
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @PGET_NOTWEXIT, align 4
  %26 = and i32 %24, %25
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = load i64, i64* %5, align 8
  %30 = call %struct.proc* @pfind_any(i64 %29)
  store %struct.proc* %30, %struct.proc** %8, align 8
  br label %34

31:                                               ; preds = %23
  %32 = load i64, i64* %5, align 8
  %33 = call %struct.proc* @pfind(i64 %32)
  store %struct.proc* %33, %struct.proc** %8, align 8
  br label %34

34:                                               ; preds = %31, %28
  br label %44

35:                                               ; preds = %19
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @PGET_NOTID, align 4
  %38 = and i32 %36, %37
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = load i64, i64* %5, align 8
  %42 = call %struct.proc* @pfind_tid(i64 %41)
  store %struct.proc* %42, %struct.proc** %8, align 8
  br label %43

43:                                               ; preds = %40, %35
  br label %44

44:                                               ; preds = %43, %34
  %45 = load %struct.proc*, %struct.proc** %8, align 8
  %46 = icmp eq %struct.proc* %45, null
  br i1 %46, label %47, label %49

47:                                               ; preds = %44
  %48 = load i32, i32* @ESRCH, align 4
  store i32 %48, i32* %4, align 4
  br label %132

49:                                               ; preds = %44
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* @PGET_CANSEE, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %62

54:                                               ; preds = %49
  %55 = load i32, i32* @curthread, align 4
  %56 = load %struct.proc*, %struct.proc** %8, align 8
  %57 = call i32 @p_cansee(i32 %55, %struct.proc* %56)
  store i32 %57, i32* %9, align 4
  %58 = load i32, i32* %9, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %54
  br label %128

61:                                               ; preds = %54
  br label %62

62:                                               ; preds = %61, %49
  br label %63

63:                                               ; preds = %62, %16
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* @PGET_CANDEBUG, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %76

68:                                               ; preds = %63
  %69 = load i32, i32* @curthread, align 4
  %70 = load %struct.proc*, %struct.proc** %8, align 8
  %71 = call i32 @p_candebug(i32 %69, %struct.proc* %70)
  store i32 %71, i32* %9, align 4
  %72 = load i32, i32* %9, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %68
  br label %128

75:                                               ; preds = %68
  br label %76

76:                                               ; preds = %75, %63
  %77 = load i32, i32* %6, align 4
  %78 = load i32, i32* @PGET_ISCURRENT, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %76
  %82 = load %struct.proc*, %struct.proc** @curproc, align 8
  %83 = load %struct.proc*, %struct.proc** %8, align 8
  %84 = icmp ne %struct.proc* %82, %83
  br i1 %84, label %85, label %87

85:                                               ; preds = %81
  %86 = load i32, i32* @EPERM, align 4
  store i32 %86, i32* %9, align 4
  br label %128

87:                                               ; preds = %81, %76
  %88 = load i32, i32* %6, align 4
  %89 = load i32, i32* @PGET_NOTWEXIT, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %101

92:                                               ; preds = %87
  %93 = load %struct.proc*, %struct.proc** %8, align 8
  %94 = getelementptr inbounds %struct.proc, %struct.proc* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @P_WEXIT, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %92
  %100 = load i32, i32* @ESRCH, align 4
  store i32 %100, i32* %9, align 4
  br label %128

101:                                              ; preds = %92, %87
  %102 = load i32, i32* %6, align 4
  %103 = load i32, i32* @PGET_NOTINEXEC, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %115

106:                                              ; preds = %101
  %107 = load %struct.proc*, %struct.proc** %8, align 8
  %108 = getelementptr inbounds %struct.proc, %struct.proc* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* @P_INEXEC, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %106
  %114 = load i32, i32* @ESRCH, align 4
  store i32 %114, i32* %9, align 4
  br label %128

115:                                              ; preds = %106, %101
  %116 = load i32, i32* %6, align 4
  %117 = load i32, i32* @PGET_HOLD, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %125

120:                                              ; preds = %115
  %121 = load %struct.proc*, %struct.proc** %8, align 8
  %122 = call i32 @_PHOLD(%struct.proc* %121)
  %123 = load %struct.proc*, %struct.proc** %8, align 8
  %124 = call i32 @PROC_UNLOCK(%struct.proc* %123)
  br label %125

125:                                              ; preds = %120, %115
  %126 = load %struct.proc*, %struct.proc** %8, align 8
  %127 = load %struct.proc**, %struct.proc*** %7, align 8
  store %struct.proc* %126, %struct.proc** %127, align 8
  store i32 0, i32* %4, align 4
  br label %132

128:                                              ; preds = %113, %99, %85, %74, %60
  %129 = load %struct.proc*, %struct.proc** %8, align 8
  %130 = call i32 @PROC_UNLOCK(%struct.proc* %129)
  %131 = load i32, i32* %9, align 4
  store i32 %131, i32* %4, align 4
  br label %132

132:                                              ; preds = %128, %125, %47
  %133 = load i32, i32* %4, align 4
  ret i32 %133
}

declare dso_local i32 @PROC_LOCK(%struct.proc*) #1

declare dso_local %struct.proc* @pfind_any(i64) #1

declare dso_local %struct.proc* @pfind(i64) #1

declare dso_local %struct.proc* @pfind_tid(i64) #1

declare dso_local i32 @p_cansee(i32, %struct.proc*) #1

declare dso_local i32 @p_candebug(i32, %struct.proc*) #1

declare dso_local i32 @_PHOLD(%struct.proc*) #1

declare dso_local i32 @PROC_UNLOCK(%struct.proc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
