; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netsmb/extr_smb_rq.c_smb_rq_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netsmb/extr_smb_rq.c_smb_rq_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smb_rq = type { i32, i32, %struct.smb_cred*, i64, i32 }
%struct.smb_connobj = type { i32 }
%struct.smb_cred = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"srslock\00", align 1
@SMBM_EXEC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smb_rq_init(%struct.smb_rq* %0, %struct.smb_connobj* %1, i32 %2, %struct.smb_cred* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.smb_rq*, align 8
  %7 = alloca %struct.smb_connobj*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.smb_cred*, align 8
  %10 = alloca i32, align 4
  store %struct.smb_rq* %0, %struct.smb_rq** %6, align 8
  store %struct.smb_connobj* %1, %struct.smb_connobj** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.smb_cred* %3, %struct.smb_cred** %9, align 8
  %11 = load %struct.smb_rq*, %struct.smb_rq** %6, align 8
  %12 = call i32 @bzero(%struct.smb_rq* %11, i32 32)
  %13 = load %struct.smb_rq*, %struct.smb_rq** %6, align 8
  %14 = getelementptr inbounds %struct.smb_rq, %struct.smb_rq* %13, i32 0, i32 4
  %15 = call i32 @smb_sl_init(i32* %14, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.smb_connobj*, %struct.smb_connobj** %7, align 8
  %17 = load %struct.smb_rq*, %struct.smb_rq** %6, align 8
  %18 = getelementptr inbounds %struct.smb_rq, %struct.smb_rq* %17, i32 0, i32 0
  %19 = load %struct.smb_rq*, %struct.smb_rq** %6, align 8
  %20 = getelementptr inbounds %struct.smb_rq, %struct.smb_rq* %19, i32 0, i32 3
  %21 = call i32 @smb_rq_getenv(%struct.smb_connobj* %16, i32* %18, i64* %20)
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %10, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %4
  %25 = load i32, i32* %10, align 4
  store i32 %25, i32* %5, align 4
  br label %67

26:                                               ; preds = %4
  %27 = load %struct.smb_rq*, %struct.smb_rq** %6, align 8
  %28 = getelementptr inbounds %struct.smb_rq, %struct.smb_rq* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.smb_cred*, %struct.smb_cred** %9, align 8
  %31 = load i32, i32* @SMBM_EXEC, align 4
  %32 = call i32 @smb_vc_access(i32 %29, %struct.smb_cred* %30, i32 %31)
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %10, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %26
  %36 = load i32, i32* %10, align 4
  store i32 %36, i32* %5, align 4
  br label %67

37:                                               ; preds = %26
  %38 = load %struct.smb_rq*, %struct.smb_rq** %6, align 8
  %39 = getelementptr inbounds %struct.smb_rq, %struct.smb_rq* %38, i32 0, i32 3
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %54

42:                                               ; preds = %37
  %43 = load %struct.smb_rq*, %struct.smb_rq** %6, align 8
  %44 = getelementptr inbounds %struct.smb_rq, %struct.smb_rq* %43, i32 0, i32 3
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.smb_cred*, %struct.smb_cred** %9, align 8
  %47 = load i32, i32* @SMBM_EXEC, align 4
  %48 = call i32 @smb_share_access(i64 %45, %struct.smb_cred* %46, i32 %47)
  store i32 %48, i32* %10, align 4
  %49 = load i32, i32* %10, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %42
  %52 = load i32, i32* %10, align 4
  store i32 %52, i32* %5, align 4
  br label %67

53:                                               ; preds = %42
  br label %54

54:                                               ; preds = %53, %37
  %55 = load %struct.smb_cred*, %struct.smb_cred** %9, align 8
  %56 = load %struct.smb_rq*, %struct.smb_rq** %6, align 8
  %57 = getelementptr inbounds %struct.smb_rq, %struct.smb_rq* %56, i32 0, i32 2
  store %struct.smb_cred* %55, %struct.smb_cred** %57, align 8
  %58 = load %struct.smb_rq*, %struct.smb_rq** %6, align 8
  %59 = getelementptr inbounds %struct.smb_rq, %struct.smb_rq* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @smb_vc_nextmid(i32 %60)
  %62 = load %struct.smb_rq*, %struct.smb_rq** %6, align 8
  %63 = getelementptr inbounds %struct.smb_rq, %struct.smb_rq* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 4
  %64 = load %struct.smb_rq*, %struct.smb_rq** %6, align 8
  %65 = load i32, i32* %8, align 4
  %66 = call i32 @smb_rq_new(%struct.smb_rq* %64, i32 %65)
  store i32 %66, i32* %5, align 4
  br label %67

67:                                               ; preds = %54, %51, %35, %24
  %68 = load i32, i32* %5, align 4
  ret i32 %68
}

declare dso_local i32 @bzero(%struct.smb_rq*, i32) #1

declare dso_local i32 @smb_sl_init(i32*, i8*) #1

declare dso_local i32 @smb_rq_getenv(%struct.smb_connobj*, i32*, i64*) #1

declare dso_local i32 @smb_vc_access(i32, %struct.smb_cred*, i32) #1

declare dso_local i32 @smb_share_access(i64, %struct.smb_cred*, i32) #1

declare dso_local i32 @smb_vc_nextmid(i32) #1

declare dso_local i32 @smb_rq_new(%struct.smb_rq*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
