; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_umtx.c_do_wait.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_umtx.c_do_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { %struct.umtx_q* }
%struct.umtx_q = type { i32, i32 }
%struct._umtx_time = type { i32 }
%struct.abs_timeout = type { i32 }

@TYPE_SIMPLE_WAIT = common dso_local global i32 0, align 4
@THREAD_SHARE = common dso_local global i32 0, align 4
@AUTO_SHARE = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"uwait\00", align 1
@UQF_UMTXQ = common dso_local global i32 0, align 4
@ERESTART = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thread*, i8*, i64, %struct._umtx_time*, i32, i32)* @do_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_wait(%struct.thread* %0, i8* %1, i64 %2, %struct._umtx_time* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.thread*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct._umtx_time*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.abs_timeout, align 4
  %15 = alloca %struct.umtx_q*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %8, align 8
  store i8* %1, i8** %9, align 8
  store i64 %2, i64* %10, align 8
  store %struct._umtx_time* %3, %struct._umtx_time** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 0, i32* %18, align 4
  %19 = load %struct.thread*, %struct.thread** %8, align 8
  %20 = getelementptr inbounds %struct.thread, %struct.thread* %19, i32 0, i32 0
  %21 = load %struct.umtx_q*, %struct.umtx_q** %20, align 8
  store %struct.umtx_q* %21, %struct.umtx_q** %15, align 8
  %22 = load i8*, i8** %9, align 8
  %23 = load i32, i32* @TYPE_SIMPLE_WAIT, align 4
  %24 = load i32, i32* %13, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %6
  %27 = load i32, i32* @THREAD_SHARE, align 4
  br label %30

28:                                               ; preds = %6
  %29 = load i32, i32* @AUTO_SHARE, align 4
  br label %30

30:                                               ; preds = %28, %26
  %31 = phi i32 [ %27, %26 ], [ %29, %28 ]
  %32 = load %struct.umtx_q*, %struct.umtx_q** %15, align 8
  %33 = getelementptr inbounds %struct.umtx_q, %struct.umtx_q* %32, i32 0, i32 1
  %34 = call i32 @umtx_key_get(i8* %22, i32 %23, i32 %31, i32* %33)
  store i32 %34, i32* %18, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %30
  %37 = load i32, i32* %18, align 4
  store i32 %37, i32* %7, align 4
  br label %129

38:                                               ; preds = %30
  %39 = load %struct._umtx_time*, %struct._umtx_time** %11, align 8
  %40 = icmp ne %struct._umtx_time* %39, null
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = load %struct._umtx_time*, %struct._umtx_time** %11, align 8
  %43 = call i32 @abs_timeout_init2(%struct.abs_timeout* %14, %struct._umtx_time* %42)
  br label %44

44:                                               ; preds = %41, %38
  %45 = load %struct.umtx_q*, %struct.umtx_q** %15, align 8
  %46 = getelementptr inbounds %struct.umtx_q, %struct.umtx_q* %45, i32 0, i32 1
  %47 = call i32 @umtxq_lock(i32* %46)
  %48 = load %struct.umtx_q*, %struct.umtx_q** %15, align 8
  %49 = call i32 @umtxq_insert(%struct.umtx_q* %48)
  %50 = load %struct.umtx_q*, %struct.umtx_q** %15, align 8
  %51 = getelementptr inbounds %struct.umtx_q, %struct.umtx_q* %50, i32 0, i32 1
  %52 = call i32 @umtxq_unlock(i32* %51)
  %53 = load i32, i32* %12, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %63

55:                                               ; preds = %44
  %56 = load i8*, i8** %9, align 8
  %57 = call i32 @fueword(i8* %56, i64* %16)
  store i32 %57, i32* %18, align 4
  %58 = load i32, i32* %18, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %55
  %61 = load i32, i32* @EFAULT, align 4
  store i32 %61, i32* %18, align 4
  br label %62

62:                                               ; preds = %60, %55
  br label %73

63:                                               ; preds = %44
  %64 = load i8*, i8** %9, align 8
  %65 = call i32 @fueword32(i8* %64, i64* %17)
  store i32 %65, i32* %18, align 4
  %66 = load i32, i32* %18, align 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %63
  %69 = load i64, i64* %17, align 8
  store i64 %69, i64* %16, align 8
  br label %72

70:                                               ; preds = %63
  %71 = load i32, i32* @EFAULT, align 4
  store i32 %71, i32* %18, align 4
  br label %72

72:                                               ; preds = %70, %68
  br label %73

73:                                               ; preds = %72, %62
  %74 = load %struct.umtx_q*, %struct.umtx_q** %15, align 8
  %75 = getelementptr inbounds %struct.umtx_q, %struct.umtx_q* %74, i32 0, i32 1
  %76 = call i32 @umtxq_lock(i32* %75)
  %77 = load i32, i32* %18, align 4
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %104

79:                                               ; preds = %73
  %80 = load i64, i64* %16, align 8
  %81 = load i64, i64* %10, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %92

83:                                               ; preds = %79
  %84 = load %struct.umtx_q*, %struct.umtx_q** %15, align 8
  %85 = load %struct._umtx_time*, %struct._umtx_time** %11, align 8
  %86 = icmp eq %struct._umtx_time* %85, null
  br i1 %86, label %87, label %88

87:                                               ; preds = %83
  br label %89

88:                                               ; preds = %83
  br label %89

89:                                               ; preds = %88, %87
  %90 = phi %struct.abs_timeout* [ null, %87 ], [ %14, %88 ]
  %91 = call i32 @umtxq_sleep(%struct.umtx_q* %84, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), %struct.abs_timeout* %90)
  store i32 %91, i32* %18, align 4
  br label %92

