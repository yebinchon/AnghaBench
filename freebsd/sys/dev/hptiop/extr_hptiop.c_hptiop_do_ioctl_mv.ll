; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hptiop/extr_hptiop.c_hptiop_do_ioctl_mv.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hptiop/extr_hptiop.c_hptiop_do_ioctl_mv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hpt_iop_hba = type { i32, i64 }
%struct.hpt_iop_ioctl_param = type { i64, i32, i32, i64, i64, i64 }
%struct.hpt_iop_request_ioctl_command = type { i32, i32* }

@HPT_IOCTL_MAGIC = common dso_local global i64 0, align 8
@HPT_IOCTL_MAGIC32 = common dso_local global i64 0, align 8
@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hpt_iop_hba*, %struct.hpt_iop_ioctl_param*)* @hptiop_do_ioctl_mv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hptiop_do_ioctl_mv(%struct.hpt_iop_hba* %0, %struct.hpt_iop_ioctl_param* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hpt_iop_hba*, align 8
  %5 = alloca %struct.hpt_iop_ioctl_param*, align 8
  %6 = alloca %struct.hpt_iop_request_ioctl_command*, align 8
  store %struct.hpt_iop_hba* %0, %struct.hpt_iop_hba** %4, align 8
  store %struct.hpt_iop_ioctl_param* %1, %struct.hpt_iop_ioctl_param** %5, align 8
  %7 = load %struct.hpt_iop_ioctl_param*, %struct.hpt_iop_ioctl_param** %5, align 8
  %8 = getelementptr inbounds %struct.hpt_iop_ioctl_param, %struct.hpt_iop_ioctl_param* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @HPT_IOCTL_MAGIC, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %20

12:                                               ; preds = %2
  %13 = load %struct.hpt_iop_ioctl_param*, %struct.hpt_iop_ioctl_param** %5, align 8
  %14 = getelementptr inbounds %struct.hpt_iop_ioctl_param, %struct.hpt_iop_ioctl_param* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @HPT_IOCTL_MAGIC32, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %12
  %19 = load i32, i32* @EFAULT, align 4
  store i32 %19, i32* %3, align 4
  br label %111

20:                                               ; preds = %12, %2
  %21 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %4, align 8
  %22 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to %struct.hpt_iop_request_ioctl_command*
  store %struct.hpt_iop_request_ioctl_command* %24, %struct.hpt_iop_request_ioctl_command** %6, align 8
  %25 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %4, align 8
  %26 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %25, i32 0, i32 0
  store i32 0, i32* %26, align 8
  %27 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %4, align 8
  %28 = call i32 @hptiop_lock_adapter(%struct.hpt_iop_hba* %27)
  %29 = load %struct.hpt_iop_ioctl_param*, %struct.hpt_iop_ioctl_param** %5, align 8
  %30 = getelementptr inbounds %struct.hpt_iop_ioctl_param, %struct.hpt_iop_ioctl_param* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %48

33:                                               ; preds = %20
  %34 = load %struct.hpt_iop_ioctl_param*, %struct.hpt_iop_ioctl_param** %5, align 8
  %35 = getelementptr inbounds %struct.hpt_iop_ioctl_param, %struct.hpt_iop_ioctl_param* %34, i32 0, i32 5
  %36 = load i64, i64* %35, align 8
  %37 = inttoptr i64 %36 to i8*
  %38 = load %struct.hpt_iop_request_ioctl_command*, %struct.hpt_iop_request_ioctl_command** %6, align 8
  %39 = getelementptr inbounds %struct.hpt_iop_request_ioctl_command, %struct.hpt_iop_request_ioctl_command* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = load %struct.hpt_iop_ioctl_param*, %struct.hpt_iop_ioctl_param** %5, align 8
  %42 = getelementptr inbounds %struct.hpt_iop_ioctl_param, %struct.hpt_iop_ioctl_param* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = call i64 @copyin(i8* %37, i32* %40, i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %33
  br label %107

47:                                               ; preds = %33
  br label %48

48:                                               ; preds = %47, %20
  %49 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %4, align 8
  %50 = load %struct.hpt_iop_request_ioctl_command*, %struct.hpt_iop_request_ioctl_command** %6, align 8
  %51 = load %struct.hpt_iop_ioctl_param*, %struct.hpt_iop_ioctl_param** %5, align 8
  %52 = call i64 @hptiop_post_ioctl_command_mv(%struct.hpt_iop_hba* %49, %struct.hpt_iop_request_ioctl_command* %50, %struct.hpt_iop_ioctl_param* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %48
  br label %107

55:                                               ; preds = %48
  %56 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %4, align 8
  %57 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp eq i32 %58, 1
  br i1 %59, label %60, label %106

60:                                               ; preds = %55
  %61 = load %struct.hpt_iop_ioctl_param*, %struct.hpt_iop_ioctl_param** %5, align 8
  %62 = getelementptr inbounds %struct.hpt_iop_ioctl_param, %struct.hpt_iop_ioctl_param* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %87

65:                                               ; preds = %60
  %66 = load %struct.hpt_iop_request_ioctl_command*, %struct.hpt_iop_request_ioctl_command** %6, align 8
  %67 = getelementptr inbounds %struct.hpt_iop_request_ioctl_command, %struct.hpt_iop_request_ioctl_command* %66, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = load %struct.hpt_iop_ioctl_param*, %struct.hpt_iop_ioctl_param** %5, align 8
  %70 = getelementptr inbounds %struct.hpt_iop_ioctl_param, %struct.hpt_iop_ioctl_param* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = add nsw i32 %71, 3
  %73 = and i32 %72, -4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %68, i64 %74
  %76 = load %struct.hpt_iop_ioctl_param*, %struct.hpt_iop_ioctl_param** %5, align 8
  %77 = getelementptr inbounds %struct.hpt_iop_ioctl_param, %struct.hpt_iop_ioctl_param* %76, i32 0, i32 4
  %78 = load i64, i64* %77, align 8
  %79 = inttoptr i64 %78 to i8*
  %80 = load %struct.hpt_iop_ioctl_param*, %struct.hpt_iop_ioctl_param** %5, align 8
  %81 = getelementptr inbounds %struct.hpt_iop_ioctl_param, %struct.hpt_iop_ioctl_param* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = call i64 @copyout(i32* %75, i8* %79, i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %65
  br label %107

86:                                               ; preds = %65
  br label %87

87:                                               ; preds = %86, %60
  %88 = load %struct.hpt_iop_ioctl_param*, %struct.hpt_iop_ioctl_param** %5, align 8
  %89 = getelementptr inbounds %struct.hpt_iop_ioctl_param, %struct.hpt_iop_ioctl_param* %88, i32 0, i32 3
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %103

92:                                               ; preds = %87
  %93 = load %struct.hpt_iop_request_ioctl_command*, %struct.hpt_iop_request_ioctl_command** %6, align 8
  %94 = getelementptr inbounds %struct.hpt_iop_request_ioctl_command, %struct.hpt_iop_request_ioctl_command* %93, i32 0, i32 0
  %95 = load %struct.hpt_iop_ioctl_param*, %struct.hpt_iop_ioctl_param** %5, align 8
  %96 = getelementptr inbounds %struct.hpt_iop_ioctl_param, %struct.hpt_iop_ioctl_param* %95, i32 0, i32 3
  %97 = load i64, i64* %96, align 8
  %98 = inttoptr i64 %97 to i8*
  %99 = call i64 @copyout(i32* %94, i8* %98, i32 4)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %92
  br label %107

102:                                              ; preds = %92
  br label %103

103:                                              ; preds = %102, %87
  %104 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %4, align 8
  %105 = call i32 @hptiop_unlock_adapter(%struct.hpt_iop_hba* %104)
  store i32 0, i32* %3, align 4
  br label %111

106:                                              ; preds = %55
  br label %107

107:                                              ; preds = %106, %101, %85, %54, %46
  %108 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %4, align 8
  %109 = call i32 @hptiop_unlock_adapter(%struct.hpt_iop_hba* %108)
  %110 = load i32, i32* @EFAULT, align 4
  store i32 %110, i32* %3, align 4
  br label %111

111:                                              ; preds = %107, %103, %18
  %112 = load i32, i32* %3, align 4
  ret i32 %112
}

declare dso_local i32 @hptiop_lock_adapter(%struct.hpt_iop_hba*) #1

declare dso_local i64 @copyin(i8*, i32*, i32) #1

declare dso_local i64 @hptiop_post_ioctl_command_mv(%struct.hpt_iop_hba*, %struct.hpt_iop_request_ioctl_command*, %struct.hpt_iop_ioctl_param*) #1

declare dso_local i64 @copyout(i32*, i8*, i32) #1

declare dso_local i32 @hptiop_unlock_adapter(%struct.hpt_iop_hba*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
