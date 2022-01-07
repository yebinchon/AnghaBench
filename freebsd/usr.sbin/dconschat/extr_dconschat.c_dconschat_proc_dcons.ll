; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/dconschat/extr_dconschat.c_dconschat_proc_dcons.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/dconschat/extr_dconschat.c_dconschat_proc_dcons.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dcons_state = type { i32, %struct.dcons_port* }
%struct.dcons_port = type { i64, i32 }

@MAX_XFER = common dso_local global i32 0, align 4
@DCONS_NPORT = common dso_local global i32 0, align 4
@F_ONE_SHOT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dcons_state*)* @dconschat_proc_dcons to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dconschat_proc_dcons(%struct.dcons_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dcons_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.dcons_port*, align 8
  %10 = alloca i32, align 4
  store %struct.dcons_state* %0, %struct.dcons_state** %3, align 8
  %11 = load i32, i32* @MAX_XFER, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %7, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %8, align 8
  %15 = load %struct.dcons_state*, %struct.dcons_state** %3, align 8
  %16 = call i32 @dconschat_get_ptr(%struct.dcons_state* %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = load i32, i32* %6, align 4
  store i32 %20, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %74

21:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %22

22:                                               ; preds = %70, %21
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @DCONS_NPORT, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %73

26:                                               ; preds = %22
  %27 = load %struct.dcons_state*, %struct.dcons_state** %3, align 8
  %28 = getelementptr inbounds %struct.dcons_state, %struct.dcons_state* %27, i32 0, i32 1
  %29 = load %struct.dcons_port*, %struct.dcons_port** %28, align 8
  %30 = load i32, i32* %4, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.dcons_port, %struct.dcons_port* %29, i64 %31
  store %struct.dcons_port* %32, %struct.dcons_port** %9, align 8
  %33 = load %struct.dcons_port*, %struct.dcons_port** %9, align 8
  %34 = getelementptr inbounds %struct.dcons_port, %struct.dcons_port* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp slt i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %26
  br label %70

38:                                               ; preds = %26
  br label %39

39:                                               ; preds = %56, %38
  %40 = load %struct.dcons_state*, %struct.dcons_state** %3, align 8
  %41 = load i32, i32* %4, align 4
  %42 = trunc i64 %12 to i32
  %43 = call i32 @dconschat_read_dcons(%struct.dcons_state* %40, i32 %41, i8* %14, i32 %42)
  store i32 %43, i32* %5, align 4
  %44 = icmp sgt i32 %43, 0
  br i1 %44, label %45, label %57

45:                                               ; preds = %39
  %46 = load %struct.dcons_port*, %struct.dcons_port** %9, align 8
  %47 = getelementptr inbounds %struct.dcons_port, %struct.dcons_port* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* %5, align 4
  %50 = call i32 @dconschat_write_socket(i32 %48, i8* %14, i32 %49)
  %51 = load %struct.dcons_state*, %struct.dcons_state** %3, align 8
  %52 = call i32 @dconschat_get_ptr(%struct.dcons_state* %51)
  store i32 %52, i32* %6, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %45
  %55 = load i32, i32* %6, align 4
  store i32 %55, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %74

56:                                               ; preds = %45
  br label %39

57:                                               ; preds = %39
  %58 = load %struct.dcons_state*, %struct.dcons_state** %3, align 8
  %59 = getelementptr inbounds %struct.dcons_state, %struct.dcons_state* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @F_ONE_SHOT, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %57
  %65 = load i32, i32* %5, align 4
  %66 = icmp sle i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %64
  %68 = call i32 @dconschat_cleanup(i32 0)
  br label %69

69:                                               ; preds = %67, %64, %57
  br label %70

70:                                               ; preds = %69, %37
  %71 = load i32, i32* %4, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %4, align 4
  br label %22

73:                                               ; preds = %22
  store i32 0, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %74

74:                                               ; preds = %73, %54, %19
  %75 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %75)
  %76 = load i32, i32* %2, align 4
  ret i32 %76
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @dconschat_get_ptr(%struct.dcons_state*) #2

declare dso_local i32 @dconschat_read_dcons(%struct.dcons_state*, i32, i8*, i32) #2

declare dso_local i32 @dconschat_write_socket(i32, i8*, i32) #2

declare dso_local i32 @dconschat_cleanup(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
