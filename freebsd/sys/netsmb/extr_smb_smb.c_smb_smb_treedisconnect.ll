; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netsmb/extr_smb_smb.c_smb_smb_treedisconnect.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netsmb/extr_smb_smb.c_smb_smb_treedisconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smb_share = type { i64 }
%struct.smb_cred = type { i32 }
%struct.smb_rq = type { %struct.mbchain }
%struct.mbchain = type { i32 }

@SMB_TID_UNKNOWN = common dso_local global i64 0, align 8
@SMB_COM_TREE_DISCONNECT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smb_smb_treedisconnect(%struct.smb_share* %0, %struct.smb_cred* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.smb_share*, align 8
  %5 = alloca %struct.smb_cred*, align 8
  %6 = alloca %struct.smb_rq*, align 8
  %7 = alloca %struct.mbchain*, align 8
  %8 = alloca i32, align 4
  store %struct.smb_share* %0, %struct.smb_share** %4, align 8
  store %struct.smb_cred* %1, %struct.smb_cred** %5, align 8
  %9 = load %struct.smb_share*, %struct.smb_share** %4, align 8
  %10 = getelementptr inbounds %struct.smb_share, %struct.smb_share* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @SMB_TID_UNKNOWN, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %46

15:                                               ; preds = %2
  %16 = load %struct.smb_share*, %struct.smb_share** %4, align 8
  %17 = call i32 @SSTOCP(%struct.smb_share* %16)
  %18 = load i32, i32* @SMB_COM_TREE_DISCONNECT, align 4
  %19 = load %struct.smb_cred*, %struct.smb_cred** %5, align 8
  %20 = call i32 @smb_rq_alloc(i32 %17, i32 %18, %struct.smb_cred* %19, %struct.smb_rq** %6)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %15
  %24 = load i32, i32* %8, align 4
  store i32 %24, i32* %3, align 4
  br label %46

25:                                               ; preds = %15
  %26 = load %struct.smb_rq*, %struct.smb_rq** %6, align 8
  %27 = getelementptr inbounds %struct.smb_rq, %struct.smb_rq* %26, i32 0, i32 0
  store %struct.mbchain* %27, %struct.mbchain** %7, align 8
  %28 = load %struct.smb_rq*, %struct.smb_rq** %6, align 8
  %29 = call i32 @smb_rq_wstart(%struct.smb_rq* %28)
  %30 = load %struct.smb_rq*, %struct.smb_rq** %6, align 8
  %31 = call i32 @smb_rq_wend(%struct.smb_rq* %30)
  %32 = load %struct.smb_rq*, %struct.smb_rq** %6, align 8
  %33 = call i32 @smb_rq_bstart(%struct.smb_rq* %32)
  %34 = load %struct.smb_rq*, %struct.smb_rq** %6, align 8
  %35 = call i32 @smb_rq_bend(%struct.smb_rq* %34)
  %36 = load %struct.smb_rq*, %struct.smb_rq** %6, align 8
  %37 = call i32 @smb_rq_simple(%struct.smb_rq* %36)
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @SMBSDEBUG(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %38)
  %40 = load %struct.smb_rq*, %struct.smb_rq** %6, align 8
  %41 = call i32 @smb_rq_done(%struct.smb_rq* %40)
  %42 = load i64, i64* @SMB_TID_UNKNOWN, align 8
  %43 = load %struct.smb_share*, %struct.smb_share** %4, align 8
  %44 = getelementptr inbounds %struct.smb_share, %struct.smb_share* %43, i32 0, i32 0
  store i64 %42, i64* %44, align 8
  %45 = load i32, i32* %8, align 4
  store i32 %45, i32* %3, align 4
  br label %46

46:                                               ; preds = %25, %23, %14
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i32 @smb_rq_alloc(i32, i32, %struct.smb_cred*, %struct.smb_rq**) #1

declare dso_local i32 @SSTOCP(%struct.smb_share*) #1

declare dso_local i32 @smb_rq_wstart(%struct.smb_rq*) #1

declare dso_local i32 @smb_rq_wend(%struct.smb_rq*) #1

declare dso_local i32 @smb_rq_bstart(%struct.smb_rq*) #1

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
