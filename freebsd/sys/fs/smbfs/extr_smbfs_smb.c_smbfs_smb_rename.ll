; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/smbfs/extr_smbfs_smb.c_smbfs_smb_rename.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/smbfs/extr_smbfs_smb.c_smbfs_smb_rename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smbnode = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.smb_share* }
%struct.smb_share = type { i32 }
%struct.smb_cred = type { i32 }
%struct.smb_rq = type { i32 }
%struct.mbchain = type { i32 }

@SMB_COM_RENAME = common dso_local global i32 0, align 4
@SMB_FA_SYSTEM = common dso_local global i32 0, align 4
@SMB_FA_HIDDEN = common dso_local global i32 0, align 4
@SMB_DT_ASCII = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smbfs_smb_rename(%struct.smbnode* %0, %struct.smbnode* %1, i8* %2, i32 %3, %struct.smb_cred* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.smbnode*, align 8
  %8 = alloca %struct.smbnode*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.smb_cred*, align 8
  %12 = alloca %struct.smb_rq*, align 8
  %13 = alloca %struct.smb_share*, align 8
  %14 = alloca %struct.mbchain*, align 8
  %15 = alloca i32, align 4
  store %struct.smbnode* %0, %struct.smbnode** %7, align 8
  store %struct.smbnode* %1, %struct.smbnode** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.smb_cred* %4, %struct.smb_cred** %11, align 8
  %16 = load %struct.smbnode*, %struct.smbnode** %7, align 8
  %17 = getelementptr inbounds %struct.smbnode, %struct.smbnode* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load %struct.smb_share*, %struct.smb_share** %19, align 8
  store %struct.smb_share* %20, %struct.smb_share** %13, align 8
  %21 = load %struct.smb_share*, %struct.smb_share** %13, align 8
  %22 = call i32 @SSTOCP(%struct.smb_share* %21)
  %23 = load i32, i32* @SMB_COM_RENAME, align 4
  %24 = load %struct.smb_cred*, %struct.smb_cred** %11, align 8
  %25 = call i32 @smb_rq_alloc(i32 %22, i32 %23, %struct.smb_cred* %24, %struct.smb_rq** %12)
  store i32 %25, i32* %15, align 4
  %26 = load i32, i32* %15, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %5
  %29 = load i32, i32* %15, align 4
  store i32 %29, i32* %6, align 4
  br label %79

30:                                               ; preds = %5
  %31 = load %struct.smb_rq*, %struct.smb_rq** %12, align 8
  %32 = call i32 @smb_rq_getrequest(%struct.smb_rq* %31, %struct.mbchain** %14)
  %33 = load %struct.smb_rq*, %struct.smb_rq** %12, align 8
  %34 = call i32 @smb_rq_wstart(%struct.smb_rq* %33)
  %35 = load %struct.mbchain*, %struct.mbchain** %14, align 8
  %36 = load i32, i32* @SMB_FA_SYSTEM, align 4
  %37 = load i32, i32* @SMB_FA_HIDDEN, align 4
  %38 = or i32 %36, %37
  %39 = call i32 @mb_put_uint16le(%struct.mbchain* %35, i32 %38)
  %40 = load %struct.smb_rq*, %struct.smb_rq** %12, align 8
  %41 = call i32 @smb_rq_wend(%struct.smb_rq* %40)
  %42 = load %struct.smb_rq*, %struct.smb_rq** %12, align 8
  %43 = call i32 @smb_rq_bstart(%struct.smb_rq* %42)
  %44 = load %struct.mbchain*, %struct.mbchain** %14, align 8
  %45 = load i32, i32* @SMB_DT_ASCII, align 4
  %46 = call i32 @mb_put_uint8(%struct.mbchain* %44, i32 %45)
  br label %47

47:                                               ; preds = %30
  %48 = load %struct.mbchain*, %struct.mbchain** %14, align 8
  %49 = load %struct.smb_share*, %struct.smb_share** %13, align 8
  %50 = call i32 @SSTOVC(%struct.smb_share* %49)
  %51 = load %struct.smbnode*, %struct.smbnode** %7, align 8
  %52 = call i32 @smbfs_fullpath(%struct.mbchain* %48, i32 %50, %struct.smbnode* %51, i8* null, i32 0)
  store i32 %52, i32* %15, align 4
  %53 = load i32, i32* %15, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %47
  br label %75

56:                                               ; preds = %47
  %57 = load %struct.mbchain*, %struct.mbchain** %14, align 8
  %58 = load i32, i32* @SMB_DT_ASCII, align 4
  %59 = call i32 @mb_put_uint8(%struct.mbchain* %57, i32 %58)
  %60 = load %struct.mbchain*, %struct.mbchain** %14, align 8
  %61 = load %struct.smb_share*, %struct.smb_share** %13, align 8
  %62 = call i32 @SSTOVC(%struct.smb_share* %61)
  %63 = load %struct.smbnode*, %struct.smbnode** %8, align 8
  %64 = load i8*, i8** %9, align 8
  %65 = load i32, i32* %10, align 4
  %66 = call i32 @smbfs_fullpath(%struct.mbchain* %60, i32 %62, %struct.smbnode* %63, i8* %64, i32 %65)
  store i32 %66, i32* %15, align 4
  %67 = load i32, i32* %15, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %56
  br label %75

70:                                               ; preds = %56
  %71 = load %struct.smb_rq*, %struct.smb_rq** %12, align 8
  %72 = call i32 @smb_rq_bend(%struct.smb_rq* %71)
  %73 = load %struct.smb_rq*, %struct.smb_rq** %12, align 8
  %74 = call i32 @smb_rq_simple(%struct.smb_rq* %73)
  store i32 %74, i32* %15, align 4
  br label %75

75:                                               ; preds = %70, %69, %55
  %76 = load %struct.smb_rq*, %struct.smb_rq** %12, align 8
  %77 = call i32 @smb_rq_done(%struct.smb_rq* %76)
  %78 = load i32, i32* %15, align 4
  store i32 %78, i32* %6, align 4
  br label %79

79:                                               ; preds = %75, %28
  %80 = load i32, i32* %6, align 4
  ret i32 %80
}

declare dso_local i32 @smb_rq_alloc(i32, i32, %struct.smb_cred*, %struct.smb_rq**) #1

declare dso_local i32 @SSTOCP(%struct.smb_share*) #1

declare dso_local i32 @smb_rq_getrequest(%struct.smb_rq*, %struct.mbchain**) #1

declare dso_local i32 @smb_rq_wstart(%struct.smb_rq*) #1

declare dso_local i32 @mb_put_uint16le(%struct.mbchain*, i32) #1

declare dso_local i32 @smb_rq_wend(%struct.smb_rq*) #1

declare dso_local i32 @smb_rq_bstart(%struct.smb_rq*) #1

declare dso_local i32 @mb_put_uint8(%struct.mbchain*, i32) #1

declare dso_local i32 @smbfs_fullpath(%struct.mbchain*, i32, %struct.smbnode*, i8*, i32) #1

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
