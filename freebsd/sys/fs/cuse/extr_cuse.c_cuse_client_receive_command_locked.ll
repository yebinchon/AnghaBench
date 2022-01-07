; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/cuse/extr_cuse.c_cuse_client_receive_command_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/cuse/extr_cuse.c_cuse_client_receive_command_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32* }
%struct.cuse_client_command = type { i64, i32, i64, i32, i32*, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }

@curthread = common dso_local global %struct.TYPE_5__* null, align 8
@CUSE_ERR_OTHER = common dso_local global i32 0, align 4
@CUSE_CMD_NONE = common dso_local global i64 0, align 8
@cuse_mtx = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cuse_client_command*, i32*, i32)* @cuse_client_receive_command_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cuse_client_receive_command_locked(%struct.cuse_client_command* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.cuse_client_command*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.cuse_client_command* %0, %struct.cuse_client_command** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** @curthread, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = load %struct.cuse_client_command*, %struct.cuse_client_command** %4, align 8
  %12 = getelementptr inbounds %struct.cuse_client_command, %struct.cuse_client_command* %11, i32 0, i32 4
  store i32* %10, i32** %12, align 8
  %13 = load %struct.cuse_client_command*, %struct.cuse_client_command** %4, align 8
  %14 = getelementptr inbounds %struct.cuse_client_command, %struct.cuse_client_command* %13, i32 0, i32 5
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %16 = call i64 @CUSE_CLIENT_CLOSING(%struct.TYPE_6__* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %27, label %18

18:                                               ; preds = %3
  %19 = load %struct.cuse_client_command*, %struct.cuse_client_command** %4, align 8
  %20 = getelementptr inbounds %struct.cuse_client_command, %struct.cuse_client_command* %19, i32 0, i32 5
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %18, %3
  %28 = load i32, i32* @CUSE_ERR_OTHER, align 4
  store i32 %28, i32* %7, align 4
  br label %81

29:                                               ; preds = %18
  br label %30

30:                                               ; preds = %70, %29
  %31 = load %struct.cuse_client_command*, %struct.cuse_client_command** %4, align 8
  %32 = getelementptr inbounds %struct.cuse_client_command, %struct.cuse_client_command* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @CUSE_CMD_NONE, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %71

36:                                               ; preds = %30
  %37 = load i32, i32* %7, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %36
  %40 = load %struct.cuse_client_command*, %struct.cuse_client_command** %4, align 8
  %41 = getelementptr inbounds %struct.cuse_client_command, %struct.cuse_client_command* %40, i32 0, i32 3
  %42 = call i32 @cv_wait(i32* %41, i32* @cuse_mtx)
  br label %53

43:                                               ; preds = %36
  %44 = load %struct.cuse_client_command*, %struct.cuse_client_command** %4, align 8
  %45 = getelementptr inbounds %struct.cuse_client_command, %struct.cuse_client_command* %44, i32 0, i32 3
  %46 = call i32 @cv_wait_sig(i32* %45, i32* @cuse_mtx)
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %7, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %43
  %50 = load %struct.cuse_client_command*, %struct.cuse_client_command** %4, align 8
  %51 = call i32 @cuse_client_got_signal(%struct.cuse_client_command* %50)
  br label %52

52:                                               ; preds = %49, %43
  br label %53

53:                                               ; preds = %52, %39
  %54 = load %struct.cuse_client_command*, %struct.cuse_client_command** %4, align 8
  %55 = getelementptr inbounds %struct.cuse_client_command, %struct.cuse_client_command* %54, i32 0, i32 5
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %55, align 8
  %57 = call i64 @CUSE_CLIENT_CLOSING(%struct.TYPE_6__* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %68, label %59

59:                                               ; preds = %53
  %60 = load %struct.cuse_client_command*, %struct.cuse_client_command** %4, align 8
  %61 = getelementptr inbounds %struct.cuse_client_command, %struct.cuse_client_command* %60, i32 0, i32 5
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %59, %53
  %69 = load i32, i32* @CUSE_ERR_OTHER, align 4
  store i32 %69, i32* %7, align 4
  br label %81

70:                                               ; preds = %59
  br label %30

71:                                               ; preds = %30
  %72 = load %struct.cuse_client_command*, %struct.cuse_client_command** %4, align 8
  %73 = getelementptr inbounds %struct.cuse_client_command, %struct.cuse_client_command* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  store i32 %74, i32* %7, align 4
  %75 = load i64, i64* @CUSE_CMD_NONE, align 8
  %76 = load %struct.cuse_client_command*, %struct.cuse_client_command** %4, align 8
  %77 = getelementptr inbounds %struct.cuse_client_command, %struct.cuse_client_command* %76, i32 0, i32 0
  store i64 %75, i64* %77, align 8
  %78 = load %struct.cuse_client_command*, %struct.cuse_client_command** %4, align 8
  %79 = getelementptr inbounds %struct.cuse_client_command, %struct.cuse_client_command* %78, i32 0, i32 3
  %80 = call i32 @cv_signal(i32* %79)
  br label %81

81:                                               ; preds = %71, %68, %27
  %82 = load %struct.cuse_client_command*, %struct.cuse_client_command** %4, align 8
  %83 = getelementptr inbounds %struct.cuse_client_command, %struct.cuse_client_command* %82, i32 0, i32 4
  store i32* null, i32** %83, align 8
  br label %84

84:                                               ; preds = %89, %81
  %85 = load %struct.cuse_client_command*, %struct.cuse_client_command** %4, align 8
  %86 = getelementptr inbounds %struct.cuse_client_command, %struct.cuse_client_command* %85, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %84
  %90 = load %struct.cuse_client_command*, %struct.cuse_client_command** %4, align 8
  %91 = getelementptr inbounds %struct.cuse_client_command, %struct.cuse_client_command* %90, i32 0, i32 3
  %92 = call i32 @cv_wait(i32* %91, i32* @cuse_mtx)
  br label %84

93:                                               ; preds = %84
  %94 = load i32, i32* %7, align 4
  ret i32 %94
}

declare dso_local i64 @CUSE_CLIENT_CLOSING(%struct.TYPE_6__*) #1

declare dso_local i32 @cv_wait(i32*, i32*) #1

declare dso_local i32 @cv_wait_sig(i32*, i32*) #1

declare dso_local i32 @cuse_client_got_signal(%struct.cuse_client_command*) #1

declare dso_local i32 @cv_signal(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
