; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/mpsutil/extr_mps_cmd.c_mps_user_command.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/mpsutil/extr_mps_cmd.c_mps_user_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mps_usr_command = type { i32, i8*, i8*, i8*, i8*, i8*, i8* }

@is_mps = common dso_local global i64 0, align 8
@MPSIO_MPS_COMMAND = common dso_local global i32 0, align 4
@MPRIO_MPR_COMMAND = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mps_user_command(i32 %0, i8* %1, i8* %2, i8* %3, i8* %4, i8* %5, i32 %6, i8* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca %struct.mps_usr_command, align 8
  store i32 %0, i32* %10, align 4
  store i8* %1, i8** %11, align 8
  store i8* %2, i8** %12, align 8
  store i8* %3, i8** %13, align 8
  store i8* %4, i8** %14, align 8
  store i8* %5, i8** %15, align 8
  store i32 %6, i32* %16, align 4
  store i8* %7, i8** %17, align 8
  %19 = call i32 @bzero(%struct.mps_usr_command* %18, i32 56)
  %20 = load i8*, i8** %11, align 8
  %21 = getelementptr inbounds %struct.mps_usr_command, %struct.mps_usr_command* %18, i32 0, i32 6
  store i8* %20, i8** %21, align 8
  %22 = load i8*, i8** %12, align 8
  %23 = getelementptr inbounds %struct.mps_usr_command, %struct.mps_usr_command* %18, i32 0, i32 5
  store i8* %22, i8** %23, align 8
  %24 = load i8*, i8** %13, align 8
  %25 = getelementptr inbounds %struct.mps_usr_command, %struct.mps_usr_command* %18, i32 0, i32 4
  store i8* %24, i8** %25, align 8
  %26 = load i8*, i8** %14, align 8
  %27 = getelementptr inbounds %struct.mps_usr_command, %struct.mps_usr_command* %18, i32 0, i32 3
  store i8* %26, i8** %27, align 8
  %28 = load i8*, i8** %15, align 8
  %29 = getelementptr inbounds %struct.mps_usr_command, %struct.mps_usr_command* %18, i32 0, i32 2
  store i8* %28, i8** %29, align 8
  %30 = load i32, i32* %16, align 4
  %31 = getelementptr inbounds %struct.mps_usr_command, %struct.mps_usr_command* %18, i32 0, i32 0
  store i32 %30, i32* %31, align 8
  %32 = load i8*, i8** %17, align 8
  %33 = getelementptr inbounds %struct.mps_usr_command, %struct.mps_usr_command* %18, i32 0, i32 1
  store i8* %32, i8** %33, align 8
  %34 = load i32, i32* %10, align 4
  %35 = load i64, i64* @is_mps, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %8
  %38 = load i32, i32* @MPSIO_MPS_COMMAND, align 4
  br label %41

39:                                               ; preds = %8
  %40 = load i32, i32* @MPRIO_MPR_COMMAND, align 4
  br label %41

41:                                               ; preds = %39, %37
  %42 = phi i32 [ %38, %37 ], [ %40, %39 ]
  %43 = call i64 @ioctl(i32 %34, i32 %42, %struct.mps_usr_command* %18)
  %44 = icmp slt i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %41
  %46 = load i32, i32* @errno, align 4
  store i32 %46, i32* %9, align 4
  br label %48

47:                                               ; preds = %41
  store i32 0, i32* %9, align 4
  br label %48

48:                                               ; preds = %47, %45
  %49 = load i32, i32* %9, align 4
  ret i32 %49
}

declare dso_local i32 @bzero(%struct.mps_usr_command*, i32) #1

declare dso_local i64 @ioctl(i32, i32, %struct.mps_usr_command*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
