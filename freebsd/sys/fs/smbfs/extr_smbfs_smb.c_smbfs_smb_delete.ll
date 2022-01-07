; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/smbfs/extr_smbfs_smb.c_smbfs_smb_delete.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/smbfs/extr_smbfs_smb.c_smbfs_smb_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smbnode = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.smb_share* }
%struct.smb_share = type { i32 }
%struct.smb_cred = type { i32 }
%struct.smb_rq = type { i32 }
%struct.mbchain = type { i32 }

@SMB_COM_DELETE = common dso_local global i32 0, align 4
@SMB_FA_SYSTEM = common dso_local global i32 0, align 4
@SMB_FA_HIDDEN = common dso_local global i32 0, align 4
@SMB_DT_ASCII = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smbfs_smb_delete(%struct.smbnode* %0, %struct.smb_cred* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.smbnode*, align 8
  %5 = alloca %struct.smb_cred*, align 8
  %6 = alloca %struct.smb_rq*, align 8
  %7 = alloca %struct.smb_share*, align 8
  %8 = alloca %struct.mbchain*, align 8
  %9 = alloca i32, align 4
  store %struct.smbnode* %0, %struct.smbnode** %4, align 8
  store %struct.smb_cred* %1, %struct.smb_cred** %5, align 8
  %10 = load %struct.smbnode*, %struct.smbnode** %4, align 8
  %11 = getelementptr inbounds %struct.smbnode, %struct.smbnode* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.smb_share*, %struct.smb_share** %13, align 8
  store %struct.smb_share* %14, %struct.smb_share** %7, align 8
  %15 = load %struct.smb_share*, %struct.smb_share** %7, align 8
  %16 = call i32 @SSTOCP(%struct.smb_share* %15)
  %17 = load i32, i32* @SMB_COM_DELETE, align 4
  %18 = load %struct.smb_cred*, %struct.smb_cred** %5, align 8
  %19 = call i32 @smb_rq_alloc(i32 %16, i32 %17, %struct.smb_cred* %18, %struct.smb_rq** %6)
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = load i32, i32* %9, align 4
  store i32 %23, i32* %3, align 4
  br label %57

24:                                               ; preds = %2
  %25 = load %struct.smb_rq*, %struct.smb_rq** %6, align 8
  %26 = call i32 @smb_rq_getrequest(%struct.smb_rq* %25, %struct.mbchain** %8)
  %27 = load %struct.smb_rq*, %struct.smb_rq** %6, align 8
  %28 = call i32 @smb_rq_wstart(%struct.smb_rq* %27)
  %29 = load %struct.mbchain*, %struct.mbchain** %8, align 8
  %30 = load i32, i32* @SMB_FA_SYSTEM, align 4
  %31 = load i32, i32* @SMB_FA_HIDDEN, align 4
  %32 = or i32 %30, %31
  %33 = call i32 @mb_put_uint16le(%struct.mbchain* %29, i32 %32)
  %34 = load %struct.smb_rq*, %struct.smb_rq** %6, align 8
  %35 = call i32 @smb_rq_wend(%struct.smb_rq* %34)
  %36 = load %struct.smb_rq*, %struct.smb_rq** %6, align 8
  %37 = call i32 @smb_rq_bstart(%struct.smb_rq* %36)
  %38 = load %struct.mbchain*, %struct.mbchain** %8, align 8
  %39 = load i32, i32* @SMB_DT_ASCII, align 4
  %40 = call i32 @mb_put_uint8(%struct.mbchain* %38, i32 %39)
  %41 = load %struct.mbchain*, %struct.mbchain** %8, align 8
  %42 = load %struct.smb_share*, %struct.smb_share** %7, align 8
  %43 = call i32 @SSTOVC(%struct.smb_share* %42)
  %44 = load %struct.smbnode*, %struct.smbnode** %4, align 8
  %45 = call i32 @smbfs_fullpath(%struct.mbchain* %41, i32 %43, %struct.smbnode* %44, i32* null, i32 0)
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %9, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %53, label %48

48:                                               ; preds = %24
  %49 = load %struct.smb_rq*, %struct.smb_rq** %6, align 8
  %50 = call i32 @smb_rq_bend(%struct.smb_rq* %49)
  %51 = load %struct.smb_rq*, %struct.smb_rq** %6, align 8
  %52 = call i32 @smb_rq_simple(%struct.smb_rq* %51)
  store i32 %52, i32* %9, align 4
  br label %53

53:                                               ; preds = %48, %24
  %54 = load %struct.smb_rq*, %struct.smb_rq** %6, align 8
  %55 = call i32 @smb_rq_done(%struct.smb_rq* %54)
  %56 = load i32, i32* %9, align 4
  store i32 %56, i32* %3, align 4
  br label %57

57:                                               ; preds = %53, %22
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i32 @smb_rq_alloc(i32, i32, %struct.smb_cred*, %struct.smb_rq**) #1

declare dso_local i32 @SSTOCP(%struct.smb_share*) #1

declare dso_local i32 @smb_rq_getrequest(%struct.smb_rq*, %struct.mbchain**) #1

declare dso_local i32 @smb_rq_wstart(%struct.smb_rq*) #1

declare dso_local i32 @mb_put_uint16le(%struct.mbchain*, i32) #1

declare dso_local i32 @smb_rq_wend(%struct.smb_rq*) #1

declare dso_local i32 @smb_rq_bstart(%struct.smb_rq*) #1

declare dso_local i32 @mb_put_uint8(%struct.mbchain*, i32) #1

declare dso_local i32 @smbfs_fullpath(%struct.mbchain*, i32, %struct.smbnode*, i32*, i32) #1

declare dso_local i32 @SSTOVC(%struct.smb_share*) #1

declare dso_local i32 @smb_rq_bend(%struct.smb_rq*) #1

declare dso_local i32 @smb_rq_simple(%struct.smb_rq*) #1

declare dso_local i32 @smb_rq_done(%struct.smb_rq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
