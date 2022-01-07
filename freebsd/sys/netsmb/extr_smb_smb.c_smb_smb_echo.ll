; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netsmb/extr_smb_smb.c_smb_smb_echo.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netsmb/extr_smb_smb.c_smb_smb_echo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smb_vc = type { i32 }
%struct.smb_cred = type { i32 }
%struct.smb_rq = type { %struct.mbchain }
%struct.mbchain = type { i32 }

@SMB_COM_ECHO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smb_smb_echo(%struct.smb_vc* %0, %struct.smb_cred* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.smb_vc*, align 8
  %5 = alloca %struct.smb_cred*, align 8
  %6 = alloca %struct.smb_rq*, align 8
  %7 = alloca %struct.mbchain*, align 8
  %8 = alloca i32, align 4
  store %struct.smb_vc* %0, %struct.smb_vc** %4, align 8
  store %struct.smb_cred* %1, %struct.smb_cred** %5, align 8
  %9 = load %struct.smb_vc*, %struct.smb_vc** %4, align 8
  %10 = call i32 @VCTOCP(%struct.smb_vc* %9)
  %11 = load i32, i32* @SMB_COM_ECHO, align 4
  %12 = load %struct.smb_cred*, %struct.smb_cred** %5, align 8
  %13 = call i32 @smb_rq_alloc(i32 %10, i32 %11, %struct.smb_cred* %12, %struct.smb_rq** %6)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* %8, align 4
  store i32 %17, i32* %3, align 4
  br label %40

18:                                               ; preds = %2
  %19 = load %struct.smb_rq*, %struct.smb_rq** %6, align 8
  %20 = getelementptr inbounds %struct.smb_rq, %struct.smb_rq* %19, i32 0, i32 0
  store %struct.mbchain* %20, %struct.mbchain** %7, align 8
  %21 = load %struct.smb_rq*, %struct.smb_rq** %6, align 8
  %22 = call i32 @smb_rq_wstart(%struct.smb_rq* %21)
  %23 = load %struct.mbchain*, %struct.mbchain** %7, align 8
  %24 = call i32 @mb_put_uint16le(%struct.mbchain* %23, i32 1)
  %25 = load %struct.smb_rq*, %struct.smb_rq** %6, align 8
  %26 = call i32 @smb_rq_wend(%struct.smb_rq* %25)
  %27 = load %struct.smb_rq*, %struct.smb_rq** %6, align 8
  %28 = call i32 @smb_rq_bstart(%struct.smb_rq* %27)
  %29 = load %struct.mbchain*, %struct.mbchain** %7, align 8
  %30 = call i32 @mb_put_uint32le(%struct.mbchain* %29, i32 0)
  %31 = load %struct.smb_rq*, %struct.smb_rq** %6, align 8
  %32 = call i32 @smb_rq_bend(%struct.smb_rq* %31)
  %33 = load %struct.smb_rq*, %struct.smb_rq** %6, align 8
  %34 = call i32 @smb_rq_simple(%struct.smb_rq* %33)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @SMBSDEBUG(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %35)
  %37 = load %struct.smb_rq*, %struct.smb_rq** %6, align 8
  %38 = call i32 @smb_rq_done(%struct.smb_rq* %37)
  %39 = load i32, i32* %8, align 4
  store i32 %39, i32* %3, align 4
  br label %40

40:                                               ; preds = %18, %16
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i32 @smb_rq_alloc(i32, i32, %struct.smb_cred*, %struct.smb_rq**) #1

declare dso_local i32 @VCTOCP(%struct.smb_vc*) #1

declare dso_local i32 @smb_rq_wstart(%struct.smb_rq*) #1

declare dso_local i32 @mb_put_uint16le(%struct.mbchain*, i32) #1

declare dso_local i32 @smb_rq_wend(%struct.smb_rq*) #1

declare dso_local i32 @smb_rq_bstart(%struct.smb_rq*) #1

declare dso_local i32 @mb_put_uint32le(%struct.mbchain*, i32) #1

declare dso_local i32 @smb_rq_bend(%struct.smb_rq*) #1

declare dso_local i32 @smb_rq_simple(%struct.smb_rq*) #1

declare dso_local i32 @SMBSDEBUG(i8*, i32) #1

declare dso_local i32 @smb_rq_done(%struct.smb_rq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
