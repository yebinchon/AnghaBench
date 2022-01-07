; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/smbfs/extr_smbfs_smb.c_smb_smb_flush.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/smbfs/extr_smbfs_smb.c_smb_smb_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smbnode = type { i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.smb_share* }
%struct.smb_share = type { i32 }
%struct.smb_cred = type { i32 }
%struct.smb_rq = type { i32 }
%struct.mbchain = type { i32 }
%struct.TYPE_4__ = type { i64 }

@NOPEN = common dso_local global i32 0, align 4
@VREG = common dso_local global i64 0, align 8
@SMB_COM_FLUSH = common dso_local global i32 0, align 4
@MB_MSYSTEM = common dso_local global i32 0, align 4
@NFLUSHWIRE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smbnode*, %struct.smb_cred*)* @smb_smb_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smb_smb_flush(%struct.smbnode* %0, %struct.smb_cred* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.smbnode*, align 8
  %5 = alloca %struct.smb_cred*, align 8
  %6 = alloca %struct.smb_share*, align 8
  %7 = alloca %struct.smb_rq*, align 8
  %8 = alloca %struct.mbchain*, align 8
  %9 = alloca i32, align 4
  store %struct.smbnode* %0, %struct.smbnode** %4, align 8
  store %struct.smb_cred* %1, %struct.smb_cred** %5, align 8
  %10 = load %struct.smbnode*, %struct.smbnode** %4, align 8
  %11 = getelementptr inbounds %struct.smbnode, %struct.smbnode* %10, i32 0, i32 2
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load %struct.smb_share*, %struct.smb_share** %13, align 8
  store %struct.smb_share* %14, %struct.smb_share** %6, align 8
  %15 = load %struct.smbnode*, %struct.smbnode** %4, align 8
  %16 = getelementptr inbounds %struct.smbnode, %struct.smbnode* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @NOPEN, align 4
  %19 = and i32 %17, %18
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %32, label %21

21:                                               ; preds = %2
  %22 = load %struct.smbnode*, %struct.smbnode** %4, align 8
  %23 = call %struct.TYPE_4__* @SMBTOV(%struct.smbnode* %22)
  %24 = icmp ne %struct.TYPE_4__* %23, null
  br i1 %24, label %25, label %32

25:                                               ; preds = %21
  %26 = load %struct.smbnode*, %struct.smbnode** %4, align 8
  %27 = call %struct.TYPE_4__* @SMBTOV(%struct.smbnode* %26)
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @VREG, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %25, %21, %2
  store i32 0, i32* %3, align 4
  br label %75

33:                                               ; preds = %25
  %34 = load %struct.smb_share*, %struct.smb_share** %6, align 8
  %35 = call i32 @SSTOCP(%struct.smb_share* %34)
  %36 = load i32, i32* @SMB_COM_FLUSH, align 4
  %37 = load %struct.smb_cred*, %struct.smb_cred** %5, align 8
  %38 = call i32 @smb_rq_alloc(i32 %35, i32 %36, %struct.smb_cred* %37, %struct.smb_rq** %7)
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %9, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %33
  %42 = load i32, i32* %9, align 4
  store i32 %42, i32* %3, align 4
  br label %75

43:                                               ; preds = %33
  %44 = load %struct.smb_rq*, %struct.smb_rq** %7, align 8
  %45 = call i32 @smb_rq_getrequest(%struct.smb_rq* %44, %struct.mbchain** %8)
  %46 = load %struct.smb_rq*, %struct.smb_rq** %7, align 8
  %47 = call i32 @smb_rq_wstart(%struct.smb_rq* %46)
  %48 = load %struct.mbchain*, %struct.mbchain** %8, align 8
  %49 = load %struct.smbnode*, %struct.smbnode** %4, align 8
  %50 = getelementptr inbounds %struct.smbnode, %struct.smbnode* %49, i32 0, i32 1
  %51 = ptrtoint i32* %50 to i32
  %52 = load i32, i32* @MB_MSYSTEM, align 4
  %53 = call i32 @mb_put_mem(%struct.mbchain* %48, i32 %51, i32 2, i32 %52)
  %54 = load %struct.smb_rq*, %struct.smb_rq** %7, align 8
  %55 = call i32 @smb_rq_wend(%struct.smb_rq* %54)
  %56 = load %struct.smb_rq*, %struct.smb_rq** %7, align 8
  %57 = call i32 @smb_rq_bstart(%struct.smb_rq* %56)
  %58 = load %struct.smb_rq*, %struct.smb_rq** %7, align 8
  %59 = call i32 @smb_rq_bend(%struct.smb_rq* %58)
  %60 = load %struct.smb_rq*, %struct.smb_rq** %7, align 8
  %61 = call i32 @smb_rq_simple(%struct.smb_rq* %60)
  store i32 %61, i32* %9, align 4
  %62 = load %struct.smb_rq*, %struct.smb_rq** %7, align 8
  %63 = call i32 @smb_rq_done(%struct.smb_rq* %62)
  %64 = load i32, i32* %9, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %73, label %66

66:                                               ; preds = %43
  %67 = load i32, i32* @NFLUSHWIRE, align 4
  %68 = xor i32 %67, -1
  %69 = load %struct.smbnode*, %struct.smbnode** %4, align 8
  %70 = getelementptr inbounds %struct.smbnode, %struct.smbnode* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = and i32 %71, %68
  store i32 %72, i32* %70, align 8
  br label %73

73:                                               ; preds = %66, %43
  %74 = load i32, i32* %9, align 4
  store i32 %74, i32* %3, align 4
  br label %75

75:                                               ; preds = %73, %41, %32
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local %struct.TYPE_4__* @SMBTOV(%struct.smbnode*) #1

declare dso_local i32 @smb_rq_alloc(i32, i32, %struct.smb_cred*, %struct.smb_rq**) #1

declare dso_local i32 @SSTOCP(%struct.smb_share*) #1

declare dso_local i32 @smb_rq_getrequest(%struct.smb_rq*, %struct.mbchain**) #1

declare dso_local i32 @smb_rq_wstart(%struct.smb_rq*) #1

declare dso_local i32 @mb_put_mem(%struct.mbchain*, i32, i32, i32) #1

declare dso_local i32 @smb_rq_wend(%struct.smb_rq*) #1

declare dso_local i32 @smb_rq_bstart(%struct.smb_rq*) #1

declare dso_local i32 @smb_rq_bend(%struct.smb_rq*) #1

declare dso_local i32 @smb_rq_simple(%struct.smb_rq*) #1

declare dso_local i32 @smb_rq_done(%struct.smb_rq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
