; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/iscsictl/extr_iscsictl.c_kernel_wait.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/iscsictl/extr_iscsictl.c_kernel_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_session_state = type { i32 }
%struct.iscsi_session_list = type { i32, %struct.iscsi_session_state* }

@.str = private unnamed_addr constant [8 x i8] c"realloc\00", align 1
@ISCSISLIST = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EMSGSIZE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"ISCSISLIST\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @kernel_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kernel_wait(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.iscsi_session_state*, align 8
  %7 = alloca %struct.iscsi_session_state*, align 8
  %8 = alloca %struct.iscsi_session_list, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store %struct.iscsi_session_state* null, %struct.iscsi_session_state** %6, align 8
  store i32 1, i32* %10, align 4
  br label %13

13:                                               ; preds = %85, %2
  br label %14

14:                                               ; preds = %40, %13
  %15 = load %struct.iscsi_session_state*, %struct.iscsi_session_state** %6, align 8
  %16 = load i32, i32* %10, align 4
  %17 = zext i32 %16 to i64
  %18 = mul i64 %17, 4
  %19 = trunc i64 %18 to i32
  %20 = call %struct.iscsi_session_state* @realloc(%struct.iscsi_session_state* %15, i32 %19)
  store %struct.iscsi_session_state* %20, %struct.iscsi_session_state** %6, align 8
  %21 = load %struct.iscsi_session_state*, %struct.iscsi_session_state** %6, align 8
  %22 = icmp eq %struct.iscsi_session_state* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %14
  %24 = call i32 @xo_err(i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  br label %25

25:                                               ; preds = %23, %14
  %26 = call i32 @memset(%struct.iscsi_session_list* %8, i32 0, i32 16)
  %27 = load i32, i32* %10, align 4
  %28 = getelementptr inbounds %struct.iscsi_session_list, %struct.iscsi_session_list* %8, i32 0, i32 0
  store i32 %27, i32* %28, align 8
  %29 = load %struct.iscsi_session_state*, %struct.iscsi_session_state** %6, align 8
  %30 = getelementptr inbounds %struct.iscsi_session_list, %struct.iscsi_session_list* %8, i32 0, i32 1
  store %struct.iscsi_session_state* %29, %struct.iscsi_session_state** %30, align 8
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* @ISCSISLIST, align 4
  %33 = call i32 @ioctl(i32 %31, i32 %32, %struct.iscsi_session_list* %8)
  store i32 %33, i32* %12, align 4
  %34 = load i32, i32* %12, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %25
  %37 = load i64, i64* @errno, align 8
  %38 = load i64, i64* @EMSGSIZE, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %36
  %41 = load i32, i32* %10, align 4
  %42 = mul i32 %41, 4
  store i32 %42, i32* %10, align 4
  br label %14

43:                                               ; preds = %36, %25
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %12, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %44
  %48 = call i32 @xo_warn(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %49 = load i32, i32* %12, align 4
  store i32 %49, i32* %3, align 4
  br label %86

50:                                               ; preds = %44
  store i32 1, i32* %11, align 4
  store i32 0, i32* %9, align 4
  br label %51

51:                                               ; preds = %67, %50
  %52 = load i32, i32* %9, align 4
  %53 = getelementptr inbounds %struct.iscsi_session_list, %struct.iscsi_session_list* %8, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp ult i32 %52, %54
  br i1 %55, label %56, label %70

56:                                               ; preds = %51
  %57 = load %struct.iscsi_session_state*, %struct.iscsi_session_state** %6, align 8
  %58 = load i32, i32* %9, align 4
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds %struct.iscsi_session_state, %struct.iscsi_session_state* %57, i64 %59
  store %struct.iscsi_session_state* %60, %struct.iscsi_session_state** %7, align 8
  %61 = load %struct.iscsi_session_state*, %struct.iscsi_session_state** %7, align 8
  %62 = getelementptr inbounds %struct.iscsi_session_state, %struct.iscsi_session_state* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %56
  store i32 0, i32* %11, align 4
  br label %70

66:                                               ; preds = %56
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %9, align 4
  %69 = add i32 %68, 1
  store i32 %69, i32* %9, align 4
  br label %51

70:                                               ; preds = %65, %51
  %71 = load i32, i32* %11, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %70
  store i32 0, i32* %3, align 4
  br label %86

74:                                               ; preds = %70
  %75 = call i32 @sleep(i32 1)
  %76 = load i32, i32* %5, align 4
  %77 = icmp sgt i32 %76, 0
  br i1 %77, label %78, label %85

78:                                               ; preds = %74
  %79 = load i32, i32* %5, align 4
  %80 = add nsw i32 %79, -1
  store i32 %80, i32* %5, align 4
  %81 = load i32, i32* %5, align 4
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %78
  store i32 1, i32* %3, align 4
  br label %86

84:                                               ; preds = %78
  br label %85

85:                                               ; preds = %84, %74
  br label %13

86:                                               ; preds = %83, %73, %47
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

declare dso_local %struct.iscsi_session_state* @realloc(%struct.iscsi_session_state*, i32) #1

declare dso_local i32 @xo_err(i32, i8*) #1

declare dso_local i32 @memset(%struct.iscsi_session_list*, i32, i32) #1

declare dso_local i32 @ioctl(i32, i32, %struct.iscsi_session_list*) #1

declare dso_local i32 @xo_warn(i8*) #1

declare dso_local i32 @sleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
