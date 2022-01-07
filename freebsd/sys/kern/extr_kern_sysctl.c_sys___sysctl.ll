; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_sysctl.c_sys___sysctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_sysctl.c_sys___sysctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.sysctl_args = type { i32, i32, i32, i32, i32, i32 }

@CTL_MAXNAME = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sys___sysctl(%struct.thread* %0, %struct.sysctl_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.sysctl_args*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.sysctl_args* %1, %struct.sysctl_args** %5, align 8
  %12 = load i32, i32* @CTL_MAXNAME, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %8, align 8
  %15 = alloca i32, i64 %13, align 16
  store i64 %13, i64* %9, align 8
  %16 = load %struct.sysctl_args*, %struct.sysctl_args** %5, align 8
  %17 = getelementptr inbounds %struct.sysctl_args, %struct.sysctl_args* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @CTL_MAXNAME, align 4
  %20 = icmp sgt i32 %18, %19
  br i1 %20, label %26, label %21

21:                                               ; preds = %2
  %22 = load %struct.sysctl_args*, %struct.sysctl_args** %5, align 8
  %23 = getelementptr inbounds %struct.sysctl_args, %struct.sysctl_args* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp slt i32 %24, 2
  br i1 %25, label %26, label %28

26:                                               ; preds = %21, %2
  %27 = load i32, i32* @EINVAL, align 4
  store i32 %27, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %87

28:                                               ; preds = %21
  %29 = load %struct.sysctl_args*, %struct.sysctl_args** %5, align 8
  %30 = getelementptr inbounds %struct.sysctl_args, %struct.sysctl_args* %29, i32 0, i32 5
  %31 = load i32, i32* %30, align 4
  %32 = bitcast i32* %15 to i32**
  %33 = load %struct.sysctl_args*, %struct.sysctl_args** %5, align 8
  %34 = getelementptr inbounds %struct.sysctl_args, %struct.sysctl_args* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = sext i32 %35 to i64
  %37 = mul i64 %36, 4
  %38 = trunc i64 %37 to i32
  %39 = call i32 @copyin(i32 %31, i32** %32, i32 %38)
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %28
  %43 = load i32, i32* %6, align 4
  store i32 %43, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %87

44:                                               ; preds = %28
  %45 = load %struct.thread*, %struct.thread** %4, align 8
  %46 = load %struct.sysctl_args*, %struct.sysctl_args** %5, align 8
  %47 = getelementptr inbounds %struct.sysctl_args, %struct.sysctl_args* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.sysctl_args*, %struct.sysctl_args** %5, align 8
  %50 = getelementptr inbounds %struct.sysctl_args, %struct.sysctl_args* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.sysctl_args*, %struct.sysctl_args** %5, align 8
  %53 = getelementptr inbounds %struct.sysctl_args, %struct.sysctl_args* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.sysctl_args*, %struct.sysctl_args** %5, align 8
  %56 = getelementptr inbounds %struct.sysctl_args, %struct.sysctl_args* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.sysctl_args*, %struct.sysctl_args** %5, align 8
  %59 = getelementptr inbounds %struct.sysctl_args, %struct.sysctl_args* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @userland_sysctl(%struct.thread* %45, i32* %15, i32 %48, i32 %51, i32 %54, i32 0, i32 %57, i32 %60, i64* %10, i32 0)
  store i32 %61, i32* %6, align 4
  %62 = load i32, i32* %6, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %44
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* @ENOMEM, align 4
  %67 = icmp ne i32 %65, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %64
  %69 = load i32, i32* %6, align 4
  store i32 %69, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %87

70:                                               ; preds = %64, %44
  %71 = load %struct.sysctl_args*, %struct.sysctl_args** %5, align 8
  %72 = getelementptr inbounds %struct.sysctl_args, %struct.sysctl_args* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %85

75:                                               ; preds = %70
  %76 = load %struct.sysctl_args*, %struct.sysctl_args** %5, align 8
  %77 = getelementptr inbounds %struct.sysctl_args, %struct.sysctl_args* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @copyout(i64* %10, i32 %78, i32 8)
  store i32 %79, i32* %7, align 4
  %80 = load i32, i32* %7, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %75
  %83 = load i32, i32* %7, align 4
  store i32 %83, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %87

84:                                               ; preds = %75
  br label %85

85:                                               ; preds = %84, %70
  %86 = load i32, i32* %6, align 4
  store i32 %86, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %87

87:                                               ; preds = %85, %82, %68, %42, %26
  %88 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %88)
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @copyin(i32, i32**, i32) #2

declare dso_local i32 @userland_sysctl(%struct.thread*, i32*, i32, i32, i32, i32, i32, i32, i64*, i32) #2

declare dso_local i32 @copyout(i64*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
