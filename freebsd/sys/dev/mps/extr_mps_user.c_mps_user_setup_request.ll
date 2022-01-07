; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mps/extr_mps_user.c_mps_user_setup_request.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mps/extr_mps_user.c_mps_user_setup_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mps_user_func = type { i32 (%struct.mps_command.0*, %struct.mps_usr_command*)*, i64 }
%struct.mps_command.0 = type opaque
%struct.mps_usr_command = type { i32 }
%struct.mps_command = type { i64 }
%struct.TYPE_2__ = type { i64 }

@mps_user_func_list = common dso_local global %struct.mps_user_func* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mps_command*, %struct.mps_usr_command*)* @mps_user_setup_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mps_user_setup_request(%struct.mps_command* %0, %struct.mps_usr_command* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mps_command*, align 8
  %5 = alloca %struct.mps_usr_command*, align 8
  %6 = alloca %struct.TYPE_2__*, align 8
  %7 = alloca %struct.mps_user_func*, align 8
  store %struct.mps_command* %0, %struct.mps_command** %4, align 8
  store %struct.mps_usr_command* %1, %struct.mps_usr_command** %5, align 8
  %8 = load %struct.mps_command*, %struct.mps_command** %4, align 8
  %9 = getelementptr inbounds %struct.mps_command, %struct.mps_command* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %11, %struct.TYPE_2__** %6, align 8
  %12 = load %struct.mps_user_func*, %struct.mps_user_func** @mps_user_func_list, align 8
  store %struct.mps_user_func* %12, %struct.mps_user_func** %7, align 8
  br label %13

13:                                               ; preds = %35, %2
  %14 = load %struct.mps_user_func*, %struct.mps_user_func** %7, align 8
  %15 = getelementptr inbounds %struct.mps_user_func, %struct.mps_user_func* %14, i32 0, i32 0
  %16 = load i32 (%struct.mps_command.0*, %struct.mps_usr_command*)*, i32 (%struct.mps_command.0*, %struct.mps_usr_command*)** %15, align 8
  %17 = icmp ne i32 (%struct.mps_command.0*, %struct.mps_usr_command*)* %16, null
  br i1 %17, label %18, label %38

18:                                               ; preds = %13
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.mps_user_func*, %struct.mps_user_func** %7, align 8
  %23 = getelementptr inbounds %struct.mps_user_func, %struct.mps_user_func* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %21, %24
  br i1 %25, label %26, label %34

26:                                               ; preds = %18
  %27 = load %struct.mps_user_func*, %struct.mps_user_func** %7, align 8
  %28 = getelementptr inbounds %struct.mps_user_func, %struct.mps_user_func* %27, i32 0, i32 0
  %29 = load i32 (%struct.mps_command.0*, %struct.mps_usr_command*)*, i32 (%struct.mps_command.0*, %struct.mps_usr_command*)** %28, align 8
  %30 = load %struct.mps_command*, %struct.mps_command** %4, align 8
  %31 = bitcast %struct.mps_command* %30 to %struct.mps_command.0*
  %32 = load %struct.mps_usr_command*, %struct.mps_usr_command** %5, align 8
  %33 = call i32 %29(%struct.mps_command.0* %31, %struct.mps_usr_command* %32)
  store i32 %33, i32* %3, align 4
  br label %40

34:                                               ; preds = %18
  br label %35

35:                                               ; preds = %34
  %36 = load %struct.mps_user_func*, %struct.mps_user_func** %7, align 8
  %37 = getelementptr inbounds %struct.mps_user_func, %struct.mps_user_func* %36, i32 1
  store %struct.mps_user_func* %37, %struct.mps_user_func** %7, align 8
  br label %13

38:                                               ; preds = %13
  %39 = load i32, i32* @EINVAL, align 4
  store i32 %39, i32* %3, align 4
  br label %40

40:                                               ; preds = %38, %26
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