92:                                               ; preds = %89, %79
  %93 = load %struct.umtx_q*, %struct.umtx_q** %15, align 8
  %94 = getelementptr inbounds %struct.umtx_q, %struct.umtx_q* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @UQF_UMTXQ, align 4
  %97 = and i32 %95, %96
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %92
  store i32 0, i32* %18, align 4
  br label %103

100:                                              ; preds = %92
  %101 = load %struct.umtx_q*, %struct.umtx_q** %15, align 8
  %102 = call i32 @umtxq_remove(%struct.umtx_q* %101)
  br label %103

103:                                              ; preds = %100, %99
  br label %115

104:                                              ; preds = %73
  %105 = load %struct.umtx_q*, %struct.umtx_q** %15, align 8
  %106 = getelementptr inbounds %struct.umtx_q, %struct.umtx_q* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @UQF_UMTXQ, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %104
  %112 = load %struct.umtx_q*, %struct.umtx_q** %15, align 8
  %113 = call i32 @umtxq_remove(%struct.umtx_q* %112)
  br label %114

114:                                              ; preds = %111, %104
  br label %115

115:                                              ; preds = %114, %103
  %116 = load %struct.umtx_q*, %struct.umtx_q** %15, align 8
  %117 = getelementptr inbounds %struct.umtx_q, %struct.umtx_q* %116, i32 0, i32 1
  %118 = call i32 @umtxq_unlock(i32* %117)
  %119 = load %struct.umtx_q*, %struct.umtx_q** %15, align 8
  %120 = getelementptr inbounds %struct.umtx_q, %struct.umtx_q* %119, i32 0, i32 1
  %121 = call i32 @umtx_key_release(i32* %120)
  %122 = load i32, i32* %18, align 4
  %123 = load i32, i32* @ERESTART, align 4
  %124 = icmp eq i32 %122, %123
  br i1 %124, label %125, label %127

125:                                              ; preds = %115
  %126 = load i32, i32* @EINTR, align 4
  store i32 %126, i32* %18, align 4
  br label %127

127:                                              ; preds = %125, %115
  %128 = load i32, i32* %18, align 4
  store i32 %128, i32* %7, align 4
  br label %129

129:                                              ; preds = %127, %36
  %130 = load i32, i32* %7, align 4
  ret i32 %130
}

declare dso_local i32 @umtx_key_get(i8*, i32, i32, i32*) #1

declare dso_local i32 @abs_timeout_init2(%struct.abs_timeout*, %struct._umtx_time*) #1

declare dso_local i32 @umtxq_lock(i32*) #1

declare dso_local i32 @umtxq_insert(%struct.umtx_q*) #1

declare dso_local i32 @umtxq_unlock(i32*) #1

declare dso_local i32 @fueword(i8*, i64*) #1

declare dso_local i32 @fueword32(i8*, i64*) #1

declare dso_local i32 @umtxq_sleep(%struct.umtx_q*, i8*, %struct.abs_timeout*) #1

declare dso_local i32 @umtxq_remove(%struct.umtx_q*) #1

declare dso_local i32 @umtx_key_release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
